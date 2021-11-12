use std::collections::HashSet;

use log::{debug, error, info, warn};
use swc_ecma_ast::*;

struct Transformer {
    path: Vec<String>,
    bufs: Vec<String>,
    /// Should be filled when there are fields, or when the class is not anonymous.
    class: Option<Class>,
    undecls: HashSet<String>,
    resolved: HashSet<String>,
    resolved_funcs: HashSet<String>,
}

struct Class {
    /// Ident of class
    id: String,
    /// `(id, type)`
    fields: Vec<(String, String)>,
    /// Whether this class only exists on the type level, i.e. a pure interface with
    /// no constructors in TypeScript.
    anonymous: bool,
}

/// Parses a pattern as an ident.
fn parse_pat(pat: &Pat) -> Option<&str> {
    match pat {
        Pat::Ident(id) => Some(id.id.sym.as_ref()),
        _ => None,
    }
}

fn parse_expression(expr: &Expr) -> Option<&str> {
    match expr {
        Expr::Ident(ident) => Some(ident.sym.as_ref()),
        Expr::Lit(Lit::Str(string)) => Some(string.value.as_ref()),
        other => {
            error!("Unhandled expression:\n{:?}", other);
            None
        }
    }
}

pub fn visit_program(module: &Module, library_name: &str, size_hint: Option<usize>) -> String {
    let buf = match size_hint {
        Some(size) => String::with_capacity(size),
        None => String::new(),
    };
    let mut t = Transformer {
        path: vec![],
        bufs: vec![buf],
        class: None,
        undecls: HashSet::new(),
        resolved: HashSet::new(),
        resolved_funcs: HashSet::new(),
    };

    t.push("@JS() library ");
    t.push(library_name);
    t.push(";\n// ignore_for_file: non_constant_identifier_names, private_optional_parameter, unused_element\n");
    t.push("import 'package:js/js.dart';");
    t.visit_module_item(&module.body);
    if !t.undecls.is_empty() {
        let cls = t.undecls.into_iter().collect::<Vec<_>>().join(", ");
        warn!("The following types were used but not declared:\n{}", cls);
    }
    t.bufs.first().unwrap().clone()
}
impl Transformer {
    #[inline]
    fn buf(&self) -> &String {
        self.bufs.last().unwrap()
    }

    #[inline]
    fn push(&mut self, input: &str) {
        self.bufs.last_mut().unwrap().push_str(input);
    }

    #[inline]
    fn push_char(&mut self, c: char) {
        self.bufs.last_mut().unwrap().push(c);
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
        self.push("@JS('");
        for item in &self.path {
            let buf = self.bufs.first_mut().unwrap();
            buf.push_str(item);
            buf.push('.');
        }
        self.push(path_end);
        self.push("') ");
    }

    #[inline]
    fn semi(&mut self) {
        self.push_char(';')
    }
}

