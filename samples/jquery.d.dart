@JS()
library samples.jquery.d.ts;

// ignore_for_file: non_constant_identifier_names, private_optional_parameter, unused_element
import 'package:js/js.dart';

@JS()
@anonymous
class JQueryAjaxSettings {
  external dynamic get accepts;
  external set accepts(dynamic value);
  external bool? get async;
  external set async(bool? value);
  external dynamic beforeSend(JQueryXHR jqXHR, JQueryAjaxSettings settings);
  external bool? get cache;
  external set cache(bool? value);
  external dynamic complete(JQueryXHR jqXHR, String textStatus);
  external dynamic get contents;
  external set contents(dynamic value);
  external dynamic get contentType;
  external set contentType(dynamic value);
  external dynamic get context;
  external set context(dynamic value);
  external dynamic get converters;
  external set converters(dynamic value);
  external bool? get crossDomain;
  external set crossDomain(bool? value);
  external dynamic get data;
  external set data(dynamic value);
  external dynamic dataFilter(dynamic data, dynamic ty);
  external String? get dataType;
  external set dataType(String? value);
  external dynamic error(JQueryXHR jqXHR, String textStatus, String errorThrown);
  external bool? get global;
  external set global(bool? value);
  external dynamic get headers;
  external set headers(dynamic value);
  external bool? get ifModified;
  external set ifModified(bool? value);
  external bool? get isLocal;
  external set isLocal(bool? value);
  external dynamic get jsonp;
  external set jsonp(dynamic value);
  external dynamic get jsonpCallback;
  external set jsonpCallback(dynamic value);
  external String? get method;
  external set method(String? value);
  external String? get mimeType;
  external set mimeType(String? value);
  external String? get password;
  external set password(String? value);
  external bool? get processData;
  external set processData(bool? value);
  external String? get scriptCharset;
  external set scriptCharset(String? value);
  external dynamic get statusCode;
  external set statusCode(dynamic value);
  external dynamic success(dynamic data, String textStatus, JQueryXHR jqXHR);
  external num? get timeout;
  external set timeout(num? value);
  external bool? get traditional;
  external set traditional(bool? value);
  external String? get type;
  external set type(String? value);
  external String? get url;
  external set url(String? value);
  external String? get username;
  external set username(String? value);
  external dynamic get xhr;
  external set xhr(dynamic value);
  external dynamic get xhrFields;
  external set xhrFields(dynamic value);
  external factory JQueryAjaxSettings({
    dynamic accepts,
    bool? async,
    bool? cache,
    dynamic contents,
    dynamic contentType,
    dynamic context,
    dynamic converters,
    bool? crossDomain,
    dynamic data,
    String? dataType,
    bool? global,
    dynamic headers,
    bool? ifModified,
    bool? isLocal,
    dynamic jsonp,
    dynamic jsonpCallback,
    String? method,
    String? mimeType,
    String? password,
    bool? processData,
    String? scriptCharset,
    dynamic statusCode,
    num? timeout,
    bool? traditional,
    String? type,
    String? url,
    String? username,
    dynamic xhr,
    dynamic xhrFields,
  });
}

@JS()
@anonymous
class JQueryXHR extends XMLHttpRequest {
  external dynamic overrideMimeType(String mimeType);
  external void abort(String statusText);
  external JQueryPromise<R> then<R>(dynamic Function(dynamic data, String textStatus, JQueryXHR jqXHR) doneCallback,
      void Function(JQueryXHR jqXHR, String textStatus, dynamic errorThrown) failCallback);
  external dynamic get responseJSON;
  external set responseJSON(dynamic value);
  external void error(JQueryXHR xhr, String textStatus, String errorThrown);
  external factory JQueryXHR({
    dynamic responseJSON,
  });
}

@JS()
@anonymous
class JQueryCallback {
  external JQueryCallback add(Function callbacks);
  external JQueryCallback disable();
  external bool disabled();
  external JQueryCallback empty();
  external JQueryCallback fire([
    dynamic arguments1,
    dynamic arguments2,
    dynamic arguments3,
    dynamic arguments4,
    dynamic arguments5,
    dynamic arguments6,
    dynamic arguments7,
    dynamic arguments8,
    dynamic arguments9,
  ]);
  external bool fired();
  external JQueryCallback fireWith(dynamic context, List<dynamic> args);
  external bool has(Function callback);
  external JQueryCallback lock();
  external bool locked();
  external JQueryCallback remove(Function callbacks);
  external factory JQueryCallback();
}

