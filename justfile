build:
	flutter_rust_bridge_codegen -r src/api.rs -d lib/bridge_generated.dart
	cargo build
	dart format --fix -l 120 lib/bridge_generated.dart

