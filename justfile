base := "dart_js_lib_gen"
dylib := if os() == "windows" {
	base + ".dll"
} else if os() == "macos" {
	"lib" + base + ".dylib"
} else {
	"lib" + base + ".so"
}

alias g := gen
gen:
	flutter_rust_bridge_codegen \
		-r src/api.rs -d lib/src/bridge_generated.dart
	dart format --fix -l 120 lib/src/bridge_generated.dart

alias b := build
build *args:
	cargo build {{args}}
	cp target/debug/{{dylib}} ./

build-release:
	cargo build --release
	cp target/release/{{dylib}} ./

run +args: build
	dart bin/dart_js_lib_gen.dart {{args}}

build-samples: build
	dart bin/dart_js_lib_gen.dart -sw --rename-overloads --dynamic-undefs samples/*.ts