@JS()
@anonymous
class JQueryGenericPromise<T> {
  external JQueryPromise<U> then<U>(
      dynamic Function(
    T value, [
    dynamic values1,
    dynamic values2,
    dynamic values3,
    dynamic values4,
    dynamic values5,
    dynamic values6,
    dynamic values7,
    dynamic values8,
    dynamic values9,
  ])
          doneFilter,
      dynamic Function([
    dynamic reasons1,
    dynamic reasons2,
    dynamic reasons3,
    dynamic reasons4,
    dynamic reasons5,
    dynamic reasons6,
    dynamic reasons7,
    dynamic reasons8,
    dynamic reasons9,
  ])
          failFilter,
      dynamic Function([
    dynamic progression1,
    dynamic progression2,
    dynamic progression3,
    dynamic progression4,
    dynamic progression5,
    dynamic progression6,
    dynamic progression7,
    dynamic progression8,
    dynamic progression9,
  ])
          progressFilter);
  external factory JQueryGenericPromise();
}

@JS()
@anonymous
class JQueryPromiseCallback<T> {
  external factory JQueryPromiseCallback();
}

@JS()
@anonymous
class JQueryPromiseOperator<T, U> {
  external factory JQueryPromiseOperator();
}

@JS()
@anonymous
class JQueryPromise<T> extends JQueryGenericPromise<T> {
  external String state();
  external JQueryPromise<T> always(
    dynamic alwaysCallback1, [
    Array<dynamic>? alwaysCallbackN1,
    Array<dynamic>? alwaysCallbackN2,
    Array<dynamic>? alwaysCallbackN3,
    Array<dynamic>? alwaysCallbackN4,
    Array<dynamic>? alwaysCallbackN5,
    Array<dynamic>? alwaysCallbackN6,
    Array<dynamic>? alwaysCallbackN7,
    Array<dynamic>? alwaysCallbackN8,
    Array<dynamic>? alwaysCallbackN9,
  ]);
  external JQueryPromise<T> done(
    dynamic doneCallback1, [
    Array<dynamic>? doneCallbackN1,
    Array<dynamic>? doneCallbackN2,
    Array<dynamic>? doneCallbackN3,
    Array<dynamic>? doneCallbackN4,
    Array<dynamic>? doneCallbackN5,
    Array<dynamic>? doneCallbackN6,
    Array<dynamic>? doneCallbackN7,
    Array<dynamic>? doneCallbackN8,
    Array<dynamic>? doneCallbackN9,
  ]);
  external JQueryPromise<T> fail(
    dynamic failCallback1, [
    Array<dynamic>? failCallbackN1,
    Array<dynamic>? failCallbackN2,
    Array<dynamic>? failCallbackN3,
    Array<dynamic>? failCallbackN4,
    Array<dynamic>? failCallbackN5,
    Array<dynamic>? failCallbackN6,
    Array<dynamic>? failCallbackN7,
    Array<dynamic>? failCallbackN8,
    Array<dynamic>? failCallbackN9,
  ]);
  external JQueryPromise<T> progress(
    dynamic progressCallback1, [
    Array<dynamic>? progressCallbackN1,
    Array<dynamic>? progressCallbackN2,
    Array<dynamic>? progressCallbackN3,
    Array<dynamic>? progressCallbackN4,
    Array<dynamic>? progressCallbackN5,
    Array<dynamic>? progressCallbackN6,
    Array<dynamic>? progressCallbackN7,
    Array<dynamic>? progressCallbackN8,
    Array<dynamic>? progressCallbackN9,
  ]);
  external JQueryPromise<dynamic> pipe(dynamic Function(dynamic x) doneFilter, dynamic Function(dynamic x) failFilter,
      dynamic Function(dynamic x) progressFilter);
  external JQueryPromise<T> promise(dynamic target);
  external factory JQueryPromise();
}

