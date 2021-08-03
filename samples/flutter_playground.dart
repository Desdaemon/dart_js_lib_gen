@JS()
library samples.flutter_playground.d.ts;

// ignore_for_file: non_constant_identifier_names, private_optional_parameter, unused_element
import 'package:js/js.dart';

@JS('wasm_bindgen.wasm_parse_markdown')
external String wasm_parse_markdown(String input);
typedef IElement = dynamic;

@JS()
@anonymous
class IHtmlTag {
  external String get t;
  external set t(String value);
  external List<IElement>? get c;
  external set c(List<IElement>? value);
  external String? get style;
  external set style(String? value);
  external String? get src;
  external set src(String? value);
  external String? get href;
  external set href(String? value);
  external bool? get checked;
  external set checked(bool? value);
  external bool? get display;
  external set display(bool? value);
}

@JS('wasm_bindgen.wasm_parse_markdown_ast')
external List<IElement> wasm_parse_markdown_ast(String input);
typedef InitInput = dynamic;

@JS()
@anonymous
class InitOutput {
  external Memory get memory;
  external set memory(Memory value);
  external num Function(num a) get parse_markdown;
  external set parse_markdown(num Function(num a) value);
  external num Function(num a) get parse_markdown_xml;
  external set parse_markdown_xml(num Function(num a) value);
  external num Function(num a) get parse_markdown_ast;
  external set parse_markdown_ast(num Function(num a) value);
  external void Function(num a) get free_elements;
  external set free_elements(void Function(num a) value);
  external num Function(num a) get parse_markdown_ast_json;
  external set parse_markdown_ast_json(num Function(num a) value);
  external void Function(num a) get free_string;
  external set free_string(void Function(num a) value);
  external num Function(num a) get as_text;
  external set as_text(num Function(num a) value);
  external num Function(num a) get as_tag;
  external set as_tag(num Function(num a) value);
  external void Function(num a, num b, num c) get wasm_parse_markdown;
  external set wasm_parse_markdown(void Function(num a, num b, num c) value);
  external num Function(num a, num b) get wasm_parse_markdown_ast;
  external set wasm_parse_markdown_ast(num Function(num a, num b) value);
  external num Function(num a) get __wbindgen_add_to_stack_pointer;
  external set __wbindgen_add_to_stack_pointer(num Function(num a) value);
  external num Function(num a) get __wbindgen_malloc;
  external set __wbindgen_malloc(num Function(num a) value);
  external num Function(num a, num b, num c) get __wbindgen_realloc;
  external set __wbindgen_realloc(num Function(num a, num b, num c) value);
  external void Function(num a, num b) get __wbindgen_free;
  external set __wbindgen_free(void Function(num a, num b) value);
}

@JS('wasm_bindgen')
external Promise<InitOutput> wasm_bindgen(dynamic module_or_path);

