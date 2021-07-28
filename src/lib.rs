use std::collections::HashMap;
use std::ffi::{CStr, CString};
use std::os::raw::c_char;
use std::path::PathBuf;
use std::rc::Rc;

use serde::Deserialize;
use swc_common::{
    errors::{ColorConfig, Handler},
    SourceMap,
};
use swc_ecma_parser::{lexer::Lexer, Parser, StringInput, Syntax};

#[derive(Deserialize)]
pub struct Config {
    pub inputs: Vec<PathBuf>,
}

#[no_mangle]
pub extern "C" fn parse(config_json: *const c_char) -> *mut c_char {
    let config = unsafe { CStr::from_ptr(config_json) };
    let config = serde_json::from_str::<Config>(
        config.to_str().expect("received config is not valid utf-8"),
    )
    .expect("could not deserialize config");
    let cm: Rc<SourceMap> = Default::default();
    let handler = Handler::with_tty_emitter(ColorConfig::Auto, true, false, Some(cm.clone()));
    let mut modules = HashMap::new();

    for input in config.inputs {
        let fm = cm
            .load_file(&input)
            .expect(&format!("failed to load file \"{:?}\"", input));
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
            .expect("failed to parse module");
        modules.entry(input).or_insert(module);
    }
    CString::new(serde_json::to_string(&modules).expect("failed to serialize modules"))
        .expect("failed to create CString")
        .into_raw()
}
#[no_mangle]
pub extern "C" fn free_string(string: *mut c_char) {
    if string.is_null() {
        return;
    }
    unsafe {
        CStr::from_ptr(string);
    }
}
