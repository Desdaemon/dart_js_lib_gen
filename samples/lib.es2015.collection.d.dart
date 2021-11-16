@JS()
library samples.lib.es2015.collection.d.ts;

// ignore_for_file: non_constant_identifier_names, private_optional_parameter, unused_element
import 'package:js/js.dart';
import "lib.es2015.collection.d.dart";

@JS()
@anonymous
class Map<K, V> {
  external void clear();
  external bool delete(K key);
  external void forEach(void Function(V value, K key, Map<K, V> map) callbackfn, dynamic thisArg);
  external V? get(K key);
  external bool has(K key);
  external Map set(K key, V value);
  external num get size;
  external factory Map({
    num size,
  });
}

@JS()
class MapConstructor {
  external factory MapConstructor();
  external Map<dynamic, dynamic> get prototype;
}

@JS(r'Map')
external MapConstructor get JMap;
@JS(r'Map')
external set JMap(MapConstructor value);

@JS()
@anonymous
class ReadonlyMap<K, V> {
  external void forEach(void Function(V value, K key, ReadonlyMap<K, V> map) callbackfn, dynamic thisArg);
  external V? get(K key);
  external bool has(K key);
  external num get size;
  external factory ReadonlyMap({
    num size,
  });
}

@JS()
@anonymous
class WeakMap<K extends dynamic, V> {
  external bool delete(K key);
  external V? get(K key);
  external bool has(K key);
  external WeakMap set(K key, V value);
  external factory WeakMap();
}

@JS()
class WeakMapConstructor {
  external factory WeakMapConstructor({List<List<dynamic>>? entries});
  external WeakMap<dynamic, dynamic> get prototype;
}

@JS(r'WeakMap')
external WeakMapConstructor get JWeakMap;
@JS(r'WeakMap')
external set JWeakMap(WeakMapConstructor value);

@JS()
@anonymous
class Set<T> {
  external Set add(T value);
  external void clear();
  external bool delete(T value);
  external void forEach(void Function(T value, T value2, Set<T> set) callbackfn, dynamic thisArg);
  external bool has(T value);
  external num get size;
  external factory Set({
    num size,
  });
}

@JS()
class SetConstructor {
  external factory SetConstructor({List<T>? values});
  external Set<dynamic> get prototype;
}

@JS(r'Set')
external SetConstructor get JSet;
@JS(r'Set')
external set JSet(SetConstructor value);

@JS()
@anonymous
class ReadonlySet<T> {
  external void forEach(void Function(T value, T value2, ReadonlySet<T> set) callbackfn, dynamic thisArg);
  external bool has(T value);
  external num get size;
  external factory ReadonlySet({
    num size,
  });
}

@JS()
@anonymous
class WeakSet<T extends dynamic> {
  external WeakSet add(T value);
  external bool delete(T value);
  external bool has(T value);
  external factory WeakSet();
}

@JS()
class WeakSetConstructor {
  external factory WeakSetConstructor({List<T>? values});
  external WeakSet<dynamic> get prototype;
}

@JS(r'WeakSet')
external WeakSetConstructor get JWeakSet;
@JS(r'WeakSet')
external set JWeakSet(WeakSetConstructor value);
