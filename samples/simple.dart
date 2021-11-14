@JS()
library samples.simple.ts;

// ignore_for_file: non_constant_identifier_names, private_optional_parameter, unused_element
import 'package:js/js.dart';

typedef SimpleLit = String;
typedef NullLit = String?;
typedef NumLit = num;
typedef NullNum = num?;
typedef BoolLit = bool;
typedef NullBool = bool?;
typedef NativeAnimationEvent = AnimationEvent;
typedef NativeClipboardEvent = ClipboardEvent;
typedef NativeCompositionEvent = CompositionEvent;
typedef NativeDragEvent = DragEvent;
typedef NativeFocusEvent = FocusEvent;
typedef NativeKeyboardEvent = KeyboardEvent;
typedef NativeMouseEvent = MouseEvent;
typedef NativeTouchEvent = TouchEvent;
typedef NativePointerEvent = PointerEvent;
typedef NativeTransitionEvent = TransitionEvent;
typedef NativeUIEvent = UIEvent;
typedef NativeWheelEvent = WheelEvent;
typedef Booleanish = dynamic;
@JS('UNDEFINED_VOID_ONLY')
external dynamic UNDEFINED_VOID_ONLY;
typedef Destructor = dynamic Function();
typedef ElementType<P> = dynamic;
typedef ReactType<P> = ElementType<P>;
typedef ComponentType<P> = dynamic;
typedef JSXElementConstructor<P> = dynamic;

@JS()
@anonymous
class RefObject<T> {
  external T? get current;
  external factory RefObject({
    T? current,
  });
}

typedef RefCallback<T> = dynamic;
typedef Ref<T> = dynamic;
typedef LegacyRef<T> = dynamic;
typedef ElementRef<C extends dynamic> = dynamic;
typedef ComponentState = dynamic;
typedef Key = dynamic;

@JS()
@anonymous
class Attributes {
  external Key? get key;
  external set key(Key? value);
  external factory Attributes({
    Key? key,
  });
}

@JS()
@anonymous
class RefAttributes<T> {
  external Ref<T>? get ref;
  external set ref(Ref<T>? value);
  external factory RefAttributes({
    Ref<T>? ref,
  });
}

@JS()
@anonymous
class ClassAttributes<T> {
  external LegacyRef<T>? get ref;
  external set ref(LegacyRef<T>? value);
  external factory ClassAttributes({
    LegacyRef<T>? ref,
  });
}

@JS()
@anonymous
class ReactElement<P, T extends dynamic> {
  external T get type;
  external set type(T value);
  external P get props;
  external set props(P value);
  external Key? get key;
  external set key(Key? value);
  external factory ReactElement({
    T type,
    P props,
    Key? key,
  });
}

@JS()
@anonymous
class ReactComponentElement<T extends dynamic, P> {}

typedef SFCElement<P> = FunctionComponentElement<P>;

@JS()
@anonymous
class FunctionComponentElement<P> {
  external dynamic? get ref;
  external set ref(dynamic? value);
  external factory FunctionComponentElement({
    dynamic? ref,
  });
}

typedef CElement<P, T extends Component<P, ComponentState>> = ComponentElement<P, T>;

@JS()
@anonymous
class ComponentElement<P, T extends Component<P, ComponentState>> {
  external LegacyRef<T>? get ref;
  external set ref(LegacyRef<T>? value);
  external factory ComponentElement({
    LegacyRef<T>? ref,
  });
}

typedef ClassicElement<P> = CElement<P, ClassicComponent<P, ComponentState>>;

@JS()
@anonymous
class DOMElement<P extends dynamic, T extends Element> {
  external LegacyRef<T> get ref;
  external set ref(LegacyRef<T> value);
  external factory DOMElement({
    LegacyRef<T> ref,
  });
}

@JS()
@anonymous
class ReactHTMLElement<T extends HTMLElement> {}

@JS()
@anonymous
class DetailedReactHTMLElement<P extends HTMLAttributes<T>, T extends HTMLElement> {
  external String get type;
  external set type(String value);
  external factory DetailedReactHTMLElement({
    String type,
  });
}

@JS()
@anonymous
class ReactSVGElement {
  external String get type;
  external set type(String value);
  external factory ReactSVGElement({
    String type,
  });
}

@JS()
@anonymous
class ReactPortal {
  external Key? get key;
  external set key(Key? value);
  external ReactNode get children;
  external set children(ReactNode value);
  external factory ReactPortal({
    Key? key,
    ReactNode children,
  });
}

typedef Factory<P> = ReactElement<P> Function(
  dynamic props, [
  ReactNode? children1,
  ReactNode? children2,
  ReactNode? children3,
  ReactNode? children4,
  ReactNode? children5,
  ReactNode? children6,
  ReactNode? children7,
  ReactNode? children8,
  ReactNode? children9,
]);
typedef SFCFactory<P> = FunctionComponentFactory<P>;
typedef FunctionComponentFactory<P> = FunctionComponentElement<P> Function(
  dynamic props, [
  ReactNode? children1,
  ReactNode? children2,
  ReactNode? children3,
  ReactNode? children4,
  ReactNode? children5,
  ReactNode? children6,
  ReactNode? children7,
  ReactNode? children8,
  ReactNode? children9,
]);
typedef ComponentFactory<P, T extends Component<P, ComponentState>> = CElement<P, T> Function(
  dynamic props, [
  ReactNode? children1,
  ReactNode? children2,
  ReactNode? children3,
  ReactNode? children4,
  ReactNode? children5,
  ReactNode? children6,
  ReactNode? children7,
  ReactNode? children8,
  ReactNode? children9,
]);
typedef CFactory<P, T extends Component<P, ComponentState>> = ComponentFactory<P, T>;
typedef ClassicFactory<P> = CFactory<P, ClassicComponent<P, ComponentState>>;
typedef DOMFactory<P extends DOMAttributes<T>, T extends Element> = DOMElement<P, T> Function(
  dynamic? props, [
  ReactNode? children1,
  ReactNode? children2,
  ReactNode? children3,
  ReactNode? children4,
  ReactNode? children5,
  ReactNode? children6,
  ReactNode? children7,
  ReactNode? children8,
  ReactNode? children9,
]);

@JS()
@anonymous
class HTMLFactory<T extends HTMLElement> {}

@JS()
@anonymous
class DetailedHTMLFactory<P extends HTMLAttributes<T>, T extends HTMLElement> {}

@JS()
@anonymous
class SVGFactory {}

typedef ReactText = dynamic;
typedef ReactChild = dynamic;

@JS()
@anonymous
class ReactNodeArray {}

typedef ReactFragment = dynamic;
typedef ReactNode = dynamic;
@JS('React.createFactory')
external HTMLFactory<T> createFactory<T extends HTMLElement>(String type);
@JS('React.createFactory')
external SVGFactory createFactory(String type);
@JS('React.createFactory')
external DOMFactory<P, T> createFactory<P extends DOMAttributes<T>, T extends Element>(String type);
@JS('React.createFactory')
external FunctionComponentFactory<P> createFactory<P>(FunctionComponent<P> type);
@JS('React.createFactory')
external CFactory<P, ClassicComponent<P, ComponentState>> createFactory<P>(
    ClassType<P, ClassicComponent<P, ComponentState>, ClassicComponentClass<P>> type);
@JS('React.createFactory')
external CFactory<P, T> createFactory<P, T extends Component<P, ComponentState>, C extends ComponentClass<P>>(
    ClassType<P, T, C> type);
@JS('React.createFactory')
external Factory<P> createFactory<P>(ComponentClass<P> type);
