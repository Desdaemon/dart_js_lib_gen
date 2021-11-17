use crate::api::Report;
use crate::api::Source;
use std::borrow::Cow;
use std::ops::Range;
use std::sync::Arc;

use ahash::{AHashMap, AHashSet};
use ariadne::{Color, Fmt, Label, ReportKind};
use log::log_enabled;
use log::{debug, error, info, warn, Level};
use swc_common::{BytePos, SourceFile, Span};
use swc_ecma_ast::*;

use crate::api::Message;
use crate::atoms::replacement_for;

#[cfg(feature = "alloc_counter")]
#[global_allocator]
static A: alloc_counter::AllocCounterSystem = alloc_counter::AllocCounterSystem;

/// Ident -> (# of parameters, span of original declaration)
type TypeResolutionMap = AHashMap<String, (usize, Range<usize>)>;

struct Transformer {
    path: Vec<String>,
    bufs: Vec<String>,
    class: Option<Class>,
    /// Undeclared type usages, with some number of type parameters and span information.
    undecls: TypeResolutionMap,
    resolved: TypeResolutionMap,
    symbols: AHashMap<String, Range<usize>>,
    /// Keeps track of the ident of the variable declaration being evaluated.
    current_ident: Option<String>,
    /// Anonymous type literals.
    type_lits: AHashMap<String, String>,
    /// The span of the parent element.
    span: Range<usize>,
    /// Used by ariadne for reporting.
    source: Source,
    warnings: u32,
    errors: u32,
    file: Arc<SourceFile>,
    allocs: usize,
    rename_overloads: bool,
    imports: Option<AHashSet<&'static str>>,
    messages: Vec<Message>,
}

struct Class {
    /// Ident of class
    id: String,
    /// `(id, type)`
    fields: Vec<(String, String)>,
    /// Whether this class only exists on the type level, i.e. a pure interface with
    /// no constructors in TypeScript.
    anonymous: bool,
    members: AHashSet<String>,
}

/// Parses a pattern as an ident.
fn parse_pat(pat: &Pat) -> Option<&str> {
    match pat {
        Pat::Ident(id) => Some(id.id.sym.as_ref()),
        _ => None,
    }
}

fn generate_type_param(count: usize) -> impl Iterator<Item = char> {
    ('T'..'Z').chain('A'..'O').take(count)
}

pub fn visit_program(
    module: &Module,
    file: Arc<SourceFile>,
    library_name: &str,
    size_hint: Option<usize>,
    gen_undecl_typedef: bool,
    rename_overloads: bool,
    imports: bool,
) -> (String, Vec<Message>, Source) {
    let buf = match size_hint {
        Some(size) => String::with_capacity(size),
        None => String::new(),
    };
    let file_path = file.unmapped_path.as_ref().unwrap().clone();
    let mut t = Transformer {
        path: vec![],
        bufs: vec![buf],
        messages: vec![],
        class: None,
        current_ident: None,
        span: 0..0,
        source: (file_path.to_string(), ariadne::Source::from(&*file.src)),
        warnings: 0,
        errors: 0,
        file,
        allocs: 0,
        rename_overloads,
        undecls: AHashMap::new(),
        resolved: AHashMap::new(),
        symbols: AHashMap::new(),
        imports: imports.then(AHashSet::new),
        type_lits: AHashMap::new(),
    };
    t.visit_module_items(&module.body);

    let mut buf = t.bufs.pop().unwrap();
    let mut entries = t.type_lits.iter().collect::<Vec<_>>();
    entries.sort_by(Ord::cmp);

    for (_, lit) in entries {
        buf.push_str(lit);
    }
    if !t.undecls.is_empty() && log_enabled!(Level::Warn) {
        let cls = t.undecls.keys().cloned().collect::<Vec<_>>().join(", ");
        warn!("The following types were used but not declared:\n{}", cls);
    }
    if gen_undecl_typedef {
        let mut entries = t.undecls.iter().collect::<Vec<_>>();
        entries.sort_by_cached_key(|x| x.0.clone());
        for (ty, (params, _)) in entries {
            if ty == "Function" {
                continue;
            }
            buf.push_str("typedef ");
            buf.push_str(ty);
            if *params > 0 {
                buf.push('<');
                for letter in generate_type_param(*params as usize) {
                    buf.push(letter);
                    buf.push(',')
                }
                buf.pop();
                buf.push('>');
            }
            buf.push_str("=dynamic;");
        }
    }
    let mut header = format!(
        "@JS() library {};
// ignore_for_file: non_constant_identifier_names, private_optional_parameter, unused_element
import 'package:js/js.dart';",
        library_name
    );
    let imports = t
        .imports
        .map(|x| {
            let mut x = x.into_iter().collect::<Vec<_>>();
            x.sort_unstable();
            x
        })
        .unwrap_or_else(Vec::new);
    for imp in imports {
        header.push_str("import \"");
        header.push_str(imp);
        header.push_str("\";");
    }
    if t.errors != 0 || t.warnings != 0 {
        info!(
            "Parsed {} with {} {} and {} {}.",
            &file_path,
            t.errors,
            if t.errors == 1 { "error" } else { "errors" },
            t.warnings,
            if t.warnings == 1 {
                "warning"
            } else {
                "warnings"
            }
        );
    }
    debug!(
        "Allocs/reallocs: {} | Ratio: {}",
        t.allocs,
        (buf.len() as f64) / (buf.capacity() as f64),
    );
    header.push_str(&buf);
    (header, t.messages, t.source)
}

