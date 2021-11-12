alias b := build
build:
	~/flutter_rust_bridge/frb_codegen/target/debug/flutter_rust_bridge_codegen \
		-r src/api.rs -d lib/bridge_generated.dart
	cargo build
	dart format --fix -l 120 lib/bridge_generated.dart

alias c := compile
compile:
	dart compile exe bin/dart_js_lib_gen.dart -o dart_js_lib_gen

run +args:
	./dart_js_lib_gen {{args}}
