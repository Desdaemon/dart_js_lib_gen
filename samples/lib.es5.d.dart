@JS()
library samples.lib.es5.d.ts;

// ignore_for_file: non_constant_identifier_names, private_optional_parameter, unused_element
import 'package:js/js.dart';

@JS('NaN')
external num NaN;
@JS('Infinity')
external num Infinity;
@JS('eval')
external dynamic eval(String x);
@JS('parseInt')
external num parseInt(String string, num radix);
@JS('parseFloat')
external num parseFloat(String string);
@JS('isNaN')
external bool isNaN(num number);
@JS('isFinite')
external bool isFinite(num number);
@JS('decodeURI')
external String decodeURI(String encodedURI);
@JS('decodeURIComponent')
external String decodeURIComponent(String encodedURIComponent);
@JS('encodeURI')
external String encodeURI(String uri);
@JS('encodeURIComponent')
external String encodeURIComponent(dynamic uriComponent);
@JS('escape')
external String escape(String string);
@JS('unescape')
external String unescape(String string);

@JS()
@anonymous
class Symbol {
  external String toString();
  external dynamic valueOf();
}

typedef PropertyKey = dynamic;

@JS()
@anonymous
class PropertyDescriptor {
  external bool? get configurable;
  external set configurable(bool? value);
  external bool? get enumerable;
  external set enumerable(bool? value);
  external dynamic? get value;
  external set value(dynamic? value);
  external bool? get writable;
  external set writable(bool? value);
  external dynamic get();
  external void set(dynamic v);
  external factory PropertyDescriptor({
    bool? configurable,
    bool? enumerable,
    dynamic? value,
    bool? writable,
  });
}

@JS()
@anonymous
class PropertyDescriptorMap {}

@JS()
@anonymous
class Object {
  external Function() get constructor;
  external set constructor(Function() value);
  external String toString();
  external String toLocaleString();
  external Object valueOf();
  external bool hasOwnProperty(PropertyKey v);
  external bool isPrototypeOf(Object v);
  external bool propertyIsEnumerable(PropertyKey v);
  external factory Object({
    Function() constructor,
  });
}

@JS()
class ObjectConstructor {
  external factory ObjectConstructor({dynamic value});
  external Object get prototype;
  external dynamic getPrototypeOf(dynamic o);
  external PropertyDescriptor? getOwnPropertyDescriptor(dynamic o, PropertyKey p);
  external List<String> getOwnPropertyNames(dynamic o);
  external dynamic create(dynamic? o);
  external T defineProperty<T>(T o, PropertyKey p, dynamic attributes);
  external T defineProperties<T>(T o, dynamic properties);
  external T seal<T>(T o);
  external List<T> freeze<T>(List<T> a);
  external T preventExtensions<T>(T o);
  external bool isSealed(dynamic o);
  external bool isFrozen(dynamic o);
  external bool isExtensible(dynamic o);
  external List<String> keys(dynamic o);
  external factory ObjectConstructor({
    Object prototype,
  });
}

@JS('Object')
external ObjectConstructor Object;

@JS()
class FunctionConstructor {
  external factory FunctionConstructor([
    String? args1,
    String? args2,
    String? args3,
    String? args4,
    String? args5,
    String? args6,
    String? args7,
    String? args8,
    String? args9,
  ]);
  external Function() get prototype;
  external factory FunctionConstructor({
    Function() prototype,
  });
}

@JS('Function')
external FunctionConstructor Function;
typedef ThisParameterType<T> = dynamic;
typedef OmitThisParameter<T> = dynamic;

@JS()
@anonymous
class CallableFunction {
  external R apply<T, R>(T thisArg);
  external R call<T, A extends List<dynamic>, R>(
    T thisArg, [
    A? args1,
    A? args2,
    A? args3,
    A? args4,
    A? args5,
    A? args6,
    A? args7,
    A? args8,
    A? args9,
  ]);
  external OmitThisParameter<T> bind<T>(ThisParameterType<T> thisArg);
}

@JS()
@anonymous
class NewableFunction {
  external void apply<T>(T thisArg);
  external void call<T, A extends List<dynamic>>(
    T thisArg, [
    A? args1,
    A? args2,
    A? args3,
    A? args4,
    A? args5,
    A? args6,
    A? args7,
    A? args8,
    A? args9,
  ]);
  external T bind<T>(dynamic thisArg);
}

@JS()
@anonymous
class IArguments {
  external num get length;
  external set length(num value);
  external Function() get callee;
  external set callee(Function() value);
  external factory IArguments({
    num length,
    Function() callee,
  });
}

@JS()
class StringConstructor {
  external factory StringConstructor({dynamic value});
  external String get prototype;
  external String fromCharCode([
    num? codes1,
    num? codes2,
    num? codes3,
    num? codes4,
    num? codes5,
    num? codes6,
    num? codes7,
    num? codes8,
    num? codes9,
  ]);
  external factory StringConstructor({
    String prototype,
  });
}

@JS()
@anonymous
class Boolean {
  external bool valueOf();
}

@JS()
class BooleanConstructor {
  external factory BooleanConstructor({dynamic value});
  external Boolean get prototype;
  external factory BooleanConstructor({
    Boolean prototype,
  });
}

@JS('Boolean')
external BooleanConstructor Boolean;

@JS()
@anonymous
class Number {
  external String toString(num radix);
  external String toFixed(num fractionDigits);
  external String toExponential(num fractionDigits);
  external String toPrecision(num precision);
  external num valueOf();
}

@JS()
class NumberConstructor {
  external factory NumberConstructor({dynamic value});
  external Number get prototype;
  external num get MAX_VALUE;
  external num get MIN_VALUE;
  external num get NaN;
  external num get NEGATIVE_INFINITY;
  external num get POSITIVE_INFINITY;
  external factory NumberConstructor({
    Number prototype,
    num MAX_VALUE,
    num MIN_VALUE,
    num NaN,
    num NEGATIVE_INFINITY,
    num POSITIVE_INFINITY,
  });
}

@JS('Number')
external NumberConstructor Number;

@JS()
@anonymous
class TemplateStringsArray {
  external List<String> get raw;
  external factory TemplateStringsArray({
    List<String> raw,
  });
}

@JS()
@anonymous
class ImportMeta {}

