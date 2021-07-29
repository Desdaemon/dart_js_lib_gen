import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
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
  stderr.writeln("Parsing ${arguments.length} modules.");
  final ptr = parse(jsonEncode(config).toNativeUtf8());
  final Map<String, dynamic> modules = jsonDecode(ptr.toDartString());
  freeString(ptr);
  final libs = <Library>[];
  for (final item in modules.entries) {
    final visitor = Visitor(p.split(p.withoutExtension(item.key)).join("."));
    stderr.writeln("Converting ${item.key}");
    AstNode.fromMap(item.value).accept(visitor);
    libs.add(visitor.library);
  }
  final emitter = DartEmitter(useNullSafetySyntax: true);
  for (final lib in libs) {
    stderr.writeln("Formatting ${lib.name}");
    print(DartFormatter().format(lib.accept(emitter).toString()));
  }
}

class Visitor {
  final lib = LibraryBuilder();
  static final JS = refer('JS', 'package:js/js.dart');
  late ClassBuilder cls;
  Map<String, Reference> factoryParams = {};
  Visitor(String libraryName) {
    lib.body.add(CodeExpression(const Code(
        '\n// ignore_for_file: non_constant_identifier_names, private_optional_parameter, unused_element\n')));
    lib.name = libraryName;
    lib.annotations.add(JS.call(const []));
    lib.directives.add(Directive.import("package:js/js.dart"));
  }

  static const keywords = {
    'any': 'dynamic',
    'unknown': 'dynamic',
    'never': 'void',
    'boolean': 'bool',
    'void': 'void',
    'string': 'String',
    'Array': 'List',
    'object': 'dynamic',
    'Map': 'Map',
    'Set': 'Set',
    'undefined': 'null',
    'null': 'null',
    'number': 'num'
  };

  static final common = {
    'Promise': Class((e) => e..annotations.addAll([refer('anonymous', 'package:js/js.dart'), JS.call(const [])]))
  };

  final path = <String>[];
  Library get library => lib.build();
  bool enterElement(Map<String, dynamic> json) {
    switch (json['type']) {
      case 'Module':
      case 'TsModuleBlock':
      case 'TsInterfaceBody':
        return true;
      case 'FunctionDeclaration':
        return visitFunction(json);
      case 'TsMethodSignature':
        visitMethod(json);
        return false;
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
      case 'TsGetterSignature':
        return visitGetter(json);
      case 'TsSetterSignature':
        return visitSetter(json);
      case 'TsIndexSignature':
        return visitIndexSignature(json);
    }
    print(const JsonEncoder.withIndent("  ").convert(json));
    throw UnimplementedError(json['type']);
  }

  bool visitModuleDeclaration(Map<String, dynamic> json) {
    final moduleName = json['id']['value'] as String;
    if (moduleName != 'global') {
      path.add(moduleName);
    }
    return true;
  }

  // bool filterRequired(Parameter param) => param.required;
  bool visitFunction(Map<String, dynamic> json) {
    final name = json['identifier']['value'] as String;
    MethodModifier? mod;
    if (json['generator'] && json['async']) {
      mod = MethodModifier.asyncStar;
    } else if (json['generator']) {
      mod = MethodModifier.syncStar;
    } else if (json['async']) {
      mod = MethodModifier.async;
    }
    final met = MethodBuilder()
      ..name = name
      ..external = true
      ..modifier = mod
      ..returns = visitType(json['returnType']['typeAnnotation'])
      ..annotations.add(
        JS.call([
          literalString([...path, name].join('.'))
        ]),
      );
    for (final param in json['params'] as List) {
      final pat = param['pat'];
      final paramAst = Parameter((e) => e
        ..name = pat['value']
        ..type = visitType(pat['typeAnnotation']['typeAnnotation']));
      if (pat['optional']) {
        met.optionalParameters.add(paramAst);
      } else {
        met.requiredParameters.add(paramAst);
      }
    }
    lib.body.add(met.build());
    return true;
  }

