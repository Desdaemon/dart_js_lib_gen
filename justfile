run +args:	
	cargo build --bin main
	./target/debug/dart_js_lib_gen {{args}}

build-samples:
	cargo build --bin main --release
	./target/release/dart_js_lib_gen -sw --rename-overloads --dynamic-undefs samples/*.ts