@JS()
@anonymous
class Math {
  external num get E;
  external num get LN10;
  external num get LN2;
  external num get LOG2E;
  external num get LOG10E;
  external num get PI;
  external num get SQRT1_2;
  external num get SQRT2;
  external num abs(num x);
  external num acos(num x);
  external num asin(num x);
  external num atan(num x);
  external num atan2(num y, num x);
  external num ceil(num x);
  external num cos(num x);
  external num exp(num x);
  external num floor(num x);
  external num log(num x);
  external num max([
    num? values1,
    num? values2,
    num? values3,
    num? values4,
    num? values5,
    num? values6,
    num? values7,
    num? values8,
    num? values9,
  ]);
  external num min([
    num? values1,
    num? values2,
    num? values3,
    num? values4,
    num? values5,
    num? values6,
    num? values7,
    num? values8,
    num? values9,
  ]);
  external num pow(num x, num y);
  external num random();
  external num round(num x);
  external num sin(num x);
  external num sqrt(num x);
  external num tan(num x);
  external factory Math({
    num E,
    num LN10,
    num LN2,
    num LOG2E,
    num LOG10E,
    num PI,
    num SQRT1_2,
    num SQRT2,
  });
}

@JS('Math')
external Math Math;

@JS()
@anonymous
class Date {
  external String toString();
  external String toDateString();
  external String toTimeString();
  external String toLocaleString();
  external String toLocaleDateString();
  external String toLocaleTimeString();
  external num valueOf();
  external num getTime();
  external num getFullYear();
  external num getUTCFullYear();
  external num getMonth();
  external num getUTCMonth();
  external num getDate();
  external num getUTCDate();
  external num getDay();
  external num getUTCDay();
  external num getHours();
  external num getUTCHours();
  external num getMinutes();
  external num getUTCMinutes();
  external num getSeconds();
  external num getUTCSeconds();
  external num getMilliseconds();
  external num getUTCMilliseconds();
  external num getTimezoneOffset();
  external num setTime(num time);
  external num setMilliseconds(num ms);
  external num setUTCMilliseconds(num ms);
  external num setSeconds(num sec, num ms);
  external num setUTCSeconds(num sec, num ms);
  external num setMinutes(num min, num sec, num ms);
  external num setUTCMinutes(num min, num sec, num ms);
  external num setHours(num hours, num min, num sec, num ms);
  external num setUTCHours(num hours, num min, num sec, num ms);
  external num setDate(num date);
  external num setUTCDate(num date);
  external num setMonth(num month, num date);
  external num setUTCMonth(num month, num date);
  external num setFullYear(num year, num month, num date);
  external num setUTCFullYear(num year, num month, num date);
  external String toUTCString();
  external String toISOString();
  external String toJSON(dynamic key);
}

@JS()
class DateConstructor {
  external factory DateConstructor();
  external Date get prototype;
  external num parse(String s);
  external num UTC(num year, num month, num date, num hours, num minutes, num seconds, num ms);
  external num now();
  external factory DateConstructor({
    Date prototype,
  });
}

@JS('Date')
external DateConstructor Date;

@JS()
@anonymous
class RegExpMatchArray {
  external num? get index;
  external set index(num? value);
  external String? get input;
  external set input(String? value);
  external factory RegExpMatchArray({
    num? index,
    String? input,
  });
}

@JS()
@anonymous
class RegExpExecArray {
  external num get index;
  external set index(num value);
  external String get input;
  external set input(String value);
  external factory RegExpExecArray({
    num index,
    String input,
  });
}

@JS()
@anonymous
class RegExp {
  external RegExpExecArray? exec(String string);
  external bool test(String string);
  external String get source;
  external bool get global;
  external bool get ignoreCase;
  external bool get multiline;
  external num get lastIndex;
  external set lastIndex(num value);
  external RegExp compile();
  external factory RegExp({
    String source,
    bool global,
    bool ignoreCase,
    bool multiline,
    num lastIndex,
  });
}

@JS()
class RegExpConstructor {
  external factory RegExpConstructor({dynamic pattern});
  external RegExp get prototype;
  external String get $1;
  external set $1(String value);
  external String get $2;
  external set $2(String value);
  external String get $3;
  external set $3(String value);
  external String get $4;
  external set $4(String value);
  external String get $5;
  external set $5(String value);
  external String get $6;
  external set $6(String value);
  external String get $7;
  external set $7(String value);
  external String get $8;
  external set $8(String value);
  external String get $9;
  external set $9(String value);
  external String get lastMatch;
  external set lastMatch(String value);
  external factory RegExpConstructor({
    RegExp prototype,
    String $1,
    String $2,
    String $3,
    String $4,
    String $5,
    String $6,
    String $7,
    String $8,
    String $9,
    String lastMatch,
  });
}

@JS('RegExp')
external RegExpConstructor RegExp;

@JS()
@anonymous
class Error {
  external String get name;
  external set name(String value);
  external String get message;
  external set message(String value);
  external String? get stack;
  external set stack(String? value);
  external factory Error({
    String name,
    String message,
    String? stack,
  });
}

@JS()
class ErrorConstructor {
  external factory ErrorConstructor({String message});
  external Error get prototype;
  external factory ErrorConstructor({
    Error prototype,
  });
}

@JS('Error')
external ErrorConstructor Error;

@JS()
@anonymous
class EvalError {}

@JS()
class EvalErrorConstructor {
  external factory EvalErrorConstructor({String message});
  external EvalError get prototype;
  external factory EvalErrorConstructor({
    EvalError prototype,
  });
}

@JS('EvalError')
external EvalErrorConstructor EvalError;

@JS()
@anonymous
class RangeError {}

@JS()
class RangeErrorConstructor {
  external factory RangeErrorConstructor({String message});
  external RangeError get prototype;
  external factory RangeErrorConstructor({
    RangeError prototype,
  });
}

@JS('RangeError')
external RangeErrorConstructor RangeError;

@JS()
@anonymous
class ReferenceError {}

@JS()
class ReferenceErrorConstructor {
  external factory ReferenceErrorConstructor({String message});
  external ReferenceError get prototype;
  external factory ReferenceErrorConstructor({
    ReferenceError prototype,
  });
}

@JS('ReferenceError')
external ReferenceErrorConstructor ReferenceError;

@JS()
@anonymous
class SyntaxError {}

@JS()
class SyntaxErrorConstructor {
  external factory SyntaxErrorConstructor({String message});
  external SyntaxError get prototype;
  external factory SyntaxErrorConstructor({
    SyntaxError prototype,
  });
}

@JS('SyntaxError')
external SyntaxErrorConstructor SyntaxError;

@JS()
@anonymous
class TypeError {}

@JS()
class TypeErrorConstructor {
  external factory TypeErrorConstructor({String message});
  external TypeError get prototype;
  external factory TypeErrorConstructor({
    TypeError prototype,
  });
}

@JS('TypeError')
external TypeErrorConstructor TypeError;

@JS()
@anonymous
class URIError {}

@JS()
class URIErrorConstructor {
  external factory URIErrorConstructor({String message});
  external URIError get prototype;
  external factory URIErrorConstructor({
    URIError prototype,
  });
}

@JS('URIError')
external URIErrorConstructor URIError;

@JS()
@anonymous
class JSON {
  external dynamic parse(String text, dynamic Function(String key, dynamic value) reviver);
  external String stringify(dynamic value, dynamic Function(String key, dynamic value) replacer, dynamic space);
}

