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
  external static dynamic staticSetter(bool _);
  external T property;
  external bool getter();
  external dynamic setter(bool _);
  external factory Example(
    num _one,
    String _two,
  );
}

@JS()
@anonymous
class Foo {
  external bool foo();
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

@JS('simple_adder')
external num simple_adder(num a, num b);
