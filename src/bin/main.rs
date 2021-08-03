use std::{
    env::args_os,
    path::{Component, PathBuf},
};

use dart_js_lib_gen::{parse_impl, transform::Transformer, Config};

fn main() {
    let inputs: Vec<PathBuf> = args_os().into_iter().skip(1).map(From::from).collect();
    let config = Config { inputs };
    let modules = parse_impl(config);
    for (path, module) in modules.into_iter() {
        let output = path
            .components()
            .filter_map(|e| match e {
                Component::Normal(item) => Some(item.to_string_lossy()),
                _ => None,
            })
            .collect::<Vec<_>>()
            .join(".");

        let transformed = Transformer::visit_program(&module, &output, None);
        print!("{}", transformed);
    }
}