@JS('JSON')
external JSON JSON;

@JS()
@anonymous
class ReadonlyArray<T> {
  external num get length;
  external String toString();
  external String toLocaleString();
  external List<T> concat([
    ConcatArray<T>? items1,
    ConcatArray<T>? items2,
    ConcatArray<T>? items3,
    ConcatArray<T>? items4,
    ConcatArray<T>? items5,
    ConcatArray<T>? items6,
    ConcatArray<T>? items7,
    ConcatArray<T>? items8,
    ConcatArray<T>? items9,
  ]);
  external String join(String separator);
  external List<T> slice(num start, num end);
  external num indexOf(T searchElement, num fromIndex);
  external num lastIndexOf(T searchElement, num fromIndex);
  external bool every<S extends T>(bool Function(T value, num index, List<T> array) predicate, dynamic thisArg);
  external bool some(dynamic Function(T value, num index, List<T> array) predicate, dynamic thisArg);
  external void forEach(void Function(T value, num index, List<T> array) callbackfn, dynamic thisArg);
  external List<U> map<U>(U Function(T value, num index, List<T> array) callbackfn, dynamic thisArg);
  external List<S> filter<S extends T>(bool Function(T value, num index, List<T> array) predicate, dynamic thisArg);
  external T reduce(T Function(T previousValue, T currentValue, num currentIndex, List<T> array) callbackfn);
  external T reduceRight(T Function(T previousValue, T currentValue, num currentIndex, List<T> array) callbackfn);
  external factory ReadonlyArray({
    num length,
  });
}

@JS()
@anonymous
class ConcatArray<T> {
  external num get length;
  external String join(String separator);
  external List<T> slice(num start, num end);
  external factory ConcatArray({
    num length,
  });
}

@JS()
@anonymous
class Array<T> {
  external num get length;
  external set length(num value);
  external String toString();
  external String toLocaleString();
  external T? pop();
  external num push([
    T? items1,
    T? items2,
    T? items3,
    T? items4,
    T? items5,
    T? items6,
    T? items7,
    T? items8,
    T? items9,
  ]);
  external List<T> concat([
    ConcatArray<T>? items1,
    ConcatArray<T>? items2,
    ConcatArray<T>? items3,
    ConcatArray<T>? items4,
    ConcatArray<T>? items5,
    ConcatArray<T>? items6,
    ConcatArray<T>? items7,
    ConcatArray<T>? items8,
    ConcatArray<T>? items9,
  ]);
  external String join(String separator);
  external List<T> reverse();
  external T? shift();
  external List<T> slice(num start, num end);
  external Array sort(num Function(T a, T b) compareFn);
  external List<T> splice(num start, num deleteCount);
  external num unshift([
    T? items1,
    T? items2,
    T? items3,
    T? items4,
    T? items5,
    T? items6,
    T? items7,
    T? items8,
    T? items9,
  ]);
  external num indexOf(T searchElement, num fromIndex);
  external num lastIndexOf(T searchElement, num fromIndex);
  external bool every<S extends T>(bool Function(T value, num index, List<T> array) predicate, dynamic thisArg);
  external bool some(dynamic Function(T value, num index, List<T> array) predicate, dynamic thisArg);
  external void forEach(void Function(T value, num index, List<T> array) callbackfn, dynamic thisArg);
  external List<U> map<U>(U Function(T value, num index, List<T> array) callbackfn, dynamic thisArg);
  external List<S> filter<S extends T>(bool Function(T value, num index, List<T> array) predicate, dynamic thisArg);
  external T reduce(T Function(T previousValue, T currentValue, num currentIndex, List<T> array) callbackfn);
  external T reduceRight(T Function(T previousValue, T currentValue, num currentIndex, List<T> array) callbackfn);
  external factory Array({
    num length,
  });
}

@JS()
class ArrayConstructor {
  external factory ArrayConstructor({num arrayLength});
  external bool isArray(dynamic arg);
  external List<dynamic> get prototype;
  external factory ArrayConstructor({
    List<dynamic> prototype,
  });
}

@JS('Array')
external ArrayConstructor Array;

@JS()
@anonymous
class TypedPropertyDescriptor<T> {
  external bool? get enumerable;
  external set enumerable(bool? value);
  external bool? get configurable;
  external set configurable(bool? value);
  external bool? get writable;
  external set writable(bool? value);
  external T? get value;
  external set value(T? value);
  external T Function()? get get;
  external set get(T Function()? value);
  external void Function(T value)? get set;
  external set set(void Function(T value)? value);
  external factory TypedPropertyDescriptor({
    bool? enumerable,
    bool? configurable,
    bool? writable,
    T? value,
    T Function()? get,
    void Function(T value)? set,
  });
}

typedef ClassDecorator = dynamic Function<TFunction extends Function()>(TFunction target);
typedef PropertyDecorator = void Function(Object target, dynamic propertyKey);
typedef MethodDecorator = dynamic Function<T>(
    Object target, dynamic propertyKey, TypedPropertyDescriptor<T> descriptor);
typedef ParameterDecorator = void Function(Object target, dynamic propertyKey, num parameterIndex);
typedef PromiseConstructorLike = dynamic Function();

@JS()
@anonymous
class PromiseLike<T> {
  external PromiseLike<dynamic> then<TResult1, TResult2>(
      dynamic Function(T value)? onfulfilled, dynamic Function(dynamic reason)? onrejected);
}

@JS()
@anonymous
class Promise<T> {
  external Promise<dynamic> then<TResult1, TResult2>(
      dynamic Function(T value)? onfulfilled, dynamic Function(dynamic reason)? onrejected);
}

@JS()
@anonymous
class ArrayLike<T> {
  external num get length;
  external factory ArrayLike({
    num length,
  });
}

typedef Partial<T> = dynamic;
typedef Required<T> = dynamic;
typedef Readonly<T> = dynamic;
typedef Pick<T, K extends String> = dynamic;
typedef Record<K extends String, T> = dynamic;
typedef Exclude<T, U> = dynamic;
typedef Extract<T, U> = dynamic;
typedef Omit<T, K extends String> = Pick<T, Exclude<String, K>>;
typedef NonNullable<T> = dynamic;
typedef Parameters<
        T extends dynamic Function([
  dynamic args1,
  dynamic args2,
  dynamic args3,
  dynamic args4,
  dynamic args5,
  dynamic args6,
  dynamic args7,
  dynamic args8,
  dynamic args9,
])>
    = dynamic;
typedef ConstructorParameters<T extends dynamic Function()> = dynamic;
typedef ReturnType<
        T extends dynamic Function([
  dynamic args1,
  dynamic args2,
  dynamic args3,
  dynamic args4,
  dynamic args5,
  dynamic args6,
  dynamic args7,
  dynamic args8,
  dynamic args9,
])>
    = dynamic;