@JS()
@anonymous
class JQueryDeferred<T> extends JQueryGenericPromise<T> {
  external String state();
  external JQueryDeferred<T> always(
    dynamic alwaysCallback1, [
    Array<dynamic>? alwaysCallbackN1,
    Array<dynamic>? alwaysCallbackN2,
    Array<dynamic>? alwaysCallbackN3,
    Array<dynamic>? alwaysCallbackN4,
    Array<dynamic>? alwaysCallbackN5,
    Array<dynamic>? alwaysCallbackN6,
    Array<dynamic>? alwaysCallbackN7,
    Array<dynamic>? alwaysCallbackN8,
    Array<dynamic>? alwaysCallbackN9,
  ]);
  external JQueryDeferred<T> done(
    dynamic doneCallback1, [
    Array<dynamic>? doneCallbackN1,
    Array<dynamic>? doneCallbackN2,
    Array<dynamic>? doneCallbackN3,
    Array<dynamic>? doneCallbackN4,
    Array<dynamic>? doneCallbackN5,
    Array<dynamic>? doneCallbackN6,
    Array<dynamic>? doneCallbackN7,
    Array<dynamic>? doneCallbackN8,
    Array<dynamic>? doneCallbackN9,
  ]);
  external JQueryDeferred<T> fail(
    dynamic failCallback1, [
    Array<dynamic>? failCallbackN1,
    Array<dynamic>? failCallbackN2,
    Array<dynamic>? failCallbackN3,
    Array<dynamic>? failCallbackN4,
    Array<dynamic>? failCallbackN5,
    Array<dynamic>? failCallbackN6,
    Array<dynamic>? failCallbackN7,
    Array<dynamic>? failCallbackN8,
    Array<dynamic>? failCallbackN9,
  ]);
  external JQueryDeferred<T> progress(
    dynamic progressCallback1, [
    Array<dynamic>? progressCallbackN1,
    Array<dynamic>? progressCallbackN2,
    Array<dynamic>? progressCallbackN3,
    Array<dynamic>? progressCallbackN4,
    Array<dynamic>? progressCallbackN5,
    Array<dynamic>? progressCallbackN6,
    Array<dynamic>? progressCallbackN7,
    Array<dynamic>? progressCallbackN8,
    Array<dynamic>? progressCallbackN9,
  ]);
  external JQueryDeferred<T> notify(
    dynamic value, [
    dynamic args1,
    dynamic args2,
    dynamic args3,
    dynamic args4,
    dynamic args5,
    dynamic args6,
    dynamic args7,
    dynamic args8,
    dynamic args9,
  ]);
  external JQueryDeferred<T> notifyWith(dynamic context, List<dynamic> args);
  external JQueryDeferred<T> reject(
    dynamic value, [
    dynamic args1,
    dynamic args2,
    dynamic args3,
    dynamic args4,
    dynamic args5,
    dynamic args6,
    dynamic args7,
    dynamic args8,
    dynamic args9,
  ]);
  external JQueryDeferred<T> rejectWith(dynamic context, List<dynamic> args);
  external JQueryDeferred<T> resolve(
    T value, [
    dynamic args1,
    dynamic args2,
    dynamic args3,
    dynamic args4,
    dynamic args5,
    dynamic args6,
    dynamic args7,
    dynamic args8,
    dynamic args9,
  ]);
  external JQueryDeferred<T> resolveWith(dynamic context, List<T> args);
  external JQueryPromise<T> promise(dynamic target);
  external JQueryPromise<dynamic> pipe(dynamic Function(dynamic x) doneFilter, dynamic Function(dynamic x) failFilter,
      dynamic Function(dynamic x) progressFilter);
  external factory JQueryDeferred();
}

@JS()
@anonymous
class BaseJQueryEventObject extends Event {
  external Element get currentTarget;
  external set currentTarget(Element value);
  external dynamic get data;
  external set data(dynamic value);
  external Element get delegateTarget;
  external set delegateTarget(Element value);
  external bool isDefaultPrevented();
  external bool isImmediatePropagationStopped();
  external bool isPropagationStopped();
  external String get namespace;
  external set namespace(String value);
  external Event get originalEvent;
  external set originalEvent(Event value);
  external dynamic preventDefault();
  external Element get relatedTarget;
  external set relatedTarget(Element value);
  external dynamic get result;
  external set result(dynamic value);
  external void stopImmediatePropagation();
  external void stopPropagation();
  external Element get target;
  external set target(Element value);
  external num get pageX;
  external set pageX(num value);
  external num get pageY;
  external set pageY(num value);
  external num get which;
  external set which(num value);
  external bool get metaKey;
  external set metaKey(bool value);
  external factory BaseJQueryEventObject({
    Element currentTarget,
    dynamic data,
    Element delegateTarget,
    String namespace,
    Event originalEvent,
    Element relatedTarget,
    dynamic result,
    Element target,
    num pageX,
    num pageY,
    num which,
    bool metaKey,
  });
}

