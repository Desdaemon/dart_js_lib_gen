@JS()
library samples.rust_md_dart.d.ts;

// ignore_for_file: non_constant_identifier_names, private_optional_parameter, unused_element
import 'package:js/js.dart';
import "dart:html";
import "lib.dom.d.dart";

@JS()
@anonymous
class Element {
  external String get tag;
  external set tag(String value);
  external List<Attribute>? get attributes;
  external set attributes(List<Attribute>? value);
  external List<Element>? get children;
  external set children(List<Element>? value);
  external factory Element({
    String tag,
    List<Attribute>? attributes,
    List<Element>? children,
  });
}

@JS()
@anonymous
class Attribute {
  external String get key;
  external set key(String value);
  external String get value;
  external set value(String value);
  external factory Attribute({
    String key,
    String value,
  });
}

@JS(r'parse')
external List<Element>? parse(String markdown);

/// RequestInfo | Url | Response | BufferSource | Module
typedef InitInput = dynamic;

@JS()
@anonymous
class InitOutput {
  external Memory get memory;
  external num Function(num a, num b) get parse;
  external factory InitOutput({
    Memory memory,
    num Function(num a, num b) parse,
  });
}

typedef BufferSource = dynamic;
typedef Module = dynamic;
typedef RequestInfo = dynamic;