typedef InstanceType<T extends dynamic Function()> = dynamic;
typedef Uppercase<S extends String> = dynamic;
typedef Lowercase<S extends String> = dynamic;
typedef Capitalize<S extends String> = dynamic;
typedef Uncapitalize<S extends String> = dynamic;

@JS()
@anonymous
class ThisType<T> {}

@JS()
@anonymous
class ArrayBuffer {
  external num get byteLength;
  external ArrayBuffer slice(num begin, num end);
  external factory ArrayBuffer({
    num byteLength,
  });
}

@JS()
@anonymous
class ArrayBufferTypes {
  external ArrayBuffer get ArrayBuffer;
  external set ArrayBuffer(ArrayBuffer value);
  external factory ArrayBufferTypes({
    ArrayBuffer ArrayBuffer,
  });
}

typedef ArrayBufferLike = dynamic;

@JS()
class ArrayBufferConstructor {
  external ArrayBuffer get prototype;
  external factory ArrayBufferConstructor({num byteLength});
  external bool isView(dynamic arg);
  external factory ArrayBufferConstructor({
    ArrayBuffer prototype,
  });
}

@JS('ArrayBuffer')
external ArrayBufferConstructor ArrayBuffer;

@JS()
@anonymous
class ArrayBufferView {
  external ArrayBufferLike get buffer;
  external set buffer(ArrayBufferLike value);
  external num get byteLength;
  external set byteLength(num value);
  external num get byteOffset;
  external set byteOffset(num value);
  external factory ArrayBufferView({
    ArrayBufferLike buffer,
    num byteLength,
    num byteOffset,
  });
}

@JS()
@anonymous
class DataView {
  external ArrayBuffer get buffer;
  external num get byteLength;
  external num get byteOffset;
  external num getFloat32(num byteOffset, bool littleEndian);
  external num getFloat64(num byteOffset, bool littleEndian);
  external num getInt8(num byteOffset);
  external num getInt16(num byteOffset, bool littleEndian);
  external num getInt32(num byteOffset, bool littleEndian);
  external num getUint8(num byteOffset);
  external num getUint16(num byteOffset, bool littleEndian);
  external num getUint32(num byteOffset, bool littleEndian);
  external void setFloat32(num byteOffset, num value, bool littleEndian);
  external void setFloat64(num byteOffset, num value, bool littleEndian);
  external void setInt8(num byteOffset, num value);
  external void setInt16(num byteOffset, num value, bool littleEndian);
  external void setInt32(num byteOffset, num value, bool littleEndian);
  external void setUint8(num byteOffset, num value);
  external void setUint16(num byteOffset, num value, bool littleEndian);
  external void setUint32(num byteOffset, num value, bool littleEndian);
  external factory DataView({
    ArrayBuffer buffer,
    num byteLength,
    num byteOffset,
  });
}

@JS()
class DataViewConstructor {
  external DataView get prototype;
  external factory DataViewConstructor({ArrayBufferLike buffer, num byteOffset, num byteLength});
  external factory DataViewConstructor({
    DataView prototype,
  });
}

@JS('DataView')
external DataViewConstructor DataView;

@JS()
@anonymous
class Int8Array {
  external num get BYTES_PER_ELEMENT;
  external ArrayBufferLike get buffer;
  external num get byteLength;
  external num get byteOffset;
  external Int8Array copyWithin(num target, num start, num end);
  external bool every(dynamic Function(num value, num index, Int8Array array) predicate, dynamic thisArg);
  external Int8Array fill(num value, num start, num end);
  external Int8Array filter(dynamic Function(num value, num index, Int8Array array) predicate, dynamic thisArg);
  external num? find(bool Function(num value, num index, Int8Array obj) predicate, dynamic thisArg);
  external num findIndex(bool Function(num value, num index, Int8Array obj) predicate, dynamic thisArg);
  external void forEach(void Function(num value, num index, Int8Array array) callbackfn, dynamic thisArg);
  external num indexOf(num searchElement, num fromIndex);
  external String join(String separator);
  external num lastIndexOf(num searchElement, num fromIndex);
  external num get length;
  external Int8Array map(num Function(num value, num index, Int8Array array) callbackfn, dynamic thisArg);
  external num reduce(num Function(num previousValue, num currentValue, num currentIndex, Int8Array array) callbackfn);
  external num reduceRight(
      num Function(num previousValue, num currentValue, num currentIndex, Int8Array array) callbackfn);
  external Int8Array reverse();
  external void set(ArrayLike<num> array, num offset);
  external Int8Array slice(num start, num end);
  external bool some(dynamic Function(num value, num index, Int8Array array) predicate, dynamic thisArg);
  external Int8Array sort(num Function(num a, num b) compareFn);
  external Int8Array subarray(num begin, num end);
  external String toLocaleString();
  external String toString();
  external Int8Array valueOf();
  external factory Int8Array({
    num BYTES_PER_ELEMENT,
    ArrayBufferLike buffer,
    num byteLength,
    num byteOffset,
    num length,
  });
}

@JS()
class Int8ArrayConstructor {
  external Int8Array get prototype;
  external factory Int8ArrayConstructor({num length});
  external num get BYTES_PER_ELEMENT;
  external Int8Array of([
    num? items1,
    num? items2,
    num? items3,
    num? items4,
    num? items5,
    num? items6,
    num? items7,
    num? items8,
    num? items9,
  ]);
  external Int8Array from(ArrayLike<num> arrayLike);
  external factory Int8ArrayConstructor({
    Int8Array prototype,
    num BYTES_PER_ELEMENT,
  });
}

@JS('Int8Array')
external Int8ArrayConstructor Int8Array;

@JS()
@anonymous
class Uint8Array {
  external num get BYTES_PER_ELEMENT;
  external ArrayBufferLike get buffer;
  external num get byteLength;
  external num get byteOffset;
  external Uint8Array copyWithin(num target, num start, num end);
  external bool every(dynamic Function(num value, num index, Uint8Array array) predicate, dynamic thisArg);
  external Uint8Array fill(num value, num start, num end);
  external Uint8Array filter(dynamic Function(num value, num index, Uint8Array array) predicate, dynamic thisArg);
  external num? find(bool Function(num value, num index, Uint8Array obj) predicate, dynamic thisArg);
  external num findIndex(bool Function(num value, num index, Uint8Array obj) predicate, dynamic thisArg);
  external void forEach(void Function(num value, num index, Uint8Array array) callbackfn, dynamic thisArg);
  external num indexOf(num searchElement, num fromIndex);
  external String join(String separator);
  external num lastIndexOf(num searchElement, num fromIndex);
  external num get length;
  external Uint8Array map(num Function(num value, num index, Uint8Array array) callbackfn, dynamic thisArg);
  external num reduce(num Function(num previousValue, num currentValue, num currentIndex, Uint8Array array) callbackfn);
  external num reduceRight(
      num Function(num previousValue, num currentValue, num currentIndex, Uint8Array array) callbackfn);
  external Uint8Array reverse();
  external void set(ArrayLike<num> array, num offset);
  external Uint8Array slice(num start, num end);
  external bool some(dynamic Function(num value, num index, Uint8Array array) predicate, dynamic thisArg);
  external Uint8Array sort(num Function(num a, num b) compareFn);
  external Uint8Array subarray(num begin, num end);
  external String toLocaleString();
  external String toString();
  external Uint8Array valueOf();
  external factory Uint8Array({
    num BYTES_PER_ELEMENT,
    ArrayBufferLike buffer,
    num byteLength,
    num byteOffset,
    num length,
  });
}

