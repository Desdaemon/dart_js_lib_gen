@JS()
library samples.react.d.ts;

// ignore_for_file: non_constant_identifier_names, private_optional_parameter, unused_element
import 'package:js/js.dart';
import "dart:html";
import "dart:svg";
import "lib.es5.d.dart";

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
@JS(r'UNDEFINED_VOID_ONLY')
external dynamic get JUNDEFINED_VOID_ONLY;
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
class RefAttributes<T> extends Attributes {
  external Ref<T>? get ref;
  external set ref(Ref<T>? value);
  external factory RefAttributes({
    Ref<T>? ref,
  });
}

@JS()
@anonymous
class ClassAttributes<T> extends Attributes {
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
class ReactComponentElement<T extends dynamic, P> extends ReactElement<P, Exclude<T, num>> {
  external factory ReactComponentElement();
}

typedef SFCElement<P> = FunctionComponentElement<P>;

@JS()
@anonymous
class FunctionComponentElement<P> extends ReactElement<P, FunctionComponent<P>> {
  external dynamic get ref;
  external set ref(dynamic value);
  external factory FunctionComponentElement({
    dynamic ref,
  });
}

typedef CElement<P, T extends Component<P, ComponentState>> = ComponentElement<P, T>;

@JS()
@anonymous
class ComponentElement<P, T extends Component<P, ComponentState>> extends ReactElement<P, ComponentClass<P>> {
  external LegacyRef<T>? get ref;
  external set ref(LegacyRef<T>? value);
  external factory ComponentElement({
    LegacyRef<T>? ref,
  });
}

typedef ClassicElement<P> = CElement<P, ClassicComponent<P, ComponentState>>;

@JS()
@anonymous
class DOMElement<P extends dynamic, T extends Element> extends ReactElement<P, String> {
  external LegacyRef<T> get ref;
  external set ref(LegacyRef<T> value);
  external factory DOMElement({
    LegacyRef<T> ref,
  });
}

@JS()
@anonymous
class ReactHTMLElement<T extends HtmlElement> extends DetailedReactHTMLElement<AllHTMLAttributes<T>, T> {
  external factory ReactHTMLElement();
}

@JS()
@anonymous
class DetailedReactHTMLElement<P extends HTMLAttributes<T>, T extends HtmlElement> extends DOMElement<P, T> {
  external String get type;
  external set type(String value);
  external factory DetailedReactHTMLElement({
    String type,
  });
}

@JS()
@anonymous
class ReactSVGElement extends DOMElement<SVGAttributes<SvgElement>, SvgElement> {
  external String get type;
  external set type(String value);
  external factory ReactSVGElement({
    String type,
  });
}

@JS()
@anonymous
class ReactPortal extends ReactElement {
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

@JS()
@anonymous
class HTMLFactory<T extends HtmlElement> extends DetailedHTMLFactory<AllHTMLAttributes<T>, T> {
  external factory HTMLFactory();
}

@JS()
@anonymous
class DetailedHTMLFactory<P extends HTMLAttributes<T>, T extends HtmlElement> extends DOMFactory<P, T> {
  external factory DetailedHTMLFactory();
}

@JS()
@anonymous
class SVGFactory extends DOMFactory<SVGAttributes<SvgElement>, SvgElement> {
  external factory SVGFactory();
}

typedef ReactText = dynamic;
typedef ReactChild = dynamic;

@JS()
@anonymous
class ReactNodeArray extends List<ReactNode> {
  external factory ReactNodeArray();
}

typedef ReactFragment = dynamic;
typedef ReactNode = dynamic;
@JS(r'React.createFactory')
external HTMLFactory<T> createFactory<T extends HtmlElement>(String type);
@JS(r'React.createFactory')
external SVGFactory createFactory1(String type);
@JS(r'React.createFactory')
external DOMFactory<P, T> createFactory2<P extends DOMAttributes<T>, T extends Element>(String type);
@JS(r'React.createFactory')
external FunctionComponentFactory<P> createFactory3<P>(FunctionComponent<P> type);
@JS(r'React.createFactory')
external CFactory<P, ClassicComponent<P, ComponentState>> createFactory4<P>(
    ClassType<P, ClassicComponent<P, ComponentState>, ClassicComponentClass<P>> type);
@JS(r'React.createFactory')
external CFactory<P, T> createFactory5<P, T extends Component<P, ComponentState>, C extends ComponentClass<P>>(
    ClassType<P, T, C> type);
@JS(r'React.createFactory')
external Factory<P> createFactory6<P>(ComponentClass<P> type);
@JS(r'React.createElement')
external DetailedReactHTMLElement<InputHTMLAttributes<InputElement>, InputElement> createElement(
  String type,
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
@JS(r'React.createElement')
external DetailedReactHTMLElement<P, T> createElement1<P extends HTMLAttributes<T>, T extends HtmlElement>(
  String type,
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
@JS(r'React.createElement')
external ReactSVGElement createElement2<P extends SVGAttributes<T>, T extends SvgElement>(
  String type,
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
@JS(r'React.createElement')
external DOMElement<P, T> createElement3<P extends DOMAttributes<T>, T extends Element>(
  String type,
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
@JS(r'React.createElement')
external FunctionComponentElement<P> createElement4<P extends dynamic>(
  FunctionComponent<P> type,
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
@JS(r'React.createElement')
external CElement<P, ClassicComponent<P, ComponentState>> createElement5<P extends dynamic>(
  ClassType<P, ClassicComponent<P, ComponentState>, ClassicComponentClass<P>> type,
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
@JS(r'React.createElement')
external CElement<P, T>
    createElement6<P extends dynamic, T extends Component<P, ComponentState>, C extends ComponentClass<P>>(
  ClassType<P, T, C> type,
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
@JS(r'React.createElement')
external ReactElement<P> createElement7<P extends dynamic>(
  dynamic type,
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
@JS(r'React.cloneElement')
external DetailedReactHTMLElement<P, T> cloneElement<P extends HTMLAttributes<T>, T extends HtmlElement>(
  DetailedReactHTMLElement<P, T> element,
  P props, [
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
@JS(r'React.cloneElement')
external ReactHTMLElement<T> cloneElement1<P extends HTMLAttributes<T>, T extends HtmlElement>(
  ReactHTMLElement<T> element,
  P props, [
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
@JS(r'React.cloneElement')
external ReactSVGElement cloneElement2<P extends SVGAttributes<T>, T extends SvgElement>(
  ReactSVGElement element,
  P props, [
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
@JS(r'React.cloneElement')
external DOMElement<P, T> cloneElement3<P extends DOMAttributes<T>, T extends Element>(
  DOMElement<P, T> element,
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
@JS(r'React.cloneElement')
external FunctionComponentElement<P> cloneElement4<P>(
  FunctionComponentElement<P> element,
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
@JS(r'React.cloneElement')
external CElement<P, T> cloneElement5<P, T extends Component<P, ComponentState>>(
  CElement<P, T> element,
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
@JS(r'React.cloneElement')
external ReactElement<P> cloneElement6<P>(
  ReactElement<P> element,
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

@JS()
@anonymous
class ProviderProps<T> {
  external T get value;
  external set value(T value);
  external ReactNode? get children;
  external set children(ReactNode? value);
  external factory ProviderProps({
    T value,
    ReactNode? children,
  });
}

@JS()
@anonymous
class ConsumerProps<T> {
  external ReactNode Function(T value) get children;
  external set children(ReactNode Function(T value) value);
  external factory ConsumerProps({
    ReactNode Function(T value) children,
  });
}

@JS()
@anonymous
class ExoticComponent<P> {
  external dynamic get $$typeof;
  external factory ExoticComponent({
    dynamic $$typeof,
  });
}

@JS()
@anonymous
class NamedExoticComponent<P> extends ExoticComponent<P> {
  external String? get displayName;
  external set displayName(String? value);
  external factory NamedExoticComponent({
    String? displayName,
  });
}

@JS()
@anonymous
class ProviderExoticComponent<P> extends ExoticComponent<P> {
  external WeakValidationMap<P>? get propTypes;
  external set propTypes(WeakValidationMap<P>? value);
  external factory ProviderExoticComponent({
    WeakValidationMap<P>? propTypes,
  });
}

typedef ContextType<C extends Context<dynamic>> = dynamic;
typedef Provider<T> = ProviderExoticComponent<ProviderProps<T>>;
typedef Consumer<T> = ExoticComponent<ConsumerProps<T>>;

@JS()
@anonymous
class Context<T> {
  external Provider<T> get Provider;
  external set Provider(Provider<T> value);
  external Consumer<T> get Consumer;
  external set Consumer(Consumer<T> value);
  external String? get displayName;
  external set displayName(String? value);
  external factory Context({
    Provider<T> Provider,
    Consumer<T> Consumer,
    String? displayName,
  });
}

@JS(r'React.createContext')
external Context<T> createContext<T>(T defaultValue);
@JS(r'React.isValidElement')
external bool isValidElement<P>(dynamic object);
@JS(r'React.Children')
external ReactChildren get JChildren;
@JS(r'React.Fragment')
external ExoticComponent<IFragment> get JFragment;
@JS(r'React.StrictMode')
external ExoticComponent<IStrictMode> get JStrictMode;

@JS()
@anonymous
class SuspenseProps {
  external ReactNode? get children;
  external set children(ReactNode? value);
  external NonNullable<ReactNode>? get fallback;
  external set fallback(NonNullable<ReactNode>? value);
  external factory SuspenseProps({
    ReactNode? children,
    NonNullable<ReactNode>? fallback,
  });
}

@JS(r'React.Suspense')
external ExoticComponent<SuspenseProps> get JSuspense;
@JS(r'React.version')
external String get version;
typedef ProfilerOnRenderCallback = void Function(String id, String phase, num actualDuration, num baseDuration,
    num startTime, num commitTime, Set<SchedulerInteraction> interactions);

@JS()
@anonymous
class ProfilerProps {
  external ReactNode? get children;
  external set children(ReactNode? value);
  external String get id;
  external set id(String value);
  external ProfilerOnRenderCallback get onRender;
  external set onRender(ProfilerOnRenderCallback value);
  external factory ProfilerProps({
    ReactNode? children,
    String id,
    ProfilerOnRenderCallback onRender,
  });
}

@JS(r'React.Profiler')
external ExoticComponent<ProfilerProps> get JProfiler;
typedef ReactInstance = dynamic;

@JS()
@anonymous
class Component<P, S, SS> extends ComponentLifecycle<P, S, SS> {
  external factory Component();
}

@JS()
class Component<P, S> {
  external static Context<dynamic>? contextType;
  external dynamic context;
  external factory Component(
    dynamic props,
  );
  external factory Component(
    P props,
    dynamic context,
  );
  external void setState<K extends String>(dynamic state, void Function() callback);
  external void forceUpdate(void Function() callback);
  external ReactNode render();
  external dynamic props;
  external Readonly<S> state;
  external dynamic refs;
}

@JS()
class PureComponent<P, S, SS> extends Component {}

@JS()
@anonymous
class ClassicComponent<P, S> extends Component<P, S> {
  external void replaceState(S nextState, void Function() callback);
  external bool isMounted();
  external S getInitialState();
  external factory ClassicComponent();
}

@JS()
@anonymous
class ChildContextProvider<CC> {
  external CC getChildContext();
  external factory ChildContextProvider();
}

typedef SFC<P> = FunctionComponent<P>;
typedef StatelessComponent<P> = FunctionComponent<P>;
typedef FC<P> = FunctionComponent<P>;

@JS()
@anonymous
class FunctionComponent<P> {
  external WeakValidationMap<P>? get propTypes;
  external set propTypes(WeakValidationMap<P>? value);
  external ValidationMap<dynamic>? get contextTypes;
  external set contextTypes(ValidationMap<dynamic>? value);
  external Partial<P>? get defaultProps;
  external set defaultProps(Partial<P>? value);
  external String? get displayName;
  external set displayName(String? value);
  external factory FunctionComponent({
    WeakValidationMap<P>? propTypes,
    ValidationMap<dynamic>? contextTypes,
    Partial<P>? defaultProps,
    String? displayName,
  });
}

typedef VFC<P> = VoidFunctionComponent<P>;

@JS()
@anonymous
class VoidFunctionComponent<P> {
  external WeakValidationMap<P>? get propTypes;
  external set propTypes(WeakValidationMap<P>? value);
  external ValidationMap<dynamic>? get contextTypes;
  external set contextTypes(ValidationMap<dynamic>? value);
  external Partial<P>? get defaultProps;
  external set defaultProps(Partial<P>? value);
  external String? get displayName;
  external set displayName(String? value);
  external factory VoidFunctionComponent({
    WeakValidationMap<P>? propTypes,
    ValidationMap<dynamic>? contextTypes,
    Partial<P>? defaultProps,
    String? displayName,
  });
}

typedef ForwardedRef<T> = dynamic;

@JS()
@anonymous
class ForwardRefRenderFunction<T, P> {
  external String? get displayName;
  external set displayName(String? value);
  external dynamic get defaultProps;
  external set defaultProps(dynamic value);
  external dynamic get propTypes;
  external set propTypes(dynamic value);
  external factory ForwardRefRenderFunction({
    String? displayName,
    dynamic defaultProps,
    dynamic propTypes,
  });
}

@JS()
@anonymous
class RefForwardingComponent<T, P> extends ForwardRefRenderFunction<T, P> {
  external factory RefForwardingComponent();
}

@JS()
class ComponentClass<P, S> extends StaticLifecycle<P, S> {
  external factory ComponentClass({P props, dynamic context});
  external WeakValidationMap<P>? get propTypes;
  external set propTypes(WeakValidationMap<P>? value);
  external Context<dynamic>? get contextType;
  external set contextType(Context<dynamic>? value);
  external ValidationMap<dynamic>? get contextTypes;
  external set contextTypes(ValidationMap<dynamic>? value);
  external ValidationMap<dynamic>? get childContextTypes;
  external set childContextTypes(ValidationMap<dynamic>? value);
  external Partial<P>? get defaultProps;
  external set defaultProps(Partial<P>? value);
  external String? get displayName;
  external set displayName(String? value);
}

@JS()
class ClassicComponentClass<P> extends ComponentClass<P> {
  external factory ClassicComponentClass({P props, dynamic context});
  external P getDefaultProps();
}

typedef ClassType<P, T extends Component<P, ComponentState>, C extends ComponentClass<P>> = dynamic;

@JS()
@anonymous
class ComponentLifecycle<P, S, SS> extends NewLifecycle<P, S, SS> {
  external void componentDidMount();
  external bool shouldComponentUpdate(Readonly<P> nextProps, Readonly<S> nextState, dynamic nextContext);
  external void componentWillUnmount();
  external void componentDidCatch(Error error, ErrorInfo errorInfo);
  external factory ComponentLifecycle();
}

@JS()
@anonymous
class StaticLifecycle<P, S> {
  external GetDerivedStateFromProps<P, S>? get getDerivedStateFromProps;
  external set getDerivedStateFromProps(GetDerivedStateFromProps<P, S>? value);
  external GetDerivedStateFromError<P, S>? get getDerivedStateFromError;
  external set getDerivedStateFromError(GetDerivedStateFromError<P, S>? value);
  external factory StaticLifecycle({
    GetDerivedStateFromProps<P, S>? getDerivedStateFromProps,
    GetDerivedStateFromError<P, S>? getDerivedStateFromError,
  });
}

typedef GetDerivedStateFromProps<P, S> = Partial<S>? Function(Readonly<P> nextProps, S prevState);
typedef GetDerivedStateFromError<P, S> = Partial<S>? Function(dynamic error);

@JS()
@anonymous
class NewLifecycle<P, S, SS> {
  external SS? getSnapshotBeforeUpdate(Readonly<P> prevProps, Readonly<S> prevState);
  external void componentDidUpdate(Readonly<P> prevProps, Readonly<S> prevState, SS snapshot);
  external factory NewLifecycle();
}

@JS()
@anonymous
class DeprecatedLifecycle<P, S> {
  external void componentWillMount();
  external void UNSAFE_componentWillMount();
  external void componentWillReceiveProps(Readonly<P> nextProps, dynamic nextContext);
  external void UNSAFE_componentWillReceiveProps(Readonly<P> nextProps, dynamic nextContext);
  external void componentWillUpdate(Readonly<P> nextProps, Readonly<S> nextState, dynamic nextContext);
  external void UNSAFE_componentWillUpdate(Readonly<P> nextProps, Readonly<S> nextState, dynamic nextContext);
  external factory DeprecatedLifecycle();
}

@JS()
@anonymous
class Mixin<P, S> extends ComponentLifecycle<P, S> {
  external List<Mixin<P, S>>? get mixins;
  external set mixins(List<Mixin<P, S>>? value);
  external dynamic get statics;
  external set statics(dynamic value);
  external String? get displayName;
  external set displayName(String? value);
  external ValidationMap<dynamic>? get propTypes;
  external set propTypes(ValidationMap<dynamic>? value);
  external ValidationMap<dynamic>? get contextTypes;
  external set contextTypes(ValidationMap<dynamic>? value);
  external ValidationMap<dynamic>? get childContextTypes;
  external set childContextTypes(ValidationMap<dynamic>? value);
  external P getDefaultProps();
  external S getInitialState();
  external factory Mixin({
    List<Mixin<P, S>>? mixins,
    dynamic statics,
    String? displayName,
    ValidationMap<dynamic>? propTypes,
    ValidationMap<dynamic>? contextTypes,
    ValidationMap<dynamic>? childContextTypes,
  });
}

@JS()
@anonymous
class ComponentSpec<P, S> extends Mixin<P, S> {
  external ReactNode render();
  external factory ComponentSpec();
}

@JS(r'React.createRef')
external RefObject<T> createRef<T>();

@JS()
@anonymous
class ForwardRefExoticComponent<P> extends NamedExoticComponent<P> {
  external Partial<P>? get defaultProps;
  external set defaultProps(Partial<P>? value);
  external WeakValidationMap<P>? get propTypes;
  external set propTypes(WeakValidationMap<P>? value);
  external factory ForwardRefExoticComponent({
    Partial<P>? defaultProps,
    WeakValidationMap<P>? propTypes,
  });
}

@JS(r'React.forwardRef')
external ForwardRefExoticComponent<dynamic> forwardRef<T, P>(ForwardRefRenderFunction<T, P> render);
typedef PropsWithoutRef<P> = dynamic;
typedef PropsWithRef<P> = dynamic;
typedef PropsWithChildren<P> = dynamic;
typedef ComponentProps<T extends dynamic> = dynamic;
typedef ComponentPropsWithRef<T extends ElementType> = dynamic;
typedef ComponentPropsWithoutRef<T extends ElementType> = PropsWithoutRef<ComponentProps<T>>;
typedef ComponentRef<T extends ElementType> = dynamic;
typedef MemoExoticComponent<T extends ComponentType<dynamic>> = dynamic;
@JS(r'React.memo')
external NamedExoticComponent<P> memo<P extends dynamic>(FunctionComponent<P> Component,
    bool Function(Readonly<PropsWithChildren<P>> prevProps, Readonly<PropsWithChildren<P>> nextProps) propsAreEqual);
@JS(r'React.memo')
external MemoExoticComponent<T> memo1<T extends ComponentType<dynamic>>(T Component,
    bool Function(Readonly<ComponentProps<T>> prevProps, Readonly<ComponentProps<T>> nextProps) propsAreEqual);
typedef LazyExoticComponent<T extends ComponentType<dynamic>> = dynamic;
@JS(r'React.lazy')
external LazyExoticComponent<T> lazy<T extends ComponentType<dynamic>>(Promise<dynamic> Function() factory);
typedef SetStateAction<S> = dynamic;
typedef Dispatch<A> = void Function(A value);
typedef DispatchWithoutAction = void Function();
typedef Reducer<S, A> = S Function(S prevState, A action);
typedef ReducerWithoutAction<S> = S Function(S prevState);
typedef ReducerState<R extends Reducer<dynamic, dynamic>> = dynamic;
typedef ReducerAction<R extends Reducer<dynamic, dynamic>> = dynamic;
typedef ReducerStateWithoutAction<R extends ReducerWithoutAction<dynamic>> = dynamic;
typedef DependencyList = List<dynamic>;
typedef EffectCallback = dynamic Function();

@JS()
@anonymous
class MutableRefObject<T> {
  external T get current;
  external set current(T value);
  external factory MutableRefObject({
    T current,
  });
}

@JS(r'React.useContext')
external T useContext<T>(Context<T> context);
@JS(r'React.useState')
external List<dynamic> useState<S>(dynamic initialState);
@JS(r'React.useState')
external List<dynamic> useState1<S>();
@JS(r'React.useReducer')
external List<dynamic> useReducer<R extends ReducerWithoutAction<dynamic>, I>(
    R reducer, I initializerArg, ReducerStateWithoutAction<R> Function(I arg) initializer);
@JS(r'React.useReducer')
external List<dynamic> useReducer1<R extends ReducerWithoutAction<dynamic>>(
    R reducer, ReducerStateWithoutAction<R> initializerArg, dynamic initializer);
@JS(r'React.useReducer')
external List<dynamic> useReducer2<R extends Reducer<dynamic, dynamic>, I>(
    R reducer, dynamic initializerArg, ReducerState<R> Function(dynamic arg) initializer);
@JS(r'React.useReducer')
external List<dynamic> useReducer3<R extends Reducer<dynamic, dynamic>, I>(
    R reducer, I initializerArg, ReducerState<R> Function(I arg) initializer);
@JS(r'React.useReducer')
external List<dynamic> useReducer4<R extends Reducer<dynamic, dynamic>>(
    R reducer, ReducerState<R> initialState, dynamic initializer);
@JS(r'React.useRef')
external MutableRefObject<T> useRef<T>(T initialValue);
@JS(r'React.useRef')
external RefObject<T> useRef1<T>(T? initialValue);
@JS(r'React.useRef')
external MutableRefObject<T?> useRef2<T>();
@JS(r'React.useLayoutEffect')
external void useLayoutEffect(EffectCallback effect, DependencyList deps);
@JS(r'React.useEffect')
external void useEffect(EffectCallback effect, DependencyList deps);
@JS(r'React.useImperativeHandle')
external void useImperativeHandle<T, R extends T>(Ref<T>? ref, R Function() init, DependencyList deps);
@JS(r'React.useCallback')
external T useCallback<
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
])>(T callback, DependencyList deps);
@JS(r'React.useMemo')
external T useMemo<T>(T Function() factory, DependencyList? deps);
@JS(r'React.useDebugValue')
external void useDebugValue<T>(T value, dynamic Function(T value) format);

@JS()
@anonymous
class BaseSyntheticEvent<E, C, T> {
  external E get nativeEvent;
  external set nativeEvent(E value);
  external C get currentTarget;
  external set currentTarget(C value);
  external T get target;
  external set target(T value);
  external bool get bubbles;
  external set bubbles(bool value);
  external bool get cancelable;
  external set cancelable(bool value);
  external bool get defaultPrevented;
  external set defaultPrevented(bool value);
  external num get eventPhase;
  external set eventPhase(num value);
  external bool get isTrusted;
  external set isTrusted(bool value);
  external void preventDefault();
  external bool isDefaultPrevented();
  external void stopPropagation();
  external bool isPropagationStopped();
  external void persist();
  external num get timeStamp;
  external set timeStamp(num value);
  external String get type;
  external set type(String value);
  external factory BaseSyntheticEvent({
    E nativeEvent,
    C currentTarget,
    T target,
    bool bubbles,
    bool cancelable,
    bool defaultPrevented,
    num eventPhase,
    bool isTrusted,
    num timeStamp,
    String type,
  });
}

@JS()
@anonymous
class SyntheticEvent<T, E> extends BaseSyntheticEvent<E, dynamic, EventTarget> {
  external factory SyntheticEvent();
}

@JS()
@anonymous
class ClipboardEvent<T> extends SyntheticEvent<T, NativeClipboardEvent> {
  external DataTransfer get clipboardData;
  external set clipboardData(DataTransfer value);
  external factory ClipboardEvent({
    DataTransfer clipboardData,
  });
}

@JS()
@anonymous
class CompositionEvent<T> extends SyntheticEvent<T, NativeCompositionEvent> {
  external String get data;
  external set data(String value);
  external factory CompositionEvent({
    String data,
  });
}

@JS()
@anonymous
class DragEvent<T> extends MouseEvent<T, NativeDragEvent> {
  external DataTransfer get dataTransfer;
  external set dataTransfer(DataTransfer value);
  external factory DragEvent({
    DataTransfer dataTransfer,
  });
}

@JS()
@anonymous
class PointerEvent<T> extends MouseEvent<T, NativePointerEvent> {
  external num get pointerId;
  external set pointerId(num value);
  external num get pressure;
  external set pressure(num value);
  external num get tangentialPressure;
  external set tangentialPressure(num value);
  external num get tiltX;
  external set tiltX(num value);
  external num get tiltY;
  external set tiltY(num value);
  external num get twist;
  external set twist(num value);
  external num get width;
  external set width(num value);
  external num get height;
  external set height(num value);
  external String get pointerType;
  external set pointerType(String value);
  external bool get isPrimary;
  external set isPrimary(bool value);
  external factory PointerEvent({
    num pointerId,
    num pressure,
    num tangentialPressure,
    num tiltX,
    num tiltY,
    num twist,
    num width,
    num height,
    String pointerType,
    bool isPrimary,
  });
}

@JS()
@anonymous
class FocusEvent<Target, RelatedTarget> extends SyntheticEvent<Target, NativeFocusEvent> {
  external dynamic get relatedTarget;
  external set relatedTarget(dynamic value);
  external dynamic get target;
  external set target(dynamic value);
  external factory FocusEvent({
    dynamic relatedTarget,
    dynamic target,
  });
}

@JS()
@anonymous
class FormEvent<T> extends SyntheticEvent<T> {
  external factory FormEvent();
}

@JS()
@anonymous
class InvalidEvent<T> extends SyntheticEvent<T> {
  external dynamic get target;
  external set target(dynamic value);
  external factory InvalidEvent({
    dynamic target,
  });
}

@JS()
@anonymous
class ChangeEvent<T> extends SyntheticEvent<T> {
  external dynamic get target;
  external set target(dynamic value);
  external factory ChangeEvent({
    dynamic target,
  });
}

@JS()
@anonymous
class KeyboardEvent<T> extends UIEvent<T, NativeKeyboardEvent> {
  external bool get altKey;
  external set altKey(bool value);
  external num get charCode;
  external set charCode(num value);
  external bool get ctrlKey;
  external set ctrlKey(bool value);
  external String get code;
  external set code(String value);
  external bool getModifierState(String key);
  external String get key;
  external set key(String value);
  external num get keyCode;
  external set keyCode(num value);
  external String get locale;
  external set locale(String value);
  external num get location;
  external set location(num value);
  external bool get metaKey;
  external set metaKey(bool value);
  external bool get repeat;
  external set repeat(bool value);
  external bool get shiftKey;
  external set shiftKey(bool value);
  external num get which;
  external set which(num value);
  external factory KeyboardEvent({
    bool altKey,
    num charCode,
    bool ctrlKey,
    String code,
    String key,
    num keyCode,
    String locale,
    num location,
    bool metaKey,
    bool repeat,
    bool shiftKey,
    num which,
  });
}

@JS()
@anonymous
class MouseEvent<T, E> extends UIEvent<T, E> {
  external bool get altKey;
  external set altKey(bool value);
  external num get button;
  external set button(num value);
  external num get buttons;
  external set buttons(num value);
  external num get clientX;
  external set clientX(num value);
  external num get clientY;
  external set clientY(num value);
  external bool get ctrlKey;
  external set ctrlKey(bool value);
  external bool getModifierState(String key);
  external bool get metaKey;
  external set metaKey(bool value);
  external num get movementX;
  external set movementX(num value);
  external num get movementY;
  external set movementY(num value);
  external num get pageX;
  external set pageX(num value);
  external num get pageY;
  external set pageY(num value);
  external EventTarget? get relatedTarget;
  external set relatedTarget(EventTarget? value);
  external num get screenX;
  external set screenX(num value);
  external num get screenY;
  external set screenY(num value);
  external bool get shiftKey;
  external set shiftKey(bool value);
  external factory MouseEvent({
    bool altKey,
    num button,
    num buttons,
    num clientX,
    num clientY,
    bool ctrlKey,
    bool metaKey,
    num movementX,
    num movementY,
    num pageX,
    num pageY,
    EventTarget? relatedTarget,
    num screenX,
    num screenY,
    bool shiftKey,
  });
}

@JS()
@anonymous
class TouchEvent<T> extends UIEvent<T, NativeTouchEvent> {
  external bool get altKey;
  external set altKey(bool value);
  external TouchList get changedTouches;
  external set changedTouches(TouchList value);
  external bool get ctrlKey;
  external set ctrlKey(bool value);
  external bool getModifierState(String key);
  external bool get metaKey;
  external set metaKey(bool value);
  external bool get shiftKey;
  external set shiftKey(bool value);
  external TouchList get targetTouches;
  external set targetTouches(TouchList value);
  external TouchList get touches;
  external set touches(TouchList value);
  external factory TouchEvent({
    bool altKey,
    TouchList changedTouches,
    bool ctrlKey,
    bool metaKey,
    bool shiftKey,
    TouchList targetTouches,
    TouchList touches,
  });
}

@JS()
@anonymous
class UIEvent<T, E> extends SyntheticEvent<T, E> {
  external num get detail;
  external set detail(num value);
  external AbstractView get view;
  external set view(AbstractView value);
  external factory UIEvent({
    num detail,
    AbstractView view,
  });
}

@JS()
@anonymous
class WheelEvent<T> extends MouseEvent<T, NativeWheelEvent> {
  external num get deltaMode;
  external set deltaMode(num value);
  external num get deltaX;
  external set deltaX(num value);
  external num get deltaY;
  external set deltaY(num value);
  external num get deltaZ;
  external set deltaZ(num value);
  external factory WheelEvent({
    num deltaMode,
    num deltaX,
    num deltaY,
    num deltaZ,
  });
}

@JS()
@anonymous
class AnimationEvent<T> extends SyntheticEvent<T, NativeAnimationEvent> {
  external String get animationName;
  external set animationName(String value);
  external num get elapsedTime;
  external set elapsedTime(num value);
  external String get pseudoElement;
  external set pseudoElement(String value);
  external factory AnimationEvent({
    String animationName,
    num elapsedTime,
    String pseudoElement,
  });
}

@JS()
@anonymous
class TransitionEvent<T> extends SyntheticEvent<T, NativeTransitionEvent> {
  external num get elapsedTime;
  external set elapsedTime(num value);
  external String get propertyName;
  external set propertyName(String value);
  external String get pseudoElement;
  external set pseudoElement(String value);
  external factory TransitionEvent({
    num elapsedTime,
    String propertyName,
    String pseudoElement,
  });
}

typedef EventHandler<E extends SyntheticEvent<dynamic>> = dynamic;
typedef ReactEventHandler<T> = EventHandler<SyntheticEvent<T>>;
typedef ClipboardEventHandler<T> = EventHandler<ClipboardEvent<T>>;
typedef CompositionEventHandler<T> = EventHandler<CompositionEvent<T>>;
typedef DragEventHandler<T> = EventHandler<DragEvent<T>>;
typedef FocusEventHandler<T> = EventHandler<FocusEvent<T>>;
typedef FormEventHandler<T> = EventHandler<FormEvent<T>>;
typedef ChangeEventHandler<T> = EventHandler<ChangeEvent<T>>;
typedef KeyboardEventHandler<T> = EventHandler<KeyboardEvent<T>>;
typedef MouseEventHandler<T> = EventHandler<MouseEvent<T>>;
typedef TouchEventHandler<T> = EventHandler<TouchEvent<T>>;
typedef PointerEventHandler<T> = EventHandler<PointerEvent<T>>;
typedef UIEventHandler<T> = EventHandler<UIEvent<T>>;
typedef WheelEventHandler<T> = EventHandler<WheelEvent<T>>;
typedef AnimationEventHandler<T> = EventHandler<AnimationEvent<T>>;
typedef TransitionEventHandler<T> = EventHandler<TransitionEvent<T>>;

@JS()
@anonymous
class Props<T> {
  external ReactNode? get children;
  external set children(ReactNode? value);
  external Key? get key;
  external set key(Key? value);
  external LegacyRef<T>? get ref;
  external set ref(LegacyRef<T>? value);
  external factory Props({
    ReactNode? children,
    Key? key,
    LegacyRef<T>? ref,
  });
}

@JS()
@anonymous
class HTMLProps<T> extends AllHTMLAttributes<T> {
  external factory HTMLProps();
}

typedef DetailedHTMLProps<E extends HTMLAttributes<T>, T> = dynamic;

@JS()
@anonymous
class SVGProps<T> extends SVGAttributes<T> {
  external factory SVGProps();
}

@JS()
@anonymous
class DOMAttributes<T> {
  external ReactNode? get children;
  external set children(ReactNode? value);
  external dynamic get dangerouslySetInnerHTML;
  external set dangerouslySetInnerHTML(dynamic value);
  external ClipboardEventHandler<T>? get onCopy;
  external set onCopy(ClipboardEventHandler<T>? value);
  external ClipboardEventHandler<T>? get onCopyCapture;
  external set onCopyCapture(ClipboardEventHandler<T>? value);
  external ClipboardEventHandler<T>? get onCut;
  external set onCut(ClipboardEventHandler<T>? value);
  external ClipboardEventHandler<T>? get onCutCapture;
  external set onCutCapture(ClipboardEventHandler<T>? value);
  external ClipboardEventHandler<T>? get onPaste;
  external set onPaste(ClipboardEventHandler<T>? value);
  external ClipboardEventHandler<T>? get onPasteCapture;
  external set onPasteCapture(ClipboardEventHandler<T>? value);
  external CompositionEventHandler<T>? get onCompositionEnd;
  external set onCompositionEnd(CompositionEventHandler<T>? value);
  external CompositionEventHandler<T>? get onCompositionEndCapture;
  external set onCompositionEndCapture(CompositionEventHandler<T>? value);
  external CompositionEventHandler<T>? get onCompositionStart;
  external set onCompositionStart(CompositionEventHandler<T>? value);
  external CompositionEventHandler<T>? get onCompositionStartCapture;
  external set onCompositionStartCapture(CompositionEventHandler<T>? value);
  external CompositionEventHandler<T>? get onCompositionUpdate;
  external set onCompositionUpdate(CompositionEventHandler<T>? value);
  external CompositionEventHandler<T>? get onCompositionUpdateCapture;
  external set onCompositionUpdateCapture(CompositionEventHandler<T>? value);
  external FocusEventHandler<T>? get onFocus;
  external set onFocus(FocusEventHandler<T>? value);
  external FocusEventHandler<T>? get onFocusCapture;
  external set onFocusCapture(FocusEventHandler<T>? value);
  external FocusEventHandler<T>? get onBlur;
  external set onBlur(FocusEventHandler<T>? value);
  external FocusEventHandler<T>? get onBlurCapture;
  external set onBlurCapture(FocusEventHandler<T>? value);
  external FormEventHandler<T>? get onChange;
  external set onChange(FormEventHandler<T>? value);
  external FormEventHandler<T>? get onChangeCapture;
  external set onChangeCapture(FormEventHandler<T>? value);
  external FormEventHandler<T>? get onBeforeInput;
  external set onBeforeInput(FormEventHandler<T>? value);
  external FormEventHandler<T>? get onBeforeInputCapture;
  external set onBeforeInputCapture(FormEventHandler<T>? value);
  external FormEventHandler<T>? get onInput;
  external set onInput(FormEventHandler<T>? value);
  external FormEventHandler<T>? get onInputCapture;
  external set onInputCapture(FormEventHandler<T>? value);
  external FormEventHandler<T>? get onReset;
  external set onReset(FormEventHandler<T>? value);
  external FormEventHandler<T>? get onResetCapture;
  external set onResetCapture(FormEventHandler<T>? value);
  external FormEventHandler<T>? get onSubmit;
  external set onSubmit(FormEventHandler<T>? value);
  external FormEventHandler<T>? get onSubmitCapture;
  external set onSubmitCapture(FormEventHandler<T>? value);
  external FormEventHandler<T>? get onInvalid;
  external set onInvalid(FormEventHandler<T>? value);
  external FormEventHandler<T>? get onInvalidCapture;
  external set onInvalidCapture(FormEventHandler<T>? value);
  external ReactEventHandler<T>? get onLoad;
  external set onLoad(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onLoadCapture;
  external set onLoadCapture(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onError;
  external set onError(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onErrorCapture;
  external set onErrorCapture(ReactEventHandler<T>? value);
  external KeyboardEventHandler<T>? get onKeyDown;
  external set onKeyDown(KeyboardEventHandler<T>? value);
  external KeyboardEventHandler<T>? get onKeyDownCapture;
  external set onKeyDownCapture(KeyboardEventHandler<T>? value);
  external KeyboardEventHandler<T>? get onKeyPress;
  external set onKeyPress(KeyboardEventHandler<T>? value);
  external KeyboardEventHandler<T>? get onKeyPressCapture;
  external set onKeyPressCapture(KeyboardEventHandler<T>? value);
  external KeyboardEventHandler<T>? get onKeyUp;
  external set onKeyUp(KeyboardEventHandler<T>? value);
  external KeyboardEventHandler<T>? get onKeyUpCapture;
  external set onKeyUpCapture(KeyboardEventHandler<T>? value);
  external ReactEventHandler<T>? get onAbort;
  external set onAbort(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onAbortCapture;
  external set onAbortCapture(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onCanPlay;
  external set onCanPlay(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onCanPlayCapture;
  external set onCanPlayCapture(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onCanPlayThrough;
  external set onCanPlayThrough(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onCanPlayThroughCapture;
  external set onCanPlayThroughCapture(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onDurationChange;
  external set onDurationChange(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onDurationChangeCapture;
  external set onDurationChangeCapture(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onEmptied;
  external set onEmptied(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onEmptiedCapture;
  external set onEmptiedCapture(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onEncrypted;
  external set onEncrypted(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onEncryptedCapture;
  external set onEncryptedCapture(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onEnded;
  external set onEnded(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onEndedCapture;
  external set onEndedCapture(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onLoadedData;
  external set onLoadedData(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onLoadedDataCapture;
  external set onLoadedDataCapture(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onLoadedMetadata;
  external set onLoadedMetadata(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onLoadedMetadataCapture;
  external set onLoadedMetadataCapture(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onLoadStart;
  external set onLoadStart(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onLoadStartCapture;
  external set onLoadStartCapture(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onPause;
  external set onPause(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onPauseCapture;
  external set onPauseCapture(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onPlay;
  external set onPlay(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onPlayCapture;
  external set onPlayCapture(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onPlaying;
  external set onPlaying(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onPlayingCapture;
  external set onPlayingCapture(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onProgress;
  external set onProgress(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onProgressCapture;
  external set onProgressCapture(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onRateChange;
  external set onRateChange(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onRateChangeCapture;
  external set onRateChangeCapture(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onSeeked;
  external set onSeeked(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onSeekedCapture;
  external set onSeekedCapture(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onSeeking;
  external set onSeeking(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onSeekingCapture;
  external set onSeekingCapture(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onStalled;
  external set onStalled(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onStalledCapture;
  external set onStalledCapture(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onSuspend;
  external set onSuspend(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onSuspendCapture;
  external set onSuspendCapture(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onTimeUpdate;
  external set onTimeUpdate(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onTimeUpdateCapture;
  external set onTimeUpdateCapture(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onVolumeChange;
  external set onVolumeChange(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onVolumeChangeCapture;
  external set onVolumeChangeCapture(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onWaiting;
  external set onWaiting(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onWaitingCapture;
  external set onWaitingCapture(ReactEventHandler<T>? value);
  external MouseEventHandler<T>? get onAuxClick;
  external set onAuxClick(MouseEventHandler<T>? value);
  external MouseEventHandler<T>? get onAuxClickCapture;
  external set onAuxClickCapture(MouseEventHandler<T>? value);
  external MouseEventHandler<T>? get onClick;
  external set onClick(MouseEventHandler<T>? value);
  external MouseEventHandler<T>? get onClickCapture;
  external set onClickCapture(MouseEventHandler<T>? value);
  external MouseEventHandler<T>? get onContextMenu;
  external set onContextMenu(MouseEventHandler<T>? value);
  external MouseEventHandler<T>? get onContextMenuCapture;
  external set onContextMenuCapture(MouseEventHandler<T>? value);
  external MouseEventHandler<T>? get onDoubleClick;
  external set onDoubleClick(MouseEventHandler<T>? value);
  external MouseEventHandler<T>? get onDoubleClickCapture;
  external set onDoubleClickCapture(MouseEventHandler<T>? value);
  external DragEventHandler<T>? get onDrag;
  external set onDrag(DragEventHandler<T>? value);
  external DragEventHandler<T>? get onDragCapture;
  external set onDragCapture(DragEventHandler<T>? value);
  external DragEventHandler<T>? get onDragEnd;
  external set onDragEnd(DragEventHandler<T>? value);
  external DragEventHandler<T>? get onDragEndCapture;
  external set onDragEndCapture(DragEventHandler<T>? value);
  external DragEventHandler<T>? get onDragEnter;
  external set onDragEnter(DragEventHandler<T>? value);
  external DragEventHandler<T>? get onDragEnterCapture;
  external set onDragEnterCapture(DragEventHandler<T>? value);
  external DragEventHandler<T>? get onDragExit;
  external set onDragExit(DragEventHandler<T>? value);
  external DragEventHandler<T>? get onDragExitCapture;
  external set onDragExitCapture(DragEventHandler<T>? value);
  external DragEventHandler<T>? get onDragLeave;
  external set onDragLeave(DragEventHandler<T>? value);
  external DragEventHandler<T>? get onDragLeaveCapture;
  external set onDragLeaveCapture(DragEventHandler<T>? value);
  external DragEventHandler<T>? get onDragOver;
  external set onDragOver(DragEventHandler<T>? value);
  external DragEventHandler<T>? get onDragOverCapture;
  external set onDragOverCapture(DragEventHandler<T>? value);
  external DragEventHandler<T>? get onDragStart;
  external set onDragStart(DragEventHandler<T>? value);
  external DragEventHandler<T>? get onDragStartCapture;
  external set onDragStartCapture(DragEventHandler<T>? value);
  external DragEventHandler<T>? get onDrop;
  external set onDrop(DragEventHandler<T>? value);
  external DragEventHandler<T>? get onDropCapture;
  external set onDropCapture(DragEventHandler<T>? value);
  external MouseEventHandler<T>? get onMouseDown;
  external set onMouseDown(MouseEventHandler<T>? value);
  external MouseEventHandler<T>? get onMouseDownCapture;
  external set onMouseDownCapture(MouseEventHandler<T>? value);
  external MouseEventHandler<T>? get onMouseEnter;
  external set onMouseEnter(MouseEventHandler<T>? value);
  external MouseEventHandler<T>? get onMouseLeave;
  external set onMouseLeave(MouseEventHandler<T>? value);
  external MouseEventHandler<T>? get onMouseMove;
  external set onMouseMove(MouseEventHandler<T>? value);
  external MouseEventHandler<T>? get onMouseMoveCapture;
  external set onMouseMoveCapture(MouseEventHandler<T>? value);
  external MouseEventHandler<T>? get onMouseOut;
  external set onMouseOut(MouseEventHandler<T>? value);
  external MouseEventHandler<T>? get onMouseOutCapture;
  external set onMouseOutCapture(MouseEventHandler<T>? value);
  external MouseEventHandler<T>? get onMouseOver;
  external set onMouseOver(MouseEventHandler<T>? value);
  external MouseEventHandler<T>? get onMouseOverCapture;
  external set onMouseOverCapture(MouseEventHandler<T>? value);
  external MouseEventHandler<T>? get onMouseUp;
  external set onMouseUp(MouseEventHandler<T>? value);
  external MouseEventHandler<T>? get onMouseUpCapture;
  external set onMouseUpCapture(MouseEventHandler<T>? value);
  external ReactEventHandler<T>? get onSelect;
  external set onSelect(ReactEventHandler<T>? value);
  external ReactEventHandler<T>? get onSelectCapture;
  external set onSelectCapture(ReactEventHandler<T>? value);
  external TouchEventHandler<T>? get onTouchCancel;
  external set onTouchCancel(TouchEventHandler<T>? value);
  external TouchEventHandler<T>? get onTouchCancelCapture;
  external set onTouchCancelCapture(TouchEventHandler<T>? value);
  external TouchEventHandler<T>? get onTouchEnd;
  external set onTouchEnd(TouchEventHandler<T>? value);
  external TouchEventHandler<T>? get onTouchEndCapture;
  external set onTouchEndCapture(TouchEventHandler<T>? value);
  external TouchEventHandler<T>? get onTouchMove;
  external set onTouchMove(TouchEventHandler<T>? value);
  external TouchEventHandler<T>? get onTouchMoveCapture;
  external set onTouchMoveCapture(TouchEventHandler<T>? value);
  external TouchEventHandler<T>? get onTouchStart;
  external set onTouchStart(TouchEventHandler<T>? value);
  external TouchEventHandler<T>? get onTouchStartCapture;
  external set onTouchStartCapture(TouchEventHandler<T>? value);
  external PointerEventHandler<T>? get onPointerDown;
  external set onPointerDown(PointerEventHandler<T>? value);
  external PointerEventHandler<T>? get onPointerDownCapture;
  external set onPointerDownCapture(PointerEventHandler<T>? value);
  external PointerEventHandler<T>? get onPointerMove;
  external set onPointerMove(PointerEventHandler<T>? value);
  external PointerEventHandler<T>? get onPointerMoveCapture;
  external set onPointerMoveCapture(PointerEventHandler<T>? value);
  external PointerEventHandler<T>? get onPointerUp;
  external set onPointerUp(PointerEventHandler<T>? value);
  external PointerEventHandler<T>? get onPointerUpCapture;
  external set onPointerUpCapture(PointerEventHandler<T>? value);
  external PointerEventHandler<T>? get onPointerCancel;
  external set onPointerCancel(PointerEventHandler<T>? value);
  external PointerEventHandler<T>? get onPointerCancelCapture;
  external set onPointerCancelCapture(PointerEventHandler<T>? value);
  external PointerEventHandler<T>? get onPointerEnter;
  external set onPointerEnter(PointerEventHandler<T>? value);
  external PointerEventHandler<T>? get onPointerEnterCapture;
  external set onPointerEnterCapture(PointerEventHandler<T>? value);
  external PointerEventHandler<T>? get onPointerLeave;
  external set onPointerLeave(PointerEventHandler<T>? value);
  external PointerEventHandler<T>? get onPointerLeaveCapture;
  external set onPointerLeaveCapture(PointerEventHandler<T>? value);
  external PointerEventHandler<T>? get onPointerOver;
  external set onPointerOver(PointerEventHandler<T>? value);
  external PointerEventHandler<T>? get onPointerOverCapture;
  external set onPointerOverCapture(PointerEventHandler<T>? value);
  external PointerEventHandler<T>? get onPointerOut;
  external set onPointerOut(PointerEventHandler<T>? value);
  external PointerEventHandler<T>? get onPointerOutCapture;
  external set onPointerOutCapture(PointerEventHandler<T>? value);
  external PointerEventHandler<T>? get onGotPointerCapture;
  external set onGotPointerCapture(PointerEventHandler<T>? value);
  external PointerEventHandler<T>? get onGotPointerCaptureCapture;
  external set onGotPointerCaptureCapture(PointerEventHandler<T>? value);
  external PointerEventHandler<T>? get onLostPointerCapture;
  external set onLostPointerCapture(PointerEventHandler<T>? value);
  external PointerEventHandler<T>? get onLostPointerCaptureCapture;
  external set onLostPointerCaptureCapture(PointerEventHandler<T>? value);
  external UIEventHandler<T>? get onScroll;
  external set onScroll(UIEventHandler<T>? value);
  external UIEventHandler<T>? get onScrollCapture;
  external set onScrollCapture(UIEventHandler<T>? value);
  external WheelEventHandler<T>? get onWheel;
  external set onWheel(WheelEventHandler<T>? value);
  external WheelEventHandler<T>? get onWheelCapture;
  external set onWheelCapture(WheelEventHandler<T>? value);
  external AnimationEventHandler<T>? get onAnimationStart;
  external set onAnimationStart(AnimationEventHandler<T>? value);
  external AnimationEventHandler<T>? get onAnimationStartCapture;
  external set onAnimationStartCapture(AnimationEventHandler<T>? value);
  external AnimationEventHandler<T>? get onAnimationEnd;
  external set onAnimationEnd(AnimationEventHandler<T>? value);
  external AnimationEventHandler<T>? get onAnimationEndCapture;
  external set onAnimationEndCapture(AnimationEventHandler<T>? value);
  external AnimationEventHandler<T>? get onAnimationIteration;
  external set onAnimationIteration(AnimationEventHandler<T>? value);
  external AnimationEventHandler<T>? get onAnimationIterationCapture;
  external set onAnimationIterationCapture(AnimationEventHandler<T>? value);
  external TransitionEventHandler<T>? get onTransitionEnd;
  external set onTransitionEnd(TransitionEventHandler<T>? value);
  external TransitionEventHandler<T>? get onTransitionEndCapture;
  external set onTransitionEndCapture(TransitionEventHandler<T>? value);
  external factory DOMAttributes({
    ReactNode? children,
    dynamic dangerouslySetInnerHTML,
    ClipboardEventHandler<T>? onCopy,
    ClipboardEventHandler<T>? onCopyCapture,
    ClipboardEventHandler<T>? onCut,
    ClipboardEventHandler<T>? onCutCapture,
    ClipboardEventHandler<T>? onPaste,
    ClipboardEventHandler<T>? onPasteCapture,
    CompositionEventHandler<T>? onCompositionEnd,
    CompositionEventHandler<T>? onCompositionEndCapture,
    CompositionEventHandler<T>? onCompositionStart,
    CompositionEventHandler<T>? onCompositionStartCapture,
    CompositionEventHandler<T>? onCompositionUpdate,
    CompositionEventHandler<T>? onCompositionUpdateCapture,
    FocusEventHandler<T>? onFocus,
    FocusEventHandler<T>? onFocusCapture,
    FocusEventHandler<T>? onBlur,
    FocusEventHandler<T>? onBlurCapture,
    FormEventHandler<T>? onChange,
    FormEventHandler<T>? onChangeCapture,
    FormEventHandler<T>? onBeforeInput,
    FormEventHandler<T>? onBeforeInputCapture,
    FormEventHandler<T>? onInput,
    FormEventHandler<T>? onInputCapture,
    FormEventHandler<T>? onReset,
    FormEventHandler<T>? onResetCapture,
    FormEventHandler<T>? onSubmit,
    FormEventHandler<T>? onSubmitCapture,
    FormEventHandler<T>? onInvalid,
    FormEventHandler<T>? onInvalidCapture,
    ReactEventHandler<T>? onLoad,
    ReactEventHandler<T>? onLoadCapture,
    ReactEventHandler<T>? onError,
    ReactEventHandler<T>? onErrorCapture,
    KeyboardEventHandler<T>? onKeyDown,
    KeyboardEventHandler<T>? onKeyDownCapture,
    KeyboardEventHandler<T>? onKeyPress,
    KeyboardEventHandler<T>? onKeyPressCapture,
    KeyboardEventHandler<T>? onKeyUp,
    KeyboardEventHandler<T>? onKeyUpCapture,
    ReactEventHandler<T>? onAbort,
    ReactEventHandler<T>? onAbortCapture,
    ReactEventHandler<T>? onCanPlay,
    ReactEventHandler<T>? onCanPlayCapture,
    ReactEventHandler<T>? onCanPlayThrough,
    ReactEventHandler<T>? onCanPlayThroughCapture,
    ReactEventHandler<T>? onDurationChange,
    ReactEventHandler<T>? onDurationChangeCapture,
    ReactEventHandler<T>? onEmptied,
    ReactEventHandler<T>? onEmptiedCapture,
    ReactEventHandler<T>? onEncrypted,
    ReactEventHandler<T>? onEncryptedCapture,
    ReactEventHandler<T>? onEnded,
    ReactEventHandler<T>? onEndedCapture,
    ReactEventHandler<T>? onLoadedData,
    ReactEventHandler<T>? onLoadedDataCapture,
    ReactEventHandler<T>? onLoadedMetadata,
    ReactEventHandler<T>? onLoadedMetadataCapture,
    ReactEventHandler<T>? onLoadStart,
    ReactEventHandler<T>? onLoadStartCapture,
    ReactEventHandler<T>? onPause,
    ReactEventHandler<T>? onPauseCapture,
    ReactEventHandler<T>? onPlay,
    ReactEventHandler<T>? onPlayCapture,
    ReactEventHandler<T>? onPlaying,
    ReactEventHandler<T>? onPlayingCapture,
    ReactEventHandler<T>? onProgress,
    ReactEventHandler<T>? onProgressCapture,
    ReactEventHandler<T>? onRateChange,
    ReactEventHandler<T>? onRateChangeCapture,
    ReactEventHandler<T>? onSeeked,
    ReactEventHandler<T>? onSeekedCapture,
    ReactEventHandler<T>? onSeeking,
    ReactEventHandler<T>? onSeekingCapture,
    ReactEventHandler<T>? onStalled,
    ReactEventHandler<T>? onStalledCapture,
    ReactEventHandler<T>? onSuspend,
    ReactEventHandler<T>? onSuspendCapture,
    ReactEventHandler<T>? onTimeUpdate,
    ReactEventHandler<T>? onTimeUpdateCapture,
    ReactEventHandler<T>? onVolumeChange,
    ReactEventHandler<T>? onVolumeChangeCapture,
    ReactEventHandler<T>? onWaiting,
    ReactEventHandler<T>? onWaitingCapture,
    MouseEventHandler<T>? onAuxClick,
    MouseEventHandler<T>? onAuxClickCapture,
    MouseEventHandler<T>? onClick,
    MouseEventHandler<T>? onClickCapture,
    MouseEventHandler<T>? onContextMenu,
    MouseEventHandler<T>? onContextMenuCapture,
    MouseEventHandler<T>? onDoubleClick,
    MouseEventHandler<T>? onDoubleClickCapture,
    DragEventHandler<T>? onDrag,
    DragEventHandler<T>? onDragCapture,
    DragEventHandler<T>? onDragEnd,
    DragEventHandler<T>? onDragEndCapture,
    DragEventHandler<T>? onDragEnter,
    DragEventHandler<T>? onDragEnterCapture,
    DragEventHandler<T>? onDragExit,
    DragEventHandler<T>? onDragExitCapture,
    DragEventHandler<T>? onDragLeave,
    DragEventHandler<T>? onDragLeaveCapture,
    DragEventHandler<T>? onDragOver,
    DragEventHandler<T>? onDragOverCapture,
    DragEventHandler<T>? onDragStart,
    DragEventHandler<T>? onDragStartCapture,
    DragEventHandler<T>? onDrop,
    DragEventHandler<T>? onDropCapture,
    MouseEventHandler<T>? onMouseDown,
    MouseEventHandler<T>? onMouseDownCapture,
    MouseEventHandler<T>? onMouseEnter,
    MouseEventHandler<T>? onMouseLeave,
    MouseEventHandler<T>? onMouseMove,
    MouseEventHandler<T>? onMouseMoveCapture,
    MouseEventHandler<T>? onMouseOut,
    MouseEventHandler<T>? onMouseOutCapture,
    MouseEventHandler<T>? onMouseOver,
    MouseEventHandler<T>? onMouseOverCapture,
    MouseEventHandler<T>? onMouseUp,
    MouseEventHandler<T>? onMouseUpCapture,
    ReactEventHandler<T>? onSelect,
    ReactEventHandler<T>? onSelectCapture,
    TouchEventHandler<T>? onTouchCancel,
    TouchEventHandler<T>? onTouchCancelCapture,
    TouchEventHandler<T>? onTouchEnd,
    TouchEventHandler<T>? onTouchEndCapture,
    TouchEventHandler<T>? onTouchMove,
    TouchEventHandler<T>? onTouchMoveCapture,
    TouchEventHandler<T>? onTouchStart,
    TouchEventHandler<T>? onTouchStartCapture,
    PointerEventHandler<T>? onPointerDown,
    PointerEventHandler<T>? onPointerDownCapture,
    PointerEventHandler<T>? onPointerMove,
    PointerEventHandler<T>? onPointerMoveCapture,
    PointerEventHandler<T>? onPointerUp,
    PointerEventHandler<T>? onPointerUpCapture,
    PointerEventHandler<T>? onPointerCancel,
    PointerEventHandler<T>? onPointerCancelCapture,
    PointerEventHandler<T>? onPointerEnter,
    PointerEventHandler<T>? onPointerEnterCapture,
    PointerEventHandler<T>? onPointerLeave,
    PointerEventHandler<T>? onPointerLeaveCapture,
    PointerEventHandler<T>? onPointerOver,
    PointerEventHandler<T>? onPointerOverCapture,
    PointerEventHandler<T>? onPointerOut,
    PointerEventHandler<T>? onPointerOutCapture,
    PointerEventHandler<T>? onGotPointerCapture,
    PointerEventHandler<T>? onGotPointerCaptureCapture,
    PointerEventHandler<T>? onLostPointerCapture,
    PointerEventHandler<T>? onLostPointerCaptureCapture,
    UIEventHandler<T>? onScroll,
    UIEventHandler<T>? onScrollCapture,
    WheelEventHandler<T>? onWheel,
    WheelEventHandler<T>? onWheelCapture,
    AnimationEventHandler<T>? onAnimationStart,
    AnimationEventHandler<T>? onAnimationStartCapture,
    AnimationEventHandler<T>? onAnimationEnd,
    AnimationEventHandler<T>? onAnimationEndCapture,
    AnimationEventHandler<T>? onAnimationIteration,
    AnimationEventHandler<T>? onAnimationIterationCapture,
    TransitionEventHandler<T>? onTransitionEnd,
    TransitionEventHandler<T>? onTransitionEndCapture,
  });
}

@JS()
@anonymous
class CSSProperties extends Properties<dynamic> {
  external factory CSSProperties();
}

@JS()
@anonymous
class AriaAttributes {
  external factory AriaAttributes();
}

typedef AriaRole = dynamic;

@JS()
@anonymous
class HTMLAttributes<T> extends AriaAttributes {
  external bool? get defaultChecked;
  external set defaultChecked(bool? value);
  external dynamic get defaultValue;
  external set defaultValue(dynamic value);
  external bool? get suppressContentEditableWarning;
  external set suppressContentEditableWarning(bool? value);
  external bool? get suppressHydrationWarning;
  external set suppressHydrationWarning(bool? value);
  external String? get accessKey;
  external set accessKey(String? value);
  external String? get className;
  external set className(String? value);
  external dynamic get contentEditable;
  external set contentEditable(dynamic value);
  external String? get contextMenu;
  external set contextMenu(String? value);
  external String? get dir;
  external set dir(String? value);
  external Booleanish? get draggable;
  external set draggable(Booleanish? value);
  external bool? get hidden;
  external set hidden(bool? value);
  external String? get id;
  external set id(String? value);
  external String? get lang;
  external set lang(String? value);
  external String? get placeholder;
  external set placeholder(String? value);
  external String? get slot;
  external set slot(String? value);
  external Booleanish? get spellCheck;
  external set spellCheck(Booleanish? value);
  external CSSProperties? get style;
  external set style(CSSProperties? value);
  external num? get tabIndex;
  external set tabIndex(num? value);
  external String? get title;
  external set title(String? value);
  external String? get translate;
  external set translate(String? value);
  external String? get radioGroup;
  external set radioGroup(String? value);
  external AriaRole? get role;
  external set role(AriaRole? value);
  external String? get about;
  external set about(String? value);
  external String? get datatype;
  external set datatype(String? value);
  external dynamic get inlist;
  external set inlist(dynamic value);
  external String? get prefix;
  external set prefix(String? value);
  external String? get property;
  external set property(String? value);
  external String? get resource;
  external set resource(String? value);
  external String? get typeof;
  external set typeof(String? value);
  external String? get vocab;
  external set vocab(String? value);
  external String? get autoCapitalize;
  external set autoCapitalize(String? value);
  external String? get autoCorrect;
  external set autoCorrect(String? value);
  external String? get autoSave;
  external set autoSave(String? value);
  external String? get color;
  external set color(String? value);
  external String? get itemProp;
  external set itemProp(String? value);
  external bool? get itemScope;
  external set itemScope(bool? value);
  external String? get itemType;
  external set itemType(String? value);
  external String? get itemID;
  external set itemID(String? value);
  external String? get itemRef;
  external set itemRef(String? value);
  external num? get results;
  external set results(num? value);
  external String? get security;
  external set security(String? value);
  external String? get unselectable;
  external set unselectable(String? value);
  external String? get inputMode;
  external set inputMode(String? value);
  external factory HTMLAttributes({
    bool? defaultChecked,
    dynamic defaultValue,
    bool? suppressContentEditableWarning,
    bool? suppressHydrationWarning,
    String? accessKey,
    String? className,
    dynamic contentEditable,
    String? contextMenu,
    String? dir,
    Booleanish? draggable,
    bool? hidden,
    String? id,
    String? lang,
    String? placeholder,
    String? slot,
    Booleanish? spellCheck,
    CSSProperties? style,
    num? tabIndex,
    String? title,
    String? translate,
    String? radioGroup,
    AriaRole? role,
    String? about,
    String? datatype,
    dynamic inlist,
    String? prefix,
    String? property,
    String? resource,
    String? typeof,
    String? vocab,
    String? autoCapitalize,
    String? autoCorrect,
    String? autoSave,
    String? color,
    String? itemProp,
    bool? itemScope,
    String? itemType,
    String? itemID,
    String? itemRef,
    num? results,
    String? security,
    String? unselectable,
    String? inputMode,
  });
}

@JS()
@anonymous
class AllHTMLAttributes<T> extends HTMLAttributes<T> {
  external String? get accept;
  external set accept(String? value);
  external String? get acceptCharset;
  external set acceptCharset(String? value);
  external String? get action;
  external set action(String? value);
  external bool? get allowFullScreen;
  external set allowFullScreen(bool? value);
  external bool? get allowTransparency;
  external set allowTransparency(bool? value);
  external String? get alt;
  external set alt(String? value);
  external String? get as;
  external set as(String? value);
  external bool? get async;
  external set async(bool? value);
  external String? get autoComplete;
  external set autoComplete(String? value);
  external bool? get autoFocus;
  external set autoFocus(bool? value);
  external bool? get autoPlay;
  external set autoPlay(bool? value);
  external dynamic get capture;
  external set capture(dynamic value);
  external dynamic get cellPadding;
  external set cellPadding(dynamic value);
  external dynamic get cellSpacing;
  external set cellSpacing(dynamic value);
  external String? get charSet;
  external set charSet(String? value);
  external String? get challenge;
  external set challenge(String? value);
  external bool? get checked;
  external set checked(bool? value);
  external String? get cite;
  external set cite(String? value);
  external String? get classID;
  external set classID(String? value);
  external num? get cols;
  external set cols(num? value);
  external num? get colSpan;
  external set colSpan(num? value);
  external String? get content;
  external set content(String? value);
  external bool? get controls;
  external set controls(bool? value);
  external String? get coords;
  external set coords(String? value);
  external String? get crossOrigin;
  external set crossOrigin(String? value);
  external String? get data;
  external set data(String? value);
  external String? get dateTime;
  external set dateTime(String? value);
  external bool? get defer;
  external set defer(bool? value);
  external bool? get disabled;
  external set disabled(bool? value);
  external dynamic get download;
  external set download(dynamic value);
  external String? get encType;
  external set encType(String? value);
  external String? get form;
  external set form(String? value);
  external String? get formAction;
  external set formAction(String? value);
  external String? get formEncType;
  external set formEncType(String? value);
  external String? get formMethod;
  external set formMethod(String? value);
  external bool? get formNoValidate;
  external set formNoValidate(bool? value);
  external String? get formTarget;
  external set formTarget(String? value);
  external dynamic get frameBorder;
  external set frameBorder(dynamic value);
  external String? get headers;
  external set headers(String? value);
  external dynamic get height;
  external set height(dynamic value);
  external num? get high;
  external set high(num? value);
  external String? get href;
  external set href(String? value);
  external String? get hrefLang;
  external set hrefLang(String? value);
  external String? get htmlFor;
  external set htmlFor(String? value);
  external String? get httpEquiv;
  external set httpEquiv(String? value);
  external String? get integrity;
  external set integrity(String? value);
  external String? get keyParams;
  external set keyParams(String? value);
  external String? get keyType;
  external set keyType(String? value);
  external String? get kind;
  external set kind(String? value);
  external String? get label;
  external set label(String? value);
  external String? get list;
  external set list(String? value);
  external bool? get loop;
  external set loop(bool? value);
  external num? get low;
  external set low(num? value);
  external String? get manifest;
  external set manifest(String? value);
  external num? get marginHeight;
  external set marginHeight(num? value);
  external num? get marginWidth;
  external set marginWidth(num? value);
  external dynamic get max;
  external set max(dynamic value);
  external num? get maxLength;
  external set maxLength(num? value);
  external String? get media;
  external set media(String? value);
  external String? get mediaGroup;
  external set mediaGroup(String? value);
  external String? get method;
  external set method(String? value);
  external dynamic get min;
  external set min(dynamic value);
  external num? get minLength;
  external set minLength(num? value);
  external bool? get multiple;
  external set multiple(bool? value);
  external bool? get muted;
  external set muted(bool? value);
  external String? get name;
  external set name(String? value);
  external String? get nonce;
  external set nonce(String? value);
  external bool? get noValidate;
  external set noValidate(bool? value);
  external bool? get open;
  external set open(bool? value);
  external num? get optimum;
  external set optimum(num? value);
  external String? get pattern;
  external set pattern(String? value);
  external String? get placeholder;
  external set placeholder(String? value);
  external bool? get playsInline;
  external set playsInline(bool? value);
  external String? get poster;
  external set poster(String? value);
  external String? get preload;
  external set preload(String? value);
  external bool? get readOnly;
  external set readOnly(bool? value);
  external String? get rel;
  external set rel(String? value);
  external bool? get required;
  external set required(bool? value);
  external bool? get reversed;
  external set reversed(bool? value);
  external num? get rows;
  external set rows(num? value);
  external num? get rowSpan;
  external set rowSpan(num? value);
  external String? get sandbox;
  external set sandbox(String? value);
  external String? get scope;
  external set scope(String? value);
  external bool? get scoped;
  external set scoped(bool? value);
  external String? get scrolling;
  external set scrolling(String? value);
  external bool? get seamless;
  external set seamless(bool? value);
  external bool? get selected;
  external set selected(bool? value);
  external String? get shape;
  external set shape(String? value);
  external num? get size;
  external set size(num? value);
  external String? get sizes;
  external set sizes(String? value);
  external num? get span;
  external set span(num? value);
  external String? get src;
  external set src(String? value);
  external String? get srcDoc;
  external set srcDoc(String? value);
  external String? get srcLang;
  external set srcLang(String? value);
  external String? get srcSet;
  external set srcSet(String? value);
  external num? get start;
  external set start(num? value);
  external dynamic get step;
  external set step(dynamic value);
  external String? get summary;
  external set summary(String? value);
  external String? get target;
  external set target(String? value);
  external String? get type;
  external set type(String? value);
  external String? get useMap;
  external set useMap(String? value);
  external dynamic get value;
  external set value(dynamic value);
  external dynamic get width;
  external set width(dynamic value);
  external String? get wmode;
  external set wmode(String? value);
  external String? get wrap;
  external set wrap(String? value);
  external factory AllHTMLAttributes({
    String? accept,
    String? acceptCharset,
    String? action,
    bool? allowFullScreen,
    bool? allowTransparency,
    String? alt,
    String? as,
    bool? async,
    String? autoComplete,
    bool? autoFocus,
    bool? autoPlay,
    dynamic capture,
    dynamic cellPadding,
    dynamic cellSpacing,
    String? charSet,
    String? challenge,
    bool? checked,
    String? cite,
    String? classID,
    num? cols,
    num? colSpan,
    String? content,
    bool? controls,
    String? coords,
    String? crossOrigin,
    String? data,
    String? dateTime,
    bool? defer,
    bool? disabled,
    dynamic download,
    String? encType,
    String? form,
    String? formAction,
    String? formEncType,
    String? formMethod,
    bool? formNoValidate,
    String? formTarget,
    dynamic frameBorder,
    String? headers,
    dynamic height,
    num? high,
    String? href,
    String? hrefLang,
    String? htmlFor,
    String? httpEquiv,
    String? integrity,
    String? keyParams,
    String? keyType,
    String? kind,
    String? label,
    String? list,
    bool? loop,
    num? low,
    String? manifest,
    num? marginHeight,
    num? marginWidth,
    dynamic max,
    num? maxLength,
    String? media,
    String? mediaGroup,
    String? method,
    dynamic min,
    num? minLength,
    bool? multiple,
    bool? muted,
    String? name,
    String? nonce,
    bool? noValidate,
    bool? open,
    num? optimum,
    String? pattern,
    String? placeholder,
    bool? playsInline,
    String? poster,
    String? preload,
    bool? readOnly,
    String? rel,
    bool? required,
    bool? reversed,
    num? rows,
    num? rowSpan,
    String? sandbox,
    String? scope,
    bool? scoped,
    String? scrolling,
    bool? seamless,
    bool? selected,
    String? shape,
    num? size,
    String? sizes,
    num? span,
    String? src,
    String? srcDoc,
    String? srcLang,
    String? srcSet,
    num? start,
    dynamic step,
    String? summary,
    String? target,
    String? type,
    String? useMap,
    dynamic value,
    dynamic width,
    String? wmode,
    String? wrap,
  });
}

typedef HTMLAttributeReferrerPolicy = String;
typedef HTMLAttributeAnchorTarget = dynamic;

@JS()
@anonymous
class AnchorHTMLAttributes<T> extends HTMLAttributes<T> {
  external dynamic get download;
  external set download(dynamic value);
  external String? get href;
  external set href(String? value);
  external String? get hrefLang;
  external set hrefLang(String? value);
  external String? get media;
  external set media(String? value);
  external String? get ping;
  external set ping(String? value);
  external String? get rel;
  external set rel(String? value);
  external HTMLAttributeAnchorTarget? get target;
  external set target(HTMLAttributeAnchorTarget? value);
  external String? get type;
  external set type(String? value);
  external HTMLAttributeReferrerPolicy? get referrerPolicy;
  external set referrerPolicy(HTMLAttributeReferrerPolicy? value);
  external factory AnchorHTMLAttributes({
    dynamic download,
    String? href,
    String? hrefLang,
    String? media,
    String? ping,
    String? rel,
    HTMLAttributeAnchorTarget? target,
    String? type,
    HTMLAttributeReferrerPolicy? referrerPolicy,
  });
}

@JS()
@anonymous
class AudioHTMLAttributes<T> extends MediaHTMLAttributes<T> {
  external factory AudioHTMLAttributes();
}

@JS()
@anonymous
class AreaHTMLAttributes<T> extends HTMLAttributes<T> {
  external String? get alt;
  external set alt(String? value);
  external String? get coords;
  external set coords(String? value);
  external dynamic get download;
  external set download(dynamic value);
  external String? get href;
  external set href(String? value);
  external String? get hrefLang;
  external set hrefLang(String? value);
  external String? get media;
  external set media(String? value);
  external HTMLAttributeReferrerPolicy? get referrerPolicy;
  external set referrerPolicy(HTMLAttributeReferrerPolicy? value);
  external String? get rel;
  external set rel(String? value);
  external String? get shape;
  external set shape(String? value);
  external String? get target;
  external set target(String? value);
  external factory AreaHTMLAttributes({
    String? alt,
    String? coords,
    dynamic download,
    String? href,
    String? hrefLang,
    String? media,
    HTMLAttributeReferrerPolicy? referrerPolicy,
    String? rel,
    String? shape,
    String? target,
  });
}

@JS()
@anonymous
class BaseHTMLAttributes<T> extends HTMLAttributes<T> {
  external String? get href;
  external set href(String? value);
  external String? get target;
  external set target(String? value);
  external factory BaseHTMLAttributes({
    String? href,
    String? target,
  });
}

@JS()
@anonymous
class BlockquoteHTMLAttributes<T> extends HTMLAttributes<T> {
  external String? get cite;
  external set cite(String? value);
  external factory BlockquoteHTMLAttributes({
    String? cite,
  });
}

@JS()
@anonymous
class ButtonHTMLAttributes<T> extends HTMLAttributes<T> {
  external bool? get autoFocus;
  external set autoFocus(bool? value);
  external bool? get disabled;
  external set disabled(bool? value);
  external String? get form;
  external set form(String? value);
  external String? get formAction;
  external set formAction(String? value);
  external String? get formEncType;
  external set formEncType(String? value);
  external String? get formMethod;
  external set formMethod(String? value);
  external bool? get formNoValidate;
  external set formNoValidate(bool? value);
  external String? get formTarget;
  external set formTarget(String? value);
  external String? get name;
  external set name(String? value);
  external String? get type;
  external set type(String? value);
  external dynamic get value;
  external set value(dynamic value);
  external factory ButtonHTMLAttributes({
    bool? autoFocus,
    bool? disabled,
    String? form,
    String? formAction,
    String? formEncType,
    String? formMethod,
    bool? formNoValidate,
    String? formTarget,
    String? name,
    String? type,
    dynamic value,
  });
}

@JS()
@anonymous
class CanvasHTMLAttributes<T> extends HTMLAttributes<T> {
  external dynamic get height;
  external set height(dynamic value);
  external dynamic get width;
  external set width(dynamic value);
  external factory CanvasHTMLAttributes({
    dynamic height,
    dynamic width,
  });
}

@JS()
@anonymous
class ColHTMLAttributes<T> extends HTMLAttributes<T> {
  external num? get span;
  external set span(num? value);
  external dynamic get width;
  external set width(dynamic value);
  external factory ColHTMLAttributes({
    num? span,
    dynamic width,
  });
}

@JS()
@anonymous
class ColgroupHTMLAttributes<T> extends HTMLAttributes<T> {
  external num? get span;
  external set span(num? value);
  external factory ColgroupHTMLAttributes({
    num? span,
  });
}

@JS()
@anonymous
class DataHTMLAttributes<T> extends HTMLAttributes<T> {
  external dynamic get value;
  external set value(dynamic value);
  external factory DataHTMLAttributes({
    dynamic value,
  });
}

@JS()
@anonymous
class DetailsHTMLAttributes<T> extends HTMLAttributes<T> {
  external bool? get open;
  external set open(bool? value);
  external ReactEventHandler<T>? get onToggle;
  external set onToggle(ReactEventHandler<T>? value);
  external factory DetailsHTMLAttributes({
    bool? open,
    ReactEventHandler<T>? onToggle,
  });
}

@JS()
@anonymous
class DelHTMLAttributes<T> extends HTMLAttributes<T> {
  external String? get cite;
  external set cite(String? value);
  external String? get dateTime;
  external set dateTime(String? value);
  external factory DelHTMLAttributes({
    String? cite,
    String? dateTime,
  });
}

@JS()
@anonymous
class DialogHTMLAttributes<T> extends HTMLAttributes<T> {
  external bool? get open;
  external set open(bool? value);
  external factory DialogHTMLAttributes({
    bool? open,
  });
}

@JS()
@anonymous
class EmbedHTMLAttributes<T> extends HTMLAttributes<T> {
  external dynamic get height;
  external set height(dynamic value);
  external String? get src;
  external set src(String? value);
  external String? get type;
  external set type(String? value);
  external dynamic get width;
  external set width(dynamic value);
  external factory EmbedHTMLAttributes({
    dynamic height,
    String? src,
    String? type,
    dynamic width,
  });
}

@JS()
@anonymous
class FieldsetHTMLAttributes<T> extends HTMLAttributes<T> {
  external bool? get disabled;
  external set disabled(bool? value);
  external String? get form;
  external set form(String? value);
  external String? get name;
  external set name(String? value);
  external factory FieldsetHTMLAttributes({
    bool? disabled,
    String? form,
    String? name,
  });
}

@JS()
@anonymous
class FormHTMLAttributes<T> extends HTMLAttributes<T> {
  external String? get acceptCharset;
  external set acceptCharset(String? value);
  external String? get action;
  external set action(String? value);
  external String? get autoComplete;
  external set autoComplete(String? value);
  external String? get encType;
  external set encType(String? value);
  external String? get method;
  external set method(String? value);
  external String? get name;
  external set name(String? value);
  external bool? get noValidate;
  external set noValidate(bool? value);
  external String? get target;
  external set target(String? value);
  external factory FormHTMLAttributes({
    String? acceptCharset,
    String? action,
    String? autoComplete,
    String? encType,
    String? method,
    String? name,
    bool? noValidate,
    String? target,
  });
}

@JS()
@anonymous
class HtmlHTMLAttributes<T> extends HTMLAttributes<T> {
  external String? get manifest;
  external set manifest(String? value);
  external factory HtmlHTMLAttributes({
    String? manifest,
  });
}

@JS()
@anonymous
class IframeHTMLAttributes<T> extends HTMLAttributes<T> {
  external String? get allow;
  external set allow(String? value);
  external bool? get allowFullScreen;
  external set allowFullScreen(bool? value);
  external bool? get allowTransparency;
  external set allowTransparency(bool? value);
  external dynamic get frameBorder;
  external set frameBorder(dynamic value);
  external dynamic get height;
  external set height(dynamic value);
  external String? get loading;
  external set loading(String? value);
  external num? get marginHeight;
  external set marginHeight(num? value);
  external num? get marginWidth;
  external set marginWidth(num? value);
  external String? get name;
  external set name(String? value);
  external HTMLAttributeReferrerPolicy? get referrerPolicy;
  external set referrerPolicy(HTMLAttributeReferrerPolicy? value);
  external String? get sandbox;
  external set sandbox(String? value);
  external String? get scrolling;
  external set scrolling(String? value);
  external bool? get seamless;
  external set seamless(bool? value);
  external String? get src;
  external set src(String? value);
  external String? get srcDoc;
  external set srcDoc(String? value);
  external dynamic get width;
  external set width(dynamic value);
  external factory IframeHTMLAttributes({
    String? allow,
    bool? allowFullScreen,
    bool? allowTransparency,
    dynamic frameBorder,
    dynamic height,
    String? loading,
    num? marginHeight,
    num? marginWidth,
    String? name,
    HTMLAttributeReferrerPolicy? referrerPolicy,
    String? sandbox,
    String? scrolling,
    bool? seamless,
    String? src,
    String? srcDoc,
    dynamic width,
  });
}

@JS()
@anonymous
class ImgHTMLAttributes<T> extends HTMLAttributes<T> {
  external String? get alt;
  external set alt(String? value);
  external String? get crossOrigin;
  external set crossOrigin(String? value);
  external String? get decoding;
  external set decoding(String? value);
  external dynamic get height;
  external set height(dynamic value);
  external String? get loading;
  external set loading(String? value);
  external HTMLAttributeReferrerPolicy? get referrerPolicy;
  external set referrerPolicy(HTMLAttributeReferrerPolicy? value);
  external String? get sizes;
  external set sizes(String? value);
  external String? get src;
  external set src(String? value);
  external String? get srcSet;
  external set srcSet(String? value);
  external String? get useMap;
  external set useMap(String? value);
  external dynamic get width;
  external set width(dynamic value);
  external factory ImgHTMLAttributes({
    String? alt,
    String? crossOrigin,
    String? decoding,
    dynamic height,
    String? loading,
    HTMLAttributeReferrerPolicy? referrerPolicy,
    String? sizes,
    String? src,
    String? srcSet,
    String? useMap,
    dynamic width,
  });
}

@JS()
@anonymous
class InsHTMLAttributes<T> extends HTMLAttributes<T> {
  external String? get cite;
  external set cite(String? value);
  external String? get dateTime;
  external set dateTime(String? value);
  external factory InsHTMLAttributes({
    String? cite,
    String? dateTime,
  });
}

typedef HTMLInputTypeAttribute = dynamic;

@JS()
@anonymous
class InputHTMLAttributes<T> extends HTMLAttributes<T> {
  external String? get accept;
  external set accept(String? value);
  external String? get alt;
  external set alt(String? value);
  external String? get autoComplete;
  external set autoComplete(String? value);
  external bool? get autoFocus;
  external set autoFocus(bool? value);
  external dynamic get capture;
  external set capture(dynamic value);
  external bool? get checked;
  external set checked(bool? value);
  external String? get crossOrigin;
  external set crossOrigin(String? value);
  external bool? get disabled;
  external set disabled(bool? value);
  external String? get enterKeyHint;
  external set enterKeyHint(String? value);
  external String? get form;
  external set form(String? value);
  external String? get formAction;
  external set formAction(String? value);
  external String? get formEncType;
  external set formEncType(String? value);
  external String? get formMethod;
  external set formMethod(String? value);
  external bool? get formNoValidate;
  external set formNoValidate(bool? value);
  external String? get formTarget;
  external set formTarget(String? value);
  external dynamic get height;
  external set height(dynamic value);
  external String? get list;
  external set list(String? value);
  external dynamic get max;
  external set max(dynamic value);
  external num? get maxLength;
  external set maxLength(num? value);
  external dynamic get min;
  external set min(dynamic value);
  external num? get minLength;
  external set minLength(num? value);
  external bool? get multiple;
  external set multiple(bool? value);
  external String? get name;
  external set name(String? value);
  external String? get pattern;
  external set pattern(String? value);
  external String? get placeholder;
  external set placeholder(String? value);
  external bool? get readOnly;
  external set readOnly(bool? value);
  external bool? get required;
  external set required(bool? value);
  external num? get size;
  external set size(num? value);
  external String? get src;
  external set src(String? value);
  external dynamic get step;
  external set step(dynamic value);
  external HTMLInputTypeAttribute? get type;
  external set type(HTMLInputTypeAttribute? value);
  external dynamic get value;
  external set value(dynamic value);
  external dynamic get width;
  external set width(dynamic value);
  external ChangeEventHandler<T>? get onChange;
  external set onChange(ChangeEventHandler<T>? value);
  external factory InputHTMLAttributes({
    String? accept,
    String? alt,
    String? autoComplete,
    bool? autoFocus,
    dynamic capture,
    bool? checked,
    String? crossOrigin,
    bool? disabled,
    String? enterKeyHint,
    String? form,
    String? formAction,
    String? formEncType,
    String? formMethod,
    bool? formNoValidate,
    String? formTarget,
    dynamic height,
    String? list,
    dynamic max,
    num? maxLength,
    dynamic min,
    num? minLength,
    bool? multiple,
    String? name,
    String? pattern,
    String? placeholder,
    bool? readOnly,
    bool? required,
    num? size,
    String? src,
    dynamic step,
    HTMLInputTypeAttribute? type,
    dynamic value,
    dynamic width,
    ChangeEventHandler<T>? onChange,
  });
}

@JS()
@anonymous
class KeygenHTMLAttributes<T> extends HTMLAttributes<T> {
  external bool? get autoFocus;
  external set autoFocus(bool? value);
  external String? get challenge;
  external set challenge(String? value);
  external bool? get disabled;
  external set disabled(bool? value);
  external String? get form;
  external set form(String? value);
  external String? get keyType;
  external set keyType(String? value);
  external String? get keyParams;
  external set keyParams(String? value);
  external String? get name;
  external set name(String? value);
  external factory KeygenHTMLAttributes({
    bool? autoFocus,
    String? challenge,
    bool? disabled,
    String? form,
    String? keyType,
    String? keyParams,
    String? name,
  });
}

@JS()
@anonymous
class LabelHTMLAttributes<T> extends HTMLAttributes<T> {
  external String? get form;
  external set form(String? value);
  external String? get htmlFor;
  external set htmlFor(String? value);
  external factory LabelHTMLAttributes({
    String? form,
    String? htmlFor,
  });
}

@JS()
@anonymous
class LiHTMLAttributes<T> extends HTMLAttributes<T> {
  external dynamic get value;
  external set value(dynamic value);
  external factory LiHTMLAttributes({
    dynamic value,
  });
}

@JS()
@anonymous
class LinkHTMLAttributes<T> extends HTMLAttributes<T> {
  external String? get as;
  external set as(String? value);
  external String? get crossOrigin;
  external set crossOrigin(String? value);
  external String? get href;
  external set href(String? value);
  external String? get hrefLang;
  external set hrefLang(String? value);
  external String? get integrity;
  external set integrity(String? value);
  external String? get media;
  external set media(String? value);
  external String? get imageSrcSet;
  external set imageSrcSet(String? value);
  external HTMLAttributeReferrerPolicy? get referrerPolicy;
  external set referrerPolicy(HTMLAttributeReferrerPolicy? value);
  external String? get rel;
  external set rel(String? value);
  external String? get sizes;
  external set sizes(String? value);
  external String? get type;
  external set type(String? value);
  external String? get charSet;
  external set charSet(String? value);
  external factory LinkHTMLAttributes({
    String? as,
    String? crossOrigin,
    String? href,
    String? hrefLang,
    String? integrity,
    String? media,
    String? imageSrcSet,
    HTMLAttributeReferrerPolicy? referrerPolicy,
    String? rel,
    String? sizes,
    String? type,
    String? charSet,
  });
}

@JS()
@anonymous
class MapHTMLAttributes<T> extends HTMLAttributes<T> {
  external String? get name;
  external set name(String? value);
  external factory MapHTMLAttributes({
    String? name,
  });
}

@JS()
@anonymous
class MenuHTMLAttributes<T> extends HTMLAttributes<T> {
  external String? get type;
  external set type(String? value);
  external factory MenuHTMLAttributes({
    String? type,
  });
}

@JS()
@anonymous
class MediaHTMLAttributes<T> extends HTMLAttributes<T> {
  external bool? get autoPlay;
  external set autoPlay(bool? value);
  external bool? get controls;
  external set controls(bool? value);
  external String? get controlsList;
  external set controlsList(String? value);
  external String? get crossOrigin;
  external set crossOrigin(String? value);
  external bool? get loop;
  external set loop(bool? value);
  external String? get mediaGroup;
  external set mediaGroup(String? value);
  external bool? get muted;
  external set muted(bool? value);
  external bool? get playsInline;
  external set playsInline(bool? value);
  external String? get preload;
  external set preload(String? value);
  external String? get src;
  external set src(String? value);
  external factory MediaHTMLAttributes({
    bool? autoPlay,
    bool? controls,
    String? controlsList,
    String? crossOrigin,
    bool? loop,
    String? mediaGroup,
    bool? muted,
    bool? playsInline,
    String? preload,
    String? src,
  });
}

@JS()
@anonymous
class MetaHTMLAttributes<T> extends HTMLAttributes<T> {
  external String? get charSet;
  external set charSet(String? value);
  external String? get content;
  external set content(String? value);
  external String? get httpEquiv;
  external set httpEquiv(String? value);
  external String? get name;
  external set name(String? value);
  external String? get media;
  external set media(String? value);
  external factory MetaHTMLAttributes({
    String? charSet,
    String? content,
    String? httpEquiv,
    String? name,
    String? media,
  });
}

@JS()
@anonymous
class MeterHTMLAttributes<T> extends HTMLAttributes<T> {
  external String? get form;
  external set form(String? value);
  external num? get high;
  external set high(num? value);
  external num? get low;
  external set low(num? value);
  external dynamic get max;
  external set max(dynamic value);
  external dynamic get min;
  external set min(dynamic value);
  external num? get optimum;
  external set optimum(num? value);
  external dynamic get value;
  external set value(dynamic value);
  external factory MeterHTMLAttributes({
    String? form,
    num? high,
    num? low,
    dynamic max,
    dynamic min,
    num? optimum,
    dynamic value,
  });
}

@JS()
@anonymous
class QuoteHTMLAttributes<T> extends HTMLAttributes<T> {
  external String? get cite;
  external set cite(String? value);
  external factory QuoteHTMLAttributes({
    String? cite,
  });
}

@JS()
@anonymous
class ObjectHTMLAttributes<T> extends HTMLAttributes<T> {
  external String? get classID;
  external set classID(String? value);
  external String? get data;
  external set data(String? value);
  external String? get form;
  external set form(String? value);
  external dynamic get height;
  external set height(dynamic value);
  external String? get name;
  external set name(String? value);
  external String? get type;
  external set type(String? value);
  external String? get useMap;
  external set useMap(String? value);
  external dynamic get width;
  external set width(dynamic value);
  external String? get wmode;
  external set wmode(String? value);
  external factory ObjectHTMLAttributes({
    String? classID,
    String? data,
    String? form,
    dynamic height,
    String? name,
    String? type,
    String? useMap,
    dynamic width,
    String? wmode,
  });
}

@JS()
@anonymous
class OlHTMLAttributes<T> extends HTMLAttributes<T> {
  external bool? get reversed;
  external set reversed(bool? value);
  external num? get start;
  external set start(num? value);
  external String? get type;
  external set type(String? value);
  external factory OlHTMLAttributes({
    bool? reversed,
    num? start,
    String? type,
  });
}

@JS()
@anonymous
class OptgroupHTMLAttributes<T> extends HTMLAttributes<T> {
  external bool? get disabled;
  external set disabled(bool? value);
  external String? get label;
  external set label(String? value);
  external factory OptgroupHTMLAttributes({
    bool? disabled,
    String? label,
  });
}

@JS()
@anonymous
class OptionHTMLAttributes<T> extends HTMLAttributes<T> {
  external bool? get disabled;
  external set disabled(bool? value);
  external String? get label;
  external set label(String? value);
  external bool? get selected;
  external set selected(bool? value);
  external dynamic get value;
  external set value(dynamic value);
  external factory OptionHTMLAttributes({
    bool? disabled,
    String? label,
    bool? selected,
    dynamic value,
  });
}

@JS()
@anonymous
class OutputHTMLAttributes<T> extends HTMLAttributes<T> {
  external String? get form;
  external set form(String? value);
  external String? get htmlFor;
  external set htmlFor(String? value);
  external String? get name;
  external set name(String? value);
  external factory OutputHTMLAttributes({
    String? form,
    String? htmlFor,
    String? name,
  });
}

@JS()
@anonymous
class ParamHTMLAttributes<T> extends HTMLAttributes<T> {
  external String? get name;
  external set name(String? value);
  external dynamic get value;
  external set value(dynamic value);
  external factory ParamHTMLAttributes({
    String? name,
    dynamic value,
  });
}

@JS()
@anonymous
class ProgressHTMLAttributes<T> extends HTMLAttributes<T> {
  external dynamic get max;
  external set max(dynamic value);
  external dynamic get value;
  external set value(dynamic value);
  external factory ProgressHTMLAttributes({
    dynamic max,
    dynamic value,
  });
}

@JS()
@anonymous
class SlotHTMLAttributes<T> extends HTMLAttributes<T> {
  external String? get name;
  external set name(String? value);
  external factory SlotHTMLAttributes({
    String? name,
  });
}

@JS()
@anonymous
class ScriptHTMLAttributes<T> extends HTMLAttributes<T> {
  external bool? get async;
  external set async(bool? value);
  external String? get charSet;
  external set charSet(String? value);
  external String? get crossOrigin;
  external set crossOrigin(String? value);
  external bool? get defer;
  external set defer(bool? value);
  external String? get integrity;
  external set integrity(String? value);
  external bool? get noModule;
  external set noModule(bool? value);
  external String? get nonce;
  external set nonce(String? value);
  external HTMLAttributeReferrerPolicy? get referrerPolicy;
  external set referrerPolicy(HTMLAttributeReferrerPolicy? value);
  external String? get src;
  external set src(String? value);
  external String? get type;
  external set type(String? value);
  external factory ScriptHTMLAttributes({
    bool? async,
    String? charSet,
    String? crossOrigin,
    bool? defer,
    String? integrity,
    bool? noModule,
    String? nonce,
    HTMLAttributeReferrerPolicy? referrerPolicy,
    String? src,
    String? type,
  });
}

@JS()
@anonymous
class SelectHTMLAttributes<T> extends HTMLAttributes<T> {
  external String? get autoComplete;
  external set autoComplete(String? value);
  external bool? get autoFocus;
  external set autoFocus(bool? value);
  external bool? get disabled;
  external set disabled(bool? value);
  external String? get form;
  external set form(String? value);
  external bool? get multiple;
  external set multiple(bool? value);
  external String? get name;
  external set name(String? value);
  external bool? get required;
  external set required(bool? value);
  external num? get size;
  external set size(num? value);
  external dynamic get value;
  external set value(dynamic value);
  external ChangeEventHandler<T>? get onChange;
  external set onChange(ChangeEventHandler<T>? value);
  external factory SelectHTMLAttributes({
    String? autoComplete,
    bool? autoFocus,
    bool? disabled,
    String? form,
    bool? multiple,
    String? name,
    bool? required,
    num? size,
    dynamic value,
    ChangeEventHandler<T>? onChange,
  });
}

@JS()
@anonymous
class SourceHTMLAttributes<T> extends HTMLAttributes<T> {
  external dynamic get height;
  external set height(dynamic value);
  external String? get media;
  external set media(String? value);
  external String? get sizes;
  external set sizes(String? value);
  external String? get src;
  external set src(String? value);
  external String? get srcSet;
  external set srcSet(String? value);
  external String? get type;
  external set type(String? value);
  external dynamic get width;
  external set width(dynamic value);
  external factory SourceHTMLAttributes({
    dynamic height,
    String? media,
    String? sizes,
    String? src,
    String? srcSet,
    String? type,
    dynamic width,
  });
}

@JS()
@anonymous
class StyleHTMLAttributes<T> extends HTMLAttributes<T> {
  external String? get media;
  external set media(String? value);
  external String? get nonce;
  external set nonce(String? value);
  external bool? get scoped;
  external set scoped(bool? value);
  external String? get type;
  external set type(String? value);
  external factory StyleHTMLAttributes({
    String? media,
    String? nonce,
    bool? scoped,
    String? type,
  });
}

@JS()
@anonymous
class TableHTMLAttributes<T> extends HTMLAttributes<T> {
  external dynamic get cellPadding;
  external set cellPadding(dynamic value);
  external dynamic get cellSpacing;
  external set cellSpacing(dynamic value);
  external String? get summary;
  external set summary(String? value);
  external dynamic get width;
  external set width(dynamic value);
  external factory TableHTMLAttributes({
    dynamic cellPadding,
    dynamic cellSpacing,
    String? summary,
    dynamic width,
  });
}

@JS()
@anonymous
class TextareaHTMLAttributes<T> extends HTMLAttributes<T> {
  external String? get autoComplete;
  external set autoComplete(String? value);
  external bool? get autoFocus;
  external set autoFocus(bool? value);
  external num? get cols;
  external set cols(num? value);
  external String? get dirName;
  external set dirName(String? value);
  external bool? get disabled;
  external set disabled(bool? value);
  external String? get form;
  external set form(String? value);
  external num? get maxLength;
  external set maxLength(num? value);
  external num? get minLength;
  external set minLength(num? value);
  external String? get name;
  external set name(String? value);
  external String? get placeholder;
  external set placeholder(String? value);
  external bool? get readOnly;
  external set readOnly(bool? value);
  external bool? get required;
  external set required(bool? value);
  external num? get rows;
  external set rows(num? value);
  external dynamic get value;
  external set value(dynamic value);
  external String? get wrap;
  external set wrap(String? value);
  external ChangeEventHandler<T>? get onChange;
  external set onChange(ChangeEventHandler<T>? value);
  external factory TextareaHTMLAttributes({
    String? autoComplete,
    bool? autoFocus,
    num? cols,
    String? dirName,
    bool? disabled,
    String? form,
    num? maxLength,
    num? minLength,
    String? name,
    String? placeholder,
    bool? readOnly,
    bool? required,
    num? rows,
    dynamic value,
    String? wrap,
    ChangeEventHandler<T>? onChange,
  });
}

@JS()
@anonymous
class TdHTMLAttributes<T> extends HTMLAttributes<T> {
  external String? get align;
  external set align(String? value);
  external num? get colSpan;
  external set colSpan(num? value);
  external String? get headers;
  external set headers(String? value);
  external num? get rowSpan;
  external set rowSpan(num? value);
  external String? get scope;
  external set scope(String? value);
  external String? get abbr;
  external set abbr(String? value);
  external dynamic get height;
  external set height(dynamic value);
  external dynamic get width;
  external set width(dynamic value);
  external String? get valign;
  external set valign(String? value);
  external factory TdHTMLAttributes({
    String? align,
    num? colSpan,
    String? headers,
    num? rowSpan,
    String? scope,
    String? abbr,
    dynamic height,
    dynamic width,
    String? valign,
  });
}

@JS()
@anonymous
class ThHTMLAttributes<T> extends HTMLAttributes<T> {
  external String? get align;
  external set align(String? value);
  external num? get colSpan;
  external set colSpan(num? value);
  external String? get headers;
  external set headers(String? value);
  external num? get rowSpan;
  external set rowSpan(num? value);
  external String? get scope;
  external set scope(String? value);
  external String? get abbr;
  external set abbr(String? value);
  external factory ThHTMLAttributes({
    String? align,
    num? colSpan,
    String? headers,
    num? rowSpan,
    String? scope,
    String? abbr,
  });
}

@JS()
@anonymous
class TimeHTMLAttributes<T> extends HTMLAttributes<T> {
  external String? get dateTime;
  external set dateTime(String? value);
  external factory TimeHTMLAttributes({
    String? dateTime,
  });
}

@JS()
@anonymous
class TrackHTMLAttributes<T> extends HTMLAttributes<T> {
  external String? get kind;
  external set kind(String? value);
  external String? get label;
  external set label(String? value);
  external String? get src;
  external set src(String? value);
  external String? get srcLang;
  external set srcLang(String? value);
  external factory TrackHTMLAttributes({
    String? kind,
    String? label,
    String? src,
    String? srcLang,
  });
}

@JS()
@anonymous
class VideoHTMLAttributes<T> extends MediaHTMLAttributes<T> {
  external dynamic get height;
  external set height(dynamic value);
  external bool? get playsInline;
  external set playsInline(bool? value);
  external String? get poster;
  external set poster(String? value);
  external dynamic get width;
  external set width(dynamic value);
  external bool? get disablePictureInPicture;
  external set disablePictureInPicture(bool? value);
  external bool? get disableRemotePlayback;
  external set disableRemotePlayback(bool? value);
  external factory VideoHTMLAttributes({
    dynamic height,
    bool? playsInline,
    String? poster,
    dynamic width,
    bool? disablePictureInPicture,
    bool? disableRemotePlayback,
  });
}

@JS()
@anonymous
class SVGAttributes<T> extends AriaAttributes {
  external String? get className;
  external set className(String? value);
  external String? get color;
  external set color(String? value);
  external dynamic get height;
  external set height(dynamic value);
  external String? get id;
  external set id(String? value);
  external String? get lang;
  external set lang(String? value);
  external dynamic get max;
  external set max(dynamic value);
  external String? get media;
  external set media(String? value);
  external String? get method;
  external set method(String? value);
  external dynamic get min;
  external set min(dynamic value);
  external String? get name;
  external set name(String? value);
  external CSSProperties? get style;
  external set style(CSSProperties? value);
  external String? get target;
  external set target(String? value);
  external String? get type;
  external set type(String? value);
  external dynamic get width;
  external set width(dynamic value);
  external AriaRole? get role;
  external set role(AriaRole? value);
  external num? get tabIndex;
  external set tabIndex(num? value);
  external String? get crossOrigin;
  external set crossOrigin(String? value);
  external dynamic get accentHeight;
  external set accentHeight(dynamic value);
  external String? get accumulate;
  external set accumulate(String? value);
  external String? get additive;
  external set additive(String? value);
  external String? get alignmentBaseline;
  external set alignmentBaseline(String? value);
  external String? get allowReorder;
  external set allowReorder(String? value);
  external dynamic get alphabetic;
  external set alphabetic(dynamic value);
  external dynamic get amplitude;
  external set amplitude(dynamic value);
  external String? get arabicForm;
  external set arabicForm(String? value);
  external dynamic get ascent;
  external set ascent(dynamic value);
  external String? get attributeName;
  external set attributeName(String? value);
  external String? get attributeType;
  external set attributeType(String? value);
  external Booleanish? get autoReverse;
  external set autoReverse(Booleanish? value);
  external dynamic get azimuth;
  external set azimuth(dynamic value);
  external dynamic get baseFrequency;
  external set baseFrequency(dynamic value);
  external dynamic get baselineShift;
  external set baselineShift(dynamic value);
  external dynamic get baseProfile;
  external set baseProfile(dynamic value);
  external dynamic get bbox;
  external set bbox(dynamic value);
  external dynamic get begin;
  external set begin(dynamic value);
  external dynamic get bias;
  external set bias(dynamic value);
  external dynamic get by;
  external set by(dynamic value);
  external dynamic get calcMode;
  external set calcMode(dynamic value);
  external dynamic get capHeight;
  external set capHeight(dynamic value);
  external dynamic get clip;
  external set clip(dynamic value);
  external String? get clipPath;
  external set clipPath(String? value);
  external dynamic get clipPathUnits;
  external set clipPathUnits(dynamic value);
  external dynamic get clipRule;
  external set clipRule(dynamic value);
  external dynamic get colorInterpolation;
  external set colorInterpolation(dynamic value);
  external String? get colorInterpolationFilters;
  external set colorInterpolationFilters(String? value);
  external dynamic get colorProfile;
  external set colorProfile(dynamic value);
  external dynamic get colorRendering;
  external set colorRendering(dynamic value);
  external dynamic get contentScriptType;
  external set contentScriptType(dynamic value);
  external dynamic get contentStyleType;
  external set contentStyleType(dynamic value);
  external dynamic get cursor;
  external set cursor(dynamic value);
  external dynamic get cx;
  external set cx(dynamic value);
  external dynamic get cy;
  external set cy(dynamic value);
  external String? get d;
  external set d(String? value);
  external dynamic get decelerate;
  external set decelerate(dynamic value);
  external dynamic get descent;
  external set descent(dynamic value);
  external dynamic get diffuseConstant;
  external set diffuseConstant(dynamic value);
  external dynamic get direction;
  external set direction(dynamic value);
  external dynamic get display;
  external set display(dynamic value);
  external dynamic get divisor;
  external set divisor(dynamic value);
  external dynamic get dominantBaseline;
  external set dominantBaseline(dynamic value);
  external dynamic get dur;
  external set dur(dynamic value);
  external dynamic get dx;
  external set dx(dynamic value);
  external dynamic get dy;
  external set dy(dynamic value);
  external dynamic get edgeMode;
  external set edgeMode(dynamic value);
  external dynamic get elevation;
  external set elevation(dynamic value);
  external dynamic get enableBackground;
  external set enableBackground(dynamic value);
  external dynamic get end;
  external set end(dynamic value);
  external dynamic get exponent;
  external set exponent(dynamic value);
  external Booleanish? get externalResourcesRequired;
  external set externalResourcesRequired(Booleanish? value);
  external String? get fill;
  external set fill(String? value);
  external dynamic get fillOpacity;
  external set fillOpacity(dynamic value);
  external String? get fillRule;
  external set fillRule(String? value);
  external String? get filter;
  external set filter(String? value);
  external dynamic get filterRes;
  external set filterRes(dynamic value);
  external dynamic get filterUnits;
  external set filterUnits(dynamic value);
  external dynamic get floodColor;
  external set floodColor(dynamic value);
  external dynamic get floodOpacity;
  external set floodOpacity(dynamic value);
  external dynamic get focusable;
  external set focusable(dynamic value);
  external String? get fontFamily;
  external set fontFamily(String? value);
  external dynamic get fontSize;
  external set fontSize(dynamic value);
  external dynamic get fontSizeAdjust;
  external set fontSizeAdjust(dynamic value);
  external dynamic get fontStretch;
  external set fontStretch(dynamic value);
  external dynamic get fontStyle;
  external set fontStyle(dynamic value);
  external dynamic get fontVariant;
  external set fontVariant(dynamic value);
  external dynamic get fontWeight;
  external set fontWeight(dynamic value);
  external dynamic get format;
  external set format(dynamic value);
  external dynamic get fr;
  external set fr(dynamic value);
  external dynamic get from;
  external set from(dynamic value);
  external dynamic get fx;
  external set fx(dynamic value);
  external dynamic get fy;
  external set fy(dynamic value);
  external dynamic get g1;
  external set g1(dynamic value);
  external dynamic get g2;
  external set g2(dynamic value);
  external dynamic get glyphName;
  external set glyphName(dynamic value);
  external dynamic get glyphOrientationHorizontal;
  external set glyphOrientationHorizontal(dynamic value);
  external dynamic get glyphOrientationVertical;
  external set glyphOrientationVertical(dynamic value);
  external dynamic get glyphRef;
  external set glyphRef(dynamic value);
  external String? get gradientTransform;
  external set gradientTransform(String? value);
  external String? get gradientUnits;
  external set gradientUnits(String? value);
  external dynamic get hanging;
  external set hanging(dynamic value);
  external dynamic get horizAdvX;
  external set horizAdvX(dynamic value);
  external dynamic get horizOriginX;
  external set horizOriginX(dynamic value);
  external String? get href;
  external set href(String? value);
  external dynamic get ideographic;
  external set ideographic(dynamic value);
  external dynamic get imageRendering;
  external set imageRendering(dynamic value);
  external dynamic get in2;
  external set in2(dynamic value);
  external dynamic get intercept;
  external set intercept(dynamic value);
  external dynamic get k1;
  external set k1(dynamic value);
  external dynamic get k2;
  external set k2(dynamic value);
  external dynamic get k3;
  external set k3(dynamic value);
  external dynamic get k4;
  external set k4(dynamic value);
  external dynamic get k;
  external set k(dynamic value);
  external dynamic get kernelMatrix;
  external set kernelMatrix(dynamic value);
  external dynamic get kernelUnitLength;
  external set kernelUnitLength(dynamic value);
  external dynamic get kerning;
  external set kerning(dynamic value);
  external dynamic get keyPoints;
  external set keyPoints(dynamic value);
  external dynamic get keySplines;
  external set keySplines(dynamic value);
  external dynamic get keyTimes;
  external set keyTimes(dynamic value);
  external dynamic get lengthAdjust;
  external set lengthAdjust(dynamic value);
  external dynamic get letterSpacing;
  external set letterSpacing(dynamic value);
  external dynamic get lightingColor;
  external set lightingColor(dynamic value);
  external dynamic get limitingConeAngle;
  external set limitingConeAngle(dynamic value);
  external dynamic get local;
  external set local(dynamic value);
  external String? get markerEnd;
  external set markerEnd(String? value);
  external dynamic get markerHeight;
  external set markerHeight(dynamic value);
  external String? get markerMid;
  external set markerMid(String? value);
  external String? get markerStart;
  external set markerStart(String? value);
  external dynamic get markerUnits;
  external set markerUnits(dynamic value);
  external dynamic get markerWidth;
  external set markerWidth(dynamic value);
  external String? get mask;
  external set mask(String? value);
  external dynamic get maskContentUnits;
  external set maskContentUnits(dynamic value);
  external dynamic get maskUnits;
  external set maskUnits(dynamic value);
  external dynamic get mathematical;
  external set mathematical(dynamic value);
  external dynamic get mode;
  external set mode(dynamic value);
  external dynamic get numOctaves;
  external set numOctaves(dynamic value);
  external dynamic get offset;
  external set offset(dynamic value);
  external dynamic get opacity;
  external set opacity(dynamic value);
  external dynamic get operator;
  external set operator(dynamic value);
  external dynamic get order;
  external set order(dynamic value);
  external dynamic get orient;
  external set orient(dynamic value);
  external dynamic get orientation;
  external set orientation(dynamic value);
  external dynamic get origin;
  external set origin(dynamic value);
  external dynamic get overflow;
  external set overflow(dynamic value);
  external dynamic get overlinePosition;
  external set overlinePosition(dynamic value);
  external dynamic get overlineThickness;
  external set overlineThickness(dynamic value);
  external dynamic get paintOrder;
  external set paintOrder(dynamic value);
  external dynamic get panose1;
  external set panose1(dynamic value);
  external String? get path;
  external set path(String? value);
  external dynamic get pathLength;
  external set pathLength(dynamic value);
  external String? get patternContentUnits;
  external set patternContentUnits(String? value);
  external dynamic get patternTransform;
  external set patternTransform(dynamic value);
  external String? get patternUnits;
  external set patternUnits(String? value);
  external dynamic get pointerEvents;
  external set pointerEvents(dynamic value);
  external String? get points;
  external set points(String? value);
  external dynamic get pointsAtX;
  external set pointsAtX(dynamic value);
  external dynamic get pointsAtY;
  external set pointsAtY(dynamic value);
  external dynamic get pointsAtZ;
  external set pointsAtZ(dynamic value);
  external Booleanish? get preserveAlpha;
  external set preserveAlpha(Booleanish? value);
  external String? get preserveAspectRatio;
  external set preserveAspectRatio(String? value);
  external dynamic get primitiveUnits;
  external set primitiveUnits(dynamic value);
  external dynamic get r;
  external set r(dynamic value);
  external dynamic get radius;
  external set radius(dynamic value);
  external dynamic get refX;
  external set refX(dynamic value);
  external dynamic get refY;
  external set refY(dynamic value);
  external dynamic get renderingIntent;
  external set renderingIntent(dynamic value);
  external dynamic get repeatCount;
  external set repeatCount(dynamic value);
  external dynamic get repeatDur;
  external set repeatDur(dynamic value);
  external dynamic get requiredExtensions;
  external set requiredExtensions(dynamic value);
  external dynamic get requiredFeatures;
  external set requiredFeatures(dynamic value);
  external dynamic get restart;
  external set restart(dynamic value);
  external String? get result;
  external set result(String? value);
  external dynamic get rotate;
  external set rotate(dynamic value);
  external dynamic get rx;
  external set rx(dynamic value);
  external dynamic get ry;
  external set ry(dynamic value);
  external dynamic get scale;
  external set scale(dynamic value);
  external dynamic get seed;
  external set seed(dynamic value);
  external dynamic get shapeRendering;
  external set shapeRendering(dynamic value);
  external dynamic get slope;
  external set slope(dynamic value);
  external dynamic get spacing;
  external set spacing(dynamic value);
  external dynamic get specularConstant;
  external set specularConstant(dynamic value);
  external dynamic get specularExponent;
  external set specularExponent(dynamic value);
  external dynamic get speed;
  external set speed(dynamic value);
  external String? get spreadMethod;
  external set spreadMethod(String? value);
  external dynamic get startOffset;
  external set startOffset(dynamic value);
  external dynamic get stdDeviation;
  external set stdDeviation(dynamic value);
  external dynamic get stemh;
  external set stemh(dynamic value);
  external dynamic get stemv;
  external set stemv(dynamic value);
  external dynamic get stitchTiles;
  external set stitchTiles(dynamic value);
  external String? get stopColor;
  external set stopColor(String? value);
  external dynamic get stopOpacity;
  external set stopOpacity(dynamic value);
  external dynamic get strikethroughPosition;
  external set strikethroughPosition(dynamic value);
  external dynamic get strikethroughThickness;
  external set strikethroughThickness(dynamic value);
  external dynamic get string;
  external set string(dynamic value);
  external String? get stroke;
  external set stroke(String? value);
  external dynamic get strokeDasharray;
  external set strokeDasharray(dynamic value);
  external dynamic get strokeDashoffset;
  external set strokeDashoffset(dynamic value);
  external String? get strokeLinecap;
  external set strokeLinecap(String? value);
  external String? get strokeLinejoin;
  external set strokeLinejoin(String? value);
  external dynamic get strokeMiterlimit;
  external set strokeMiterlimit(dynamic value);
  external dynamic get strokeOpacity;
  external set strokeOpacity(dynamic value);
  external dynamic get strokeWidth;
  external set strokeWidth(dynamic value);
  external dynamic get surfaceScale;
  external set surfaceScale(dynamic value);
  external dynamic get systemLanguage;
  external set systemLanguage(dynamic value);
  external dynamic get tableValues;
  external set tableValues(dynamic value);
  external dynamic get targetX;
  external set targetX(dynamic value);
  external dynamic get targetY;
  external set targetY(dynamic value);
  external String? get textAnchor;
  external set textAnchor(String? value);
  external dynamic get textDecoration;
  external set textDecoration(dynamic value);
  external dynamic get textLength;
  external set textLength(dynamic value);
  external dynamic get textRendering;
  external set textRendering(dynamic value);
  external dynamic get to;
  external set to(dynamic value);
  external String? get transform;
  external set transform(String? value);
  external dynamic get u1;
  external set u1(dynamic value);
  external dynamic get u2;
  external set u2(dynamic value);
  external dynamic get underlinePosition;
  external set underlinePosition(dynamic value);
  external dynamic get underlineThickness;
  external set underlineThickness(dynamic value);
  external dynamic get unicode;
  external set unicode(dynamic value);
  external dynamic get unicodeBidi;
  external set unicodeBidi(dynamic value);
  external dynamic get unicodeRange;
  external set unicodeRange(dynamic value);
  external dynamic get unitsPerEm;
  external set unitsPerEm(dynamic value);
  external dynamic get vAlphabetic;
  external set vAlphabetic(dynamic value);
  external String? get values;
  external set values(String? value);
  external dynamic get vectorEffect;
  external set vectorEffect(dynamic value);
  external String? get version;
  external set version(String? value);
  external dynamic get vertAdvY;
  external set vertAdvY(dynamic value);
  external dynamic get vertOriginX;
  external set vertOriginX(dynamic value);
  external dynamic get vertOriginY;
  external set vertOriginY(dynamic value);
  external dynamic get vHanging;
  external set vHanging(dynamic value);
  external dynamic get vIdeographic;
  external set vIdeographic(dynamic value);
  external String? get viewBox;
  external set viewBox(String? value);
  external dynamic get viewTarget;
  external set viewTarget(dynamic value);
  external dynamic get visibility;
  external set visibility(dynamic value);
  external dynamic get vMathematical;
  external set vMathematical(dynamic value);
  external dynamic get widths;
  external set widths(dynamic value);
  external dynamic get wordSpacing;
  external set wordSpacing(dynamic value);
  external dynamic get writingMode;
  external set writingMode(dynamic value);
  external dynamic get x1;
  external set x1(dynamic value);
  external dynamic get x2;
  external set x2(dynamic value);
  external dynamic get x;
  external set x(dynamic value);
  external String? get xChannelSelector;
  external set xChannelSelector(String? value);
  external dynamic get xHeight;
  external set xHeight(dynamic value);
  external String? get xlinkActuate;
  external set xlinkActuate(String? value);
  external String? get xlinkArcrole;
  external set xlinkArcrole(String? value);
  external String? get xlinkHref;
  external set xlinkHref(String? value);
  external String? get xlinkRole;
  external set xlinkRole(String? value);
  external String? get xlinkShow;
  external set xlinkShow(String? value);
  external String? get xlinkTitle;
  external set xlinkTitle(String? value);
  external String? get xlinkType;
  external set xlinkType(String? value);
  external String? get xmlBase;
  external set xmlBase(String? value);
  external String? get xmlLang;
  external set xmlLang(String? value);
  external String? get xmlns;
  external set xmlns(String? value);
  external String? get xmlnsXlink;
  external set xmlnsXlink(String? value);
  external String? get xmlSpace;
  external set xmlSpace(String? value);
  external dynamic get y1;
  external set y1(dynamic value);
  external dynamic get y2;
  external set y2(dynamic value);
  external dynamic get y;
  external set y(dynamic value);
  external String? get yChannelSelector;
  external set yChannelSelector(String? value);
  external dynamic get z;
  external set z(dynamic value);
  external String? get zoomAndPan;
  external set zoomAndPan(String? value);
  external factory SVGAttributes({
    String? className,
    String? color,
    dynamic height,
    String? id,
    String? lang,
    dynamic max,
    String? media,
    String? method,
    dynamic min,
    String? name,
    CSSProperties? style,
    String? target,
    String? type,
    dynamic width,
    AriaRole? role,
    num? tabIndex,
    String? crossOrigin,
    dynamic accentHeight,
    String? accumulate,
    String? additive,
    String? alignmentBaseline,
    String? allowReorder,
    dynamic alphabetic,
    dynamic amplitude,
    String? arabicForm,
    dynamic ascent,
    String? attributeName,
    String? attributeType,
    Booleanish? autoReverse,
    dynamic azimuth,
    dynamic baseFrequency,
    dynamic baselineShift,
    dynamic baseProfile,
    dynamic bbox,
    dynamic begin,
    dynamic bias,
    dynamic by,
    dynamic calcMode,
    dynamic capHeight,
    dynamic clip,
    String? clipPath,
    dynamic clipPathUnits,
    dynamic clipRule,
    dynamic colorInterpolation,
    String? colorInterpolationFilters,
    dynamic colorProfile,
    dynamic colorRendering,
    dynamic contentScriptType,
    dynamic contentStyleType,
    dynamic cursor,
    dynamic cx,
    dynamic cy,
    String? d,
    dynamic decelerate,
    dynamic descent,
    dynamic diffuseConstant,
    dynamic direction,
    dynamic display,
    dynamic divisor,
    dynamic dominantBaseline,
    dynamic dur,
    dynamic dx,
    dynamic dy,
    dynamic edgeMode,
    dynamic elevation,
    dynamic enableBackground,
    dynamic end,
    dynamic exponent,
    Booleanish? externalResourcesRequired,
    String? fill,
    dynamic fillOpacity,
    String? fillRule,
    String? filter,
    dynamic filterRes,
    dynamic filterUnits,
    dynamic floodColor,
    dynamic floodOpacity,
    dynamic focusable,
    String? fontFamily,
    dynamic fontSize,
    dynamic fontSizeAdjust,
    dynamic fontStretch,
    dynamic fontStyle,
    dynamic fontVariant,
    dynamic fontWeight,
    dynamic format,
    dynamic fr,
    dynamic from,
    dynamic fx,
    dynamic fy,
    dynamic g1,
    dynamic g2,
    dynamic glyphName,
    dynamic glyphOrientationHorizontal,
    dynamic glyphOrientationVertical,
    dynamic glyphRef,
    String? gradientTransform,
    String? gradientUnits,
    dynamic hanging,
    dynamic horizAdvX,
    dynamic horizOriginX,
    String? href,
    dynamic ideographic,
    dynamic imageRendering,
    dynamic in2,
    dynamic intercept,
    dynamic k1,
    dynamic k2,
    dynamic k3,
    dynamic k4,
    dynamic k,
    dynamic kernelMatrix,
    dynamic kernelUnitLength,
    dynamic kerning,
    dynamic keyPoints,
    dynamic keySplines,
    dynamic keyTimes,
    dynamic lengthAdjust,
    dynamic letterSpacing,
    dynamic lightingColor,
    dynamic limitingConeAngle,
    dynamic local,
    String? markerEnd,
    dynamic markerHeight,
    String? markerMid,
    String? markerStart,
    dynamic markerUnits,
    dynamic markerWidth,
    String? mask,
    dynamic maskContentUnits,
    dynamic maskUnits,
    dynamic mathematical,
    dynamic mode,
    dynamic numOctaves,
    dynamic offset,
    dynamic opacity,
    dynamic operator,
    dynamic order,
    dynamic orient,
    dynamic orientation,
    dynamic origin,
    dynamic overflow,
    dynamic overlinePosition,
    dynamic overlineThickness,
    dynamic paintOrder,
    dynamic panose1,
    String? path,
    dynamic pathLength,
    String? patternContentUnits,
    dynamic patternTransform,
    String? patternUnits,
    dynamic pointerEvents,
    String? points,
    dynamic pointsAtX,
    dynamic pointsAtY,
    dynamic pointsAtZ,
    Booleanish? preserveAlpha,
    String? preserveAspectRatio,
    dynamic primitiveUnits,
    dynamic r,
    dynamic radius,
    dynamic refX,
    dynamic refY,
    dynamic renderingIntent,
    dynamic repeatCount,
    dynamic repeatDur,
    dynamic requiredExtensions,
    dynamic requiredFeatures,
    dynamic restart,
    String? result,
    dynamic rotate,
    dynamic rx,
    dynamic ry,
    dynamic scale,
    dynamic seed,
    dynamic shapeRendering,
    dynamic slope,
    dynamic spacing,
    dynamic specularConstant,
    dynamic specularExponent,
    dynamic speed,
    String? spreadMethod,
    dynamic startOffset,
    dynamic stdDeviation,
    dynamic stemh,
    dynamic stemv,
    dynamic stitchTiles,
    String? stopColor,
    dynamic stopOpacity,
    dynamic strikethroughPosition,
    dynamic strikethroughThickness,
    dynamic string,
    String? stroke,
    dynamic strokeDasharray,
    dynamic strokeDashoffset,
    String? strokeLinecap,
    String? strokeLinejoin,
    dynamic strokeMiterlimit,
    dynamic strokeOpacity,
    dynamic strokeWidth,
    dynamic surfaceScale,
    dynamic systemLanguage,
    dynamic tableValues,
    dynamic targetX,
    dynamic targetY,
    String? textAnchor,
    dynamic textDecoration,
    dynamic textLength,
    dynamic textRendering,
    dynamic to,
    String? transform,
    dynamic u1,
    dynamic u2,
    dynamic underlinePosition,
    dynamic underlineThickness,
    dynamic unicode,
    dynamic unicodeBidi,
    dynamic unicodeRange,
    dynamic unitsPerEm,
    dynamic vAlphabetic,
    String? values,
    dynamic vectorEffect,
    String? version,
    dynamic vertAdvY,
    dynamic vertOriginX,
    dynamic vertOriginY,
    dynamic vHanging,
    dynamic vIdeographic,
    String? viewBox,
    dynamic viewTarget,
    dynamic visibility,
    dynamic vMathematical,
    dynamic widths,
    dynamic wordSpacing,
    dynamic writingMode,
    dynamic x1,
    dynamic x2,
    dynamic x,
    String? xChannelSelector,
    dynamic xHeight,
    String? xlinkActuate,
    String? xlinkArcrole,
    String? xlinkHref,
    String? xlinkRole,
    String? xlinkShow,
    String? xlinkTitle,
    String? xlinkType,
    String? xmlBase,
    String? xmlLang,
    String? xmlns,
    String? xmlnsXlink,
    String? xmlSpace,
    dynamic y1,
    dynamic y2,
    dynamic y,
    String? yChannelSelector,
    dynamic z,
    String? zoomAndPan,
  });
}

@JS()
@anonymous
class WebViewHTMLAttributes<T> extends HTMLAttributes<T> {
  external bool? get allowFullScreen;
  external set allowFullScreen(bool? value);
  external bool? get allowpopups;
  external set allowpopups(bool? value);
  external bool? get autoFocus;
  external set autoFocus(bool? value);
  external bool? get autosize;
  external set autosize(bool? value);
  external String? get blinkfeatures;
  external set blinkfeatures(String? value);
  external String? get disableblinkfeatures;
  external set disableblinkfeatures(String? value);
  external bool? get disableguestresize;
  external set disableguestresize(bool? value);
  external bool? get disablewebsecurity;
  external set disablewebsecurity(bool? value);
  external String? get guestinstance;
  external set guestinstance(String? value);
  external String? get httpreferrer;
  external set httpreferrer(String? value);
  external bool? get nodeintegration;
  external set nodeintegration(bool? value);
  external String? get partition;
  external set partition(String? value);
  external bool? get plugins;
  external set plugins(bool? value);
  external String? get preload;
  external set preload(String? value);
  external String? get src;
  external set src(String? value);
  external String? get useragent;
  external set useragent(String? value);
  external String? get webpreferences;
  external set webpreferences(String? value);
  external factory WebViewHTMLAttributes({
    bool? allowFullScreen,
    bool? allowpopups,
    bool? autoFocus,
    bool? autosize,
    String? blinkfeatures,
    String? disableblinkfeatures,
    bool? disableguestresize,
    bool? disablewebsecurity,
    String? guestinstance,
    String? httpreferrer,
    bool? nodeintegration,
    String? partition,
    bool? plugins,
    String? preload,
    String? src,
    String? useragent,
    String? webpreferences,
  });
}

@JS()
@anonymous
class ReactHTML {
  external DetailedHTMLFactory<AnchorHTMLAttributes<AnchorElement>, AnchorElement> get a;
  external set a(DetailedHTMLFactory<AnchorHTMLAttributes<AnchorElement>, AnchorElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> get abbr;
  external set abbr(DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> get address;
  external set address(DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<AreaHTMLAttributes<AreaElement>, AreaElement> get area;
  external set area(DetailedHTMLFactory<AreaHTMLAttributes<AreaElement>, AreaElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> get article;
  external set article(DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> get aside;
  external set aside(DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<AudioHTMLAttributes<AudioElement>, AudioElement> get audio;
  external set audio(DetailedHTMLFactory<AudioHTMLAttributes<AudioElement>, AudioElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> get b;
  external set b(DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<BaseHTMLAttributes<BaseElement>, BaseElement> get base;
  external set base(DetailedHTMLFactory<BaseHTMLAttributes<BaseElement>, BaseElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> get bdi;
  external set bdi(DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> get bdo;
  external set bdo(DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> get big;
  external set big(DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<BlockquoteHTMLAttributes<HtmlElement>, HtmlElement> get blockquote;
  external set blockquote(DetailedHTMLFactory<BlockquoteHTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<HTMLAttributes<BodyElement>, BodyElement> get body;
  external set body(DetailedHTMLFactory<HTMLAttributes<BodyElement>, BodyElement> value);
  external DetailedHTMLFactory<HTMLAttributes<BRElement>, BRElement> get br;
  external set br(DetailedHTMLFactory<HTMLAttributes<BRElement>, BRElement> value);
  external DetailedHTMLFactory<ButtonHTMLAttributes<ButtonElement>, ButtonElement> get button;
  external set button(DetailedHTMLFactory<ButtonHTMLAttributes<ButtonElement>, ButtonElement> value);
  external DetailedHTMLFactory<CanvasHTMLAttributes<CanvasElement>, CanvasElement> get canvas;
  external set canvas(DetailedHTMLFactory<CanvasHTMLAttributes<CanvasElement>, CanvasElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> get caption;
  external set caption(DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> get cite;
  external set cite(DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> get code;
  external set code(DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<ColHTMLAttributes<TableColElement>, TableColElement> get col;
  external set col(DetailedHTMLFactory<ColHTMLAttributes<TableColElement>, TableColElement> value);
  external DetailedHTMLFactory<ColgroupHTMLAttributes<TableColElement>, TableColElement> get colgroup;
  external set colgroup(DetailedHTMLFactory<ColgroupHTMLAttributes<TableColElement>, TableColElement> value);
  external DetailedHTMLFactory<DataHTMLAttributes<HTMLDataElement>, HTMLDataElement> get data;
  external set data(DetailedHTMLFactory<DataHTMLAttributes<HTMLDataElement>, HTMLDataElement> value);
  external DetailedHTMLFactory<HTMLAttributes<DataListElement>, DataListElement> get datalist;
  external set datalist(DetailedHTMLFactory<HTMLAttributes<DataListElement>, DataListElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> get dd;
  external set dd(DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<DelHTMLAttributes<HtmlElement>, HtmlElement> get del;
  external set del(DetailedHTMLFactory<DelHTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<DetailsHTMLAttributes<HtmlElement>, HtmlElement> get details;
  external set details(DetailedHTMLFactory<DetailsHTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> get dfn;
  external set dfn(DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<DialogHTMLAttributes<DialogElement>, DialogElement> get dialog;
  external set dialog(DetailedHTMLFactory<DialogHTMLAttributes<DialogElement>, DialogElement> value);
  external DetailedHTMLFactory<HTMLAttributes<DivElement>, DivElement> get div;
  external set div(DetailedHTMLFactory<HTMLAttributes<DivElement>, DivElement> value);
  external DetailedHTMLFactory<HTMLAttributes<DListElement>, DListElement> get dl;
  external set dl(DetailedHTMLFactory<HTMLAttributes<DListElement>, DListElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> get dt;
  external set dt(DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> get em;
  external set em(DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<EmbedHTMLAttributes<EmbedElement>, EmbedElement> get embed;
  external set embed(DetailedHTMLFactory<EmbedHTMLAttributes<EmbedElement>, EmbedElement> value);
  external DetailedHTMLFactory<FieldsetHTMLAttributes<FieldSetElement>, FieldSetElement> get fieldset;
  external set fieldset(DetailedHTMLFactory<FieldsetHTMLAttributes<FieldSetElement>, FieldSetElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> get figcaption;
  external set figcaption(DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> get figure;
  external set figure(DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> get footer;
  external set footer(DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<FormHTMLAttributes<FormElement>, FormElement> get form;
  external set form(DetailedHTMLFactory<FormHTMLAttributes<FormElement>, FormElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HeadingElement>, HeadingElement> get h1;
  external set h1(DetailedHTMLFactory<HTMLAttributes<HeadingElement>, HeadingElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HeadingElement>, HeadingElement> get h2;
  external set h2(DetailedHTMLFactory<HTMLAttributes<HeadingElement>, HeadingElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HeadingElement>, HeadingElement> get h3;
  external set h3(DetailedHTMLFactory<HTMLAttributes<HeadingElement>, HeadingElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HeadingElement>, HeadingElement> get h4;
  external set h4(DetailedHTMLFactory<HTMLAttributes<HeadingElement>, HeadingElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HeadingElement>, HeadingElement> get h5;
  external set h5(DetailedHTMLFactory<HTMLAttributes<HeadingElement>, HeadingElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HeadingElement>, HeadingElement> get h6;
  external set h6(DetailedHTMLFactory<HTMLAttributes<HeadingElement>, HeadingElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HeadElement> get head;
  external set head(DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HeadElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> get header;
  external set header(DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> get hgroup;
  external set hgroup(DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HRElement>, HRElement> get hr;
  external set hr(DetailedHTMLFactory<HTMLAttributes<HRElement>, HRElement> value);
  external DetailedHTMLFactory<HtmlHTMLAttributes<HtmlHtmlElement>, HtmlHtmlElement> get html;
  external set html(DetailedHTMLFactory<HtmlHTMLAttributes<HtmlHtmlElement>, HtmlHtmlElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> get i;
  external set i(DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<IframeHTMLAttributes<IFrameElement>, IFrameElement> get iframe;
  external set iframe(DetailedHTMLFactory<IframeHTMLAttributes<IFrameElement>, IFrameElement> value);
  external DetailedHTMLFactory<ImgHTMLAttributes<ImageElement>, ImageElement> get img;
  external set img(DetailedHTMLFactory<ImgHTMLAttributes<ImageElement>, ImageElement> value);
  external DetailedHTMLFactory<InputHTMLAttributes<InputElement>, InputElement> get input;
  external set input(DetailedHTMLFactory<InputHTMLAttributes<InputElement>, InputElement> value);
  external DetailedHTMLFactory<InsHTMLAttributes<ModElement>, ModElement> get ins;
  external set ins(DetailedHTMLFactory<InsHTMLAttributes<ModElement>, ModElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> get kbd;
  external set kbd(DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<KeygenHTMLAttributes<HtmlElement>, HtmlElement> get keygen;
  external set keygen(DetailedHTMLFactory<KeygenHTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<LabelHTMLAttributes<LabelElement>, LabelElement> get label;
  external set label(DetailedHTMLFactory<LabelHTMLAttributes<LabelElement>, LabelElement> value);
  external DetailedHTMLFactory<HTMLAttributes<LegendElement>, LegendElement> get legend;
  external set legend(DetailedHTMLFactory<HTMLAttributes<LegendElement>, LegendElement> value);
  external DetailedHTMLFactory<LiHTMLAttributes<LIElement>, LIElement> get li;
  external set li(DetailedHTMLFactory<LiHTMLAttributes<LIElement>, LIElement> value);
  external DetailedHTMLFactory<LinkHTMLAttributes<LinkElement>, LinkElement> get link;
  external set link(DetailedHTMLFactory<LinkHTMLAttributes<LinkElement>, LinkElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> get main;
  external set main(DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<MapHTMLAttributes<MapElement>, MapElement> get map;
  external set map(DetailedHTMLFactory<MapHTMLAttributes<MapElement>, MapElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> get mark;
  external set mark(DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<MenuHTMLAttributes<HtmlElement>, HtmlElement> get menu;
  external set menu(DetailedHTMLFactory<MenuHTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> get menuitem;
  external set menuitem(DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<MetaHTMLAttributes<MetaElement>, MetaElement> get meta;
  external set meta(DetailedHTMLFactory<MetaHTMLAttributes<MetaElement>, MetaElement> value);
  external DetailedHTMLFactory<MeterHTMLAttributes<HtmlElement>, HtmlElement> get meter;
  external set meter(DetailedHTMLFactory<MeterHTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> get nav;
  external set nav(DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> get noscript;
  external set noscript(DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<ObjectHTMLAttributes<ObjectElement>, ObjectElement> get object;
  external set object(DetailedHTMLFactory<ObjectHTMLAttributes<ObjectElement>, ObjectElement> value);
  external DetailedHTMLFactory<OlHTMLAttributes<OListElement>, OListElement> get ol;
  external set ol(DetailedHTMLFactory<OlHTMLAttributes<OListElement>, OListElement> value);
  external DetailedHTMLFactory<OptgroupHTMLAttributes<OptGroupElement>, OptGroupElement> get optgroup;
  external set optgroup(DetailedHTMLFactory<OptgroupHTMLAttributes<OptGroupElement>, OptGroupElement> value);
  external DetailedHTMLFactory<OptionHTMLAttributes<OptionElement>, OptionElement> get option;
  external set option(DetailedHTMLFactory<OptionHTMLAttributes<OptionElement>, OptionElement> value);
  external DetailedHTMLFactory<OutputHTMLAttributes<HtmlElement>, HtmlElement> get output;
  external set output(DetailedHTMLFactory<OutputHTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<HTMLAttributes<ParagraphElement>, ParagraphElement> get p;
  external set p(DetailedHTMLFactory<HTMLAttributes<ParagraphElement>, ParagraphElement> value);
  external DetailedHTMLFactory<ParamHTMLAttributes<ParamElement>, ParamElement> get param;
  external set param(DetailedHTMLFactory<ParamHTMLAttributes<ParamElement>, ParamElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> get picture;
  external set picture(DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<HTMLAttributes<PreElement>, PreElement> get pre;
  external set pre(DetailedHTMLFactory<HTMLAttributes<PreElement>, PreElement> value);
  external DetailedHTMLFactory<ProgressHTMLAttributes<ProgressElement>, ProgressElement> get progress;
  external set progress(DetailedHTMLFactory<ProgressHTMLAttributes<ProgressElement>, ProgressElement> value);
  external DetailedHTMLFactory<QuoteHTMLAttributes<QuoteElement>, QuoteElement> get q;
  external set q(DetailedHTMLFactory<QuoteHTMLAttributes<QuoteElement>, QuoteElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> get rp;
  external set rp(DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> get rt;
  external set rt(DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> get ruby;
  external set ruby(DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> get s;
  external set s(DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> get samp;
  external set samp(DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<SlotHTMLAttributes<HTMLSlotElement>, HTMLSlotElement> get slot;
  external set slot(DetailedHTMLFactory<SlotHTMLAttributes<HTMLSlotElement>, HTMLSlotElement> value);
  external DetailedHTMLFactory<ScriptHTMLAttributes<ScriptElement>, ScriptElement> get script;
  external set script(DetailedHTMLFactory<ScriptHTMLAttributes<ScriptElement>, ScriptElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> get section;
  external set section(DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<SelectHTMLAttributes<SelectElement>, SelectElement> get select;
  external set select(DetailedHTMLFactory<SelectHTMLAttributes<SelectElement>, SelectElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> get small;
  external set small(DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<SourceHTMLAttributes<SourceElement>, SourceElement> get source;
  external set source(DetailedHTMLFactory<SourceHTMLAttributes<SourceElement>, SourceElement> value);
  external DetailedHTMLFactory<HTMLAttributes<SpanElement>, SpanElement> get span;
  external set span(DetailedHTMLFactory<HTMLAttributes<SpanElement>, SpanElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> get strong;
  external set strong(DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<StyleHTMLAttributes<StyleElement>, StyleElement> get style;
  external set style(DetailedHTMLFactory<StyleHTMLAttributes<StyleElement>, StyleElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> get sub;
  external set sub(DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> get summary;
  external set summary(DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> get sup;
  external set sup(DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<TableHTMLAttributes<TableElement>, TableElement> get table;
  external set table(DetailedHTMLFactory<TableHTMLAttributes<TableElement>, TableElement> value);
  external DetailedHTMLFactory<HTMLAttributes<TemplateElement>, TemplateElement> get template;
  external set template(DetailedHTMLFactory<HTMLAttributes<TemplateElement>, TemplateElement> value);
  external DetailedHTMLFactory<HTMLAttributes<TableSectionElement>, TableSectionElement> get tbody;
  external set tbody(DetailedHTMLFactory<HTMLAttributes<TableSectionElement>, TableSectionElement> value);
  external DetailedHTMLFactory<TdHTMLAttributes<HTMLTableDataCellElement>, HTMLTableDataCellElement> get td;
  external set td(DetailedHTMLFactory<TdHTMLAttributes<HTMLTableDataCellElement>, HTMLTableDataCellElement> value);
  external DetailedHTMLFactory<TextareaHTMLAttributes<TextAreaElement>, TextAreaElement> get textarea;
  external set textarea(DetailedHTMLFactory<TextareaHTMLAttributes<TextAreaElement>, TextAreaElement> value);
  external DetailedHTMLFactory<HTMLAttributes<TableSectionElement>, TableSectionElement> get tfoot;
  external set tfoot(DetailedHTMLFactory<HTMLAttributes<TableSectionElement>, TableSectionElement> value);
  external DetailedHTMLFactory<ThHTMLAttributes<HTMLTableHeaderCellElement>, HTMLTableHeaderCellElement> get th;
  external set th(DetailedHTMLFactory<ThHTMLAttributes<HTMLTableHeaderCellElement>, HTMLTableHeaderCellElement> value);
  external DetailedHTMLFactory<HTMLAttributes<TableSectionElement>, TableSectionElement> get thead;
  external set thead(DetailedHTMLFactory<HTMLAttributes<TableSectionElement>, TableSectionElement> value);
  external DetailedHTMLFactory<TimeHTMLAttributes<HtmlElement>, HtmlElement> get time;
  external set time(DetailedHTMLFactory<TimeHTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<HTMLAttributes<TitleElement>, TitleElement> get title;
  external set title(DetailedHTMLFactory<HTMLAttributes<TitleElement>, TitleElement> value);
  external DetailedHTMLFactory<HTMLAttributes<TableRowElement>, TableRowElement> get tr;
  external set tr(DetailedHTMLFactory<HTMLAttributes<TableRowElement>, TableRowElement> value);
  external DetailedHTMLFactory<TrackHTMLAttributes<TrackElement>, TrackElement> get track;
  external set track(DetailedHTMLFactory<TrackHTMLAttributes<TrackElement>, TrackElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> get u;
  external set u(DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<HTMLAttributes<UListElement>, UListElement> get ul;
  external set ul(DetailedHTMLFactory<HTMLAttributes<UListElement>, UListElement> value);
  external DetailedHTMLFactory<VideoHTMLAttributes<VideoElement>, VideoElement> get video;
  external set video(DetailedHTMLFactory<VideoHTMLAttributes<VideoElement>, VideoElement> value);
  external DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> get wbr;
  external set wbr(DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLFactory<WebViewHTMLAttributes<HTMLWebViewElement>, HTMLWebViewElement> get webview;
  external set webview(DetailedHTMLFactory<WebViewHTMLAttributes<HTMLWebViewElement>, HTMLWebViewElement> value);
  external factory ReactHTML({
    DetailedHTMLFactory<AnchorHTMLAttributes<AnchorElement>, AnchorElement> a,
    DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> abbr,
    DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> address,
    DetailedHTMLFactory<AreaHTMLAttributes<AreaElement>, AreaElement> area,
    DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> article,
    DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> aside,
    DetailedHTMLFactory<AudioHTMLAttributes<AudioElement>, AudioElement> audio,
    DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> b,
    DetailedHTMLFactory<BaseHTMLAttributes<BaseElement>, BaseElement> base,
    DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> bdi,
    DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> bdo,
    DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> big,
    DetailedHTMLFactory<BlockquoteHTMLAttributes<HtmlElement>, HtmlElement> blockquote,
    DetailedHTMLFactory<HTMLAttributes<BodyElement>, BodyElement> body,
    DetailedHTMLFactory<HTMLAttributes<BRElement>, BRElement> br,
    DetailedHTMLFactory<ButtonHTMLAttributes<ButtonElement>, ButtonElement> button,
    DetailedHTMLFactory<CanvasHTMLAttributes<CanvasElement>, CanvasElement> canvas,
    DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> caption,
    DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> cite,
    DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> code,
    DetailedHTMLFactory<ColHTMLAttributes<TableColElement>, TableColElement> col,
    DetailedHTMLFactory<ColgroupHTMLAttributes<TableColElement>, TableColElement> colgroup,
    DetailedHTMLFactory<DataHTMLAttributes<HTMLDataElement>, HTMLDataElement> data,
    DetailedHTMLFactory<HTMLAttributes<DataListElement>, DataListElement> datalist,
    DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> dd,
    DetailedHTMLFactory<DelHTMLAttributes<HtmlElement>, HtmlElement> del,
    DetailedHTMLFactory<DetailsHTMLAttributes<HtmlElement>, HtmlElement> details,
    DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> dfn,
    DetailedHTMLFactory<DialogHTMLAttributes<DialogElement>, DialogElement> dialog,
    DetailedHTMLFactory<HTMLAttributes<DivElement>, DivElement> div,
    DetailedHTMLFactory<HTMLAttributes<DListElement>, DListElement> dl,
    DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> dt,
    DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> em,
    DetailedHTMLFactory<EmbedHTMLAttributes<EmbedElement>, EmbedElement> embed,
    DetailedHTMLFactory<FieldsetHTMLAttributes<FieldSetElement>, FieldSetElement> fieldset,
    DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> figcaption,
    DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> figure,
    DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> footer,
    DetailedHTMLFactory<FormHTMLAttributes<FormElement>, FormElement> form,
    DetailedHTMLFactory<HTMLAttributes<HeadingElement>, HeadingElement> h1,
    DetailedHTMLFactory<HTMLAttributes<HeadingElement>, HeadingElement> h2,
    DetailedHTMLFactory<HTMLAttributes<HeadingElement>, HeadingElement> h3,
    DetailedHTMLFactory<HTMLAttributes<HeadingElement>, HeadingElement> h4,
    DetailedHTMLFactory<HTMLAttributes<HeadingElement>, HeadingElement> h5,
    DetailedHTMLFactory<HTMLAttributes<HeadingElement>, HeadingElement> h6,
    DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HeadElement> head,
    DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> header,
    DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> hgroup,
    DetailedHTMLFactory<HTMLAttributes<HRElement>, HRElement> hr,
    DetailedHTMLFactory<HtmlHTMLAttributes<HtmlHtmlElement>, HtmlHtmlElement> html,
    DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> i,
    DetailedHTMLFactory<IframeHTMLAttributes<IFrameElement>, IFrameElement> iframe,
    DetailedHTMLFactory<ImgHTMLAttributes<ImageElement>, ImageElement> img,
    DetailedHTMLFactory<InputHTMLAttributes<InputElement>, InputElement> input,
    DetailedHTMLFactory<InsHTMLAttributes<ModElement>, ModElement> ins,
    DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> kbd,
    DetailedHTMLFactory<KeygenHTMLAttributes<HtmlElement>, HtmlElement> keygen,
    DetailedHTMLFactory<LabelHTMLAttributes<LabelElement>, LabelElement> label,
    DetailedHTMLFactory<HTMLAttributes<LegendElement>, LegendElement> legend,
    DetailedHTMLFactory<LiHTMLAttributes<LIElement>, LIElement> li,
    DetailedHTMLFactory<LinkHTMLAttributes<LinkElement>, LinkElement> link,
    DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> main,
    DetailedHTMLFactory<MapHTMLAttributes<MapElement>, MapElement> map,
    DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> mark,
    DetailedHTMLFactory<MenuHTMLAttributes<HtmlElement>, HtmlElement> menu,
    DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> menuitem,
    DetailedHTMLFactory<MetaHTMLAttributes<MetaElement>, MetaElement> meta,
    DetailedHTMLFactory<MeterHTMLAttributes<HtmlElement>, HtmlElement> meter,
    DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> nav,
    DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> noscript,
    DetailedHTMLFactory<ObjectHTMLAttributes<ObjectElement>, ObjectElement> object,
    DetailedHTMLFactory<OlHTMLAttributes<OListElement>, OListElement> ol,
    DetailedHTMLFactory<OptgroupHTMLAttributes<OptGroupElement>, OptGroupElement> optgroup,
    DetailedHTMLFactory<OptionHTMLAttributes<OptionElement>, OptionElement> option,
    DetailedHTMLFactory<OutputHTMLAttributes<HtmlElement>, HtmlElement> output,
    DetailedHTMLFactory<HTMLAttributes<ParagraphElement>, ParagraphElement> p,
    DetailedHTMLFactory<ParamHTMLAttributes<ParamElement>, ParamElement> param,
    DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> picture,
    DetailedHTMLFactory<HTMLAttributes<PreElement>, PreElement> pre,
    DetailedHTMLFactory<ProgressHTMLAttributes<ProgressElement>, ProgressElement> progress,
    DetailedHTMLFactory<QuoteHTMLAttributes<QuoteElement>, QuoteElement> q,
    DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> rp,
    DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> rt,
    DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> ruby,
    DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> s,
    DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> samp,
    DetailedHTMLFactory<SlotHTMLAttributes<HTMLSlotElement>, HTMLSlotElement> slot,
    DetailedHTMLFactory<ScriptHTMLAttributes<ScriptElement>, ScriptElement> script,
    DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> section,
    DetailedHTMLFactory<SelectHTMLAttributes<SelectElement>, SelectElement> select,
    DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> small,
    DetailedHTMLFactory<SourceHTMLAttributes<SourceElement>, SourceElement> source,
    DetailedHTMLFactory<HTMLAttributes<SpanElement>, SpanElement> span,
    DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> strong,
    DetailedHTMLFactory<StyleHTMLAttributes<StyleElement>, StyleElement> style,
    DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> sub,
    DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> summary,
    DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> sup,
    DetailedHTMLFactory<TableHTMLAttributes<TableElement>, TableElement> table,
    DetailedHTMLFactory<HTMLAttributes<TemplateElement>, TemplateElement> template,
    DetailedHTMLFactory<HTMLAttributes<TableSectionElement>, TableSectionElement> tbody,
    DetailedHTMLFactory<TdHTMLAttributes<HTMLTableDataCellElement>, HTMLTableDataCellElement> td,
    DetailedHTMLFactory<TextareaHTMLAttributes<TextAreaElement>, TextAreaElement> textarea,
    DetailedHTMLFactory<HTMLAttributes<TableSectionElement>, TableSectionElement> tfoot,
    DetailedHTMLFactory<ThHTMLAttributes<HTMLTableHeaderCellElement>, HTMLTableHeaderCellElement> th,
    DetailedHTMLFactory<HTMLAttributes<TableSectionElement>, TableSectionElement> thead,
    DetailedHTMLFactory<TimeHTMLAttributes<HtmlElement>, HtmlElement> time,
    DetailedHTMLFactory<HTMLAttributes<TitleElement>, TitleElement> title,
    DetailedHTMLFactory<HTMLAttributes<TableRowElement>, TableRowElement> tr,
    DetailedHTMLFactory<TrackHTMLAttributes<TrackElement>, TrackElement> track,
    DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> u,
    DetailedHTMLFactory<HTMLAttributes<UListElement>, UListElement> ul,
    DetailedHTMLFactory<VideoHTMLAttributes<VideoElement>, VideoElement> video,
    DetailedHTMLFactory<HTMLAttributes<HtmlElement>, HtmlElement> wbr,
    DetailedHTMLFactory<WebViewHTMLAttributes<HTMLWebViewElement>, HTMLWebViewElement> webview,
  });
}

@JS()
@anonymous
class ReactSVG {
  external SVGFactory get animate;
  external set animate(SVGFactory value);
  external SVGFactory get circle;
  external set circle(SVGFactory value);
  external SVGFactory get clipPath;
  external set clipPath(SVGFactory value);
  external SVGFactory get defs;
  external set defs(SVGFactory value);
  external SVGFactory get desc;
  external set desc(SVGFactory value);
  external SVGFactory get ellipse;
  external set ellipse(SVGFactory value);
  external SVGFactory get feBlend;
  external set feBlend(SVGFactory value);
  external SVGFactory get feColorMatrix;
  external set feColorMatrix(SVGFactory value);
  external SVGFactory get feComponentTransfer;
  external set feComponentTransfer(SVGFactory value);
  external SVGFactory get feComposite;
  external set feComposite(SVGFactory value);
  external SVGFactory get feConvolveMatrix;
  external set feConvolveMatrix(SVGFactory value);
  external SVGFactory get feDiffuseLighting;
  external set feDiffuseLighting(SVGFactory value);
  external SVGFactory get feDisplacementMap;
  external set feDisplacementMap(SVGFactory value);
  external SVGFactory get feDistantLight;
  external set feDistantLight(SVGFactory value);
  external SVGFactory get feDropShadow;
  external set feDropShadow(SVGFactory value);
  external SVGFactory get feFlood;
  external set feFlood(SVGFactory value);
  external SVGFactory get feFuncA;
  external set feFuncA(SVGFactory value);
  external SVGFactory get feFuncB;
  external set feFuncB(SVGFactory value);
  external SVGFactory get feFuncG;
  external set feFuncG(SVGFactory value);
  external SVGFactory get feFuncR;
  external set feFuncR(SVGFactory value);
  external SVGFactory get feGaussianBlur;
  external set feGaussianBlur(SVGFactory value);
  external SVGFactory get feImage;
  external set feImage(SVGFactory value);
  external SVGFactory get feMerge;
  external set feMerge(SVGFactory value);
  external SVGFactory get feMergeNode;
  external set feMergeNode(SVGFactory value);
  external SVGFactory get feMorphology;
  external set feMorphology(SVGFactory value);
  external SVGFactory get feOffset;
  external set feOffset(SVGFactory value);
  external SVGFactory get fePointLight;
  external set fePointLight(SVGFactory value);
  external SVGFactory get feSpecularLighting;
  external set feSpecularLighting(SVGFactory value);
  external SVGFactory get feSpotLight;
  external set feSpotLight(SVGFactory value);
  external SVGFactory get feTile;
  external set feTile(SVGFactory value);
  external SVGFactory get feTurbulence;
  external set feTurbulence(SVGFactory value);
  external SVGFactory get filter;
  external set filter(SVGFactory value);
  external SVGFactory get foreignObject;
  external set foreignObject(SVGFactory value);
  external SVGFactory get g;
  external set g(SVGFactory value);
  external SVGFactory get image;
  external set image(SVGFactory value);
  external SVGFactory get line;
  external set line(SVGFactory value);
  external SVGFactory get linearGradient;
  external set linearGradient(SVGFactory value);
  external SVGFactory get marker;
  external set marker(SVGFactory value);
  external SVGFactory get mask;
  external set mask(SVGFactory value);
  external SVGFactory get metadata;
  external set metadata(SVGFactory value);
  external SVGFactory get path;
  external set path(SVGFactory value);
  external SVGFactory get pattern;
  external set pattern(SVGFactory value);
  external SVGFactory get polygon;
  external set polygon(SVGFactory value);
  external SVGFactory get polyline;
  external set polyline(SVGFactory value);
  external SVGFactory get radialGradient;
  external set radialGradient(SVGFactory value);
  external SVGFactory get rect;
  external set rect(SVGFactory value);
  external SVGFactory get stop;
  external set stop(SVGFactory value);
  external SVGFactory get svg;
  external set svg(SVGFactory value);
  external SVGFactory get symbol;
  external set symbol(SVGFactory value);
  external SVGFactory get text;
  external set text(SVGFactory value);
  external SVGFactory get textPath;
  external set textPath(SVGFactory value);
  external SVGFactory get tspan;
  external set tspan(SVGFactory value);
  external SVGFactory get use;
  external set use(SVGFactory value);
  external SVGFactory get view;
  external set view(SVGFactory value);
  external factory ReactSVG({
    SVGFactory animate,
    SVGFactory circle,
    SVGFactory clipPath,
    SVGFactory defs,
    SVGFactory desc,
    SVGFactory ellipse,
    SVGFactory feBlend,
    SVGFactory feColorMatrix,
    SVGFactory feComponentTransfer,
    SVGFactory feComposite,
    SVGFactory feConvolveMatrix,
    SVGFactory feDiffuseLighting,
    SVGFactory feDisplacementMap,
    SVGFactory feDistantLight,
    SVGFactory feDropShadow,
    SVGFactory feFlood,
    SVGFactory feFuncA,
    SVGFactory feFuncB,
    SVGFactory feFuncG,
    SVGFactory feFuncR,
    SVGFactory feGaussianBlur,
    SVGFactory feImage,
    SVGFactory feMerge,
    SVGFactory feMergeNode,
    SVGFactory feMorphology,
    SVGFactory feOffset,
    SVGFactory fePointLight,
    SVGFactory feSpecularLighting,
    SVGFactory feSpotLight,
    SVGFactory feTile,
    SVGFactory feTurbulence,
    SVGFactory filter,
    SVGFactory foreignObject,
    SVGFactory g,
    SVGFactory image,
    SVGFactory line,
    SVGFactory linearGradient,
    SVGFactory marker,
    SVGFactory mask,
    SVGFactory metadata,
    SVGFactory path,
    SVGFactory pattern,
    SVGFactory polygon,
    SVGFactory polyline,
    SVGFactory radialGradient,
    SVGFactory rect,
    SVGFactory stop,
    SVGFactory svg,
    SVGFactory symbol,
    SVGFactory text,
    SVGFactory textPath,
    SVGFactory tspan,
    SVGFactory use,
    SVGFactory view,
  });
}

@JS()
@anonymous
class ReactDOM extends ReactHTML {
  external factory ReactDOM();
}

typedef Validator<T> = Validator<T>;
typedef Requireable<T> = Requireable<T>;
typedef ValidationMap<T> = ValidationMap<T>;
typedef WeakValidationMap<T> = dynamic;

@JS()
@anonymous
class ReactPropTypes {
  external dynamic get any;
  external set any(dynamic value);
  external dynamic get array;
  external set array(dynamic value);
  external dynamic get bool;
  external set bool(dynamic value);
  external dynamic get func;
  external set func(dynamic value);
  external dynamic get number;
  external set number(dynamic value);
  external dynamic get object;
  external set object(dynamic value);
  external dynamic get string;
  external set string(dynamic value);
  external dynamic get node;
  external set node(dynamic value);
  external dynamic get element;
  external set element(dynamic value);
  external dynamic get instanceOf;
  external set instanceOf(dynamic value);
  external dynamic get oneOf;
  external set oneOf(dynamic value);
  external dynamic get oneOfType;
  external set oneOfType(dynamic value);
  external dynamic get arrayOf;
  external set arrayOf(dynamic value);
  external dynamic get objectOf;
  external set objectOf(dynamic value);
  external dynamic get shape;
  external set shape(dynamic value);
  external dynamic get exact;
  external set exact(dynamic value);
  external factory ReactPropTypes({
    dynamic any,
    dynamic array,
    dynamic bool,
    dynamic func,
    dynamic number,
    dynamic object,
    dynamic string,
    dynamic node,
    dynamic element,
    dynamic instanceOf,
    dynamic oneOf,
    dynamic oneOfType,
    dynamic arrayOf,
    dynamic objectOf,
    dynamic shape,
    dynamic exact,
  });
}

@JS()
@anonymous
class ReactChildren {
  external dynamic map<T, C>(dynamic children, T Function(C child, num index) fn);
  external void forEach<C>(dynamic children, void Function(C child, num index) fn);
  external num count(dynamic children);
  external dynamic only<C>(C children);
  external List<Exclude<ReactNode, bool?>> toArray(dynamic children);
  external factory ReactChildren();
}

@JS()
@anonymous
class AbstractView {
  external StyleMedia get styleMedia;
  external set styleMedia(StyleMedia value);
  external Document get document;
  external set document(Document value);
  external factory AbstractView({
    StyleMedia styleMedia,
    Document document,
  });
}

@JS()
@anonymous
class Touch {
  external num get identifier;
  external set identifier(num value);
  external EventTarget get target;
  external set target(EventTarget value);
  external num get screenX;
  external set screenX(num value);
  external num get screenY;
  external set screenY(num value);
  external num get clientX;
  external set clientX(num value);
  external num get clientY;
  external set clientY(num value);
  external num get pageX;
  external set pageX(num value);
  external num get pageY;
  external set pageY(num value);
  external factory Touch({
    num identifier,
    EventTarget target,
    num screenX,
    num screenY,
    num clientX,
    num clientY,
    num pageX,
    num pageY,
  });
}

@JS()
@anonymous
class TouchList {
  external num get length;
  external set length(num value);
  external Touch item(num index);
  external Touch identifiedTouch(num identifier);
  external factory TouchList({
    num length,
  });
}

@JS()
@anonymous
class ErrorInfo {
  external String get componentStack;
  external set componentStack(String value);
  external factory ErrorInfo({
    String componentStack,
  });
}

typedef IsExactlyAny<T> = dynamic;
typedef ExactlyAnyPropertyKeys<T> = dynamic;
typedef NotExactlyAnyPropertyKeys<T> = Exclude<String, ExactlyAnyPropertyKeys<T>>;
typedef MergePropTypes<P, T> = dynamic;
typedef Defaultize<P, D> = dynamic;
typedef ReactManagedAttributes<C, P> = dynamic;

@JS()
@anonymous
class Element extends ReactElement<dynamic, dynamic> {
  external factory Element();
}

@JS()
@anonymous
class ElementClass extends Component<dynamic> {
  external ReactNode render();
  external factory ElementClass();
}

@JS()
@anonymous
class ElementAttributesProperty {
  external dynamic get props;
  external set props(dynamic value);
  external factory ElementAttributesProperty({
    dynamic props,
  });
}

@JS()
@anonymous
class ElementChildrenAttribute {
  external dynamic get children;
  external set children(dynamic value);
  external factory ElementChildrenAttribute({
    dynamic children,
  });
}

typedef LibraryManagedAttributes<C, P> = dynamic;

@JS()
@anonymous
class IntrinsicAttributes extends Attributes {
  external factory IntrinsicAttributes();
}

@JS()
@anonymous
class IntrinsicClassAttributes<T> extends ClassAttributes<T> {
  external factory IntrinsicClassAttributes();
}

@JS()
@anonymous
class IntrinsicElements {
  external DetailedHTMLProps<AnchorHTMLAttributes<AnchorElement>, AnchorElement> get a;
  external set a(DetailedHTMLProps<AnchorHTMLAttributes<AnchorElement>, AnchorElement> value);
  external DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> get abbr;
  external set abbr(DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> get address;
  external set address(DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<AreaHTMLAttributes<AreaElement>, AreaElement> get area;
  external set area(DetailedHTMLProps<AreaHTMLAttributes<AreaElement>, AreaElement> value);
  external DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> get article;
  external set article(DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> get aside;
  external set aside(DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<AudioHTMLAttributes<AudioElement>, AudioElement> get audio;
  external set audio(DetailedHTMLProps<AudioHTMLAttributes<AudioElement>, AudioElement> value);
  external DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> get b;
  external set b(DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<BaseHTMLAttributes<BaseElement>, BaseElement> get base;
  external set base(DetailedHTMLProps<BaseHTMLAttributes<BaseElement>, BaseElement> value);
  external DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> get bdi;
  external set bdi(DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> get bdo;
  external set bdo(DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> get big;
  external set big(DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<BlockquoteHTMLAttributes<HtmlElement>, HtmlElement> get blockquote;
  external set blockquote(DetailedHTMLProps<BlockquoteHTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<HTMLAttributes<BodyElement>, BodyElement> get body;
  external set body(DetailedHTMLProps<HTMLAttributes<BodyElement>, BodyElement> value);
  external DetailedHTMLProps<HTMLAttributes<BRElement>, BRElement> get br;
  external set br(DetailedHTMLProps<HTMLAttributes<BRElement>, BRElement> value);
  external DetailedHTMLProps<ButtonHTMLAttributes<ButtonElement>, ButtonElement> get button;
  external set button(DetailedHTMLProps<ButtonHTMLAttributes<ButtonElement>, ButtonElement> value);
  external DetailedHTMLProps<CanvasHTMLAttributes<CanvasElement>, CanvasElement> get canvas;
  external set canvas(DetailedHTMLProps<CanvasHTMLAttributes<CanvasElement>, CanvasElement> value);
  external DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> get caption;
  external set caption(DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> get cite;
  external set cite(DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> get code;
  external set code(DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<ColHTMLAttributes<TableColElement>, TableColElement> get col;
  external set col(DetailedHTMLProps<ColHTMLAttributes<TableColElement>, TableColElement> value);
  external DetailedHTMLProps<ColgroupHTMLAttributes<TableColElement>, TableColElement> get colgroup;
  external set colgroup(DetailedHTMLProps<ColgroupHTMLAttributes<TableColElement>, TableColElement> value);
  external DetailedHTMLProps<DataHTMLAttributes<HTMLDataElement>, HTMLDataElement> get data;
  external set data(DetailedHTMLProps<DataHTMLAttributes<HTMLDataElement>, HTMLDataElement> value);
  external DetailedHTMLProps<HTMLAttributes<DataListElement>, DataListElement> get datalist;
  external set datalist(DetailedHTMLProps<HTMLAttributes<DataListElement>, DataListElement> value);
  external DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> get dd;
  external set dd(DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<DelHTMLAttributes<HtmlElement>, HtmlElement> get del;
  external set del(DetailedHTMLProps<DelHTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<DetailsHTMLAttributes<HtmlElement>, HtmlElement> get details;
  external set details(DetailedHTMLProps<DetailsHTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> get dfn;
  external set dfn(DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<DialogHTMLAttributes<DialogElement>, DialogElement> get dialog;
  external set dialog(DetailedHTMLProps<DialogHTMLAttributes<DialogElement>, DialogElement> value);
  external DetailedHTMLProps<HTMLAttributes<DivElement>, DivElement> get div;
  external set div(DetailedHTMLProps<HTMLAttributes<DivElement>, DivElement> value);
  external DetailedHTMLProps<HTMLAttributes<DListElement>, DListElement> get dl;
  external set dl(DetailedHTMLProps<HTMLAttributes<DListElement>, DListElement> value);
  external DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> get dt;
  external set dt(DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> get em;
  external set em(DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<EmbedHTMLAttributes<EmbedElement>, EmbedElement> get embed;
  external set embed(DetailedHTMLProps<EmbedHTMLAttributes<EmbedElement>, EmbedElement> value);
  external DetailedHTMLProps<FieldsetHTMLAttributes<FieldSetElement>, FieldSetElement> get fieldset;
  external set fieldset(DetailedHTMLProps<FieldsetHTMLAttributes<FieldSetElement>, FieldSetElement> value);
  external DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> get figcaption;
  external set figcaption(DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> get figure;
  external set figure(DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> get footer;
  external set footer(DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<FormHTMLAttributes<FormElement>, FormElement> get form;
  external set form(DetailedHTMLProps<FormHTMLAttributes<FormElement>, FormElement> value);
  external DetailedHTMLProps<HTMLAttributes<HeadingElement>, HeadingElement> get h1;
  external set h1(DetailedHTMLProps<HTMLAttributes<HeadingElement>, HeadingElement> value);
  external DetailedHTMLProps<HTMLAttributes<HeadingElement>, HeadingElement> get h2;
  external set h2(DetailedHTMLProps<HTMLAttributes<HeadingElement>, HeadingElement> value);
  external DetailedHTMLProps<HTMLAttributes<HeadingElement>, HeadingElement> get h3;
  external set h3(DetailedHTMLProps<HTMLAttributes<HeadingElement>, HeadingElement> value);
  external DetailedHTMLProps<HTMLAttributes<HeadingElement>, HeadingElement> get h4;
  external set h4(DetailedHTMLProps<HTMLAttributes<HeadingElement>, HeadingElement> value);
  external DetailedHTMLProps<HTMLAttributes<HeadingElement>, HeadingElement> get h5;
  external set h5(DetailedHTMLProps<HTMLAttributes<HeadingElement>, HeadingElement> value);
  external DetailedHTMLProps<HTMLAttributes<HeadingElement>, HeadingElement> get h6;
  external set h6(DetailedHTMLProps<HTMLAttributes<HeadingElement>, HeadingElement> value);
  external DetailedHTMLProps<HTMLAttributes<HeadElement>, HeadElement> get head;
  external set head(DetailedHTMLProps<HTMLAttributes<HeadElement>, HeadElement> value);
  external DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> get header;
  external set header(DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> get hgroup;
  external set hgroup(DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<HTMLAttributes<HRElement>, HRElement> get hr;
  external set hr(DetailedHTMLProps<HTMLAttributes<HRElement>, HRElement> value);
  external DetailedHTMLProps<HtmlHTMLAttributes<HtmlHtmlElement>, HtmlHtmlElement> get html;
  external set html(DetailedHTMLProps<HtmlHTMLAttributes<HtmlHtmlElement>, HtmlHtmlElement> value);
  external DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> get i;
  external set i(DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<IframeHTMLAttributes<IFrameElement>, IFrameElement> get iframe;
  external set iframe(DetailedHTMLProps<IframeHTMLAttributes<IFrameElement>, IFrameElement> value);
  external DetailedHTMLProps<ImgHTMLAttributes<ImageElement>, ImageElement> get img;
  external set img(DetailedHTMLProps<ImgHTMLAttributes<ImageElement>, ImageElement> value);
  external DetailedHTMLProps<InputHTMLAttributes<InputElement>, InputElement> get input;
  external set input(DetailedHTMLProps<InputHTMLAttributes<InputElement>, InputElement> value);
  external DetailedHTMLProps<InsHTMLAttributes<ModElement>, ModElement> get ins;
  external set ins(DetailedHTMLProps<InsHTMLAttributes<ModElement>, ModElement> value);
  external DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> get kbd;
  external set kbd(DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<KeygenHTMLAttributes<HtmlElement>, HtmlElement> get keygen;
  external set keygen(DetailedHTMLProps<KeygenHTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<LabelHTMLAttributes<LabelElement>, LabelElement> get label;
  external set label(DetailedHTMLProps<LabelHTMLAttributes<LabelElement>, LabelElement> value);
  external DetailedHTMLProps<HTMLAttributes<LegendElement>, LegendElement> get legend;
  external set legend(DetailedHTMLProps<HTMLAttributes<LegendElement>, LegendElement> value);
  external DetailedHTMLProps<LiHTMLAttributes<LIElement>, LIElement> get li;
  external set li(DetailedHTMLProps<LiHTMLAttributes<LIElement>, LIElement> value);
  external DetailedHTMLProps<LinkHTMLAttributes<LinkElement>, LinkElement> get link;
  external set link(DetailedHTMLProps<LinkHTMLAttributes<LinkElement>, LinkElement> value);
  external DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> get main;
  external set main(DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<MapHTMLAttributes<MapElement>, MapElement> get map;
  external set map(DetailedHTMLProps<MapHTMLAttributes<MapElement>, MapElement> value);
  external DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> get mark;
  external set mark(DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<MenuHTMLAttributes<HtmlElement>, HtmlElement> get menu;
  external set menu(DetailedHTMLProps<MenuHTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> get menuitem;
  external set menuitem(DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<MetaHTMLAttributes<MetaElement>, MetaElement> get meta;
  external set meta(DetailedHTMLProps<MetaHTMLAttributes<MetaElement>, MetaElement> value);
  external DetailedHTMLProps<MeterHTMLAttributes<HtmlElement>, HtmlElement> get meter;
  external set meter(DetailedHTMLProps<MeterHTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> get nav;
  external set nav(DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> get noindex;
  external set noindex(DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> get noscript;
  external set noscript(DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<ObjectHTMLAttributes<ObjectElement>, ObjectElement> get object;
  external set object(DetailedHTMLProps<ObjectHTMLAttributes<ObjectElement>, ObjectElement> value);
  external DetailedHTMLProps<OlHTMLAttributes<OListElement>, OListElement> get ol;
  external set ol(DetailedHTMLProps<OlHTMLAttributes<OListElement>, OListElement> value);
  external DetailedHTMLProps<OptgroupHTMLAttributes<OptGroupElement>, OptGroupElement> get optgroup;
  external set optgroup(DetailedHTMLProps<OptgroupHTMLAttributes<OptGroupElement>, OptGroupElement> value);
  external DetailedHTMLProps<OptionHTMLAttributes<OptionElement>, OptionElement> get option;
  external set option(DetailedHTMLProps<OptionHTMLAttributes<OptionElement>, OptionElement> value);
  external DetailedHTMLProps<OutputHTMLAttributes<HtmlElement>, HtmlElement> get output;
  external set output(DetailedHTMLProps<OutputHTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<HTMLAttributes<ParagraphElement>, ParagraphElement> get p;
  external set p(DetailedHTMLProps<HTMLAttributes<ParagraphElement>, ParagraphElement> value);
  external DetailedHTMLProps<ParamHTMLAttributes<ParamElement>, ParamElement> get param;
  external set param(DetailedHTMLProps<ParamHTMLAttributes<ParamElement>, ParamElement> value);
  external DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> get picture;
  external set picture(DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<HTMLAttributes<PreElement>, PreElement> get pre;
  external set pre(DetailedHTMLProps<HTMLAttributes<PreElement>, PreElement> value);
  external DetailedHTMLProps<ProgressHTMLAttributes<ProgressElement>, ProgressElement> get progress;
  external set progress(DetailedHTMLProps<ProgressHTMLAttributes<ProgressElement>, ProgressElement> value);
  external DetailedHTMLProps<QuoteHTMLAttributes<QuoteElement>, QuoteElement> get q;
  external set q(DetailedHTMLProps<QuoteHTMLAttributes<QuoteElement>, QuoteElement> value);
  external DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> get rp;
  external set rp(DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> get rt;
  external set rt(DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> get ruby;
  external set ruby(DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> get s;
  external set s(DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> get samp;
  external set samp(DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<SlotHTMLAttributes<HTMLSlotElement>, HTMLSlotElement> get slot;
  external set slot(DetailedHTMLProps<SlotHTMLAttributes<HTMLSlotElement>, HTMLSlotElement> value);
  external DetailedHTMLProps<ScriptHTMLAttributes<ScriptElement>, ScriptElement> get script;
  external set script(DetailedHTMLProps<ScriptHTMLAttributes<ScriptElement>, ScriptElement> value);
  external DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> get section;
  external set section(DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<SelectHTMLAttributes<SelectElement>, SelectElement> get select;
  external set select(DetailedHTMLProps<SelectHTMLAttributes<SelectElement>, SelectElement> value);
  external DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> get small;
  external set small(DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<SourceHTMLAttributes<SourceElement>, SourceElement> get source;
  external set source(DetailedHTMLProps<SourceHTMLAttributes<SourceElement>, SourceElement> value);
  external DetailedHTMLProps<HTMLAttributes<SpanElement>, SpanElement> get span;
  external set span(DetailedHTMLProps<HTMLAttributes<SpanElement>, SpanElement> value);
  external DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> get strong;
  external set strong(DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<StyleHTMLAttributes<StyleElement>, StyleElement> get style;
  external set style(DetailedHTMLProps<StyleHTMLAttributes<StyleElement>, StyleElement> value);
  external DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> get sub;
  external set sub(DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> get summary;
  external set summary(DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> get sup;
  external set sup(DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<TableHTMLAttributes<TableElement>, TableElement> get table;
  external set table(DetailedHTMLProps<TableHTMLAttributes<TableElement>, TableElement> value);
  external DetailedHTMLProps<HTMLAttributes<TemplateElement>, TemplateElement> get template;
  external set template(DetailedHTMLProps<HTMLAttributes<TemplateElement>, TemplateElement> value);
  external DetailedHTMLProps<HTMLAttributes<TableSectionElement>, TableSectionElement> get tbody;
  external set tbody(DetailedHTMLProps<HTMLAttributes<TableSectionElement>, TableSectionElement> value);
  external DetailedHTMLProps<TdHTMLAttributes<HTMLTableDataCellElement>, HTMLTableDataCellElement> get td;
  external set td(DetailedHTMLProps<TdHTMLAttributes<HTMLTableDataCellElement>, HTMLTableDataCellElement> value);
  external DetailedHTMLProps<TextareaHTMLAttributes<TextAreaElement>, TextAreaElement> get textarea;
  external set textarea(DetailedHTMLProps<TextareaHTMLAttributes<TextAreaElement>, TextAreaElement> value);
  external DetailedHTMLProps<HTMLAttributes<TableSectionElement>, TableSectionElement> get tfoot;
  external set tfoot(DetailedHTMLProps<HTMLAttributes<TableSectionElement>, TableSectionElement> value);
  external DetailedHTMLProps<ThHTMLAttributes<HTMLTableHeaderCellElement>, HTMLTableHeaderCellElement> get th;
  external set th(DetailedHTMLProps<ThHTMLAttributes<HTMLTableHeaderCellElement>, HTMLTableHeaderCellElement> value);
  external DetailedHTMLProps<HTMLAttributes<TableSectionElement>, TableSectionElement> get thead;
  external set thead(DetailedHTMLProps<HTMLAttributes<TableSectionElement>, TableSectionElement> value);
  external DetailedHTMLProps<TimeHTMLAttributes<HtmlElement>, HtmlElement> get time;
  external set time(DetailedHTMLProps<TimeHTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<HTMLAttributes<TitleElement>, TitleElement> get title;
  external set title(DetailedHTMLProps<HTMLAttributes<TitleElement>, TitleElement> value);
  external DetailedHTMLProps<HTMLAttributes<TableRowElement>, TableRowElement> get tr;
  external set tr(DetailedHTMLProps<HTMLAttributes<TableRowElement>, TableRowElement> value);
  external DetailedHTMLProps<TrackHTMLAttributes<TrackElement>, TrackElement> get track;
  external set track(DetailedHTMLProps<TrackHTMLAttributes<TrackElement>, TrackElement> value);
  external DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> get u;
  external set u(DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<HTMLAttributes<UListElement>, UListElement> get ul;
  external set ul(DetailedHTMLProps<HTMLAttributes<UListElement>, UListElement> value);
  external DetailedHTMLProps<VideoHTMLAttributes<VideoElement>, VideoElement> get video;
  external set video(DetailedHTMLProps<VideoHTMLAttributes<VideoElement>, VideoElement> value);
  external DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> get wbr;
  external set wbr(DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> value);
  external DetailedHTMLProps<WebViewHTMLAttributes<HTMLWebViewElement>, HTMLWebViewElement> get webview;
  external set webview(DetailedHTMLProps<WebViewHTMLAttributes<HTMLWebViewElement>, HTMLWebViewElement> value);
  external SVGProps<SvgSvgElement> get svg;
  external set svg(SVGProps<SvgSvgElement> value);
  external SVGProps<SvgElement> get animate;
  external set animate(SVGProps<SvgElement> value);
  external SVGProps<SvgElement> get animateMotion;
  external set animateMotion(SVGProps<SvgElement> value);
  external SVGProps<SvgElement> get animateTransform;
  external set animateTransform(SVGProps<SvgElement> value);
  external SVGProps<CircleElement> get circle;
  external set circle(SVGProps<CircleElement> value);
  external SVGProps<ClipPathElement> get clipPath;
  external set clipPath(SVGProps<ClipPathElement> value);
  external SVGProps<DefsElement> get defs;
  external set defs(SVGProps<DefsElement> value);
  external SVGProps<DescElement> get desc;
  external set desc(SVGProps<DescElement> value);
  external SVGProps<EllipseElement> get ellipse;
  external set ellipse(SVGProps<EllipseElement> value);
  external SVGProps<FEBlendElement> get feBlend;
  external set feBlend(SVGProps<FEBlendElement> value);
  external SVGProps<FEColorMatrixElement> get feColorMatrix;
  external set feColorMatrix(SVGProps<FEColorMatrixElement> value);
  external SVGProps<FEComponentTransferElement> get feComponentTransfer;
  external set feComponentTransfer(SVGProps<FEComponentTransferElement> value);
  external SVGProps<FECompositeElement> get feComposite;
  external set feComposite(SVGProps<FECompositeElement> value);
  external SVGProps<FEConvolveMatrixElement> get feConvolveMatrix;
  external set feConvolveMatrix(SVGProps<FEConvolveMatrixElement> value);
  external SVGProps<FEDiffuseLightingElement> get feDiffuseLighting;
  external set feDiffuseLighting(SVGProps<FEDiffuseLightingElement> value);
  external SVGProps<FEDisplacementMapElement> get feDisplacementMap;
  external set feDisplacementMap(SVGProps<FEDisplacementMapElement> value);
  external SVGProps<FEDistantLightElement> get feDistantLight;
  external set feDistantLight(SVGProps<FEDistantLightElement> value);
  external SVGProps<SVGFEDropShadowElement> get feDropShadow;
  external set feDropShadow(SVGProps<SVGFEDropShadowElement> value);
  external SVGProps<FEFloodElement> get feFlood;
  external set feFlood(SVGProps<FEFloodElement> value);
  external SVGProps<FEFuncAElement> get feFuncA;
  external set feFuncA(SVGProps<FEFuncAElement> value);
  external SVGProps<FEFuncBElement> get feFuncB;
  external set feFuncB(SVGProps<FEFuncBElement> value);
  external SVGProps<FEFuncGElement> get feFuncG;
  external set feFuncG(SVGProps<FEFuncGElement> value);
  external SVGProps<FEFuncRElement> get feFuncR;
  external set feFuncR(SVGProps<FEFuncRElement> value);
  external SVGProps<FEGaussianBlurElement> get feGaussianBlur;
  external set feGaussianBlur(SVGProps<FEGaussianBlurElement> value);
  external SVGProps<FEImageElement> get feImage;
  external set feImage(SVGProps<FEImageElement> value);
  external SVGProps<FEMergeElement> get feMerge;
  external set feMerge(SVGProps<FEMergeElement> value);
  external SVGProps<FEMergeNodeElement> get feMergeNode;
  external set feMergeNode(SVGProps<FEMergeNodeElement> value);
  external SVGProps<FEMorphologyElement> get feMorphology;
  external set feMorphology(SVGProps<FEMorphologyElement> value);
  external SVGProps<FEOffsetElement> get feOffset;
  external set feOffset(SVGProps<FEOffsetElement> value);
  external SVGProps<FEPointLightElement> get fePointLight;
  external set fePointLight(SVGProps<FEPointLightElement> value);
  external SVGProps<FESpecularLightingElement> get feSpecularLighting;
  external set feSpecularLighting(SVGProps<FESpecularLightingElement> value);
  external SVGProps<FESpotLightElement> get feSpotLight;
  external set feSpotLight(SVGProps<FESpotLightElement> value);
  external SVGProps<FETileElement> get feTile;
  external set feTile(SVGProps<FETileElement> value);
  external SVGProps<FETurbulenceElement> get feTurbulence;
  external set feTurbulence(SVGProps<FETurbulenceElement> value);
  external SVGProps<FilterElement> get filter;
  external set filter(SVGProps<FilterElement> value);
  external SVGProps<ForeignObjectElement> get foreignObject;
  external set foreignObject(SVGProps<ForeignObjectElement> value);
  external SVGProps<GElement> get g;
  external set g(SVGProps<GElement> value);
  external SVGProps<ImageElement> get image;
  external set image(SVGProps<ImageElement> value);
  external SVGProps<LineElement> get line;
  external set line(SVGProps<LineElement> value);
  external SVGProps<LinearGradientElement> get linearGradient;
  external set linearGradient(SVGProps<LinearGradientElement> value);
  external SVGProps<MarkerElement> get marker;
  external set marker(SVGProps<MarkerElement> value);
  external SVGProps<MaskElement> get mask;
  external set mask(SVGProps<MaskElement> value);
  external SVGProps<MetadataElement> get metadata;
  external set metadata(SVGProps<MetadataElement> value);
  external SVGProps<SvgElement> get mpath;
  external set mpath(SVGProps<SvgElement> value);
  external SVGProps<PathElement> get path;
  external set path(SVGProps<PathElement> value);
  external SVGProps<PatternElement> get pattern;
  external set pattern(SVGProps<PatternElement> value);
  external SVGProps<PolygonElement> get polygon;
  external set polygon(SVGProps<PolygonElement> value);
  external SVGProps<PolylineElement> get polyline;
  external set polyline(SVGProps<PolylineElement> value);
  external SVGProps<RadialGradientElement> get radialGradient;
  external set radialGradient(SVGProps<RadialGradientElement> value);
  external SVGProps<RectElement> get rect;
  external set rect(SVGProps<RectElement> value);
  external SVGProps<StopElement> get stop;
  external set stop(SVGProps<StopElement> value);
  external SVGProps<SymbolElement> get symbol;
  external set symbol(SVGProps<SymbolElement> value);
  external SVGProps<TextElement> get text;
  external set text(SVGProps<TextElement> value);
  external SVGProps<TextPathElement> get textPath;
  external set textPath(SVGProps<TextPathElement> value);
  external SVGProps<TSpanElement> get tspan;
  external set tspan(SVGProps<TSpanElement> value);
  external SVGProps<UseElement> get use;
  external set use(SVGProps<UseElement> value);
  external SVGProps<ViewElement> get view;
  external set view(SVGProps<ViewElement> value);
  external factory IntrinsicElements({
    DetailedHTMLProps<AnchorHTMLAttributes<AnchorElement>, AnchorElement> a,
    DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> abbr,
    DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> address,
    DetailedHTMLProps<AreaHTMLAttributes<AreaElement>, AreaElement> area,
    DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> article,
    DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> aside,
    DetailedHTMLProps<AudioHTMLAttributes<AudioElement>, AudioElement> audio,
    DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> b,
    DetailedHTMLProps<BaseHTMLAttributes<BaseElement>, BaseElement> base,
    DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> bdi,
    DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> bdo,
    DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> big,
    DetailedHTMLProps<BlockquoteHTMLAttributes<HtmlElement>, HtmlElement> blockquote,
    DetailedHTMLProps<HTMLAttributes<BodyElement>, BodyElement> body,
    DetailedHTMLProps<HTMLAttributes<BRElement>, BRElement> br,
    DetailedHTMLProps<ButtonHTMLAttributes<ButtonElement>, ButtonElement> button,
    DetailedHTMLProps<CanvasHTMLAttributes<CanvasElement>, CanvasElement> canvas,
    DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> caption,
    DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> cite,
    DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> code,
    DetailedHTMLProps<ColHTMLAttributes<TableColElement>, TableColElement> col,
    DetailedHTMLProps<ColgroupHTMLAttributes<TableColElement>, TableColElement> colgroup,
    DetailedHTMLProps<DataHTMLAttributes<HTMLDataElement>, HTMLDataElement> data,
    DetailedHTMLProps<HTMLAttributes<DataListElement>, DataListElement> datalist,
    DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> dd,
    DetailedHTMLProps<DelHTMLAttributes<HtmlElement>, HtmlElement> del,
    DetailedHTMLProps<DetailsHTMLAttributes<HtmlElement>, HtmlElement> details,
    DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> dfn,
    DetailedHTMLProps<DialogHTMLAttributes<DialogElement>, DialogElement> dialog,
    DetailedHTMLProps<HTMLAttributes<DivElement>, DivElement> div,
    DetailedHTMLProps<HTMLAttributes<DListElement>, DListElement> dl,
    DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> dt,
    DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> em,
    DetailedHTMLProps<EmbedHTMLAttributes<EmbedElement>, EmbedElement> embed,
    DetailedHTMLProps<FieldsetHTMLAttributes<FieldSetElement>, FieldSetElement> fieldset,
    DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> figcaption,
    DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> figure,
    DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> footer,
    DetailedHTMLProps<FormHTMLAttributes<FormElement>, FormElement> form,
    DetailedHTMLProps<HTMLAttributes<HeadingElement>, HeadingElement> h1,
    DetailedHTMLProps<HTMLAttributes<HeadingElement>, HeadingElement> h2,
    DetailedHTMLProps<HTMLAttributes<HeadingElement>, HeadingElement> h3,
    DetailedHTMLProps<HTMLAttributes<HeadingElement>, HeadingElement> h4,
    DetailedHTMLProps<HTMLAttributes<HeadingElement>, HeadingElement> h5,
    DetailedHTMLProps<HTMLAttributes<HeadingElement>, HeadingElement> h6,
    DetailedHTMLProps<HTMLAttributes<HeadElement>, HeadElement> head,
    DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> header,
    DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> hgroup,
    DetailedHTMLProps<HTMLAttributes<HRElement>, HRElement> hr,
    DetailedHTMLProps<HtmlHTMLAttributes<HtmlHtmlElement>, HtmlHtmlElement> html,
    DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> i,
    DetailedHTMLProps<IframeHTMLAttributes<IFrameElement>, IFrameElement> iframe,
    DetailedHTMLProps<ImgHTMLAttributes<ImageElement>, ImageElement> img,
    DetailedHTMLProps<InputHTMLAttributes<InputElement>, InputElement> input,
    DetailedHTMLProps<InsHTMLAttributes<ModElement>, ModElement> ins,
    DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> kbd,
    DetailedHTMLProps<KeygenHTMLAttributes<HtmlElement>, HtmlElement> keygen,
    DetailedHTMLProps<LabelHTMLAttributes<LabelElement>, LabelElement> label,
    DetailedHTMLProps<HTMLAttributes<LegendElement>, LegendElement> legend,
    DetailedHTMLProps<LiHTMLAttributes<LIElement>, LIElement> li,
    DetailedHTMLProps<LinkHTMLAttributes<LinkElement>, LinkElement> link,
    DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> main,
    DetailedHTMLProps<MapHTMLAttributes<MapElement>, MapElement> map,
    DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> mark,
    DetailedHTMLProps<MenuHTMLAttributes<HtmlElement>, HtmlElement> menu,
    DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> menuitem,
    DetailedHTMLProps<MetaHTMLAttributes<MetaElement>, MetaElement> meta,
    DetailedHTMLProps<MeterHTMLAttributes<HtmlElement>, HtmlElement> meter,
    DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> nav,
    DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> noindex,
    DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> noscript,
    DetailedHTMLProps<ObjectHTMLAttributes<ObjectElement>, ObjectElement> object,
    DetailedHTMLProps<OlHTMLAttributes<OListElement>, OListElement> ol,
    DetailedHTMLProps<OptgroupHTMLAttributes<OptGroupElement>, OptGroupElement> optgroup,
    DetailedHTMLProps<OptionHTMLAttributes<OptionElement>, OptionElement> option,
    DetailedHTMLProps<OutputHTMLAttributes<HtmlElement>, HtmlElement> output,
    DetailedHTMLProps<HTMLAttributes<ParagraphElement>, ParagraphElement> p,
    DetailedHTMLProps<ParamHTMLAttributes<ParamElement>, ParamElement> param,
    DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> picture,
    DetailedHTMLProps<HTMLAttributes<PreElement>, PreElement> pre,
    DetailedHTMLProps<ProgressHTMLAttributes<ProgressElement>, ProgressElement> progress,
    DetailedHTMLProps<QuoteHTMLAttributes<QuoteElement>, QuoteElement> q,
    DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> rp,
    DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> rt,
    DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> ruby,
    DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> s,
    DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> samp,
    DetailedHTMLProps<SlotHTMLAttributes<HTMLSlotElement>, HTMLSlotElement> slot,
    DetailedHTMLProps<ScriptHTMLAttributes<ScriptElement>, ScriptElement> script,
    DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> section,
    DetailedHTMLProps<SelectHTMLAttributes<SelectElement>, SelectElement> select,
    DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> small,
    DetailedHTMLProps<SourceHTMLAttributes<SourceElement>, SourceElement> source,
    DetailedHTMLProps<HTMLAttributes<SpanElement>, SpanElement> span,
    DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> strong,
    DetailedHTMLProps<StyleHTMLAttributes<StyleElement>, StyleElement> style,
    DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> sub,
    DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> summary,
    DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> sup,
    DetailedHTMLProps<TableHTMLAttributes<TableElement>, TableElement> table,
    DetailedHTMLProps<HTMLAttributes<TemplateElement>, TemplateElement> template,
    DetailedHTMLProps<HTMLAttributes<TableSectionElement>, TableSectionElement> tbody,
    DetailedHTMLProps<TdHTMLAttributes<HTMLTableDataCellElement>, HTMLTableDataCellElement> td,
    DetailedHTMLProps<TextareaHTMLAttributes<TextAreaElement>, TextAreaElement> textarea,
    DetailedHTMLProps<HTMLAttributes<TableSectionElement>, TableSectionElement> tfoot,
    DetailedHTMLProps<ThHTMLAttributes<HTMLTableHeaderCellElement>, HTMLTableHeaderCellElement> th,
    DetailedHTMLProps<HTMLAttributes<TableSectionElement>, TableSectionElement> thead,
    DetailedHTMLProps<TimeHTMLAttributes<HtmlElement>, HtmlElement> time,
    DetailedHTMLProps<HTMLAttributes<TitleElement>, TitleElement> title,
    DetailedHTMLProps<HTMLAttributes<TableRowElement>, TableRowElement> tr,
    DetailedHTMLProps<TrackHTMLAttributes<TrackElement>, TrackElement> track,
    DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> u,
    DetailedHTMLProps<HTMLAttributes<UListElement>, UListElement> ul,
    DetailedHTMLProps<VideoHTMLAttributes<VideoElement>, VideoElement> video,
    DetailedHTMLProps<HTMLAttributes<HtmlElement>, HtmlElement> wbr,
    DetailedHTMLProps<WebViewHTMLAttributes<HTMLWebViewElement>, HTMLWebViewElement> webview,
    SVGProps<SvgSvgElement> svg,
    SVGProps<SvgElement> animate,
    SVGProps<SvgElement> animateMotion,
    SVGProps<SvgElement> animateTransform,
    SVGProps<CircleElement> circle,
    SVGProps<ClipPathElement> clipPath,
    SVGProps<DefsElement> defs,
    SVGProps<DescElement> desc,
    SVGProps<EllipseElement> ellipse,
    SVGProps<FEBlendElement> feBlend,
    SVGProps<FEColorMatrixElement> feColorMatrix,
    SVGProps<FEComponentTransferElement> feComponentTransfer,
    SVGProps<FECompositeElement> feComposite,
    SVGProps<FEConvolveMatrixElement> feConvolveMatrix,
    SVGProps<FEDiffuseLightingElement> feDiffuseLighting,
    SVGProps<FEDisplacementMapElement> feDisplacementMap,
    SVGProps<FEDistantLightElement> feDistantLight,
    SVGProps<SVGFEDropShadowElement> feDropShadow,
    SVGProps<FEFloodElement> feFlood,
    SVGProps<FEFuncAElement> feFuncA,
    SVGProps<FEFuncBElement> feFuncB,
    SVGProps<FEFuncGElement> feFuncG,
    SVGProps<FEFuncRElement> feFuncR,
    SVGProps<FEGaussianBlurElement> feGaussianBlur,
    SVGProps<FEImageElement> feImage,
    SVGProps<FEMergeElement> feMerge,
    SVGProps<FEMergeNodeElement> feMergeNode,
    SVGProps<FEMorphologyElement> feMorphology,
    SVGProps<FEOffsetElement> feOffset,
    SVGProps<FEPointLightElement> fePointLight,
    SVGProps<FESpecularLightingElement> feSpecularLighting,
    SVGProps<FESpotLightElement> feSpotLight,
    SVGProps<FETileElement> feTile,
    SVGProps<FETurbulenceElement> feTurbulence,
    SVGProps<FilterElement> filter,
    SVGProps<ForeignObjectElement> foreignObject,
    SVGProps<GElement> g,
    SVGProps<ImageElement> image,
    SVGProps<LineElement> line,
    SVGProps<LinearGradientElement> linearGradient,
    SVGProps<MarkerElement> marker,
    SVGProps<MaskElement> mask,
    SVGProps<MetadataElement> metadata,
    SVGProps<SvgElement> mpath,
    SVGProps<PathElement> path,
    SVGProps<PatternElement> pattern,
    SVGProps<PolygonElement> polygon,
    SVGProps<PolylineElement> polyline,
    SVGProps<RadialGradientElement> radialGradient,
    SVGProps<RectElement> rect,
    SVGProps<StopElement> stop,
    SVGProps<SymbolElement> symbol,
    SVGProps<TextElement> text,
    SVGProps<TextPathElement> textPath,
    SVGProps<TSpanElement> tspan,
    SVGProps<UseElement> use,
    SVGProps<ViewElement> view,
  });
}

@JS()
@anonymous
class IFragment {
  external ReactNode? get children;
  external set children(ReactNode? value);
}

@JS()
@anonymous
class IStrictMode {
  external ReactNode? get children;
  external set children(ReactNode? value);
}

typedef Error = dynamic;
typedef Exclude<T, U> = dynamic;
typedef HTMLDataElement = dynamic;
typedef HTMLSlotElement = dynamic;
typedef HTMLTableDataCellElement = dynamic;
typedef HTMLTableHeaderCellElement = dynamic;
typedef HTMLWebViewElement = dynamic;
typedef NonNullable<T> = dynamic;
typedef Partial<T> = dynamic;
typedef Properties<T> = dynamic;
typedef Readonly<T> = dynamic;
typedef SchedulerInteraction = dynamic;
typedef Set<T> = dynamic;
