import 'dart:ffi';
import 'dart:io';

import 'package:dart_js_lib_gen/bridge_generated.dart';
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as p;
import 'package:args/args.dart';

final lib = DynamicLibrary.open("target/debug/libdart_js_lib_gen.so");
final api = DartJsLibGen(lib);
final parser = ArgParser()
  ..addFlag('write', abbr: 'w', help: 'Writes the files to *.dart.')
  ..addFlag('format', abbr: 'f', help: 'Formats the code.');

Future<void> main(List<String> arguments) async {
  final args = parser.parse(arguments);
  final bool write = args['write'];
  final bool format = args['format'];
  final config = Config(inputs: args.rest);
  stderr.writeln("Parsing ${arguments.length} modules.");
  final files = await api.parseLibrary(config: config);
  for (final file in files) {
    stderr.writeln("Formatting ${file.key}");
    final relined = file.value.splitMapJoin(";", onMatch: (_) => ";\n");
    final formatted = format ? DartFormatter().format(relined) : relined;
    if (write) {
      final path = p.setExtension(file.key, '.dart');
      print('Writing to $path...');
      File(path).writeAsString(formatted);
    } else {
      print(formatted);
    }
  }
}
