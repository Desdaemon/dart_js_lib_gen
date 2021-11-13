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
  external num Function(num a, num b) get parse;
  external num Function(num a) get __wbindgen_malloc;
  external num Function(num a, num b, num c) get __wbindgen_realloc;
  external factory InitOutput({
    Memory memory,
    num Function(num a, num b) parse,
    num Function(num a) __wbindgen_malloc,
    num Function(num a, num b, num c) __wbindgen_realloc,
  });
}
