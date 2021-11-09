use swc_ecma_ast::*;

pub struct Transformer {
    path: Vec<String>,
    buf: String,
    fields: Option<(String, Vec<(String, String)>)>,
}
impl Transformer {
    pub fn visit_program(module: &Module, library_name: &str, size_hint: Option<usize>) -> String {
        let buf = match size_hint {
            Some(size) => String::with_capacity(size),
            None => String::new(),
        };
        let mut t = Self {
            path: vec![],
            buf,
            fields: None,
        };

        t.push("@JS() library ");
        t.push(library_name);
        t.push(";\n// ignore_for_file: non_constant_identifier_names, private_optional_parameter, unused_element\n");
        t.push("import 'package:js/js.dart';");
        t.visit_module_item(&module.body);
        t.buf
    }

    fn visit_module_item(&mut self, items: &[ModuleItem]) {
        items.iter().for_each(|e| match e {
            ModuleItem::ModuleDecl(decl) => self.visit_module_decl(decl),
            ModuleItem::Stmt(stmt) => self.visit_statement(stmt),
        })
    }

    #[inline]
    fn push(&mut self, input: &str) {
        self.buf.push_str(input)
    }

    fn annotate(&mut self, path_end: &str) {
        self.push("@JS('");
        for item in &self.path {
            self.buf.push_str(item);
            self.buf.push('.');
        }
        self.push(path_end);
        self.push("') ");
    }

    #[inline]
    fn semi(&mut self) {
        self.buf.push(';')
    }

    fn visit_params(&mut self, params: &[Param]) {
        self.buf.push('(');
        for item in params {
            match &item.pat {
                swc_ecma_ast::Pat::Ident(ident) => {
                    if let Some(ann) = &ident.type_ann {
                        self.visit_type(&ann.type_ann);
                    }
                    self.buf.push(' ');
                    self.push(&ident.id.sym);
                }
                _ => todo!(),
            }
            self.buf.push(',');
        }
        if !params.is_empty() {
            self.buf.pop();
        }
        self.buf.push(')');
    }

    /// `@JS() @anonymous class T<..> { .. external factory T({ .. }) }`
    fn visit_interface(&mut self, intr: &TsInterfaceDecl) {
        self.push("@JS() @anonymous class ");
        self.push(&intr.id.sym);
        self.visit_type_params(intr.type_params.as_ref());
        self.buf.push('{');
        self.visit_interface_body(&intr.body);
        self.emit_factory_constr();
        self.buf.push('}');
    }

    /// `@JS(..) external Output func<..>(...);`
    fn visit_function(&mut self, func: &FnDecl) {
        self.annotate(&func.ident.sym);
        self.push("external ");
        if let Some(ann) = &func.function.return_type {
            self.visit_type(&ann.type_ann);
        }
        if let Some(ann) = &func.function.type_params {
            self.visit_type_params(Some(ann));
        }
        self.buf.push(' ');
        self.push(&func.ident.sym);
        self.visit_params(&func.function.params);
        self.semi();
    }