impl Transformer {
    fn buf(&self) -> &String {
        self.bufs.last().unwrap()
    }

    fn push(&mut self, input: &str) {
        #[cfg(not(feature = "alloc_counter"))]
        self.bufs.last_mut().unwrap().push_str(input);

        #[cfg(feature = "alloc_counter")]
        {
            let buf = self.bufs.last_mut().unwrap();
            let ((_, reallocs, _), _) = alloc_counter::count_alloc(|| buf.push_str(input));
            self.allocs += reallocs;
        }
    }

    fn push_char(&mut self, c: char) {
        #[cfg(not(feature = "alloc_counter"))]
        self.bufs.last_mut().unwrap().push(c);

        #[cfg(feature = "alloc_counter")]
        {
            let buf = self.bufs.last_mut().unwrap();
            let ((_, reallocs, _), _) = alloc_counter::count_alloc(|| buf.push(c));
            self.allocs += reallocs;
        }
    }

    /// Remove a single character from the buffer.
    fn pop(&mut self) {
        self.bufs.last_mut().unwrap().pop();
    }

    /// Performs [fun] in a temporary buffer and
    /// returns that buffer when [fun] goes out of scope.
    fn collect(&mut self, mut fun: impl FnMut(&mut Self)) -> String {
        self.bufs.push(String::new());
        fun(self);
        self.bufs.pop().unwrap()
    }

    fn annotate(&mut self, path_end: &str) {
        self.push("@JS(r'");
        for item in &self.path {
            let buf = self.bufs.last_mut().unwrap();
            buf.push_str(item);
            buf.push('.');
        }
        self.push(path_end);
        self.push("') ");
    }

    #[inline]
    fn semi(&mut self) {
        self.push_char(';');
    }

    fn valid_ts_prop_ident<'a>(&mut self, id: &'a str, span: Range<usize>) -> Option<&'a str> {
        match self.valid_identifier(id, span.clone()) {
            Some(id) if id.starts_with('_') => {
                self.warnings += 1;
                if log_enabled!(Level::Warn) {
                    let (path, _) = &self.source;
                    let intr_span = self.span.clone();
                    let report = Report::build(ReportKind::Warning, path, span.start)
                        .with_message("Dart private property in interface")
                        .with_label(
                            Label::new((path.clone(), span))
                                .with_message("Remove or rename this property".fg(Color::Yellow))
                                .with_color(Color::Yellow),
                        )
                        .with_label(
                            Label::new((path.clone(), intr_span))
                                .with_message(
                                    "This interface includes a Dart private property."
                                        .fg(Color::Blue),
                                )
                                .with_color(Color::Blue),
                        )
                        .with_note("dart2js does not permit private named parameters, so this interface cannot be constructed without modifications.")
                        .finish();
                    self.messages.push(Message {
                        report,
                        kind: ReportKind::Warning,
                    });
                }
                None
            }
            id => id,
        }
    }

    fn valid_identifier<'a>(&mut self, id: &'a str, span: Range<usize>) -> Option<&'a str> {
        if id.contains('-') {
            self.warnings += 1;
            if log_enabled!(Level::Warn) {
                let (path, _) = &self.source;
                let report = Report::build(ReportKind::Warning, path, span.start)
                    .with_message("Invalid character in identifier")
                    .with_label(
                        Label::new((path.clone(), span))
                            .with_message("Rename this identifier".fg(Color::Yellow))
                            .with_color(Color::Yellow),
                    )
                    .finish();
                self.messages.push(Message {
                    report,
                    kind: ReportKind::Warning,
                });
            }
            None
        } else if FORBIDDEN_IDENTS.contains(&id) {
            self.warnings += 1;
            if log_enabled!(Level::Warn) {
                let (path, _) = &self.source;
                let report = Report::build(ReportKind::Warning, path, span.start)
                    .with_message("Dart reserved identifier")
                    .with_label(
                        Label::new((path.clone(), span))
                            .with_message(format!("{} is reserved by Dart.", id).fg(Color::Yellow))
                            .with_color(Color::Yellow),
                    )
                    .with_label(
                        Label::new((path.clone(), self.span.clone()))
                            .with_message(
                                "This interface/class contains the invalid identifier."
                                    .fg(Color::Blue),
                            )
                            .with_color(Color::Blue),
                    )
                    .finish();
                self.messages.push(Message {
                    report,
                    kind: ReportKind::Warning,
                });
            }
            None
        } else {
            Some(id)
        }
    }

    /// Calculates the extra bytes the due multibyte characters appearing before [pos] and after [start_at].
    fn extra_bytes(&self, pos: BytePos, start_at: Option<u32>) -> u32 {
        let start = self.file.start_pos.0;
        let start = start_at.unwrap_or(0) + start;
        self.file
            .multibyte_chars
            .iter()
            .skip_while(|x| start >= x.pos.0)
            .take_while(|x| x.pos < pos)
            .map(|x| (x.bytes - 1) as u32)
            .sum()
    }

    /// Converts a byte-index span to a character-index range.
    fn range_of(&self, span: Span) -> Range<usize> {
        let lo_extras = self.extra_bytes(span.lo, None);
        let hi_extras = self.extra_bytes(span.hi, Some(span.lo.0)) + lo_extras;
        let start = self.file.start_pos.0;
        let lo = (span.lo.0 - lo_extras - start) as usize;
        let hi = (span.hi.0 - hi_extras - start) as usize;
        lo..hi
    }

    /// Converts a byte offset to a character offset.
    fn char_offset(&self, pos: BytePos) -> usize {
        let extra_bytes = self.extra_bytes(pos, None);
        let start = self.file.start_pos.0;
        (pos.0 - extra_bytes - start) as usize
    }

    fn parse_expression<'a>(&self, expr: &'a Expr) -> Option<(&'a str, Range<usize>)> {
        match expr {
            Expr::Ident(ident) => Some((&ident.sym, self.range_of(ident.span))),
            Expr::Lit(Lit::Str(string)) => Some((&string.value, self.range_of(string.span))),
            other => {
                error!("Unhandled expression:\n{:?}", other);
                None
            }
        }
    }

    fn optional(&mut self) {
        let buf = self.buf();
        if !(buf.ends_with("dynamic") || buf.ends_with('?')) {
            self.push_char('?');
        }
    }
}

