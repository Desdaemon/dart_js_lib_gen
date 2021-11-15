declare class Example<T> {
  static staticNum: number;
  static readonly readonlyStr: string;
  static staticFoo(): void;
  static get staticGetter(): boolean;
  static set staticSetter(_: boolean);

  property: T;
  get getter(): boolean;
  set setter(_: boolean);
  #private: void;

  constructor(_one: number, _two: string);
}

interface Foo {
  foo(): boolean;
}

interface Foo2 extends Foo {
  foo2(): void;
}

declare class Bar {
  bar(): boolean;
}

declare class Baz extends Example<string> implements Foo, Bar {
  bar(): boolean;
  foo(): boolean;
}

export function simple_adder(a: number, b: number): number;