@JS()
class Uint8ArrayConstructor {
  external Uint8Array get prototype;
  external factory Uint8ArrayConstructor({num length});
  external num get BYTES_PER_ELEMENT;
  external Uint8Array of([
    num? items1,
    num? items2,
    num? items3,
    num? items4,
    num? items5,
    num? items6,
    num? items7,
    num? items8,
    num? items9,
  ]);
  external Uint8Array from(ArrayLike<num> arrayLike);
  external factory Uint8ArrayConstructor({
    Uint8Array prototype,
    num BYTES_PER_ELEMENT,
  });
}

@JS('Uint8Array')
external Uint8ArrayConstructor Uint8Array;

@JS()
@anonymous
class Uint8ClampedArray {
  external num get BYTES_PER_ELEMENT;
  external ArrayBufferLike get buffer;
  external num get byteLength;
  external num get byteOffset;
  external Uint8ClampedArray copyWithin(num target, num start, num end);
  external bool every(dynamic Function(num value, num index, Uint8ClampedArray array) predicate, dynamic thisArg);
  external Uint8ClampedArray fill(num value, num start, num end);
  external Uint8ClampedArray filter(
      dynamic Function(num value, num index, Uint8ClampedArray array) predicate, dynamic thisArg);
  external num? find(bool Function(num value, num index, Uint8ClampedArray obj) predicate, dynamic thisArg);
  external num findIndex(bool Function(num value, num index, Uint8ClampedArray obj) predicate, dynamic thisArg);
  external void forEach(void Function(num value, num index, Uint8ClampedArray array) callbackfn, dynamic thisArg);
  external num indexOf(num searchElement, num fromIndex);
  external String join(String separator);
  external num lastIndexOf(num searchElement, num fromIndex);
  external num get length;
  external Uint8ClampedArray map(
      num Function(num value, num index, Uint8ClampedArray array) callbackfn, dynamic thisArg);
  external num reduce(
      num Function(num previousValue, num currentValue, num currentIndex, Uint8ClampedArray array) callbackfn);
  external num reduceRight(
      num Function(num previousValue, num currentValue, num currentIndex, Uint8ClampedArray array) callbackfn);
  external Uint8ClampedArray reverse();
  external void set(ArrayLike<num> array, num offset);
  external Uint8ClampedArray slice(num start, num end);
  external bool some(dynamic Function(num value, num index, Uint8ClampedArray array) predicate, dynamic thisArg);
  external Uint8ClampedArray sort(num Function(num a, num b) compareFn);
  external Uint8ClampedArray subarray(num begin, num end);
  external String toLocaleString();
  external String toString();
  external Uint8ClampedArray valueOf();
  external factory Uint8ClampedArray({
    num BYTES_PER_ELEMENT,
    ArrayBufferLike buffer,
    num byteLength,
    num byteOffset,
    num length,
  });
}

@JS()
class Uint8ClampedArrayConstructor {
  external Uint8ClampedArray get prototype;
  external factory Uint8ClampedArrayConstructor({num length});
  external num get BYTES_PER_ELEMENT;
  external Uint8ClampedArray of([
    num? items1,
    num? items2,
    num? items3,
    num? items4,
    num? items5,
    num? items6,
    num? items7,
    num? items8,
    num? items9,
  ]);
  external Uint8ClampedArray from(ArrayLike<num> arrayLike);
  external factory Uint8ClampedArrayConstructor({
    Uint8ClampedArray prototype,
    num BYTES_PER_ELEMENT,
  });
}

@JS('Uint8ClampedArray')
external Uint8ClampedArrayConstructor Uint8ClampedArray;

@JS()
@anonymous
class Int16Array {
  external num get BYTES_PER_ELEMENT;
  external ArrayBufferLike get buffer;
  external num get byteLength;
  external num get byteOffset;
  external Int16Array copyWithin(num target, num start, num end);
  external bool every(dynamic Function(num value, num index, Int16Array array) predicate, dynamic thisArg);
  external Int16Array fill(num value, num start, num end);
  external Int16Array filter(dynamic Function(num value, num index, Int16Array array) predicate, dynamic thisArg);
  external num? find(bool Function(num value, num index, Int16Array obj) predicate, dynamic thisArg);
  external num findIndex(bool Function(num value, num index, Int16Array obj) predicate, dynamic thisArg);
  external void forEach(void Function(num value, num index, Int16Array array) callbackfn, dynamic thisArg);
  external num indexOf(num searchElement, num fromIndex);
  external String join(String separator);
  external num lastIndexOf(num searchElement, num fromIndex);
  external num get length;
  external Int16Array map(num Function(num value, num index, Int16Array array) callbackfn, dynamic thisArg);
  external num reduce(num Function(num previousValue, num currentValue, num currentIndex, Int16Array array) callbackfn);
  external num reduceRight(
      num Function(num previousValue, num currentValue, num currentIndex, Int16Array array) callbackfn);
  external Int16Array reverse();
  external void set(ArrayLike<num> array, num offset);
  external Int16Array slice(num start, num end);
  external bool some(dynamic Function(num value, num index, Int16Array array) predicate, dynamic thisArg);
  external Int16Array sort(num Function(num a, num b) compareFn);
  external Int16Array subarray(num begin, num end);
  external String toLocaleString();
  external String toString();
  external Int16Array valueOf();
  external factory Int16Array({
    num BYTES_PER_ELEMENT,
    ArrayBufferLike buffer,
    num byteLength,
    num byteOffset,
    num length,
  });
}

@JS()
class Int16ArrayConstructor {
  external Int16Array get prototype;
  external factory Int16ArrayConstructor({num length});
  external num get BYTES_PER_ELEMENT;
  external Int16Array of([
    num? items1,
    num? items2,
    num? items3,
    num? items4,
    num? items5,
    num? items6,
    num? items7,
    num? items8,
    num? items9,
  ]);
  external Int16Array from(ArrayLike<num> arrayLike);
  external factory Int16ArrayConstructor({
    Int16Array prototype,
    num BYTES_PER_ELEMENT,
  });
}

@JS('Int16Array')
external Int16ArrayConstructor Int16Array;