/// Valid identifiers in JavaScript but not in Dart. Non-exhaustive.
static FORBIDDEN_IDENTS: &[&str] = &[
    "default", "switch", "in", "var", "is", "continue", "extends", "catch", "assert",
];

macro_rules! gen_matcher {
    ($ty:ident, $($pat:pat),*) => {
        match $ty {
            $(
                $pat => |ty: &Box<TsType>| matches!(ty.as_ref(), $pat),
             )*
            _ => { return false; }
        }
    };
}

impl Transformer {
    fn visit_module_items(&mut self, items: &[ModuleItem]) {
        items.iter().for_each(|e| match e {
            ModuleItem::ModuleDecl(decl) => self.visit_module_decl(decl),
            ModuleItem::Stmt(stmt) => self.visit_statement(stmt),
        })
    }

    fn visit_module_decl(&mut self, decl: &ModuleDecl) {
        match decl {
            ModuleDecl::ExportDecl(exp) => self.visit_decl(&exp.decl),
            ModuleDecl::ExportDefaultDecl(exp) => self.visit_default_decl(&exp.decl),
            ModuleDecl::Import(_)
            | ModuleDecl::TsExportAssignment(_)
            | ModuleDecl::TsNamespaceExport(_)
            | ModuleDecl::ExportNamed(_) => {}
            _ => {
                error!("Unhandled module declaration:\n{:?}", decl);
                todo!();
            }
        }
    }

    fn visit_default_decl(&mut self, decl: &DefaultDecl) {
        match decl {
            DefaultDecl::TsInterfaceDecl(intr) => self.visit_interface_decl(intr),
            DefaultDecl::Fn(_) => {
                info!("Default function declaration ignored.");
            }
            _ => {
                error!("Unhandled default declaration:\n{:?}", decl);
                todo!();
            }
        }
    }

    fn visit_decl(&mut self, decl: &Decl) {
        match decl {
            Decl::Fn(func) => self.visit_function_decl(func),
            Decl::Var(var) => self.visit_variable(var),
            Decl::TsInterface(intr) => self.visit_interface_decl(intr),
            Decl::TsModule(module) => self.visit_module(module),
            Decl::TsTypeAlias(alias) => self.visit_type_alias(alias),
            Decl::Class(class) => self.visit_class(class),
            _ => {
                error!("Unhandled declaration:\n{:?}", decl);
                todo!();
            }
        }
    }

    fn visit_type_elements(&mut self, body: &[TsTypeElement]) {
        let mut first = true;
        for item in body {
            match item {
                TsTypeElement::TsPropertySignature(prop) => self.visit_ts_prop_sig(prop),
                TsTypeElement::TsMethodSignature(met) => self.visit_ts_method_sig(met),
                TsTypeElement::TsConstructSignatureDecl(sig) => self.visit_ts_ctor_sig(sig),
                TsTypeElement::TsGetterSignature(sig) => self.visit_ts_getter_sig(sig),
                TsTypeElement::TsSetterSignature(sig) => self.visit_ts_setter_sig(sig),
                TsTypeElement::TsIndexSignature(_) => {}
                TsTypeElement::TsCallSignatureDecl(call) if !first => {
                    info!("Call signature ignored.");
                    debug!("{:?}", call)
                }
                TsTypeElement::TsCallSignatureDecl(call) => {
                    let (path, _) = &self.source;
                    self.warnings += 1;
                    if log_enabled!(Level::Warn) {
                        let report = Report::build(
                            ReportKind::Warning,
                            path,
                            self.char_offset(call.span.lo),
                        )
                        .with_message("Unhandled call signature")
                        .with_label(
                            Label::new((path.clone(), self.range_of(call.span)))
                                .with_message(
                                    "This call signature is not handled".fg(Color::Yellow),
                                )
                                .with_color(Color::Yellow),
                        )
                        .with_label(
                            Label::new((path.clone(), self.span.clone()))
                                .with_message(
                                    "This interface declares a call signature which is unhandled"
                                        .fg(Color::Blue),
                                )
                                .with_color(Color::Blue),
                        )
                        .finish();
                        self.messages.push(Message {
                            report,
                            kind: ReportKind::Warning,
                        });
                    }
                }
            }
            first = false;
        }
    }

