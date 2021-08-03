@JS()
library samples.declarations.d.ts;

// ignore_for_file: non_constant_identifier_names, private_optional_parameter, unused_element
import 'package:js/js.dart';

@JS('wasm_bindgen.wasm_parse_markdown_ast')
external List<IElement> wasm_parse_markdown_ast(String input);
typedef IElement = dynamic;

@JS()
@anonymous
class IHtmlTag {
  external String get t;
  external set t(String value);
  external List<IElement>? get c;
  external set c(List<IElement>? value);
  external String? get src;
  external set src(String? value);
  external String? get href;
  external set href(String? value);
  external bool? get checked;
  external set checked(bool? value);
  external void Function(bool what, IElement foo)? get nullfoo;
  external set nullfoo(void Function(bool what, IElement foo)? value);
  external void get immut;
  external set immut(void value);
}

@JS('wasm_bindgen')
external Promise<dynamic?> wasm_bindgen(dynamic source);

