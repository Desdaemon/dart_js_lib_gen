import 'dart:ffi';
import 'dart:io';

import 'package:dart_js_lib_gen/bridge_generated.dart';
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as p;
import 'package:args/args.dart';

final mode = Platform.environment['MODE'] ?? 'debug';
final libPath =
    Platform.environment['LIBRARY'] ?? 'target/$mode/libdart_js_lib_gen.so';
final lib = DynamicLibrary.open(libPath);
final api = DartJsLibGen(lib);

Future<void> main(List<String> arguments) async {
  final columns = await Process.run('tput', const ['cols'])
      .then((res) => int.tryParse(res.stdout) ?? 80)
      .catchError((_) => 80);
  final parser = ArgParser(usageLineLength: columns)
    ..addFlag('write',
        abbr: 'w',
        help: '''
        Writes the files to *.dart. If not specified, prints to stdout.
If --no-write is specified, does not output anything.
        ''',
        defaultsTo: null)
    ..addFlag('silent',
        abbr: 's',
        help: 'Silences all logging. Overrides --log if defined.',
        negatable: false)
    ..addFlag(
      'skip-formatting',
      help:
          'Skips formatting the code, especially for longer files where it may be expensive.',
    )
    ..addOption('line-length', abbr: 'l', defaultsTo: '120')
    ..addOption('log', help: 'Configure logging behavior.', allowedHelp: const {
      'debug|info|warn|error|off':
          'Adjusts the level of logging, where debug logs everything and off logs nothing.',
      'crate[::module][=level]':
          'Specifies the amount of logging per module, defaulting to debug if level is not specified.'
    })
    ..addFlag('help',
        abbr: 'h',
        aliases: const ['?'],
        help: 'Displays this help message.',
        negatable: false);
  final args = parser.parse(arguments);
  final bool? write = args['write'];
  final bool format = !args['skip-formatting'];
  final bool help = args['help'];
  final bool silent = args['silent'];
  String? log = args['log'];
  if (silent) {
    log = 'off';
  }
  final lineLength = int.parse(args['line-length']);
  final rest = args.rest.where((e) => e.endsWith('ts'));
  if (rest.isEmpty || help) {
    final exe = Platform.executable;
    stderr.writeln('$exe <*.ts> [options]\nOptions:');
    stderr.writeln(parser.usage);
    return;
  }
  final config = Config(inputs: rest.toList(growable: false), logSpec: log);
  stderr.writeln("Parsing ${rest.length} modules.");
  final files = await api.parseLibrary(config: config);
  for (final file in files) {
    stderr.writeln("Formatting ${file.key}");
    final relined = file.value.splitMapJoin(";", onMatch: (_) => ";\n");
    final formatted =
        format ? DartFormatter(pageWidth: lineLength).format(relined) : relined;
    if (write == true) {
      final path = p.setExtension(file.key, '.dart');
      stderr.writeln('Writing to $path...');
      File(path).writeAsString(formatted);
    } else if (write == null) {
      print(formatted);
    }
  }
}
