run +args:	
	cargo build --bin dart_js_lib_gen
	target/debug/dart_js_lib_gen {{args}}

build-samples:
	cargo build --bin dart_js_lib_gen
	target/debug/dart_js_lib_gen -w --rename-overloads --dynamic-undefs samples/*.ts