  bool filterNonNulls(dynamic json) => json['kind'] != 'undefined' && json['kind'] != 'null';
  Reference visitType(dynamic json, {bool nullable = false}) {
    switch (json['type']) {
      case 'TsKeywordType':
        final keyword = keywords[json['kind']];
        if (keyword != null) {
          return TypeReference(
            (e) => e
              ..symbol = keyword
              ..isNullable = nullable,
          );
        }
        break;
      case 'TsTypeReference':
        final b = TypeReferenceBuilder();
        b.symbol =
            json['typeName'].containsKey('right') ? json['typeName']['right']['value'] : json['typeName']['value'];
        b.isNullable = nullable;
        final generic = json['typeParams'];
        if (generic != null) {
          final typeParams = (generic['params'] as List).map(visitType);
          b.types.addAll(typeParams);
        }
        return b.build();
      case 'TsArrayType':
        return TypeReference(
          (e) => e
            ..symbol = 'List'
            ..types.add(visitType(json['elemType'])),
        );
      case 'TsUnionType':
        final members = json['types'] as List;
        // only covers undefineds and nulls
        final simpleUnion = members.where(filterNonNulls);
        if (simpleUnion.length == 1) {
          return visitType(simpleUnion.first, nullable: true);
        } else {
          return refer('dynamic');
        }
      case 'TsFunctionType':
        final b = FunctionTypeBuilder();
        b.returnType = visitType(json['typeAnnotation']['typeAnnotation']);
        for (final item in json['params'] as List) {
          final param = visitType(item['typeAnnotation']['typeAnnotation'], nullable: item['optional']);
          if (item['optional']) {
            b.optionalParameters.add(param);
          } else {
            b.requiredParameters.add(param);
          }
        }
        return b.build();
      case 'TsLiteralType':
        switch (json['literal']['type']) {
          case 'BooleanLiteral':
            return refer('bool');
        }
    }
    print(json);
    throw UnimplementedError('Cannot resolve type ${json['type']}');
  }

  bool visitTypeAlias(Map<String, dynamic> json) {
    lib.body.add(
        CodeExpression(Code('typedef ${json['id']['value']}')).assign(visitType(json['typeAnnotation'])).statement);
    return true;
  }

  bool visitInterface(Map<String, dynamic> json) {
    cls = ClassBuilder();
    final name = json['id']['value'] as String;
    cls.name = name;
    cls.annotations.addAll([
      JS.call(const []),
      refer('anonymous', 'package:js/js.dart'),
    ]);
    return true;
  }

  bool visitProperty(Map<String, dynamic> json) {
    final name = json['key']['value'];
    final type = visitType(json['typeAnnotation']['typeAnnotation'], nullable: json['optional']);
    cls.methods.addAll([
      Method((e) => e
        ..name = name
        ..type = MethodType.getter
        ..external = true
        ..returns = type),
      if (!json['readonly'])
        Method((e) => e
          ..name = name
          ..type = MethodType.setter
          ..external = true
          ..requiredParameters.add(
            Parameter((e) => e
              ..name = 'value'
              ..type = type),
          )),
    ]);
    factoryParams[name] = type;
    return false;
  }

  void visitMethod(Map<String, dynamic> json) {
    final b = MethodBuilder()
      ..name = json['key']['value']
      ..external = true;
    for (final ident in json['params'] as List) {
      final param = Parameter((e) => e
        ..name = ident['value']
        ..type = visitType(ident['typeAnnotation']['typeAnnotation'], nullable: ident['optional']));
      if (ident['optional']) {
        b.optionalParameters.add(param);
      } else {
        b.requiredParameters.add(param);
      }
    }
    cls.methods.add(b.build());
  }

  bool visitVariableDeclaration(Map<String, dynamic> json) {
    print('// TODO: VariableDeclaration');
    return true;
  }

  bool visitVariableDeclarator(Map<String, dynamic> json) {
    print('// TODO: VariableDeclarator');
    return true;
  }

  bool visitGetter(Map<String, dynamic> json) {
    print('// TODO: TsGetterSignature');
    return true;
  }

  bool visitSetter(Map<String, dynamic> json) {
    print('// TODO: TsSetterSignature');
    return true;
  }

  bool visitIndexSignature(Map<String, dynamic> json) {
    print('// TODO: TsIndexSignature');
    return true;
  }

  void visitBody(Map<String, dynamic> json) => AstNode.fromMap(json['body']).accept(this);

  void exitElement(Map<String, dynamic> json) {
    switch (json['type']) {
      case 'TsModuleDeclaration':
        if (json['id']['value'] != 'global') {
          path.removeLast();
        }
        break;
      case 'TsInterfaceDeclaration':
        cls.constructors.add(Constructor((e) => e
          ..factory = true
          ..external = true
          ..optionalParameters.addAll(
            factoryParams.entries.map((en) => Parameter((e) => e
              ..name = en.key
              ..type = en.value
              ..named = true)),
          )));
        factoryParams.clear();
        lib.body.add(cls.build());
        break;
    }
  }
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
    // 'TsPropertySignature': null,
    'VariableDeclarator': null,
    // 'TsMethodSignature': null,
    'TsGetterSignature': null,
    'TsSetterSignature': null,
    'TsIndexSignature': null,
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