@JS()
@anonymous
class Uint16Array {
  external num get BYTES_PER_ELEMENT;
  external ArrayBufferLike get buffer;
  external num get byteLength;
  external num get byteOffset;
  external Uint16Array copyWithin(num target, num start, num end);
  external bool every(dynamic Function(num value, num index, Uint16Array array) predicate, dynamic thisArg);
  external Uint16Array fill(num value, num start, num end);
  external Uint16Array filter(dynamic Function(num value, num index, Uint16Array array) predicate, dynamic thisArg);
  external num? find(bool Function(num value, num index, Uint16Array obj) predicate, dynamic thisArg);
  external num findIndex(bool Function(num value, num index, Uint16Array obj) predicate, dynamic thisArg);
  external void forEach(void Function(num value, num index, Uint16Array array) callbackfn, dynamic thisArg);
  external num indexOf(num searchElement, num fromIndex);
  external String join(String separator);
  external num lastIndexOf(num searchElement, num fromIndex);
  external num get length;
  external Uint16Array map(num Function(num value, num index, Uint16Array array) callbackfn, dynamic thisArg);
  external num reduce(
      num Function(num previousValue, num currentValue, num currentIndex, Uint16Array array) callbackfn);
  external num reduceRight(
      num Function(num previousValue, num currentValue, num currentIndex, Uint16Array array) callbackfn);
  external Uint16Array reverse();
  external void set(ArrayLike<num> array, num offset);
  external Uint16Array slice(num start, num end);
  external bool some(dynamic Function(num value, num index, Uint16Array array) predicate, dynamic thisArg);
  external Uint16Array sort(num Function(num a, num b) compareFn);
  external Uint16Array subarray(num begin, num end);
  external String toLocaleString();
  external String toString();
  external Uint16Array valueOf();
  external factory Uint16Array({
    num BYTES_PER_ELEMENT,
    ArrayBufferLike buffer,
    num byteLength,
    num byteOffset,
    num length,
  });
}

@JS()
class Uint16ArrayConstructor {
  external Uint16Array get prototype;
  external factory Uint16ArrayConstructor({num length});
  external num get BYTES_PER_ELEMENT;
  external Uint16Array of([
    num? items1,
    num? items2,
    num? items3,
    num? items4,
    num? items5,
    num? items6,
    num? items7,
    num? items8,
    num? items9,
  ]);
  external Uint16Array from(ArrayLike<num> arrayLike);
  external factory Uint16ArrayConstructor({
    Uint16Array prototype,
    num BYTES_PER_ELEMENT,
  });
}

@JS('Uint16Array')
external Uint16ArrayConstructor Uint16Array;

@JS()
@anonymous
class Int32Array {
  external num get BYTES_PER_ELEMENT;
  external ArrayBufferLike get buffer;
  external num get byteLength;
  external num get byteOffset;
  external Int32Array copyWithin(num target, num start, num end);
  external bool every(dynamic Function(num value, num index, Int32Array array) predicate, dynamic thisArg);
  external Int32Array fill(num value, num start, num end);
  external Int32Array filter(dynamic Function(num value, num index, Int32Array array) predicate, dynamic thisArg);
  external num? find(bool Function(num value, num index, Int32Array obj) predicate, dynamic thisArg);
  external num findIndex(bool Function(num value, num index, Int32Array obj) predicate, dynamic thisArg);
  external void forEach(void Function(num value, num index, Int32Array array) callbackfn, dynamic thisArg);
  external num indexOf(num searchElement, num fromIndex);
  external String join(String separator);
  external num lastIndexOf(num searchElement, num fromIndex);
  external num get length;
  external Int32Array map(num Function(num value, num index, Int32Array array) callbackfn, dynamic thisArg);
  external num reduce(num Function(num previousValue, num currentValue, num currentIndex, Int32Array array) callbackfn);
  external num reduceRight(
      num Function(num previousValue, num currentValue, num currentIndex, Int32Array array) callbackfn);
  external Int32Array reverse();
  external void set(ArrayLike<num> array, num offset);
  external Int32Array slice(num start, num end);
  external bool some(dynamic Function(num value, num index, Int32Array array) predicate, dynamic thisArg);
  external Int32Array sort(num Function(num a, num b) compareFn);
  external Int32Array subarray(num begin, num end);
  external String toLocaleString();
  external String toString();
  external Int32Array valueOf();
  external factory Int32Array({
    num BYTES_PER_ELEMENT,
    ArrayBufferLike buffer,
    num byteLength,
    num byteOffset,
    num length,
  });
}

@JS()
class Int32ArrayConstructor {
  external Int32Array get prototype;
  external factory Int32ArrayConstructor({num length});
  external num get BYTES_PER_ELEMENT;
  external Int32Array of([
    num? items1,
    num? items2,
    num? items3,
    num? items4,
    num? items5,
    num? items6,
    num? items7,
    num? items8,
    num? items9,
  ]);
  external Int32Array from(ArrayLike<num> arrayLike);
  external factory Int32ArrayConstructor({
    Int32Array prototype,
    num BYTES_PER_ELEMENT,
  });
}

@JS('Int32Array')
external Int32ArrayConstructor Int32Array;

@JS()
@anonymous
class Uint32Array {
  external num get BYTES_PER_ELEMENT;
  external ArrayBufferLike get buffer;
  external num get byteLength;
  external num get byteOffset;
  external Uint32Array copyWithin(num target, num start, num end);
  external bool every(dynamic Function(num value, num index, Uint32Array array) predicate, dynamic thisArg);
  external Uint32Array fill(num value, num start, num end);
  external Uint32Array filter(dynamic Function(num value, num index, Uint32Array array) predicate, dynamic thisArg);
  external num? find(bool Function(num value, num index, Uint32Array obj) predicate, dynamic thisArg);
  external num findIndex(bool Function(num value, num index, Uint32Array obj) predicate, dynamic thisArg);
  external void forEach(void Function(num value, num index, Uint32Array array) callbackfn, dynamic thisArg);
  external num indexOf(num searchElement, num fromIndex);
  external String join(String separator);
  external num lastIndexOf(num searchElement, num fromIndex);
  external num get length;
  external Uint32Array map(num Function(num value, num index, Uint32Array array) callbackfn, dynamic thisArg);
  external num reduce(
      num Function(num previousValue, num currentValue, num currentIndex, Uint32Array array) callbackfn);
  external num reduceRight(
      num Function(num previousValue, num currentValue, num currentIndex, Uint32Array array) callbackfn);
  external Uint32Array reverse();
  external void set(ArrayLike<num> array, num offset);
  external Uint32Array slice(num start, num end);
  external bool some(dynamic Function(num value, num index, Uint32Array array) predicate, dynamic thisArg);
  external Uint32Array sort(num Function(num a, num b) compareFn);
  external Uint32Array subarray(num begin, num end);
  external String toLocaleString();
  external String toString();
  external Uint32Array valueOf();
  external factory Uint32Array({
    num BYTES_PER_ELEMENT,
    ArrayBufferLike buffer,
    num byteLength,
    num byteOffset,
    num length,
  });
}