    fn visit_statement(&mut self, stmt: &Stmt) {
        match stmt {
            Stmt::Decl(decl) => self.visit_decl(decl),
            _ => {
                error!("Unparsed statement:\n{:?}", stmt);
                todo!();
            }
        }
    }

    /// Parses `(..)`
    fn visit_params(&mut self, params: &[Param]) {
        self.push_char('(');
        for item in params {
            self.visit_param_single(item);
        }
        if !params.is_empty() {
            self.pop();
        }
        self.push_char(')');
    }

    fn visit_param_single(&mut self, param: &Param) {
        match &param.pat {
            Pat::Ident(ident) => {
                self.visit_type_ann(&ident.type_ann);
                self.push_char(' ');
                self.push(&ident.id.sym);
            }
            Pat::Rest(rest) => self.visit_rest_pat(rest),
            other => {
                error!("Unhandled pattern:\n{:?}", other);
                todo!();
            }
        }
        self.push_char(',');
    }

    /// `@JS() @anonymous class T<..> { .. external factory T({ .. }) }`
    fn visit_interface_decl(&mut self, decl: &TsInterfaceDecl) {
        self.span = self.range_of(decl.span);
        let id: &str = &decl.id.sym;
        self.register_type(id, self.range_of(decl.id.span), &decl.type_params);
        if ["String"].contains(&id) {
            self.errors += 1;
            if log_enabled!(Level::Error) {
                let (path, _) = &self.source;
                let report =
                    Report::build(ReportKind::Error, path, self.char_offset(decl.id.span.lo))
                        .with_message("Forbidden interface name")
                        .with_label(
                            Label::new((path.clone(), self.range_of(decl.id.span)))
                                .with_message("Rename this interface".fg(Color::Red))
                                .with_color(Color::Red),
                        )
                        .finish();
                self.messages.push(Message {
                    report,
                    kind: ReportKind::Error,
                });
            }
            return;
        }
        self.class = Some(Class {
            anonymous: true,
            fields: vec![],
            id: String::from(decl.id.sym.as_ref()),
            members: AHashSet::new(),
        });
        self.push("@JS() ");
        let class_body = self.collect(|s| {
            s.push("class ");
            s.push(id);
            s.visit_type_params(&decl.type_params);
            s.visit_extends(decl.extends.first());
            s.push_char('{');
            {
                s.visit_type_elements(&decl.body.body);
                if s.class.as_ref().unwrap().anonymous {
                    s.emit_factory_constr();
                }
            }
            s.push_char('}');
        });
        let Class { anonymous, .. } = self.class.take().unwrap();
        if anonymous {
            self.push("@anonymous ");
        }
        self.push(&class_body);
    }

    fn visit_extends(&mut self, extends: Option<&TsExprWithTypeArgs>) {
        if let Some(TsExprWithTypeArgs {
            expr, type_args, ..
        }) = extends
        {
            self.push(" extends ");
            let count = type_args.as_ref().map(|x| x.params.len());
            self.visit_entity_name(expr, count);
            if let Some(TsTypeParamInstantiation { params, .. }) = type_args {
                self.push_char('<');
                for typ in params {
                    self.visit_type(typ);
                    self.push_char(',')
                }
                self.pop();
                self.push_char('>');
            }
        }
    }

    /// `@JS(..) external R id<..>(..);`
    fn visit_function_decl(&mut self, decl: &FnDecl) {
        let id: &str = &decl.ident.sym;
        let conflicts = self.symbols.contains_key(id);
        if conflicts && !self.rename_overloads {
            if log_enabled!(Level::Warn) {
                let (path, _) = &self.source;
                let first_span = self.symbols.get(id).unwrap();
                let span = decl.function.span;
                let report = Report::build(ReportKind::Warning, path, self.char_offset(span.lo))
                    .with_message("Function overload ignored")
                    .with_label(
                        Label::new((path.clone(), self.range_of(span)))
                            .with_message("Remove this definition".fg(Color::Yellow))
                            .with_color(Color::Yellow),
                    )
                    .with_label(
                        Label::new((path.clone(), first_span.clone()))
                            .with_message("Function first defined here".fg(Color::Blue))
                            .with_color(Color::Blue),
                    )
                    .with_note("Dart does not support function overloads.")
                    .finish();
                self.messages.push(Message {
                    report,
                    kind: ReportKind::Warning,
                });
            }
            return;
        }
        let old_id = id;
        let id = if conflicts && self.rename_overloads {
            (1..20)
                .find_map(|e| {
                    let id = format!("{}{}", id, e);
                    (!self.symbols.contains_key(&id)).then(|| id)
                })
                .unwrap()
        } else {
            id.to_owned()
        };
        self.symbols
            .insert(id.clone(), self.range_of(decl.function.span));
        self.visit_function(&id, &decl.function, false, true, Some(old_id));
    }

    /// `[@JS(id)] external [static] R id<..>(..);`
    fn visit_function(
        &mut self,
        id: &str,
        function: &Function,
        is_static: bool,
        should_annotate: bool,
        annotation: Option<&str>,
    ) {
        if should_annotate {
            let annotation = annotation.unwrap_or(id);
            self.annotate(annotation);
        }
        self.push("external ");
        if is_static {
            self.push("static ");
        }
        self.visit_type_ann(&function.return_type);
        self.push_char(' ');
        self.push(id);
        self.visit_type_params(&function.type_params);
        self.visit_params(&function.params);
        self.semi();
    }

