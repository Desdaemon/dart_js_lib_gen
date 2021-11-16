// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`.

// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments
import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'dart:ffi' as ffi;

abstract class DartJsLibGen extends FlutterRustBridgeBase<DartJsLibGenWire> {
  factory DartJsLibGen(ffi.DynamicLibrary dylib) => DartJsLibGenImpl.raw(DartJsLibGenWire(dylib));

  DartJsLibGen.raw(DartJsLibGenWire inner) : super(inner);

  Future<List<Entry>> parseLibrary({required Config config, dynamic hint});
}

class Config {
  /// A list of paths to TypeScript definition files to process.
  final List<String> inputs;

  /// Specifies the logging behavior. Can be simply one of:
  /// - off, info, warn, error, debug; or
  /// - comma-separated key-value pairs of 'crate\[::module]\[=level]'
  ///
  /// Also see the [full specification](https://docs.rs/flexi_logger/0.20.0/flexi_logger/struct.LogSpecification.html#).
  final String? logSpec;

  /// Generate `typedef T = dynamic` definitions for types that were referenced but not defined
  /// within the file.
  final bool? dynamicUndefs;

  /// Polyfill overloads by renaming them.
  final bool? renameOverloads;

  /// Generate imports for web types.
  final bool? imports;

  Config({
    required this.inputs,
    this.logSpec,
    this.dynamicUndefs,
    this.renameOverloads,
    this.imports,
  });
}

class Entry {
  final String key;

  final String value;

  Entry({
    required this.key,
    required this.value,
  });
}

// ------------------------- Implementation Details -------------------------

/// Implementations for DartJsLibGen. Prefer using DartJsLibGen if possible; but this class allows more
/// flexible customizations (such as subclassing to create an initializer, a logger, or
/// a timer).
class DartJsLibGenImpl extends DartJsLibGen {
  DartJsLibGenImpl.raw(DartJsLibGenWire inner) : super.raw(inner);

  Future<List<Entry>> parseLibrary({required Config config, dynamic hint}) => executeNormal(FlutterRustBridgeTask(
      debugName: 'parse_library',
      callFfi: (port) => inner.wire_parse_library(port, _api2wire_box_autoadd_config(config)),
      parseSuccessData: _wire2api_list_entry,
      hint: hint));

  // Section: api2wire
  ffi.Pointer<wire_uint_8_list> _api2wire_String(String raw) {
    return _api2wire_uint_8_list(utf8.encoder.convert(raw));
  }

  ffi.Pointer<wire_StringList> _api2wire_StringList(List<String> raw) {
    final ans = inner.new_StringList(raw.length);
    for (var i = 0; i < raw.length; i++) {
      ans.ref.ptr[i] = _api2wire_String(raw[i]);
    }
    return ans;
  }

  bool _api2wire_bool(bool raw) {
    return raw;
  }

  ffi.Pointer<ffi.Uint8> _api2wire_box_autoadd_bool(bool raw) {
    return inner.new_box_autoadd_bool(raw);
  }

  ffi.Pointer<wire_Config> _api2wire_box_autoadd_config(Config raw) {
    final ptr = inner.new_box_autoadd_config();
    _api_fill_to_wire_config(raw, ptr.ref);
    return ptr;
  }

  ffi.Pointer<wire_uint_8_list> _api2wire_opt_String(String? raw) {
    return raw == null ? ffi.nullptr : _api2wire_String(raw);
  }

  ffi.Pointer<ffi.Uint8> _api2wire_opt_box_autoadd_bool(bool? raw) {
    return raw == null ? ffi.nullptr : _api2wire_box_autoadd_bool(raw);
  }

  int _api2wire_u8(int raw) {
    return raw;
  }

  ffi.Pointer<wire_uint_8_list> _api2wire_uint_8_list(Uint8List raw) {
    final ans = inner.new_uint_8_list(raw.length);
    ans.ref.ptr.asTypedList(raw.length).setAll(0, raw);
    return ans;
  }

  // Section: api_fill_to_wire