@JS()
class Uint32ArrayConstructor {
  external Uint32Array get prototype;
  external factory Uint32ArrayConstructor({num length});
  external num get BYTES_PER_ELEMENT;
  external Uint32Array of([
    num? items1,
    num? items2,
    num? items3,
    num? items4,
    num? items5,
    num? items6,
    num? items7,
    num? items8,
    num? items9,
  ]);
  external Uint32Array from(ArrayLike<num> arrayLike);
  external factory Uint32ArrayConstructor({
    Uint32Array prototype,
    num BYTES_PER_ELEMENT,
  });
}

@JS('Uint32Array')
external Uint32ArrayConstructor Uint32Array;

@JS()
@anonymous
class Float32Array {
  external num get BYTES_PER_ELEMENT;
  external ArrayBufferLike get buffer;
  external num get byteLength;
  external num get byteOffset;
  external Float32Array copyWithin(num target, num start, num end);
  external bool every(dynamic Function(num value, num index, Float32Array array) predicate, dynamic thisArg);
  external Float32Array fill(num value, num start, num end);
  external Float32Array filter(dynamic Function(num value, num index, Float32Array array) predicate, dynamic thisArg);
  external num? find(bool Function(num value, num index, Float32Array obj) predicate, dynamic thisArg);
  external num findIndex(bool Function(num value, num index, Float32Array obj) predicate, dynamic thisArg);
  external void forEach(void Function(num value, num index, Float32Array array) callbackfn, dynamic thisArg);
  external num indexOf(num searchElement, num fromIndex);
  external String join(String separator);
  external num lastIndexOf(num searchElement, num fromIndex);
  external num get length;
  external Float32Array map(num Function(num value, num index, Float32Array array) callbackfn, dynamic thisArg);
  external num reduce(
      num Function(num previousValue, num currentValue, num currentIndex, Float32Array array) callbackfn);
  external num reduceRight(
      num Function(num previousValue, num currentValue, num currentIndex, Float32Array array) callbackfn);
  external Float32Array reverse();
  external void set(ArrayLike<num> array, num offset);
  external Float32Array slice(num start, num end);
  external bool some(dynamic Function(num value, num index, Float32Array array) predicate, dynamic thisArg);
  external Float32Array sort(num Function(num a, num b) compareFn);
  external Float32Array subarray(num begin, num end);
  external String toLocaleString();
  external String toString();
  external Float32Array valueOf();
  external factory Float32Array({
    num BYTES_PER_ELEMENT,
    ArrayBufferLike buffer,
    num byteLength,
    num byteOffset,
    num length,
  });
}

@JS()
class Float32ArrayConstructor {
  external Float32Array get prototype;
  external factory Float32ArrayConstructor({num length});
  external num get BYTES_PER_ELEMENT;
  external Float32Array of([
    num? items1,
    num? items2,
    num? items3,
    num? items4,
    num? items5,
    num? items6,
    num? items7,
    num? items8,
    num? items9,
  ]);
  external Float32Array from(ArrayLike<num> arrayLike);
  external factory Float32ArrayConstructor({
    Float32Array prototype,
    num BYTES_PER_ELEMENT,
  });
}

@JS('Float32Array')
external Float32ArrayConstructor Float32Array;

@JS()
@anonymous
class Float64Array {
  external num get BYTES_PER_ELEMENT;
  external ArrayBufferLike get buffer;
  external num get byteLength;
  external num get byteOffset;
  external Float64Array copyWithin(num target, num start, num end);
  external bool every(dynamic Function(num value, num index, Float64Array array) predicate, dynamic thisArg);
  external Float64Array fill(num value, num start, num end);
  external Float64Array filter(dynamic Function(num value, num index, Float64Array array) predicate, dynamic thisArg);
  external num? find(bool Function(num value, num index, Float64Array obj) predicate, dynamic thisArg);
  external num findIndex(bool Function(num value, num index, Float64Array obj) predicate, dynamic thisArg);
  external void forEach(void Function(num value, num index, Float64Array array) callbackfn, dynamic thisArg);
  external num indexOf(num searchElement, num fromIndex);
  external String join(String separator);
  external num lastIndexOf(num searchElement, num fromIndex);
  external num get length;
  external Float64Array map(num Function(num value, num index, Float64Array array) callbackfn, dynamic thisArg);
  external num reduce(
      num Function(num previousValue, num currentValue, num currentIndex, Float64Array array) callbackfn);
  external num reduceRight(
      num Function(num previousValue, num currentValue, num currentIndex, Float64Array array) callbackfn);
  external Float64Array reverse();
  external void set(ArrayLike<num> array, num offset);
  external Float64Array slice(num start, num end);
  external bool some(dynamic Function(num value, num index, Float64Array array) predicate, dynamic thisArg);
  external Float64Array sort(num Function(num a, num b) compareFn);
  external Float64Array subarray(num begin, num end);
  external String toString();
  external Float64Array valueOf();
  external factory Float64Array({
    num BYTES_PER_ELEMENT,
    ArrayBufferLike buffer,
    num byteLength,
    num byteOffset,
    num length,
  });
}

@JS()
class Float64ArrayConstructor {
  external Float64Array get prototype;
  external factory Float64ArrayConstructor({num length});
  external num get BYTES_PER_ELEMENT;
  external Float64Array of([
    num? items1,
    num? items2,
    num? items3,
    num? items4,
    num? items5,
    num? items6,
    num? items7,
    num? items8,
    num? items9,
  ]);
  external Float64Array from(ArrayLike<num> arrayLike);
  external factory Float64ArrayConstructor({
    Float64Array prototype,
    num BYTES_PER_ELEMENT,
  });
}

@JS('Float64Array')
external Float64ArrayConstructor Float64Array;

@JS()
@anonymous
class CollatorOptions {
  external String? get usage;
  external set usage(String? value);
  external String? get localeMatcher;
  external set localeMatcher(String? value);
  external bool? get numeric;
  external set numeric(bool? value);
  external String? get caseFirst;
  external set caseFirst(String? value);
  external String? get sensitivity;
  external set sensitivity(String? value);
  external bool? get ignorePunctuation;
  external set ignorePunctuation(bool? value);
  external factory CollatorOptions({
    String? usage,
    String? localeMatcher,
    bool? numeric,
    String? caseFirst,
    String? sensitivity,
    bool? ignorePunctuation,
  });
}

