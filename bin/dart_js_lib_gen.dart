import 'dart:ffi';
import 'dart:io';

import 'package:dart_js_lib_gen/bridge_generated.dart';
import 'package:dart_style/dart_style.dart';

final lib = DynamicLibrary.open("target/release/libdart_js_lib_gen.so");
final api = DartJsLibGen(lib);

Future<void> main(List<String> arguments) async {
  final config = Config(inputs: arguments);
  stderr.writeln("Parsing ${arguments.length} modules.");
  final files = await api.parseLibrary(config: config);
  for (final file in files) {
    stderr.writeln("Formatting ${file.key}");
    print(DartFormatter().format(file.value));
  }
}