    /// ```dart
    /// @JS() external T get id;
    /// @JS() external set id(T value);
    /// ```
    fn visit_variable(&mut self, var: &VarDecl) {
        for item in &var.decls {
            if let Pat::Ident(ident) = &item.name {
                let id: &str = &ident.id.sym;
                self.current_ident = Some(id.to_owned());
                let dart_id = if matches!(id.chars().next().unwrap(), 'A'..='Z') {
                    Cow::Owned(format!("J{}", id))
                } else {
                    Cow::Borrowed(id)
                };
                let ty = self.collect(|s| s.visit_type_ann(&ident.type_ann));
                self.annotate(id);
                self.emit_getter(&ty, &dart_id);
                if !matches!(var.kind, VarDeclKind::Const) {
                    self.annotate(id);
                    self.emit_setter(&ty, &dart_id, None);
                }
            }
        }
    }

    fn visit_module(&mut self, module: &TsModuleDecl) {
        if let Some(ns) = &module.body {
            if !module.global {
                match &module.id {
                    TsModuleName::Ident(ident) => self.path.push(String::from(&ident.sym as &str)),
                    TsModuleName::Str(string) => {
                        self.path.push(String::from(&string.value as &str))
                    }
                }
            }
            match ns {
                TsNamespaceBody::TsModuleBlock(blk) => self.visit_module_items(&blk.body),
                TsNamespaceBody::TsNamespaceDecl(_) => todo!(),
            }
            if !module.global {
                self.path.pop();
            }
        }
    }

    /// `typedef T<..> = ..;`
    fn visit_type_alias(&mut self, alias: &TsTypeAliasDecl) {
        let id: &str = &alias.id.sym;
        if id == "Function" {
            warn!("Invalid identifier: {}", id);
            return;
        }
        self.current_ident = Some(id.to_owned());
        self.register_type(id, self.range_of(alias.span), &alias.type_params);
        self.push("typedef ");
        self.push(id);
        self.visit_type_params(&alias.type_params);
        self.push_char('=');
        self.visit_type(alias.type_ann.as_ref());
        self.semi();
        self.current_ident.take().unwrap();
    }

    /// `external T get id;`
    fn emit_getter(&mut self, typ: &str, id: &str) {
        self.push("external ");
        self.push(typ);
        self.push(" get ");
        self.push(id);
        self.semi();
    }

    /// `external set id(T value);`
    fn emit_setter(&mut self, typ: &str, id: &str, param_name: Option<&str>) {
        let param_name = param_name.unwrap_or("value");
        self.push("external set ");
        self.push(id);
        self.push_char('(');
        self.push(typ);
        self.push_char(' ');
        self.push(param_name);
        self.push(");");
    }