@JS()
@anonymous
class JQueryCustomEventObject extends BaseJQueryEventObject {
  external dynamic get detail;
  external set detail(dynamic value);
  external factory JQueryCustomEventObject({
    dynamic detail,
  });
}

@JS()
@anonymous
class JQueryInputEventObject extends BaseJQueryEventObject {
  external bool get altKey;
  external set altKey(bool value);
  external bool get ctrlKey;
  external set ctrlKey(bool value);
  external bool get metaKey;
  external set metaKey(bool value);
  external bool get shiftKey;
  external set shiftKey(bool value);
  external factory JQueryInputEventObject({
    bool altKey,
    bool ctrlKey,
    bool metaKey,
    bool shiftKey,
  });
}

@JS()
@anonymous
class JQueryMouseEventObject extends JQueryInputEventObject {
  external num get button;
  external set button(num value);
  external num get clientX;
  external set clientX(num value);
  external num get clientY;
  external set clientY(num value);
  external num get offsetX;
  external set offsetX(num value);
  external num get offsetY;
  external set offsetY(num value);
  external num get pageX;
  external set pageX(num value);
  external num get pageY;
  external set pageY(num value);
  external num get screenX;
  external set screenX(num value);
  external num get screenY;
  external set screenY(num value);
  external factory JQueryMouseEventObject({
    num button,
    num clientX,
    num clientY,
    num offsetX,
    num offsetY,
    num pageX,
    num pageY,
    num screenX,
    num screenY,
  });
}

@JS()
@anonymous
class JQueryKeyEventObject extends JQueryInputEventObject {
  external String get char;
  external set char(String value);
  external num get charCode;
  external set charCode(num value);
  external String get code;
  external set code(String value);
  external String get key;
  external set key(String value);
  external num get keyCode;
  external set keyCode(num value);
  external factory JQueryKeyEventObject({
    String char,
    num charCode,
    String code,
    String key,
    num keyCode,
  });
}

@JS()
@anonymous
class JQueryEventObject extends BaseJQueryEventObject {
  external factory JQueryEventObject();
}

@JS()
@anonymous
class JQuerySupport {
  external bool? get ajax;
  external set ajax(bool? value);
  external bool? get boxModel;
  external set boxModel(bool? value);
  external bool? get changeBubbles;
  external set changeBubbles(bool? value);
  external bool? get checkClone;
  external set checkClone(bool? value);
  external bool? get checkOn;
  external set checkOn(bool? value);
  external bool? get cors;
  external set cors(bool? value);
  external bool? get cssFloat;
  external set cssFloat(bool? value);
  external bool? get hrefNormalized;
  external set hrefNormalized(bool? value);
  external bool? get htmlSerialize;
  external set htmlSerialize(bool? value);
  external bool? get leadingWhitespace;
  external set leadingWhitespace(bool? value);
  external bool? get noCloneChecked;
  external set noCloneChecked(bool? value);
  external bool? get noCloneEvent;
  external set noCloneEvent(bool? value);
  external bool? get opacity;
  external set opacity(bool? value);
  external bool? get optDisabled;
  external set optDisabled(bool? value);
  external bool? get optSelected;
  external set optSelected(bool? value);
  external bool scriptEval();
  external bool? get style;
  external set style(bool? value);
  external bool? get submitBubbles;
  external set submitBubbles(bool? value);
  external bool? get tbody;
  external set tbody(bool? value);
  external factory JQuerySupport({
    bool? ajax,
    bool? boxModel,
    bool? changeBubbles,
    bool? checkClone,
    bool? checkOn,
    bool? cors,
    bool? cssFloat,
    bool? hrefNormalized,
    bool? htmlSerialize,
    bool? leadingWhitespace,
    bool? noCloneChecked,
    bool? noCloneEvent,
    bool? opacity,
    bool? optDisabled,
    bool? optSelected,
    bool? style,
    bool? submitBubbles,
    bool? tbody,
  });
}

@JS()
@anonymous
class JQueryParam {
  external factory JQueryParam();
}

@JS()
class JQueryEventConstructor {
  external factory JQueryEventConstructor({String name, dynamic eventProperties});
}

