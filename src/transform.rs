use std::collections::HashMap;

use swc_ecma_ast::*;

pub struct Transformer {
    path: Vec<String>,
    buf: String,
    fields: Vec<(String, String)>,
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
            fields: vec![],
        };

        t.push("@JS() library ");
        t.push(library_name);
        t.push(";import 'package:js/js.dart';");
        t.visit_module_item(&module.body);
        t.buf
    }

    fn visit_module_item(&mut self, items: &Vec<ModuleItem>) {
        items.iter().for_each(|e| match e {
            ModuleItem::ModuleDecl(decl) => self.visit_module_decl(decl),
            ModuleItem::Stmt(stmt) => self.visit_statement(stmt),
        })
    }

    #[inline]
    fn push(&mut self, input: &str) {
        self.buf.push_str(input)
    }

    #[inline]
    fn annotate(&mut self, path_end: &str) {
        self.push("@JS('");
        for item in &self.path {
            self.buf.push_str(&item);
            self.buf.push('.');
        }
        self.push(path_end);
        self.push("') ");
    }

    #[inline]
    fn semi(&mut self) {
        self.buf.push(';')
    }

    fn visit_params(&mut self, params: &Vec<Param>) {
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
                swc_ecma_ast::Pat::Array(_) => todo!(),
                swc_ecma_ast::Pat::Rest(_) => todo!(),
                swc_ecma_ast::Pat::Object(_) => todo!(),
                // swc_ecma_ast::Pat::Assign(_) => todo!(),
                // swc_ecma_ast::Pat::Invalid(_) => todo!(),
                // swc_ecma_ast::Pat::Expr(_) => todo!(),
                _ => self.push("dynamic _"),
            }
            self.buf.push(',');
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
    }

    fn visit_statement(&mut self, stmt: &Stmt) {
        if let Stmt::Decl(decl) = stmt {
            match decl {
                swc_ecma_ast::Decl::Class(_) => todo!(),
                swc_ecma_ast::Decl::Fn(func) => self.visit_function(func),
                swc_ecma_ast::Decl::Var(var) => self.visit_variable(var),
                swc_ecma_ast::Decl::TsInterface(intr) => self.visit_interface(intr),
                swc_ecma_ast::Decl::TsTypeAlias(typ) => self.visit_type_alias(typ),
                swc_ecma_ast::Decl::TsEnum(_) => todo!(),
                swc_ecma_ast::Decl::TsModule(module) => self.visit_module(module),
            }
        }
    }

    fn visit_interface_body(&mut self, body: &TsInterfaceBody) {
        for item in &body.body {
            match item {
                swc_ecma_ast::TsTypeElement::TsCallSignatureDecl(_) => todo!(),
                swc_ecma_ast::TsTypeElement::TsConstructSignatureDecl(_) => todo!(),
                swc_ecma_ast::TsTypeElement::TsPropertySignature(prop) => {
                    // external T
                    self.push("external ");
                    if let Some(ann) = &prop.type_ann {
                        self.visit_type(&ann.type_ann);
                    }
                    if let Some(param) = &prop.type_params {
                        self.visit_type_params(Some(param))
                    }
                    if prop.optional {
                        self.buf.push('?');
                    }
                }
                swc_ecma_ast::TsTypeElement::TsGetterSignature(_) => todo!(),
                swc_ecma_ast::TsTypeElement::TsSetterSignature(_) => todo!(),
                swc_ecma_ast::TsTypeElement::TsMethodSignature(_) => todo!(),
                swc_ecma_ast::TsTypeElement::TsIndexSignature(_) => todo!(),
            }
        }
    }

    fn emit_factory_constr(&mut self) {
        // todo!();
    }

    fn visit_type_params(&mut self, params: Option<&TsTypeParamDecl>) {
        if let Some(TsTypeParamDecl { params, .. }) = params {
            self.buf.push('<');
            for item in params {
                self.push(&item.name.sym);
                if let Some(typ) = &item.constraint {
                    self.push(" extends ");
                    self.visit_type(&typ);
                }
                self.buf.push(',');
            }
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
            TsType::TsFnOrConstructorType(_) => todo!(),
            TsType::TsTypeRef(re) => {
                self.visit_entity_name(&re.type_name);
                if let Some(para) = &re.type_params {
                    self.buf.push('<');
                    for item in &para.params {
                        self.visit_type(&*item);
                        self.buf.push(',');
                    }
                    self.buf.push('>');
                }
            }
            TsType::TsArrayType(arr) => {
                self.push("List<");
                self.visit_type(&*arr.elem_type);
                self.buf.push('>');
            }
            TsType::TsOptionalType(typ) => {
                self.visit_type(&*typ.type_ann);
                self.buf.push('?');
            }
            TsType::TsLitType(TsLitType { lit, .. }) => match lit {
                swc_ecma_ast::TsLit::Number(_) | swc_ecma_ast::TsLit::BigInt(_) => self.push("num"),
                swc_ecma_ast::TsLit::Str(_) | swc_ecma_ast::TsLit::Tpl(_) => self.push("String"),
                swc_ecma_ast::TsLit::Bool(_) => self.push("bool"),
            },
            _ => self.push("dynamic"),
        };
    }

    fn visit_module_decl(&mut self, decl: &ModuleDecl) {
        match decl {
            ModuleDecl::Import(_) => todo!(),
            ModuleDecl::ExportDecl(decl) => match &decl.decl {
                swc_ecma_ast::Decl::Fn(func) => self.visit_function(func),
                swc_ecma_ast::Decl::Var(var) => self.visit_variable(var),
                swc_ecma_ast::Decl::TsInterface(intr) => self.visit_interface(intr),
                swc_ecma_ast::Decl::TsModule(module) => self.visit_module(module),
                swc_ecma_ast::Decl::Class(_) => todo!(),
                swc_ecma_ast::Decl::TsTypeAlias(alias) => self.visit_type_alias(alias),
                swc_ecma_ast::Decl::TsEnum(_) => todo!(),
            },
            ModuleDecl::ExportNamed(_) => todo!(),
            ModuleDecl::ExportDefaultDecl(_) => todo!(),
            ModuleDecl::ExportDefaultExpr(_) => todo!(),
            ModuleDecl::ExportAll(_) => todo!(),
            ModuleDecl::TsImportEquals(_) => todo!(),
            ModuleDecl::TsExportAssignment(_) => todo!(),
            ModuleDecl::TsNamespaceExport(_) => todo!(),
        }
    }
}