    /// Returns None is [id] is already a member of the current class.
    fn register_member<'a>(&mut self, id: &'a str) -> Option<&'a str> {
        let res = self.class.as_mut().unwrap().members.insert(id.to_owned());
        if !res {
            let class = &self.class.as_ref().unwrap().id;
            debug!("{}#{} is already defined.", class, id);
        }
        res.then(|| id)
    }

    fn visit_ts_prop_sig(&mut self, prop: &TsPropertySignature) {
        if let Some(id) = self
            .parse_expression(&prop.key)
            .and_then(|e| self.register_member(e.0).map(|_| e))
            .and_then(|e| self.valid_ts_prop_ident(e.0, e.1))
        {
            let ty = self.collect(|s| {
                s.visit_type_params(&prop.type_params);
                s.visit_type_ann(&prop.type_ann);
                if prop.optional {
                    s.optional();
                }
            });
            self.emit_getter(&ty, id);
            if !prop.readonly {
                self.emit_setter(&ty, id, None);
            }
            self.class
                .as_mut()
                .unwrap()
                .fields
                .push((id.to_string(), ty));
        }
    }

    fn visit_ts_ctor_sig(
        &mut self,
        TsConstructSignatureDecl { params, .. }: &TsConstructSignatureDecl,
    ) {
        if let Some(id) = self.register_member(&self.class.as_ref().unwrap().id.clone()) {
            self.class.as_mut().unwrap().anonymous = false;
            let params = self.collect(|s| s.visit_function_params(params));
            self.push("external factory ");
            self.push(id);
            self.push_char('(');
            if !params.is_empty() {
                if params.starts_with('[') {
                    self.push(&params);
                } else {
                    self.push_char('{');
                    self.push(&params);
                    self.push_char('}');
                }
            }
            self.push(");");
        }
    }

    fn visit_ts_getter_sig(&mut self, TsGetterSignature { type_ann, key, .. }: &TsGetterSignature) {
        if let Some(id) = self
            .parse_expression(key)
            .and_then(|e| self.register_member(e.0))
        {
            self.push("external ");
            self.visit_type_ann(type_ann);
            self.push(" get ");
            self.push(id);
            self.semi();
        }
    }

    fn visit_ts_setter_sig(&mut self, TsSetterSignature { key, param, .. }: &TsSetterSignature) {
        if let Some(id) = self
            .parse_expression(key)
            .and_then(|e| self.register_member(e.0))
        {
            self.push("external set ");
            self.push(id);
            self.push_char('(');
            self.visit_function_param_single(param);
            self.push(");");
        }
    }

    /// `external T id(..);`
    fn visit_ts_method_sig(&mut self, met: &TsMethodSignature) {
        let id: &str = &met.key.as_ref().clone().expect_ident().sym;
        if let Some(id) = self
            .register_member(id)
            .and_then(|e| self.valid_identifier(e, self.range_of(met.span)))
        {
            if id == "toString" {
                self.push("@override ");
            }
            self.push("external ");
            self.visit_type_ann(&met.type_ann);
            self.push_char(' ');
            self.push(id);
            self.visit_type_params(&met.type_params);
            self.push_char('(');
            self.visit_function_params(&met.params);
            self.push_char(')');
            self.semi();
        }
    }

    /// `external factory C({ .. });`
    fn emit_factory_constr(&mut self) {
        let class = self.class.take().unwrap();
        self.emit_factory(&class.id, &class.fields);
        self.class = Some(class);
    }

    /// `external factory id({ .. })`
    fn emit_factory(&mut self, id: &str, fields: &[(String, String)]) {
        self.push("external factory ");
        self.push(id);
        self.push("(");
        if !fields.is_empty() {
            self.push_char('{');
        }
        for (id, ty) in fields {
            self.push(ty);
            self.push_char(' ');
            self.push(id);
            self.push_char(',');
        }
        if !fields.is_empty() {
            self.push_char('}');
        }
        self.push(");");
    }

    /// `<A, B extends .., ..>`
    fn visit_type_params(&mut self, params: &Option<TsTypeParamDecl>) {
        if let Some(TsTypeParamDecl { params, .. }) = params {
            self.push_char('<');
            for item in params {
                let id: &str = &item.name.sym;
                self.register_type(id, self.range_of(item.span), &None);
                self.push(id);
                if let Some(typ) = &item.constraint {
                    self.push(" extends ");
                    self.visit_type(typ);
                }
                self.push_char(',');
            }
            self.pop();
            self.push_char('>');
        }
    }

    fn report_type_param_mismatch(
        &mut self,
        count: usize,
        old: usize,
        range: Range<usize>,
        old_range: Range<usize>,
        first_decl_message: Option<&str>,
    ) {
        let (path, _) = &self.source;
        let first_decl_message = first_decl_message.unwrap_or("The type was first declared here.");
        let message = format!("This type was declared with {} parameter(s), but a previous declaration has {} parameter(s).", count, old);
        let report = Report::build(ReportKind::Error, path, range.start)
            .with_message("Type parameter length mismatch")
            .with_label(
                Label::new((path.clone(), range))
                    .with_message(message.fg(Color::Red))
                    .with_color(Color::Red),
            )
            .with_label(
                Label::new((path.clone(), old_range))
                    .with_message(first_decl_message.fg(Color::Blue))
                    .with_color(Color::Blue),
            )
            .with_note("Dart does not support default type parameters, so all declarations of the same type must have the same number of arguments.")
            .finish();
        self.messages.push(Message {
            report,
            kind: ReportKind::Error,
        });
    }

    fn visit_entity_name(&mut self, name: &TsEntityName, param_count: Option<usize>) {
        let (mut id, span): (&str, _) = match name {
            TsEntityName::TsQualifiedName(qn) => (&qn.right.sym, qn.right.span),
            TsEntityName::Ident(ident) => (&ident.sym, ident.span),
        };
        let mut resolved = false;
        if let Some(imports) = &mut self.imports {
            let (replacement, lib) = replacement_for(id);
            if let Some(replacement) = replacement {
                id = replacement;
            }
            if let Some(lib) = lib {
                imports.insert(lib);
            }
            resolved = resolved || replacement.is_some() || lib.is_some();
        }
        if resolved || self.resolved.contains_key(id) {
            self.push(id);
            return;
        }
        let count = param_count.unwrap_or(0);
        match self.undecls.get(id).cloned() {
            Some((old, old_range)) if old != count => {
                self.errors += 1;
                if log_enabled!(Level::Error) {
                    let range = self.range_of(span);
                    self.report_type_param_mismatch(count, old, range, old_range, None);
                }
            }
            None => {
                let range = self.range_of(span);
                self.undecls.insert(id.to_owned(), (count, range));
            }
            _ => {}
        }
        self.push(id);
    }

    /// Emits the inner function parametes, not including the surrounding parentheses.
    fn visit_function_params(&mut self, params: &[TsFnParam]) {
        for item in params {
            self.visit_function_param_single(item);
        }
        if !params.is_empty() {
            self.pop();
        }
    }

    fn visit_rest_pat(&mut self, rest: &RestPat) {
        self.push_char('[');
        let mut ty = self.collect(|s| s.visit_type_ann(&rest.type_ann));
        if ty.starts_with("List<") {
            ty = String::from(&ty[5..(ty.len() - 1)]);
        }
        if !(ty == "dynamic" || ty.ends_with('?')) {
            ty.push('?');
        }
        for idx in '1'..='9' {
            self.push(&ty);
            self.push_char(' ');
            self.push(parse_pat(&rest.arg).unwrap_or("_"));
            self.push_char(idx);
            self.push_char(',');
        }
        self.push_char(']');
    }

    fn visit_function_param_single(&mut self, item: &TsFnParam) {
        match item {
            TsFnParam::Rest(rest) => self.visit_rest_pat(rest),
            TsFnParam::Ident(ident) => {
                let id: &str = &ident.id.sym;
                if id == "this" {
                    // 'this' is a TypeScript concept, it cannot be applied to Dart.
                    return;
                }
                self.visit_type_ann(&ident.type_ann);
                self.push_char(' ');
                self.push(id);
            }
            _ => {
                error!("Unhandled function parameter:\n{:?}", item);
                todo!()
            }
        }
        self.push_char(',');
    }

    /// Visits the type annotation if present, or pushes 'dynamic'.
    fn visit_type_ann(&mut self, type_ann: &Option<TsTypeAnn>) {
        if let Some(ann) = type_ann {
            self.visit_type(&ann.type_ann);
        }
    }

    fn visit_union(&mut self, uni: &TsUnionType) -> bool {
        let is_parseable_union = self.visit_mono_union(uni) || self.visit_nullable_union(uni);
        if !is_parseable_union {
            self.push("dynamic");
        }
        is_parseable_union
    }

    /// Returns whether this union was a nullable union,
    /// i.e. `T | null | undefined`
    fn visit_nullable_union(&mut self, uni: &TsUnionType) -> bool {
        let simple_union: Vec<_> = uni
            .types
            .iter()
            .cloned()
            .filter(|e| {
                !matches!(
                    e.as_ref(),
                    TsType::TsKeywordType(TsKeywordType {
                        kind: TsKeywordTypeKind::TsUndefinedKeyword
                            | TsKeywordTypeKind::TsNullKeyword,
                        ..
                    })
                )
            })
            .collect();
        if simple_union.len() == 1 {
            self.visit_type(simple_union.first().unwrap().as_ref());
            self.optional();
            return true;
        }
        if self.visit_mono_union(&TsUnionType {
            span: uni.span,
            types: simple_union,
        }) {
            self.optional();
            return true;
        }

        false
    }

    /// Returns whether this union was a union of literals of the same kind,
    /// i.e. `'one' | 'two' | 'three'` or `1 | 2 | 3`
    fn visit_mono_union(&mut self, uni: &TsUnionType) -> bool {
        let ty: &TsType = uni.types.first().as_ref().unwrap();
        let matcher = gen_matcher!(
            ty,
            TsType::TsLitType(TsLitType {
                lit: TsLit::Str(_),
                ..
            }),
            TsType::TsLitType(TsLitType {
                lit: TsLit::Number(_),
                ..
            }),
            TsType::TsLitType(TsLitType {
                lit: TsLit::Bool(_),
                ..
            })
        );
        let is_mono_union = uni.types.iter().all(matcher);
        if is_mono_union {
            self.visit_type(ty);
        }
        is_mono_union
    }

    fn visit_type(&mut self, typ: &TsType) {
        match typ {
            TsType::TsTypeLit(type_lit) => self.visit_ts_type_lit(type_lit),
            TsType::TsTypePredicate(_) => self.push("bool"), // A is B
            TsType::TsTupleType(_) => self.push("List<dynamic>"),
            TsType::TsParenthesizedType(ty) => self.visit_type(&ty.type_ann),
            TsType::TsUnionOrIntersectionType(TsUnionOrIntersectionType::TsUnionType(uni)) => {
                self.visit_union(uni);
            }
            TsType::TsKeywordType(key) => match key.kind {
                TsKeywordTypeKind::TsNumberKeyword | TsKeywordTypeKind::TsBigIntKeyword => {
                    self.push("num")
                }
                TsKeywordTypeKind::TsBooleanKeyword => self.push("bool"),
                TsKeywordTypeKind::TsStringKeyword => self.push("String"),
                TsKeywordTypeKind::TsVoidKeyword => self.push("void"),
                _ => self.push("dynamic"),
            },
            TsType::TsFnOrConstructorType(func) => match func {
                TsFnOrConstructorType::TsFnType(func) => {
                    self.visit_type(&func.type_ann.type_ann);
                    self.push(" Function");
                    self.visit_type_params(&func.type_params);
                    self.push_char('(');
                    self.visit_function_params(&func.params);
                    self.push_char(')');
                }
                // new(..): ..
                TsFnOrConstructorType::TsConstructorType(ctor) => {
                    // warn!("Constructor type not handled.");
                    debug!("{:?}", ctor);
                    self.push("dynamic Function()");
                }
            },
            TsType::TsTypeRef(re) => {
                self.visit_entity_name(
                    &re.type_name,
                    re.type_params.as_ref().map(|x| x.params.len()),
                );
                if let Some(para) = &re.type_params {
                    self.push_char('<');
                    for item in &para.params {
                        self.visit_type(item);
                        self.push_char(',');
                    }
                    self.pop();
                    self.push_char('>');
                }
            }
            TsType::TsArrayType(arr) => {
                self.push("List<");
                self.visit_type(&arr.elem_type);
                self.push_char('>');
            }
            TsType::TsOptionalType(typ) => {
                self.visit_type(&typ.type_ann);
                self.optional();
            }
            TsType::TsLitType(TsLitType { lit, .. }) => match lit {
                TsLit::Number(_) | TsLit::BigInt(_) => self.push("num"),
                TsLit::Str(_) | TsLit::Tpl(_) => self.push("String"),
                TsLit::Bool(_) => self.push("bool"),
            },
            TsType::TsTypeOperator(op) => match op.op.as_str() {
                "readonly" => self.visit_type(&op.type_ann),
                "keyof" => self.push("String"),
                "unique" => self.push("dynamic"), // unique symbol
                _ => {
                    // warn!("Unhandled type operator: {}", other);
                    self.visit_type(&op.type_ann);
                }
            },
            TsType::TsThisType(_) => {
                let ty = self
                    .class
                    .as_ref()
                    .map(|x| x.id.clone())
                    .or_else(|| self.current_ident.as_ref().cloned())
                    .unwrap_or_else(|| "dynamic".to_owned());
                self.push(&ty);
            }
            _ => self.push("dynamic"),
        };
    }

    fn visit_ts_type_lit(&mut self, lit: &TsTypeLit) {
        if let Some(id) = self.current_ident.as_ref().map(|x| format!("I{}", x)) {
            if self.type_lits.contains_key(&id) {
                self.push(&id);
                return;
            }
            let body = self.collect(|s| {
                let temp = s.class.take();
                s.class = Some(Class {
                    id: id.to_owned(),
                    members: AHashSet::new(),
                    fields: vec![],
                    anonymous: true,
                });
                s.push("@JS() @anonymous class ");
                s.push(&id);
                s.push_char('{');
                {
                    s.visit_type_elements(&lit.members);
                }
                s.push_char('}');
                s.class = temp;
            });
            self.push(&id);
            self.type_lits.insert(id, body);
            return;
        }
        // warn!("Unhandled anonymous type literal:\n{:?}", lit);
        self.push("dynamic");
    }

    fn register_type(
        &mut self,
        id: &str,
        id_span: Range<usize>,
        type_params: &Option<TsTypeParamDecl>,
    ) {
        let size = type_params.as_ref().map(|x| x.params.len()).unwrap_or(0);
        match self.undecls.remove(id) {
            Some((old, old_range)) if old != size => {
                self.errors += 1;
                if log_enabled!(Level::Error) {
                    self.report_type_param_mismatch(size, old, id_span.clone(), old_range, None);
                }
            }
            _ => {}
        }
        match self.resolved.get(id).cloned() {
            Some((old, old_range)) if old != size => {
                self.errors += 1;
                if log_enabled!(Level::Error) {
                    self.report_type_param_mismatch(
                        size,
                        old,
                        id_span,
                        old_range,
                        Some("This type's effective declaration was resolved here."),
                    );
                }
            }
            None => {
                self.resolved.insert(id.to_owned(), (size, id_span));
            }
            _ => {}
        }
    }

    fn visit_class(&mut self, ClassDecl { class, ident, .. }: &ClassDecl) {
        let id: &str = &ident.sym;
        self.register_type(id, self.range_of(ident.span), &class.type_params);
        self.class = Some(Class {
            fields: vec![],
            id: id.to_owned(),
            anonymous: false,
            members: AHashSet::new(),
        });
        self.push("@JS() class ");
        self.push(id);
        self.visit_type_params(&class.type_params);
        if let Some(extends) = &class.super_class {
            self.push(" extends ");
            self.push(self.parse_expression(extends).unwrap().0);
        }
        if !class.implements.is_empty() {
            self.push(" implements ");
            for imp in &class.implements {
                let params = imp.type_args.as_ref().map(|x| x.params.len());
                self.visit_entity_name(&imp.expr, params);
                if let Some(args) = &imp.type_args {
                    self.push_char('<');
                    for ty in &args.params {
                        self.visit_type(ty);
                        self.push_char(',')
                    }
                    self.pop();
                    self.push_char('>');
                }
                self.push_char(',');
            }
            if class.implements.len() != 1 {
                self.pop();
            }
        }
        self.push_char('{');
        {
            for item in &class.body {
                self.visit_class_member(item);
            }
        }
        self.push_char('}')
    }

    fn visit_class_member(&mut self, member: &ClassMember) {
        match member {
            ClassMember::Method(ClassMethod {
                key,
                is_static,
                function,
                ..
            }) => {
                let id = match &key {
                    PropName::Str(Str { value, .. }) => value.as_ref(),
                    PropName::Ident(id) => id.as_ref(),
                    _ => todo!(),
                };
                self.visit_function(id, function, *is_static, false, None)
            }
            ClassMember::Constructor(Constructor { params, .. }) => {
                self.push("external factory ");
                self.push(&self.class.as_ref().map(|x| x.id.clone()).unwrap());
                self.push_char('(');
                for param in params {
                    match param {
                        ParamOrTsParamProp::Param(param) => self.visit_param_single(param),
                        _ => {
                            error!("Unhandled parameter:\n{:?}", param);
                            todo!()
                        }
                    }
                }
                self.push(");");
            }
            ClassMember::ClassProp(ClassProp {
                type_ann,
                key,
                is_static,
                ..
            }) => {
                self.push("external ");
                if *is_static {
                    self.push("static ");
                }
                self.visit_type_ann(type_ann);
                self.push_char(' ');
                self.push(self.parse_expression(key).unwrap().0);
                self.semi();
            }
            ClassMember::PrivateProp(_) => {}
            _ => {
                error!("Unhandled class member:\n{:?}", member);
                todo!()
            }
        }
    }
}