@JS()
@anonymous
class JQueryCoordinates {
  external num get left;
  external set left(num value);
  external num get top;
  external set top(num value);
  external factory JQueryCoordinates({
    num left,
    num top,
  });
}

@JS()
@anonymous
class cssPropertySetter {
  external factory cssPropertySetter();
}

@JS()
@anonymous
class JQueryCssProperties {
  external factory JQueryCssProperties();
}

@JS()
@anonymous
class JQuerySerializeArrayElement {
  external String get name;
  external set name(String value);
  external String get value;
  external set value(String value);
  external factory JQuerySerializeArrayElement({
    String name,
    String value,
  });
}

@JS()
@anonymous
class JQueryAnimationOptions {
  external dynamic get duration;
  external set duration(dynamic value);
  external String? get easing;
  external set easing(String? value);
  external Function? get complete;
  external set complete(Function? value);
  external dynamic Function(num now, dynamic tween)? get step;
  external set step(dynamic Function(num now, dynamic tween)? value);
  external dynamic Function(JQueryPromise<dynamic> animation, num progress, num remainingMs)? get progress;
  external set progress(dynamic Function(JQueryPromise<dynamic> animation, num progress, num remainingMs)? value);
  external dynamic Function(JQueryPromise<dynamic> animation)? get start;
  external set start(dynamic Function(JQueryPromise<dynamic> animation)? value);
  external dynamic Function(JQueryPromise<dynamic> animation, bool jumpedToEnd)? get done;
  external set done(dynamic Function(JQueryPromise<dynamic> animation, bool jumpedToEnd)? value);
  external dynamic Function(JQueryPromise<dynamic> animation, bool jumpedToEnd)? get fail;
  external set fail(dynamic Function(JQueryPromise<dynamic> animation, bool jumpedToEnd)? value);
  external dynamic Function(JQueryPromise<dynamic> animation, bool jumpedToEnd)? get always;
  external set always(dynamic Function(JQueryPromise<dynamic> animation, bool jumpedToEnd)? value);
  external dynamic get queue;
  external set queue(dynamic value);
  external Object? get specialEasing;
  external set specialEasing(Object? value);
  external factory JQueryAnimationOptions({
    dynamic duration,
    String? easing,
    Function? complete,
    dynamic Function(num now, dynamic tween)? step,
    dynamic Function(JQueryPromise<dynamic> animation, num progress, num remainingMs)? progress,
    dynamic Function(JQueryPromise<dynamic> animation)? start,
    dynamic Function(JQueryPromise<dynamic> animation, bool jumpedToEnd)? done,
    dynamic Function(JQueryPromise<dynamic> animation, bool jumpedToEnd)? fail,
    dynamic Function(JQueryPromise<dynamic> animation, bool jumpedToEnd)? always,
    dynamic queue,
    Object? specialEasing,
  });
}

@JS()
@anonymous
class JQueryEasingFunction {
  external factory JQueryEasingFunction();
}

@JS()
@anonymous
class JQueryEasingFunctions {
  external JQueryEasingFunction get linear;
  external set linear(JQueryEasingFunction value);
  external JQueryEasingFunction get swing;
  external set swing(JQueryEasingFunction value);
  external factory JQueryEasingFunctions({
    JQueryEasingFunction linear,
    JQueryEasingFunction swing,
  });
}

