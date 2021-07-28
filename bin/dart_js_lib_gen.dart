import 'dart:convert';
import 'dart:ffi';

import 'package:code_builder/code_builder.dart';
import 'package:ffi/ffi.dart';
import 'package:path/path.dart' as p;

final lib = DynamicLibrary.open("target/release/libdart_js_lib_gen.so");
typedef Parse = Pointer<Utf8> Function(Pointer<Utf8>);
typedef FreeString = void Function(Pointer<Utf8>);
typedef free_string = Void Function(Pointer<Utf8>);
final parse = lib.lookupFunction<Parse, Parse>('parse');
final freeString = lib.lookupFunction<free_string, FreeString>('free_string');

class Config {
  final List<String> inputs;
  const Config({required this.inputs});
  Map<String, dynamic> toJson() => {'inputs': inputs};
}

void main(List<String> arguments) {
  final config = Config(inputs: arguments);
  final ptr = parse(jsonEncode(config).toNativeUtf8());
  final Map<String, dynamic> modules = jsonDecode(ptr.toDartString(), reviver: (key, val) {
    if (key.toString() != 'span') return val;
  });
  freeString(ptr);
  final libs = <Library>[];
  for (final item in modules.entries) {
    final visitor = Visitor(p.split(p.withoutExtension(item.key)).join("."));
    AstNode.fromMap(item.value).accept(visitor);
    libs.add(visitor.library);
  }
  final emitter = DartEmitter.scoped(useNullSafetySyntax: true);
  for (final lib in libs) {
    print(lib.accept(emitter).toString());
  }
}

class Visitor {
  final lib = LibraryBuilder();
  Visitor(String libraryName) {
    lib.name = libraryName;
    lib.annotations.add(refer('JS', 'package:js/js.dart').call([]));
  }
  Library get library => lib.build();
  bool enterElement(Map<String, dynamic> json) {
    switch (json['type']) {
      case 'Module':
      case 'TsModuleBlock':
      case 'TsInterfaceBody':
        return true;

      case 'FunctionDeclaration':
        return visitFunction(json);

      case 'TsTypeAliasDeclaration':
        return visitTypeAlias(json);

      case 'ExportDeclaration':
        AstNode.fromMap(json['declaration']).accept(this);
        return true;

      case 'TsInterfaceDeclaration':
        if (!visitInterface(json)) return false;
        visitBody(json);
        return true;

      case 'TsPropertySignature':
        return visitProperty(json);

      case 'TsModuleDeclaration':
        if (!visitModuleDeclaration(json)) return false;
        visitBody(json);
        return true;

      case 'VariableDeclaration':
        return visitVariableDeclaration(json);

      case 'VariableDeclarator':
        return visitVariableDeclarator(json);
    }
    print(const JsonEncoder.withIndent("  ").convert(json));
    throw UnimplementedError(json['type']);
  }

  bool visitModuleDeclaration(Map<String, dynamic> json) {
    print('TODO: TsModuleDeclaration');
    return true;
  }

  bool visitFunction(Map<String, dynamic> json) {
    print('TODO: FunctionDeclaration');
    return true;
  }

  bool visitTypeAlias(Map<String, dynamic> json) {
    print('TODO: TsTypeAliasDeclaration');
    return true;
  }

  bool visitInterface(Map<String, dynamic> json) {
    print('TODO: TsInterfaceDeclaration');
    return true;
  }

  bool visitProperty(Map<String, dynamic> json) {
    print('TODO: TsPropertySignature');
    return true;
  }

  bool visitVariableDeclaration(Map<String, dynamic> json) {
    print('TODO: VariableDeclaration');
    return true;
  }

  bool visitVariableDeclarator(Map<String, dynamic> json) {
    print('TODO: VariableDeclarator');
    return true;
  }

  void visitBody(Map<String, dynamic> json) => AstNode.fromMap(json['body']).accept(this);

  void exitElement(Map<String, dynamic> json) {}
}

class AstNode {
  final Map<String, dynamic> json;
  const AstNode(this.json);
  String get type => json['type'];

  static const mappings = {
    'Module': 'body',
    'TsModuleBlock': 'body',
    'TsInterfaceBody': 'body',
    'VariableDeclaration': 'declarations',
    // Leaf elements
    'ExportDeclaration': null,
    'TsModuleDeclaration': null,
    'FunctionDeclaration': null,
    'TsTypeAliasDeclaration': null,
    'TsInterfaceDeclaration': null,
    'TsPropertySignature': null,
    'VariableDeclarator': null,
  };

  static AstNode fromMap(dynamic json) => AstNode(json as Map<String, dynamic>);

  void accept(Visitor v) {
    if (v.enterElement(json)) {
      final childrenDefined = mappings.containsKey(type);
      if (!childrenDefined) {
        print(const JsonEncoder.withIndent("  ").convert(json));
        throw UnimplementedError('Children of $type not handled');
      }
      final children = json[mappings[type]] as List?;
      if (children != null) {
        for (final item in children.map(AstNode.fromMap)) {
          item.accept(v);
        }
      }
      v.exitElement(json);
    }
  }
}
