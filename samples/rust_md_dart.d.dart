@JS()
library samples.rust_md_dart.d.ts;

// ignore_for_file: non_constant_identifier_names, private_optional_parameter, unused_element
import 'package:js/js.dart';

@JS('parse')
external dynamic parse(String markdown);
typedef InitInput = dynamic;

@JS()
@anonymous
class InitOutput {
  external Memory get memory;
  external set memory(Memory value);
  external num Function(num a, num b) get parse;
  external set parse(num Function(num a, num b) value);
  external num Function(num a) get __wbindgen_malloc;
  external set __wbindgen_malloc(num Function(num a) value);
  external num Function(num a, num b, num c) get __wbindgen_realloc;
  external set __wbindgen_realloc(num Function(num a, num b, num c) value);
  external factory InitOutput({
    Memory memory,
    num Function(num a, num b) parse,
    num Function(num a) __wbindgen_malloc,
    num Function(num a, num b, num c) __wbindgen_realloc,
  });
}
