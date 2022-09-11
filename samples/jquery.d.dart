@JS()
library samples.jquery.d.ts;

// ignore_for_file: non_constant_identifier_names, private_optional_parameter, unused_element
import 'package:js/js.dart';
import "dart:html";

@JS()
@anonymous
class JQueryAjaxSettings {
  external dynamic accepts;
  external bool? async;
  external dynamic beforeSend(JQueryXHR jqXHR, JQueryAjaxSettings settings);
  external bool? cache;
  external dynamic complete(JQueryXHR jqXHR, String textStatus);
  external dynamic contents;
  external dynamic contentType;
  external dynamic context;
  external dynamic converters;
  external bool? crossDomain;
  external dynamic data;
  external dynamic dataFilter(dynamic data, dynamic ty);
  external String? dataType;
  external dynamic error(JQueryXHR jqXHR, String textStatus, String errorThrown);
  external bool? global;
  external dynamic headers;
  external bool? ifModified;
  external bool? isLocal;
  external dynamic jsonp;
  external dynamic jsonpCallback;
  external String? method;
  external String? mimeType;
  external String? password;
  external bool? processData;
  external String? scriptCharset;
  external dynamic statusCode;
  external dynamic success(dynamic data, String textStatus, JQueryXHR jqXHR);
  external num? timeout;
  external bool? traditional;
  external String? type;
  external String? url;
  external String? username;
  external dynamic xhr;
  external dynamic xhrFields;
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
class JQueryXHR extends HttpRequest {
  external dynamic overrideMimeType(String mimeType);
  external void abort(String statusText);
  external JQueryPromise<R> then<R>(dynamic Function(dynamic data, String textStatus, JQueryXHR jqXHR) doneCallback,
      void Function(JQueryXHR jqXHR, String textStatus, dynamic errorThrown) failCallback);
  external dynamic responseJSON;
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
  external void call(
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
  external factory JQueryPromiseCallback();
}

@JS()
@anonymous
class JQueryPromiseOperator<T, U> {
  external JQueryPromise<U> call(
    dynamic callback1, [
    dynamic callbacksN1,
    dynamic callbacksN2,
    dynamic callbacksN3,
    dynamic callbacksN4,
    dynamic callbacksN5,
    dynamic callbacksN6,
    dynamic callbacksN7,
    dynamic callbacksN8,
    dynamic callbacksN9,
  ]);
  external factory JQueryPromiseOperator();
}

@JS()
@anonymous
class JQueryPromise<T> extends JQueryGenericPromise<T> {
  external String state();
  external JQueryPromise<T> always(
    dynamic alwaysCallback1, [
    dynamic alwaysCallbackN1,
    dynamic alwaysCallbackN2,
    dynamic alwaysCallbackN3,
    dynamic alwaysCallbackN4,
    dynamic alwaysCallbackN5,
    dynamic alwaysCallbackN6,
    dynamic alwaysCallbackN7,
    dynamic alwaysCallbackN8,
    dynamic alwaysCallbackN9,
  ]);
  external JQueryPromise<T> done(
    dynamic doneCallback1, [
    dynamic doneCallbackN1,
    dynamic doneCallbackN2,
    dynamic doneCallbackN3,
    dynamic doneCallbackN4,
    dynamic doneCallbackN5,
    dynamic doneCallbackN6,
    dynamic doneCallbackN7,
    dynamic doneCallbackN8,
    dynamic doneCallbackN9,
  ]);
  external JQueryPromise<T> fail(
    dynamic failCallback1, [
    dynamic failCallbackN1,
    dynamic failCallbackN2,
    dynamic failCallbackN3,
    dynamic failCallbackN4,
    dynamic failCallbackN5,
    dynamic failCallbackN6,
    dynamic failCallbackN7,
    dynamic failCallbackN8,
    dynamic failCallbackN9,
  ]);
  external JQueryPromise<T> progress(
    dynamic progressCallback1, [
    dynamic progressCallbackN1,
    dynamic progressCallbackN2,
    dynamic progressCallbackN3,
    dynamic progressCallbackN4,
    dynamic progressCallbackN5,
    dynamic progressCallbackN6,
    dynamic progressCallbackN7,
    dynamic progressCallbackN8,
    dynamic progressCallbackN9,
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
    dynamic alwaysCallbackN1,
    dynamic alwaysCallbackN2,
    dynamic alwaysCallbackN3,
    dynamic alwaysCallbackN4,
    dynamic alwaysCallbackN5,
    dynamic alwaysCallbackN6,
    dynamic alwaysCallbackN7,
    dynamic alwaysCallbackN8,
    dynamic alwaysCallbackN9,
  ]);
  external JQueryDeferred<T> done(
    dynamic doneCallback1, [
    dynamic doneCallbackN1,
    dynamic doneCallbackN2,
    dynamic doneCallbackN3,
    dynamic doneCallbackN4,
    dynamic doneCallbackN5,
    dynamic doneCallbackN6,
    dynamic doneCallbackN7,
    dynamic doneCallbackN8,
    dynamic doneCallbackN9,
  ]);
  external JQueryDeferred<T> fail(
    dynamic failCallback1, [
    dynamic failCallbackN1,
    dynamic failCallbackN2,
    dynamic failCallbackN3,
    dynamic failCallbackN4,
    dynamic failCallbackN5,
    dynamic failCallbackN6,
    dynamic failCallbackN7,
    dynamic failCallbackN8,
    dynamic failCallbackN9,
  ]);
  external JQueryDeferred<T> progress(
    dynamic progressCallback1, [
    dynamic progressCallbackN1,
    dynamic progressCallbackN2,
    dynamic progressCallbackN3,
    dynamic progressCallbackN4,
    dynamic progressCallbackN5,
    dynamic progressCallbackN6,
    dynamic progressCallbackN7,
    dynamic progressCallbackN8,
    dynamic progressCallbackN9,
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
  external Element currentTarget;
  external dynamic data;
  external Element delegateTarget;
  external bool isDefaultPrevented();
  external bool isImmediatePropagationStopped();
  external bool isPropagationStopped();
  external String namespace;
  external Event originalEvent;
  external dynamic preventDefault();
  external Element relatedTarget;
  external dynamic result;
  external void stopImmediatePropagation();
  external void stopPropagation();
  external Element target;
  external num pageX;
  external num pageY;
  external num which;
  external bool metaKey;
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
  external dynamic detail;
  external factory JQueryCustomEventObject({
    dynamic detail,
  });
}

@JS()
@anonymous
class JQueryInputEventObject extends BaseJQueryEventObject {
  external bool altKey;
  external bool ctrlKey;
  external bool metaKey;
  external bool shiftKey;
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
  external num button;
  external num clientX;
  external num clientY;
  external num offsetX;
  external num offsetY;
  external num pageX;
  external num pageY;
  external num screenX;
  external num screenY;
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
  external String char;
  external num charCode;
  external String code;
  external String key;
  external num keyCode;
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
  external bool? ajax;
  external bool? boxModel;
  external bool? changeBubbles;
  external bool? checkClone;
  external bool? checkOn;
  external bool? cors;
  external bool? cssFloat;
  external bool? hrefNormalized;
  external bool? htmlSerialize;
  external bool? leadingWhitespace;
  external bool? noCloneChecked;
  external bool? noCloneEvent;
  external bool? opacity;
  external bool? optDisabled;
  external bool? optSelected;
  external bool scriptEval();
  external bool? style;
  external bool? submitBubbles;
  external bool? tbody;
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
  external String call(dynamic obj);
  external factory JQueryParam();
}

@JS()
class JQueryEventConstructor {
  external JQueryEventObject call(String name, dynamic eventProperties);
  external factory JQueryEventConstructor({String name, dynamic eventProperties});
}

@JS()
@anonymous
class JQueryCoordinates {
  external num left;
  external num top;
  external factory JQueryCoordinates({
    num left,
    num top,
  });
}

@JS()
@anonymous
class cssPropertySetter {
  external dynamic call(num index, String value);
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
  external String name;
  external String value;
  external factory JQuerySerializeArrayElement({
    String name,
    String value,
  });
}

@JS()
@anonymous
class JQueryAnimationOptions {
  external dynamic duration;
  external String? easing;
  external Function? complete;
  external dynamic Function(num now, dynamic tween)? step;
  external dynamic Function(JQueryPromise<dynamic> animation, num progress, num remainingMs)? progress;
  external dynamic Function(JQueryPromise<dynamic> animation)? start;
  external dynamic Function(JQueryPromise<dynamic> animation, bool jumpedToEnd)? done;
  external dynamic Function(JQueryPromise<dynamic> animation, bool jumpedToEnd)? fail;
  external dynamic Function(JQueryPromise<dynamic> animation, bool jumpedToEnd)? always;
  external dynamic queue;
  external Object? specialEasing;
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
  external num call(num percent);
  external factory JQueryEasingFunction();
}

@JS()
@anonymous
class JQueryEasingFunctions {
  external JQueryEasingFunction linear;
  external JQueryEasingFunction swing;
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
  external JQueryAjaxSettings ajaxSettings;
  external void ajaxSetup(JQueryAjaxSettings options);
  external JQueryXHR get(
      String url, dynamic Function(dynamic data, String textStatus, JQueryXHR jqXHR) success, String dataType);
  external JQueryXHR getJSON(String url, dynamic Function(dynamic data, String textStatus, JQueryXHR jqXHR) success);
  external JQueryXHR getScript(String url, dynamic Function(String script, String textStatus, JQueryXHR jqXHR) success);
  external JQueryParam param;
  external JQueryXHR post(
      String url, dynamic Function(dynamic data, String textStatus, JQueryXHR jqXHR) success, String dataType);
  external JQueryCallback Callbacks(String flags);
  external void holdReady(bool hold);
  external JQuery call(String selector, dynamic context);
  external JQueryStatic noConflict(bool removeAll);
  external JQueryPromise<T> when<T>([
    dynamic deferreds1,
    dynamic deferreds2,
    dynamic deferreds3,
    dynamic deferreds4,
    dynamic deferreds5,
    dynamic deferreds6,
    dynamic deferreds7,
    dynamic deferreds8,
    dynamic deferreds9,
  ]);
  external dynamic cssHooks;
  external dynamic cssNumber;
  external T data<T>(Element element, String key, T value);
  external void dequeue(Element element, String queueName);
  external bool hasData(Element element);
  external List<dynamic> queue(Element element, String queueName);
  external JQuery removeData(Element element, String name);
  external JQueryDeferred<T> Deferred<T>(dynamic Function(JQueryDeferred<T> deferred) beforeStart);
  external JQueryEasingFunctions easing;
  external dynamic fx;
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
  external JQueryEventConstructor Event;
  external JQuery error(dynamic message);
  external dynamic expr;
  external JQuery get fn;
  external bool isReady;
  external JQuerySupport support;
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
  external XmlDocument parseXML(String data);
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
      dynamic Function(JQueryEventObject event, HttpRequest XMLHttpRequest, dynamic ajaxOptions) handler);
  external JQuery ajaxError(
      dynamic Function(JQueryEventObject event, JQueryXHR jqXHR, JQueryAjaxSettings ajaxSettings, dynamic thrownError)
          handler);
  external JQuery ajaxSend(
      dynamic Function(JQueryEventObject event, JQueryXHR jqXHR, JQueryAjaxSettings ajaxOptions) handler);
  external JQuery ajaxStart(dynamic Function() handler);
  external JQuery ajaxStop(dynamic Function() handler);
  external JQuery ajaxSuccess(
      dynamic Function(JQueryEventObject event, HttpRequest XMLHttpRequest, JQueryAjaxSettings ajaxOptions) handler);
  external JQuery load(String url, dynamic data,
      dynamic Function(String responseText, String textStatus, HttpRequest XMLHttpRequest) complete);
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
  external Element context;
  external String jquery;
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
  external num length;
  external String selector;
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
typedef Object = dynamic;
