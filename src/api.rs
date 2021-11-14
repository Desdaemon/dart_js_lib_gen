use crate::transform::visit_program;
use anyhow::Result;
use flexi_logger::Logger;
use log::debug;
use std::collections::HashMap;
use std::path::Path;
use std::rc::Rc;

use swc_common::{
    errors::{ColorConfig, Handler},
    SourceFile, SourceMap,
};
use swc_ecma_ast::Module;
use swc_ecma_parser::{lexer::Lexer, Parser, StringInput, Syntax};

pub struct Config {
    /// A list of paths to TypeScript definition files to process.
    pub inputs: Vec<String>,
    /// Specifies the logging behavior. Can be simply one of:
    /// - off, info, warn, error, debug; or
    /// - comma-separated key-value pairs of 'crate\[::module]\[=level]'
    ///
    /// Also see the [full specification](https://docs.rs/flexi_logger/0.20.0/flexi_logger/struct.LogSpecification.html#).
    pub log_spec: Option<String>,
    /// Generate `typedef T = dynamic` definitions for types that were referenced but not defined
    /// within the file.
    pub dynamic_undefs: Option<bool>,
}

pub struct Entry {
    pub key: String,
    pub value: String,
}

pub fn parse_library(config: Config) -> Result<Vec<Entry>> {
    let _handle = Logger::try_with_env_or_str(
        config
            .log_spec
            .as_ref()
            .map(String::as_str)
            .unwrap_or("info"),
    )?
    .write_mode(flexi_logger::WriteMode::Async)
    .start()?;
    let gen_undecl_typedef = config.dynamic_undefs.unwrap_or(false);
    let modules = parse_modules(config);
    Ok(modules
        .into_iter()
        .map(|(key, (file, val))| {
            let library_name = path_to_lib_name(Path::new(&key));
            let hint = (file.byte_length() / 3) as usize;
            let value = visit_program(&val, file, &library_name, Some(hint), gen_undecl_typedef);
            debug!(
                "{}
Hint\tLength\tCap.\tRatio
{}\t{}\t{}\t{}",
                key,
                hint,
                value.len(),
                value.capacity(),
                (value.len() as f64) / (value.capacity() as f64)
            );
            Entry { key, value }
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

fn parse_modules(config: Config) -> HashMap<String, (Rc<SourceFile>, Module)> {
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
        modules.entry(input).or_insert((fm, module));
    }
    modules
}
