use anyhow::Result;
use std::collections::HashMap;
use std::path::Path;
use std::rc::Rc;

use crate::transform::Transformer;
use swc_common::{
    errors::{ColorConfig, Handler},
    SourceMap,
};
use swc_ecma_ast::Module;
use swc_ecma_parser::{lexer::Lexer, Parser, StringInput, Syntax};

pub struct Config {
    /// A list of paths to files to process.
    pub inputs: Vec<String>,
}

pub struct Entry {
    pub key: String,
    pub value: String,
}

pub fn parse_library(config: Config) -> Result<Vec<Entry>> {
    let modules = parse_impl(config);
    Ok(modules
        .into_iter()
        .map(|(key, val)| {
            let library_name = path_to_lib_name(Path::new(&key));
            Entry {
                key,
                value: Transformer::visit_program(&val, &library_name, None),
            }
        })
        .collect())
}

fn path_to_lib_name(buf: &Path) -> String {
    buf.components()
        .filter_map(|e| match e {
            std::path::Component::Normal(item) => Some(item.to_string_lossy()),
            _ => None,
        })
        .collect::<Vec<_>>()
        .join(".")
}

fn parse_impl(config: Config) -> HashMap<String, Module> {
    let cm: Rc<SourceMap> = Default::default();
    let handler = Handler::with_tty_emitter(ColorConfig::Auto, true, false, Some(cm.clone()));
    let mut modules = HashMap::new();

    for input in config.inputs {
        let fm = cm
            .load_file(Path::new(&input))
            .unwrap_or_else(|_| panic!("failed to load file \"{:?}\"", input));
        let lexer = Lexer::new(
            Syntax::Typescript(Default::default()),
            Default::default(),
            StringInput::from(&*fm),
            None,
        );

        let mut parser = Parser::new_from(lexer);

        for e in parser.take_errors() {
            e.into_diagnostic(&handler).emit();
        }

        let module = parser
            .parse_module()
            .map_err(|e| e.into_diagnostic(&handler).emit())
            .unwrap_or_else(|_| panic!("failed to parse module {}", input));
        modules.entry(input).or_insert(module);
    }
    modules
}
