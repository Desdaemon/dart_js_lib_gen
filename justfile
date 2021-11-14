alias g := gen
gen:
	flutter_rust_bridge_codegen \
		-r src/api.rs -d lib/bridge_generated.dart
	dart format --fix -l 120 lib/bridge_generated.dart

alias b := build
build *args:
	cargo build {{args}}

alias c := compile
compile:
	dart compile exe bin/dart_js_lib_gen.dart -o dart_js_lib_gen

run +args: build
	./dart_js_lib_gen {{args}}

build-samples: build
	./dart_js_lib_gen -sw samples/*.ts
