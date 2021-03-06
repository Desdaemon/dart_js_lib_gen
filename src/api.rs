use crate::threads::MapPar;
use crate::transform::ProgramVisitor;
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

pub enum Message {
    Warning(Report),
    Error(Report),
}

pub type Report = ariadne::Report<(String, Range<usize>)>;
pub type LibraryResult<'a> = (&'a str, String, Vec<Message>, (String, ariadne::Source));

pub fn parse_library(config: Config) -> impl Iterator<Item = LibraryResult> {
    let gen_undecl_typedef = config.dynamic_undefs;
    let rename_overloads = config.rename_overloads;
    let imports = config.imports;
    let modules = parse_modules(config);
    modules.into_iter().map_par(move |(key, (file, module))| {
        let library_name = &path_to_lib_name(Path::new(&key));
        let hint = (file.byte_length() / 3) as usize;
        let ariadne_src = ariadne::Source::from(&*file.src);
        let (value, messages, source) = ProgramVisitor {
            file,
            module,
            library_name,
            gen_undecl_typedef,
            rename_overloads,
            imports,
            size_hint: Some(hint),
        }
        .visit_program();
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
        (key, value, messages, (source, ariadne_src))
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

pub type ModuleSrc = (Arc<SourceFile>, Module);

fn parse_modules(config: Config) -> HashMap<&str, ModuleSrc> {
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