  void _api_fill_to_wire_box_autoadd_config(Config apiObj, ffi.Pointer<wire_Config> wireObj) {
    _api_fill_to_wire_config(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_config(Config apiObj, wire_Config wireObj) {
    wireObj.inputs = _api2wire_StringList(apiObj.inputs);
    wireObj.log_spec = _api2wire_opt_String(apiObj.logSpec);
    wireObj.dynamic_undefs = _api2wire_opt_box_autoadd_bool(apiObj.dynamicUndefs);
    wireObj.rename_overloads = _api2wire_opt_box_autoadd_bool(apiObj.renameOverloads);
    wireObj.imports = _api2wire_opt_box_autoadd_bool(apiObj.imports);
  }
}

// Section: wire2api
String _wire2api_String(dynamic raw) {
  return raw as String;
}

Entry _wire2api_entry(dynamic raw) {
  final arr = raw as List<dynamic>;
  if (arr.length != 2) throw Exception('unexpected arr length: expect 2 but see ${arr.length}');
  return Entry(
    key: _wire2api_String(arr[0]),
    value: _wire2api_String(arr[1]),
  );
}

List<Entry> _wire2api_list_entry(dynamic raw) {
  return (raw as List<dynamic>).map(_wire2api_entry).toList();
}

int _wire2api_u8(dynamic raw) {
  return raw as int;
}

Uint8List _wire2api_uint_8_list(dynamic raw) {
  return raw as Uint8List;
}

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.

/// generated by flutter_rust_bridge
class DartJsLibGenWire implements FlutterRustBridgeWireBase {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName) _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  DartJsLibGenWire(ffi.DynamicLibrary dynamicLibrary) : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  DartJsLibGenWire.fromLookup(ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName) lookup)
      : _lookup = lookup;

  void wire_parse_library(
    int port,
    ffi.Pointer<wire_Config> config,
  ) {
    return _wire_parse_library(
      port,
      config,
    );
  }

  late final _wire_parse_libraryPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, ffi.Pointer<wire_Config>)>>('wire_parse_library');
  late final _wire_parse_library = _wire_parse_libraryPtr.asFunction<void Function(int, ffi.Pointer<wire_Config>)>();

  ffi.Pointer<wire_StringList> new_StringList(
    int len,
  ) {
    return _new_StringList(
      len,
    );
  }

  late final _new_StringListPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<wire_StringList> Function(ffi.Int32)>>('new_StringList');
  late final _new_StringList = _new_StringListPtr.asFunction<ffi.Pointer<wire_StringList> Function(int)>();

  ffi.Pointer<ffi.Uint8> new_box_autoadd_bool(
    bool value,
  ) {
    return _new_box_autoadd_bool(
      value ? 1 : 0,
    );
  }

  late final _new_box_autoadd_boolPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Uint8> Function(ffi.Uint8)>>('new_box_autoadd_bool');
  late final _new_box_autoadd_bool = _new_box_autoadd_boolPtr.asFunction<ffi.Pointer<ffi.Uint8> Function(int)>();

  ffi.Pointer<wire_Config> new_box_autoadd_config() {
    return _new_box_autoadd_config();
  }

  late final _new_box_autoadd_configPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<wire_Config> Function()>>('new_box_autoadd_config');
  late final _new_box_autoadd_config = _new_box_autoadd_configPtr.asFunction<ffi.Pointer<wire_Config> Function()>();

  ffi.Pointer<wire_uint_8_list> new_uint_8_list(
    int len,
  ) {
    return _new_uint_8_list(
      len,
    );
  }

  late final _new_uint_8_listPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<wire_uint_8_list> Function(ffi.Int32)>>('new_uint_8_list');
  late final _new_uint_8_list = _new_uint_8_listPtr.asFunction<ffi.Pointer<wire_uint_8_list> Function(int)>();

  void free_WireSyncReturnStruct(
    WireSyncReturnStruct val,
  ) {
    return _free_WireSyncReturnStruct(
      val,
    );
  }

  late final _free_WireSyncReturnStructPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(WireSyncReturnStruct)>>('free_WireSyncReturnStruct');
  late final _free_WireSyncReturnStruct =
      _free_WireSyncReturnStructPtr.asFunction<void Function(WireSyncReturnStruct)>();

  void store_dart_post_cobject(
    DartPostCObjectFnType ptr,
  ) {
    return _store_dart_post_cobject(
      ptr,
    );
  }

  late final _store_dart_post_cobjectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(DartPostCObjectFnType)>>('store_dart_post_cobject');
  late final _store_dart_post_cobject = _store_dart_post_cobjectPtr.asFunction<void Function(DartPostCObjectFnType)>();
}

class wire_uint_8_list extends ffi.Struct {
  external ffi.Pointer<ffi.Uint8> ptr;

  @ffi.Int32()
  external int len;
}

class wire_StringList extends ffi.Struct {
  external ffi.Pointer<ffi.Pointer<wire_uint_8_list>> ptr;

  @ffi.Int32()
  external int len;
}

class wire_Config extends ffi.Struct {
  external ffi.Pointer<wire_StringList> inputs;

  external ffi.Pointer<wire_uint_8_list> log_spec;

  external ffi.Pointer<ffi.Uint8> dynamic_undefs;

  external ffi.Pointer<ffi.Uint8> rename_overloads;

  external ffi.Pointer<ffi.Uint8> imports;
}

typedef DartPostCObjectFnType = ffi.Pointer<ffi.NativeFunction<ffi.Uint8 Function(DartPort, ffi.Pointer<ffi.Void>)>>;
typedef DartPort = ffi.Int64;
