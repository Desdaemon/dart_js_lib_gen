@JS()
library samples.simple.d.ts;

// ignore_for_file: non_constant_identifier_names, private_optional_parameter, unused_element
import 'package:js/js.dart';

@JS()
class Example<T> {
  external static num staticNum;
  external static String readonlyStr;
  external static void staticFoo();
  external static bool staticGetter();
  external static staticSetter(bool _);
  external T property;
  external bool getter();
  external setter(bool _);
  external factory Example(
    num _one,
    String _two,
  );
}

@JS()
@anonymous
class Foo {
  external bool foo();
  external factory Foo();
}

@JS()
@anonymous
class Foo2 extends Foo {
  external void foo2();
  external factory Foo2();
}

@JS()
class Bar {
  external bool bar();
}

@JS()
class Baz extends Example implements Foo, Bar {
  external bool bar();
  external bool foo();
}

@JS(r'simple_adder')
external num simple_adder(num a, num b);

/// "foo" | "bar" | "baz"
typedef SimpleUnion = String;
typedef ConstEnum = String;
