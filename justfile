run +args:	
	cargo build --bin dart_js_lib_gen
	./target/debug/dart_js_lib_gen {{args}}

build-samples:
	cargo build --bin dart_js_lib_gen --release
	rm -r samples/*.dart
	./target/release/dart_js_lib_gen -sw --rename-overloads --dynamic-undefs samples/*.ts