@JS()
@anonymous
class JQueryStatic {
  external JQueryXHR ajax(JQueryAjaxSettings settings);
  external void ajaxPrefilter(
      String dataTypes, dynamic Function(dynamic opts, JQueryAjaxSettings originalOpts, JQueryXHR jqXHR) handler);
  external void ajaxTransport(
      String dataType, dynamic Function(dynamic opts, JQueryAjaxSettings originalOpts, JQueryXHR jqXHR) handler);
  external JQueryAjaxSettings get ajaxSettings;
  external set ajaxSettings(JQueryAjaxSettings value);
  external void ajaxSetup(JQueryAjaxSettings options);
  external JQueryXHR get(
      String url, dynamic Function(dynamic data, String textStatus, JQueryXHR jqXHR) success, String dataType);
  external JQueryXHR getJSON(String url, dynamic Function(dynamic data, String textStatus, JQueryXHR jqXHR) success);
  external JQueryXHR getScript(String url, dynamic Function(String script, String textStatus, JQueryXHR jqXHR) success);
  external JQueryParam get param;
  external set param(JQueryParam value);
  external JQueryXHR post(
      String url, dynamic Function(dynamic data, String textStatus, JQueryXHR jqXHR) success, String dataType);
  external JQueryCallback Callbacks(String flags);
  external void holdReady(bool hold);
  external JQueryStatic noConflict(bool removeAll);
  external JQueryPromise<T> when<T>([
    Array<dynamic>? deferreds1,
    Array<dynamic>? deferreds2,
    Array<dynamic>? deferreds3,
    Array<dynamic>? deferreds4,
    Array<dynamic>? deferreds5,
    Array<dynamic>? deferreds6,
    Array<dynamic>? deferreds7,
    Array<dynamic>? deferreds8,
    Array<dynamic>? deferreds9,
  ]);
  external dynamic get cssHooks;
  external set cssHooks(dynamic value);
  external dynamic get cssNumber;
  external set cssNumber(dynamic value);
  external T data<T>(Element element, String key, T value);
  external void dequeue(Element element, String queueName);
  external bool hasData(Element element);
  external List<dynamic> queue(Element element, String queueName);
  external JQuery removeData(Element element, String name);
  external JQueryDeferred<T> Deferred<T>(dynamic Function(JQueryDeferred<T> deferred) beforeStart);
  external JQueryEasingFunctions get easing;
  external set easing(JQueryEasingFunctions value);
  external dynamic get fx;
  external set fx(dynamic value);
  external dynamic proxy(
    dynamic Function([
      dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5,
      dynamic args6,
      dynamic args7,
      dynamic args8,
      dynamic args9,
    ])
        func,
    Object context, [
    dynamic additionalArguments1,
    dynamic additionalArguments2,
    dynamic additionalArguments3,
    dynamic additionalArguments4,
    dynamic additionalArguments5,
    dynamic additionalArguments6,
    dynamic additionalArguments7,
    dynamic additionalArguments8,
    dynamic additionalArguments9,
  ]);
  external JQueryEventConstructor get Event;
  external set Event(JQueryEventConstructor value);
  external JQuery error(dynamic message);
  external dynamic get expr;
  external set expr(dynamic value);
  external JQuery get fn;
  external bool get isReady;
  external set isReady(bool value);
  external JQuerySupport get support;
  external set support(JQuerySupport value);
  external bool contains(Element container, Element contained);
  external List<T> each<T>(List<T> collection, dynamic Function(num indexInArray, T valueOfElement) callback);
  external dynamic extend(
    dynamic target,
    dynamic object1, [
    dynamic objectN1,
    dynamic objectN2,
    dynamic objectN3,
    dynamic objectN4,
    dynamic objectN5,
    dynamic objectN6,
    dynamic objectN7,
    dynamic objectN8,
    dynamic objectN9,
  ]);
  external dynamic globalEval(String code);
  external List<T> grep<T>(List<T> array, bool Function(T elementOfArray, num indexInArray) func, bool invert);
  external num inArray<T>(T value, List<T> array, num fromIndex);
  external bool isArray(dynamic obj);
  external bool isEmptyObject(dynamic obj);
  external bool isFunction(dynamic obj);
  external bool isNumeric(dynamic value);
  external bool isPlainObject(dynamic obj);
  external bool isWindow(dynamic obj);
  external bool isXMLDoc(Node node);
  external List<dynamic> makeArray(dynamic obj);
  external List<U> map<T, U>(List<T> array, U Function(T elementOfArray, num indexInArray) callback);
  external List<T> merge<T>(List<T> first, List<T> second);
  external dynamic noop();
  external num now();
  external dynamic parseJSON(String json);
  external XMLDocument parseXML(String data);
  external String trim(String str);
  external String type(dynamic obj);
  external List<T> unique<T extends Element>(List<T> array);
  external List<dynamic> parseHTML(String data, Document context, bool keepScripts);
  external factory JQueryStatic({
    JQueryAjaxSettings ajaxSettings,
    JQueryParam param,
    dynamic cssHooks,
    dynamic cssNumber,
    JQueryEasingFunctions easing,
    dynamic fx,
    JQueryEventConstructor Event,
    dynamic expr,
    JQuery fn,
    bool isReady,
    JQuerySupport support,
  });
}

