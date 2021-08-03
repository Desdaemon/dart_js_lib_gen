import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

// import 'package:code_builder/code_builder.dart';
// import 'package:dart_js_lib_gen/visitor.dart';
import 'package:dart_style/dart_style.dart';
import 'package:ffi/ffi.dart';
// import 'package:path/path.dart' as p;

final lib = DynamicLibrary.open("target/release/libdart_js_lib_gen.so");
typedef Parse = Pointer<Utf8> Function(Pointer<Utf8>);
typedef FreeString = void Function(Pointer<Utf8>);
typedef free_string = Void Function(Pointer<Utf8>);
final parse = lib.lookupFunction<Parse, Parse>('parse');
final parseLibrary = lib.lookupFunction<Parse, Parse>('parse_library');
final freeString = lib.lookupFunction<free_string, FreeString>('free_string');

class Config {
  final List<String> inputs;
  const Config({required this.inputs});
  Map<String, dynamic> toJson() => {'inputs': inputs};
}

void main(List<String> arguments) {
  final config = Config(inputs: arguments);
  stderr.writeln("Parsing ${arguments.length} modules.");
  // final ptr = parse(jsonEncode(config).toNativeUtf8());
  // final Map<String, dynamic> modules = jsonDecode(ptr.toDartString());
  // freeString(ptr);
  // final libs = <Library>[];
  // for (final item in modules.entries) {
  //   final visitor = Visitor(p.split(p.withoutExtension(item.key)).join("."));
  //   stderr.writeln("Converting ${item.key}");
  //   AstNode.fromMap(item.value).accept(visitor);
  //   libs.add(visitor.library);
  // }
  // final emitter = DartEmitter(useNullSafetySyntax: true);
  // for (final lib in libs) {
  //   stderr.writeln("Formatting ${lib.name}");
  //   print(DartFormatter().format(lib.accept(emitter).toString()));
  // }
  final ptr = parseLibrary(jsonEncode(config).toNativeUtf8());
  final Map<String, dynamic> modules = jsonDecode(ptr.toDartString());
  for (final entry in modules.entries) {
    stderr.writeln("Formatting ${entry.key}");
    print(DartFormatter().format(entry.value));
  }
}
