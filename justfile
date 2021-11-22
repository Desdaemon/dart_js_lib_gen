run +args:	
	cargo build --bin dart_js_lib_gen
	./target/debug/dart_js_lib_gen {{args}}

build-samples:
	cargo build --bin dart_js_lib_gen --release
	./target/release/dart_js_lib_gen --log error -w --rename-overloads --dynamic-undefs samples/*.ts
