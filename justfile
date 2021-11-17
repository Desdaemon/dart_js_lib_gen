run +args:	
	cargo build --bin main
	./target/debug/main {{args}}

build-samples:
	cargo build --bin main --release
	./target/release/main -sw --rename-overloads --dynamic-undefs samples/*.ts