@JS()
@anonymous
class ResolvedCollatorOptions {
  external String get locale;
  external set locale(String value);
  external String get usage;
  external set usage(String value);
  external String get sensitivity;
  external set sensitivity(String value);
  external bool get ignorePunctuation;
  external set ignorePunctuation(bool value);
  external String get collation;
  external set collation(String value);
  external String get caseFirst;
  external set caseFirst(String value);
  external bool get numeric;
  external set numeric(bool value);
  external factory ResolvedCollatorOptions({
    String locale,
    String usage,
    String sensitivity,
    bool ignorePunctuation,
    String collation,
    String caseFirst,
    bool numeric,
  });
}

@JS()
@anonymous
class Collator {
  external num compare(String x, String y);
  external ResolvedCollatorOptions resolvedOptions();
}

@JS('Intl.Collator')
external ICollator Collator;

@JS()
@anonymous
class NumberFormatOptions {
  external String? get localeMatcher;
  external set localeMatcher(String? value);
  external String? get style;
  external set style(String? value);
  external String? get currency;
  external set currency(String? value);
  external String? get currencyDisplay;
  external set currencyDisplay(String? value);
  external String? get currencySign;
  external set currencySign(String? value);
  external bool? get useGrouping;
  external set useGrouping(bool? value);
  external num? get minimumIntegerDigits;
  external set minimumIntegerDigits(num? value);
  external num? get minimumFractionDigits;
  external set minimumFractionDigits(num? value);
  external num? get maximumFractionDigits;
  external set maximumFractionDigits(num? value);
  external num? get minimumSignificantDigits;
  external set minimumSignificantDigits(num? value);
  external num? get maximumSignificantDigits;
  external set maximumSignificantDigits(num? value);
  external factory NumberFormatOptions({
    String? localeMatcher,
    String? style,
    String? currency,
    String? currencyDisplay,
    String? currencySign,
    bool? useGrouping,
    num? minimumIntegerDigits,
    num? minimumFractionDigits,
    num? maximumFractionDigits,
    num? minimumSignificantDigits,
    num? maximumSignificantDigits,
  });
}

@JS()
@anonymous
class ResolvedNumberFormatOptions {
  external String get locale;
  external set locale(String value);
  external String get numberingSystem;
  external set numberingSystem(String value);
  external String get style;
  external set style(String value);
  external String? get currency;
  external set currency(String? value);
  external String? get currencyDisplay;
  external set currencyDisplay(String? value);
  external num get minimumIntegerDigits;
  external set minimumIntegerDigits(num value);
  external num get minimumFractionDigits;
  external set minimumFractionDigits(num value);
  external num get maximumFractionDigits;
  external set maximumFractionDigits(num value);
  external num? get minimumSignificantDigits;
  external set minimumSignificantDigits(num? value);
  external num? get maximumSignificantDigits;
  external set maximumSignificantDigits(num? value);
  external bool get useGrouping;
  external set useGrouping(bool value);
  external factory ResolvedNumberFormatOptions({
    String locale,
    String numberingSystem,
    String style,
    String? currency,
    String? currencyDisplay,
    num minimumIntegerDigits,
    num minimumFractionDigits,
    num maximumFractionDigits,
    num? minimumSignificantDigits,
    num? maximumSignificantDigits,
    bool useGrouping,
  });
}

@JS()
@anonymous
class NumberFormat {
  external String format(num value);
  external ResolvedNumberFormatOptions resolvedOptions();
}

@JS('Intl.NumberFormat')
external INumberFormat NumberFormat;

@JS()
@anonymous
class DateTimeFormatOptions {
  external String? get localeMatcher;
  external set localeMatcher(String? value);
  external String? get weekday;
  external set weekday(String? value);
  external String? get era;
  external set era(String? value);
  external String? get year;
  external set year(String? value);
  external String? get month;
  external set month(String? value);
  external String? get day;
  external set day(String? value);
  external String? get hour;
  external set hour(String? value);
  external String? get minute;
  external set minute(String? value);
  external String? get second;
  external set second(String? value);
  external String? get timeZoneName;
  external set timeZoneName(String? value);
  external String? get formatMatcher;
  external set formatMatcher(String? value);
  external bool? get hour12;
  external set hour12(bool? value);
  external String? get timeZone;
  external set timeZone(String? value);
  external factory DateTimeFormatOptions({
    String? localeMatcher,
    String? weekday,
    String? era,
    String? year,
    String? month,
    String? day,
    String? hour,
    String? minute,
    String? second,
    String? timeZoneName,
    String? formatMatcher,
    bool? hour12,
    String? timeZone,
  });
}

@JS()
@anonymous
class ResolvedDateTimeFormatOptions {
  external String get locale;
  external set locale(String value);
  external String get calendar;
  external set calendar(String value);
  external String get numberingSystem;
  external set numberingSystem(String value);
  external String get timeZone;
  external set timeZone(String value);
  external bool? get hour12;
  external set hour12(bool? value);
  external String? get weekday;
  external set weekday(String? value);
  external String? get era;
  external set era(String? value);
  external String? get year;
  external set year(String? value);
  external String? get month;
  external set month(String? value);
  external String? get day;
  external set day(String? value);
  external String? get hour;
  external set hour(String? value);
  external String? get minute;
  external set minute(String? value);
  external String? get second;
  external set second(String? value);
  external String? get timeZoneName;
  external set timeZoneName(String? value);
  external factory ResolvedDateTimeFormatOptions({
    String locale,
    String calendar,
    String numberingSystem,
    String timeZone,
    bool? hour12,
    String? weekday,
    String? era,
    String? year,
    String? month,
    String? day,
    String? hour,
    String? minute,
    String? second,
    String? timeZoneName,
  });
}

@JS()
@anonymous
class DateTimeFormat {
  external String format(dynamic date);
  external ResolvedDateTimeFormatOptions resolvedOptions();
}

@JS('Intl.DateTimeFormat')
external IDateTimeFormat DateTimeFormat;

@JS()
@anonymous
class Number {
  external String toLocaleString(dynamic locales, NumberFormatOptions options);
}

@JS()
@anonymous
class Date {
  external String toLocaleString(dynamic locales, DateTimeFormatOptions options);
  external String toLocaleDateString(dynamic locales, DateTimeFormatOptions options);
  external String toLocaleTimeString(dynamic locales, DateTimeFormatOptions options);
}

@JS()
@anonymous
class ICollator {
  external factory ICollator({dynamic locales, CollatorOptions options});
  external List<String> supportedLocalesOf(dynamic locales, CollatorOptions options);
}

@JS()
@anonymous
class IDateTimeFormat {
  external factory IDateTimeFormat({dynamic locales, DateTimeFormatOptions options});
  external List<String> supportedLocalesOf(dynamic locales, DateTimeFormatOptions options);
}

@JS()
@anonymous
class INumberFormat {
  external factory INumberFormat({dynamic locales, NumberFormatOptions options});
  external List<String> supportedLocalesOf(dynamic locales, NumberFormatOptions options);
}
