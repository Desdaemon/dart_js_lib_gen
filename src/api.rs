use crate::threads::map_par;
use crate::transform::visit_program;
use ariadne::ReportKind;
use log::debug;
use std::path::Path;
use std::sync::Arc;
use std::{collections::HashMap, ops::Range};
use swc_ecma_parser::TsConfig;

use swc_common::{
    errors::{ColorConfig, Handler},
    SourceFile, SourceMap,
};
use swc_ecma_ast::Module;
use swc_ecma_parser::{lexer::Lexer, Parser, StringInput, Syntax};

pub struct Config<'a> {
    /// A list of paths to TypeScript definition files to process.
    pub inputs: Vec<&'a str>,
    /// Specifies the logging behavior. Can be simply one of:
    /// - off, info, warn, error, debug; or
    /// - comma-separated key-value pairs of 'crate\[::module]\[=level]'
    ///
    /// Also see the [full specification](https://docs.rs/flexi_logger/0.20.0/flexi_logger/struct.LogSpecification.html#).
    pub log_spec: Option<&'a str>,
    /// Generate `typedef T = dynamic` definitions for types that were referenced but not defined
    /// within the file.
    pub dynamic_undefs: bool,
    /// Polyfill overloads by renaming them.
    pub rename_overloads: bool,
    /// Generate imports for web types.
    pub imports: bool,
}

pub struct Library<'a> {
    pub name: &'a str,
    pub body: String,
    pub errors: Vec<Message>,
}

pub struct Message {
    pub kind: ReportKind,
    pub report: Report,
}

pub type Report = ariadne::Report<(String, Range<usize>)>;
pub type Source = (String, ariadne::Source);

pub struct LibraryResult<'a>(pub &'a str, pub String, pub Vec<Message>, pub Source);

pub fn parse_library(config: Config) -> impl Iterator<Item = LibraryResult> {
    let gen_undecl_typedef = config.dynamic_undefs;
    let rename_overloads = config.rename_overloads;
    let imports = config.imports;
    let modules = parse_modules(config);
    map_par(modules.into_iter(), None, move |(key, (file, val))| {
        let library_name = path_to_lib_name(Path::new(&key));
        let hint = (file.byte_length() / 3) as usize;
        let (value, messages, source) = visit_program(
            &val,
            file,
            &library_name,
            Some(hint),
            gen_undecl_typedef,
            rename_overloads,
            imports,
        );
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
        LibraryResult(key, value, messages, source)
    })
}

fn path_to_lib_name(buf: &Path) -> String {
    buf.components()
        .filter_map(|e| match e {
            std::path::Component::Normal(item) => {
                Some(to_dart_compat_ident(&item.to_string_lossy()))
            }
            _ => None,
        })
        .collect::<Vec<_>>()
        .join(".")
}

fn to_dart_compat_ident(input: &str) -> String {
    input.replace("-", "_")
}

fn parse_modules(config: Config) -> HashMap<&str, (Arc<SourceFile>, Module)> {
    let cm: Arc<SourceMap> = Default::default();
    let handler = Handler::with_tty_emitter(ColorConfig::Auto, true, false, Some(cm.clone()));
    let mut modules = HashMap::new();

    for input in config.inputs {
        let fm = cm
            .load_file(Path::new(&input))
            .unwrap_or_else(|_| panic!("failed to load file \"{:?}\"", input));
        let lexer = Lexer::new(
            Syntax::Typescript(TsConfig {
                dts: true,
                ..Default::default()
            }),
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
        modules.insert(input, (fm, module));
    }
    modules
}
