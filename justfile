run +args:	
	cargo build --bin dart_js_lib_gen
	target/debug/dart_js_lib_gen {{args}}

build-samples cmd="run":
	cargo build --bin dart_js_lib_gen
	cargo {{cmd}} -- -w --rename-overloads --dynamic-undefs samples/*.ts