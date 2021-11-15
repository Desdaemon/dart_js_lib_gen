import 'dart:ffi';
import 'dart:io';

import 'package:dart_js_lib_gen/dart_js_lib_gen.dart';
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as p;
import 'package:args/args.dart';

const base = 'dart_js_lib_gen';
final path = Platform.isWindows
    ? '$base.dll'
    : Platform.isMacOS
        ? 'lib$base.dylib'
        : 'lib$base.so';

final mode = Platform.environment['ENV'] ?? 'debug';
final libPath = Platform.environment['LIBRARY'] ?? p.join('..', path);

Future<void> main(List<String> arguments) async {
  final dylibPath = p.join(p.dirname(Platform.script.path), libPath);
  // stderr.writeln('Finding dylib at $dylibPath');
  final lib = DynamicLibrary.open(dylibPath);
  final api = DartJsLibGen(lib);
  final columns =
      await Process.run('tput', const ['cols']).then((res) => int.tryParse(res.stdout) ?? 80).catchError((_) => 80);
  final parser = ArgParser(usageLineLength: columns)
    ..addFlag('write',
        abbr: 'w',
        help: '''
        Writes the files to *.dart. If not specified, prints to stdout.
If --no-write is specified, does not output anything.
        ''',
        defaultsTo: null)
    ..addFlag('silent', abbr: 's', help: 'Silences all logging. Overrides --log if defined.', negatable: false)
    ..addFlag('skip-formatting',
        help: 'Skips formatting the code, especially for longer files where it may be expensive.')
    ..addFlag('dynamic-undefs', help: 'Generate opaque typedefs for referenced undeclared types.')
    ..addFlag('rename-overloads', help: 'Polyfill function overloads by renaming the overloads.')
    ..addOption('prefix', help: 'Prefix of the output files.')
    ..addOption('suffix', help: 'Suffix of the output files.')
    ..addOption('line-length', abbr: 'l', defaultsTo: '120')
    ..addOption('log', help: 'Configure logging behavior.', allowedHelp: const {
      'debug|info|warn|error|off': 'Adjusts the level of logging, where debug logs everything and off logs nothing.',
      'crate[::module][=level]':
          'Specifies the amount of logging per module, defaulting to debug if level is not specified.'
    })
    ..addOption('out-dir',
        abbr: 'o',
        aliases: const ['destination'],
        help: 'Configure output directory, defaults to the same parent of each file.')
    ..addFlag('help', abbr: 'h', aliases: const ['?'], help: 'Displays this help message.', negatable: false);

  final args = parser.parse(arguments);

  final bool? write = args['write'];
  final bool? renameOverloads = args['rename-overloads'];
  final bool format = !args['skip-formatting'];
  final bool help = args['help'];
  final bool silent = args['silent'];
  final bool dynamicUndefs = args['dynamic-undefs'];
  final String? outDir = args['out-dir'];
  if (outDir != null) {
    final dir = Directory(outDir);
    if (!(await dir.exists())) {
      await dir.create(recursive: true);
    }
  }
  final String prefix = args['prefix'] ?? '';
  final String suffix = args['suffix'] ?? '';
  String? log = args['log'];
  if (silent) {
    log = 'off';
  }

  final lineLength = int.parse(args['line-length']);
  final rest = args.rest.where((e) => e.endsWith('ts'));
  final emptyErr = rest.isEmpty && !help;
  if (emptyErr) {
    stderr.writeln('Error: Please provide at least 1 TypeScript definition file.');
  }

  if (rest.isEmpty || help) {
    final exe = Platform.executable;
    stderr.writeln('$exe <*.d.ts> [options]\nOptions:');
    stderr.writeln(parser.usage);
    if (emptyErr) {
      exit(1);
    } else {
      return;
    }
  }

  final config = Config(
    inputs: rest.toList(growable: false),
    logSpec: log,
    dynamicUndefs: dynamicUndefs,
    renameOverloads: renameOverloads,
  );
  stderr.writeln("Parsing ${rest.length} modules.");

  final files = await api.parseLibrary(config: config);
  for (final file in files) {
    stderr.writeln("Formatting ${file.key}");
    final value = file.value.splitMapJoin(';', onMatch: (_) => ';\n');
    final formatted = format ? DartFormatter(pageWidth: lineLength).format(value) : value;
    if (write == true) {
      final base = p.basenameWithoutExtension(file.key);
      final newBase = '$prefix$base$suffix.dart';
      final path = p.join(outDir ?? p.dirname(file.key), newBase);
      stderr.writeln('Writing to $path...');
      File(path).writeAsString(formatted);
    } else if (write == null) {
      print(formatted);
    }
  }
}