    /// `@JS(..) external T variable;`
    fn visit_variable(&mut self, var: &VarDecl) {
        for item in &var.decls {
            match &item.name {
                swc_ecma_ast::Pat::Ident(ident) => {
                    self.annotate(&ident.id.sym);
                    self.push("external ");
                    if let Some(ann) = &ident.type_ann {
                        self.visit_type(&ann.type_ann);
                    }
                    self.push(&ident.id.sym);
                    self.semi();
                }
                swc_ecma_ast::Pat::Array(_) => todo!(),
                swc_ecma_ast::Pat::Rest(_) => todo!(),
                swc_ecma_ast::Pat::Object(_) => todo!(),
                swc_ecma_ast::Pat::Assign(_) => todo!(),
                _ => {}
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
        self.visit_type_params(alias.type_params.as_ref());
        self.buf.push('=');
        self.visit_type(alias.type_ann.as_ref());
        self.semi();
    }

    fn visit_statement(&mut self, stmt: &Stmt) {
        match stmt {
            Stmt::Decl(decl) => self.visit_decl(decl),
            _ => {
                dbg!(stmt);
                todo!();
            }
        }
    }

    fn visit_interface_body(&mut self, body: &TsInterfaceBody) {
        for item in &body.body {
            match item {
                swc_ecma_ast::TsTypeElement::TsPropertySignature(prop) => {
                    let mut make_prop = |setter: bool| {
                        self.push("external ");
                        if !setter {
                            if let Some(ann) = &prop.type_ann {
                                self.visit_type(&ann.type_ann);
                            }
                            self.visit_type_params(prop.type_params.as_ref());
                            if prop.optional {
                                self.buf.push('?');
                            }
                        }
                        self.push(if setter { " set " } else { " get " });
                        if let Expr::Ident(ident) = &prop.key.as_ref() {
                            self.push(&ident.sym);
                        } else {
                            todo!()
                        }
                        if setter {
                            self.buf.push('(');
                            if let Some(ann) = &prop.type_ann {
                                self.visit_type(&ann.type_ann);
                            }
                            if let Some(param) = &prop.type_params {
                                self.visit_type_params(Some(param))
                            }
                            if prop.optional {
                                self.buf.push('?');
                            }
                            self.push(" value)");
                        }
                        self.semi();
                    };
                    make_prop(false);
                    make_prop(true);
                }
                swc_ecma_ast::TsTypeElement::TsMethodSignature(met) => self.visit_method(met),
                other => {
                    dbg!(other);
                    todo!();
                }
            }
        }
    }

    fn visit_method(&mut self, met: &TsMethodSignature) {
        dbg!(met);
        todo!();
    }

    fn emit_factory_constr(&mut self) {
        dbg!(&self.fields);
        todo!();
    }

    fn visit_type_params(&mut self, params: Option<&TsTypeParamDecl>) {
        if let Some(TsTypeParamDecl { params, .. }) = params {
            self.buf.push('<');
            for item in params {
                self.push(&item.name.sym);
                if let Some(typ) = &item.constraint {
                    self.push(" extends ");
                    self.visit_type(typ);
                }
                self.buf.push(',');
            }
            self.buf.pop();
            self.buf.push('>');
        }
    }

    fn visit_entity_name(&mut self, name: &TsEntityName) {
        match name {
            TsEntityName::TsQualifiedName(qn) => {
                self.push(&qn.right.sym);
            }
            TsEntityName::Ident(ident) => {
                self.push(&ident.sym);
            }
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
                TsKeywordTypeKind::TsVoidKeyword | TsKeywordTypeKind::TsNeverKeyword => {
                    self.push("void")
                }
                TsKeywordTypeKind::TsUndefinedKeyword | TsKeywordTypeKind::TsNullKeyword => {
                    self.push("null")
                }
                _ => self.push("dynamic"),
            },
            TsType::TsFnOrConstructorType(func) => match func {
                TsFnOrConstructorType::TsFnType(func) => {
                    // Output Function(..)
                    self.visit_type(&func.type_ann.type_ann);
                    self.push(" Function");
                    if let Some(ann) = &func.type_params {
                        self.visit_type_params(Some(ann))
                    }
                    self.buf.push('(');
                    for item in &func.params {
                        match item {
                            TsFnParam::Ident(ident) => {
                                if let Some(ann) = &ident.type_ann {
                                    self.visit_type(&ann.type_ann);
                                } else {
                                    self.push("dynamic");
                                }
                                self.buf.push(' ');
                                self.push(&ident.id.sym);
                            }
                            TsFnParam::Array(_) => todo!(),
                            TsFnParam::Rest(_) => todo!(),
                            TsFnParam::Object(_) => todo!(),
                        }
                        self.buf.push(',');
                    }
                    self.buf.pop();
                    self.buf.push(')');
                }
                TsFnOrConstructorType::TsConstructorType(_) => todo!(),
            },
            TsType::TsTypeRef(re) => {
                self.visit_entity_name(&re.type_name);
                if let Some(para) = &re.type_params {
                    self.buf.push('<');
                    for item in &para.params {
                        self.visit_type(item);
                        self.buf.push(',');
                    }
                    self.buf.pop();
                    self.buf.push('>');
                }
            }
            TsType::TsArrayType(arr) => {
                self.push("List<");
                self.visit_type(&arr.elem_type);
                self.buf.push('>');
            }
            TsType::TsOptionalType(typ) => {
                self.visit_type(&typ.type_ann);
                self.buf.push('?');
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
                    self.buf.push('?');
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
            _ => {
                dbg!(decl);
                todo!();
            }
        }
    }

    fn visit_module_decl(&mut self, decl: &ModuleDecl) {
        match decl {
            ModuleDecl::ExportDecl(exp) => self.visit_decl(&exp.decl),
            _ => {
                dbg!(decl);
                todo!();
            }
        }
    }
}