impl Transformer {
    fn visit_module_item(&mut self, items: &[ModuleItem]) {
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
            | ModuleDecl::TsNamespaceExport(_) => {}
            _ => {
                error!("Unhandled module declaration:\n{:?}", decl);
                todo!();
            }
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

    fn visit_default_decl(&mut self, decl: &DefaultDecl) {
        match decl {
            DefaultDecl::TsInterfaceDecl(intr) => self.visit_interface(intr),
            DefaultDecl::Fn(_) => {
                info!("Default function declaration ignored.");
            }
            _ => {
                error!("Unhandled default declaration:\n{:?}", decl);
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
    fn visit_interface(&mut self, intr: &TsInterfaceDecl) {
        let id = intr.id.sym.as_ref();
        self.undecls.remove(id);
        self.resolved.insert(id.to_owned());
        if ["String", "Function"].contains(&id) {
            warn!("Forbidden interface: {}", id);
            return;
        }
        self.class = Some(Class {
            anonymous: true,
            fields: vec![],
            id: String::from(intr.id.sym.as_ref()),
        });
        self.push("@JS() ");
        let class_body = self.collect(|s| {
            s.push("class ");
            s.push(id);
            s.visit_type_params(&intr.type_params);
            s.push_char('{');
            {
                s.visit_interface_body(&intr.body);
                s.emit_factory_constr();
            }
            s.push_char('}');
        });
        let Class { anonymous, .. } = self.class.take().unwrap();
        if anonymous {
            self.push("@anonymous ");
        }
        self.push(&class_body);
    }

    /// `@JS(..) external Output func<..>(...);`
    fn visit_function(&mut self, func: &FnDecl) {
        let id: &str = &func.ident.sym;
        let conflict = !self.resolved_funcs.insert(id.to_owned());
        if conflict {
            warn!("Overload of {} ignored.", id);
            return;
        }
        self.annotate(id);
        self.push("external ");
        self.visit_type_ann(&func.function.return_type);
        self.push_char(' ');
        self.push(id);
        self.visit_type_params(&func.function.type_params);
        self.visit_params(&func.function.params);
        self.semi();
    }

    /// `@JS(..) external T variable;`
    fn visit_variable(&mut self, var: &VarDecl) {
        for item in &var.decls {
            if let swc_ecma_ast::Pat::Ident(ident) = &item.name {
                let id = ident.id.sym.as_ref();
                if ["String"].contains(&id) {
                    warn!("Forbidden variable name: {}.", id);
                    continue;
                }
                self.annotate(id);
                self.push("external ");
                self.visit_type_ann(&ident.type_ann);
                self.push_char(' ');
                self.push(id);
                self.semi();
            }
        }
    }

    fn visit_module(&mut self, module: &TsModuleDecl) {
        if let Some(ns) = &module.body {
            if !module.global {
                match &module.id {
                    swc_ecma_ast::TsModuleName::Ident(ident) => {
                        self.path.push(String::from(&ident.sym as &str))
                    }
                    swc_ecma_ast::TsModuleName::Str(string) => {
                        self.path.push(String::from(&string.value as &str))
                    }
                }
            }
            match ns {
                swc_ecma_ast::TsNamespaceBody::TsModuleBlock(blk) => {
                    self.visit_module_item(&blk.body)
                }
                swc_ecma_ast::TsNamespaceBody::TsNamespaceDecl(_) => todo!(),
            }
            if !module.global {
                self.path.pop();
            }
        }
    }

    fn visit_type_alias(&mut self, alias: &TsTypeAliasDecl) {
        self.push("typedef ");
        self.push(&alias.id.sym);
        self.visit_type_params(&alias.type_params);
        self.push_char('=');
        self.visit_type(alias.type_ann.as_ref());
        self.semi();
    }

    fn emit_getter(&mut self, typ: &str, id: &str) {
        self.push("external ");
        self.push(typ);
        self.push(" get ");
        self.push(id);
        self.semi();
    }

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

    fn visit_ts_prop_sig(&mut self, prop: &TsPropertySignature) {
        let id = parse_expression(prop.key.as_ref()).unwrap();
        if id.contains('-') {
            warn!("Invalid character in property name: {}.", id);
            return;
        }
        if ["default", "switch", "in", "var", "is"].contains(&id) {
            warn!("Forbidden property name: {}.", id);
            return;
        }
        let ty = self.collect(|s| {
            s.visit_type_params(&prop.type_params);
            s.visit_type_ann(&prop.type_ann);
            if prop.optional && !s.buf().ends_with('?') {
                s.push_char('?');
            }
        });
        self.emit_getter(&ty, id);
        self.emit_setter(&ty, id, None);
        self.class
            .as_mut()
            .unwrap()
            .fields
            .push((id.to_owned(), ty));
    }

    fn visit_interface_body(&mut self, body: &TsInterfaceBody) {
        let mut first = true;
        for item in &body.body {
            match item {
                TsTypeElement::TsPropertySignature(prop) => self.visit_ts_prop_sig(prop),
                TsTypeElement::TsMethodSignature(met) => self.visit_method(met),
                // Dart cannot make use of index signatures. Closest we get is dynamic.
                TsTypeElement::TsIndexSignature(_) => {}
                TsTypeElement::TsConstructSignatureDecl(TsConstructSignatureDecl {
                    params,
                    ..
                }) => {
                    self.class.as_mut().unwrap().anonymous = false;
                    let params = self.collect(|s| s.visit_function_params(params));
                    self.push("external factory ");
                    let id = self.class.as_ref().unwrap().id.clone();
                    self.push(&id);
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
                TsTypeElement::TsCallSignatureDecl(call) if !first => {
                    info!("Call signature ignored.");
                    debug!("{:?}", call)
                }
                TsTypeElement::TsCallSignatureDecl(call) => {
                    warn!("Call signature not handled.");
                    debug!("{:?}", call);
                }
                TsTypeElement::TsGetterSignature(TsGetterSignature { type_ann, key, .. }) => {
                    self.push("external ");
                    self.visit_type_ann(type_ann);
                    self.push(" get ");
                    self.push(parse_expression(key).unwrap());
                    self.semi();
                }
                TsTypeElement::TsSetterSignature(TsSetterSignature { key, param, .. }) => {
                    self.push("external set ");
                    self.push(parse_expression(key).unwrap());
                    self.push_char('(');
                    self.visit_function_param_single(param);
                    self.push(");");
                }
            }
            first = false;
        }
    }

    /// `external T id(..);`
    fn visit_method(&mut self, met: &TsMethodSignature) {
        let id = match &met.key.as_ref() {
            Expr::Ident(id) => id.sym.as_ref(),
            _ => unreachable!(),
        };
        if ["catch"].contains(&id) {
            // Dart keyword, cannot be called.
            warn!("Forbidden method name: {}.", id);
            return;
        }
        if id.contains('-') {
            warn!("Forbidden method name: {}.", id);
            return;
        }
        self.push("external ");
        self.visit_type_ann(&met.type_ann);
        self.push_char(' ');
        self.push(id);
        self.push_char('(');
        self.visit_function_params(&met.params);
        self.push_char(')');
        self.semi();
    }

    /// `external factory C({ .. });`
    fn emit_factory_constr(&mut self) {
        if self.class.as_ref().unwrap().fields.is_empty() {
            return;
        }
        let class = self.class.take().unwrap();
        self.push("external factory ");
        self.push(&class.id);
        self.push("({");
        for (id, ty) in &class.fields {
            self.push(ty);
            self.push_char(' ');
            self.push(id);
            self.push_char(',');
        }
        self.push("});");
        self.class = Some(class);
    }

    /// `<A, B extends .., ..>`
    fn visit_type_params(&mut self, params: &Option<TsTypeParamDecl>) {
        if let Some(TsTypeParamDecl { params, .. }) = params {
            self.push_char('<');
            for item in params {
                self.push(&item.name.sym);
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

    fn visit_entity_name(&mut self, name: &TsEntityName) {
        let id: &str = match name {
            TsEntityName::TsQualifiedName(qn) => &qn.right.sym,
            TsEntityName::Ident(ident) => &ident.sym,
        };
        if !self.resolved.contains(id) {
            self.undecls.insert(id.to_owned());
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
        let ty = self.collect(|s| s.visit_type_ann(&rest.type_ann));
        let ty = &ty[5..(ty.len() - 1)];
        let nullable = ty == "dynamic" || ty.ends_with('?');
        let ty = format!("{}{} ", ty, if nullable { "" } else { "?" });
        for idx in ['1', '2', '3', '4', '5', '6', '7', '8', '9'] {
            self.push(&ty);
            self.push(parse_pat(&rest.arg).unwrap_or("_"));
            self.push_char(idx);
            self.push_char(',');
        }
        self.push_char(']');
    }

    fn visit_function_param_single(&mut self, item: &TsFnParam) {
        match item {
            TsFnParam::Ident(ident) => {
                if &ident.id.sym == "this" {
                    // 'this' is a TypeScript concept, it cannot be applied to Dart.
                    return;
                }
                self.visit_type_ann(&ident.type_ann);
                self.push_char(' ');
                self.push(&ident.id.sym);
            }
            TsFnParam::Rest(rest) => self.visit_rest_pat(rest),
            _ => {
                error!("Function parameter not handled:\n{:?}", item);
                todo!()
            }
        }
        self.push_char(',');
    }

    /// Visits the type annotation if present, or pushes 'dynamic'.
    fn visit_type_ann(&mut self, type_ann: &Option<TsTypeAnn>) {
        if let Some(ann) = type_ann {
            self.visit_type(&ann.type_ann);
        } else {
            self.push("dynamic");
        }
    }

    fn visit_type(&mut self, typ: &TsType) {
        match typ {
            TsType::TsKeywordType(key) => match key.kind {
                TsKeywordTypeKind::TsNumberKeyword | TsKeywordTypeKind::TsBigIntKeyword => {
                    self.push("num")
                }
                TsKeywordTypeKind::TsBooleanKeyword => self.push("bool"),
                TsKeywordTypeKind::TsStringKeyword => self.push("String"),
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
                TsFnOrConstructorType::TsConstructorType(ctor) => {
                    warn!("Constructor type not handled.");
                    debug!("{:?}", ctor);
                    self.push("dynamic Function()");
                }
            },
            TsType::TsTypeRef(re) => {
                self.visit_entity_name(&re.type_name);
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
                self.push_char('?');
            }
            TsType::TsLitType(TsLitType { lit, .. }) => match lit {
                TsLit::Number(_) | TsLit::BigInt(_) => self.push("num"),
                TsLit::Str(_) | TsLit::Tpl(_) => self.push("String"),
                TsLit::Bool(_) => self.push("bool"),
            },
            TsType::TsUnionOrIntersectionType(TsUnionOrIntersectionType::TsUnionType(uni)) => {
                let simple_union: Vec<_> = uni
                    .types
                    .iter()
                    .filter(|e| match e.as_ref() {
                        TsType::TsKeywordType(TsKeywordType { kind, .. }) => !matches!(
                            kind,
                            TsKeywordTypeKind::TsUndefinedKeyword
                                | TsKeywordTypeKind::TsNullKeyword
                        ),
                        _ => true,
                    })
                    .collect();
                if simple_union.len() == 1 {
                    self.visit_type(simple_union.first().unwrap().as_ref());
                    self.push_char('?');
                } else {
                    self.push("dynamic");
                }
            }
            _ => self.push("dynamic"),
        };
    }

    fn visit_decl(&mut self, decl: &Decl) {
        match decl {
            Decl::Fn(func) => self.visit_function(func),
            Decl::Var(var) => self.visit_variable(var),
            Decl::TsInterface(intr) => self.visit_interface(intr),
            Decl::TsModule(module) => self.visit_module(module),
            Decl::TsTypeAlias(alias) => self.visit_type_alias(alias),
            Decl::Class(class) => self.visit_class(class),
            _ => {
                error!("Unhandled declaration:\n{:?}", decl);
                todo!();
            }
        }
    }

    fn visit_class(&mut self, class: &ClassDecl) {
        let id: &str = &class.ident.sym;
        self.undecls.remove(id);
        self.class = Some(Class {
            fields: vec![],
            id: id.to_owned(),
            anonymous: false,
        });
        self.push("@JS() class ");
        self.push(id);
        self.visit_type_params(&class.class.type_params);
        if let Some(extends) = &class.class.super_class {
            self.push(" extends ");
            self.push(parse_expression(extends).unwrap());
        }
        if !class.class.implements.is_empty() {
            for imp in &class.class.implements {
                dbg!(imp);
            }
        }
        self.push_char('{');
        {
            for item in &class.class.body {
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
                self.push("external ");
                if *is_static {
                    self.push("static ");
                }
                self.visit_type_ann(&function.return_type);
                self.push_char(' ');
                let id = match &key {
                    PropName::Str(Str { value, .. }) => value.as_ref(),
                    PropName::Ident(id) => id.as_ref(),
                    _ => todo!(),
                };
                self.push(id);
                self.visit_type_params(&function.type_params);
                self.visit_params(&function.params);
                self.semi();
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
                self.push(parse_expression(key).unwrap());
                self.semi();
            }
            _ => {}
        }
    }
}