@JS()
@anonymous
class JQuery {
  external JQuery ajaxComplete(
      dynamic Function(JQueryEventObject event, XMLHttpRequest XMLHttpRequest, dynamic ajaxOptions) handler);
  external JQuery ajaxError(
      dynamic Function(JQueryEventObject event, JQueryXHR jqXHR, JQueryAjaxSettings ajaxSettings, dynamic thrownError)
          handler);
  external JQuery ajaxSend(
      dynamic Function(JQueryEventObject event, JQueryXHR jqXHR, JQueryAjaxSettings ajaxOptions) handler);
  external JQuery ajaxStart(dynamic Function() handler);
  external JQuery ajaxStop(dynamic Function() handler);
  external JQuery ajaxSuccess(
      dynamic Function(JQueryEventObject event, XMLHttpRequest XMLHttpRequest, JQueryAjaxSettings ajaxOptions) handler);
  external JQuery load(String url, dynamic data,
      dynamic Function(String responseText, String textStatus, XMLHttpRequest XMLHttpRequest) complete);
  external String serialize();
  external List<JQuerySerializeArrayElement> serializeArray();
  external JQuery addClass(String className);
  external JQuery addBack(String selector);
  external String attr(String attributeName);
  external bool hasClass(String className);
  external String html();
  external dynamic prop(String propertyName);
  external JQuery removeAttr(String attributeName);
  external JQuery removeClass(String className);
  external JQuery removeProp(String propertyName);
  external JQuery toggleClass(String className, bool swtch);
  external dynamic val();
  external String css(String propertyName);
  external num height();
  external num innerHeight();
  external num innerWidth();
  external JQueryCoordinates? offset();
  external num outerHeight(bool includeMargin);
  external num outerWidth(bool includeMargin);
  external JQueryCoordinates position();
  external num scrollLeft();
  external num scrollTop();
  external num width();
  external JQuery clearQueue(String queueName);
  external JQuery data(String key, dynamic value);
  external JQuery dequeue(String queueName);
  external JQuery removeData(String name);
  external JQueryPromise<dynamic> promise(String type, Object target);
  external JQuery animate(Object properties, dynamic duration, Function complete);
  external JQuery delay(num duration, String queueName);
  external JQuery fadeIn(dynamic duration, Function complete);
  external JQuery fadeOut(dynamic duration, Function complete);
  external JQuery fadeTo(dynamic duration, num opacity, Function complete);
  external JQuery fadeToggle(dynamic duration, Function complete);
  external JQuery finish(String queue);
  external JQuery hide(dynamic duration, Function complete);
  external JQuery show(dynamic duration, Function complete);
  external JQuery slideDown(dynamic duration, Function complete);
  external JQuery slideToggle(dynamic duration, Function complete);
  external JQuery slideUp(dynamic duration, Function complete);
  external JQuery stop(bool clearQueue, bool jumpToEnd);
  external JQuery toggle(dynamic duration, Function complete);
  external JQuery bind(String eventType, dynamic eventData, dynamic Function(JQueryEventObject eventObject) handler);
  external JQuery blur();
  external JQuery change();
  external JQuery click();
  external JQuery contextmenu();
  external JQuery dblclick();
  external JQuery delegate(dynamic selector, String eventType, dynamic Function(JQueryEventObject eventObject) handler);
  external JQuery focus();
  external JQuery focusin();
  external JQuery focusout();
  external JQuery hover(dynamic Function(JQueryEventObject eventObject) handlerIn,
      dynamic Function(JQueryEventObject eventObject) handlerOut);
  external JQuery keydown();
  external JQuery keypress();
  external JQuery keyup();
  external JQuery mousedown();
  external JQuery mouseenter();
  external JQuery mouseleave();
  external JQuery mousemove();
  external JQuery mouseout();
  external JQuery mouseover();
  external JQuery mouseup();
  external JQuery off();
  external JQuery on(
      String events,
      dynamic Function(
    JQueryEventObject eventObject, [
    dynamic args1,
    dynamic args2,
    dynamic args3,
    dynamic args4,
    dynamic args5,
    dynamic args6,
    dynamic args7,
    dynamic args8,
    dynamic args9,
  ])
          handler);
  external JQuery one(String events, dynamic Function(JQueryEventObject eventObject) handler);
  external JQuery ready(dynamic Function(JQueryStatic jQueryAlias) handler);
  external JQuery resize();
  external JQuery scroll();
  external JQuery select();
  external JQuery submit();
  external JQuery trigger(String eventType, dynamic extraParameters);
  external Object triggerHandler(
    String eventType, [
    dynamic extraParameters1,
    dynamic extraParameters2,
    dynamic extraParameters3,
    dynamic extraParameters4,
    dynamic extraParameters5,
    dynamic extraParameters6,
    dynamic extraParameters7,
    dynamic extraParameters8,
    dynamic extraParameters9,
  ]);
  external JQuery unbind(String eventType, dynamic Function(JQueryEventObject eventObject) handler);
  external JQuery undelegate();
  external JQuery unload(dynamic Function(JQueryEventObject eventObject) handler);
  external Element get context;
  external set context(Element value);
  external String get jquery;
  external set jquery(String value);
  external JQuery error(dynamic Function(JQueryEventObject eventObject) handler);
  external JQuery pushStack(List<dynamic> elements);
  external JQuery after(
    dynamic content1, [
    dynamic content21,
    dynamic content22,
    dynamic content23,
    dynamic content24,
    dynamic content25,
    dynamic content26,
    dynamic content27,
    dynamic content28,
    dynamic content29,
  ]);
  external JQuery append(
    dynamic content1, [
    dynamic content21,
    dynamic content22,
    dynamic content23,
    dynamic content24,
    dynamic content25,
    dynamic content26,
    dynamic content27,
    dynamic content28,
    dynamic content29,
  ]);
  external JQuery appendTo(dynamic target);
  external JQuery before(
    dynamic content1, [
    dynamic content21,
    dynamic content22,
    dynamic content23,
    dynamic content24,
    dynamic content25,
    dynamic content26,
    dynamic content27,
    dynamic content28,
    dynamic content29,
  ]);
  external JQuery clone(bool withDataAndEvents, bool deepWithDataAndEvents);
  external JQuery detach(String selector);
  external JQuery empty();
  external JQuery insertAfter(dynamic target);
  external JQuery insertBefore(dynamic target);
  external JQuery prepend(
    dynamic content1, [
    dynamic content21,
    dynamic content22,
    dynamic content23,
    dynamic content24,
    dynamic content25,
    dynamic content26,
    dynamic content27,
    dynamic content28,
    dynamic content29,
  ]);
  external JQuery prependTo(dynamic target);
  external JQuery remove(String selector);
  external JQuery replaceAll(dynamic target);
  external JQuery replaceWith(dynamic newContent);
  external String text();
  external List<Element> toArray();
  external JQuery unwrap();
  external JQuery wrap(dynamic wrappingElement);
  external JQuery wrapAll(dynamic wrappingElement);
  external JQuery wrapInner(dynamic wrappingElement);
  external JQuery each(dynamic Function(num index, Element elem) func);
  external Element get(num index);
  external num index();
  external num get length;
  external set length(num value);
  external String get selector;
  external set selector(String value);
  external JQuery add(String selector, Element context);
  external JQuery children(String selector);
  external JQuery closest(String selector);
  external JQuery contents();
  external JQuery end();
  external JQuery eq(num index);
  external JQuery filter(String selector);
  external JQuery find(dynamic selector_element);
  external JQuery first();
  external JQuery has(String selector);
  external JQuery last();
  external JQuery map(dynamic Function(num index, Element domElement) callback);
  external JQuery next(String selector);
  external JQuery nextAll(String selector);
  external JQuery nextUntil(String selector, String filter);
  external JQuery not(String selector);
  external JQuery offsetParent();
  external JQuery parent(String selector);
  external JQuery parents(String selector);
  external JQuery parentsUntil(String selector, String filter);
  external JQuery prev(String selector);
  external JQuery prevAll(String selector);
  external JQuery prevUntil(String selector, String filter);
  external JQuery siblings(String selector);
  external JQuery slice(num start, num end);
  external List<dynamic> queue(String queueName);
  external JQuery extend(dynamic object);
  external factory JQuery({
    Element context,
    String jquery,
    num length,
    String selector,
  });
}

@JS(r'jQuery')
external JQueryStatic jQuery;
@JS(r'$')
external JQueryStatic $;
typedef Array<T> = dynamic;
typedef Document = dynamic;
typedef Element = dynamic;
typedef Event = dynamic;
typedef Node = dynamic;
typedef Object = dynamic;
typedef XMLDocument = dynamic;
typedef XMLHttpRequest = dynamic;
