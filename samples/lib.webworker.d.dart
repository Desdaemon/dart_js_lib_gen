@JS()
library samples.lib.webworker.d.ts;

// ignore_for_file: non_constant_identifier_names, private_optional_parameter, unused_element
import 'package:js/js.dart';
import "dart:html";
import "dart:indexed_db";
import "dart:typed_data";
import "dart:web_gl";
import "lib.dom.d.dart";
import "lib.es5.d.dart";

@JS()
@anonymous
class AddEventListenerOptions extends EventListenerOptions {
  external bool? once;
  external bool? passive;
  external factory AddEventListenerOptions({
    bool? once,
    bool? passive,
  });
}

@JS()
@anonymous
class AesCbcParams extends Algorithm {
  external dynamic iv;
  external factory AesCbcParams({
    dynamic iv,
  });
}

@JS()
@anonymous
class AesCtrParams extends Algorithm {
  external dynamic counter;
  external num length;
  external factory AesCtrParams({
    dynamic counter,
    num length,
  });
}

@JS()
@anonymous
class AesDerivedKeyParams extends Algorithm {
  external num length;
  external factory AesDerivedKeyParams({
    num length,
  });
}

@JS()
@anonymous
class AesGcmParams extends Algorithm {
  external dynamic additionalData;
  external dynamic iv;
  external num? tagLength;
  external factory AesGcmParams({
    dynamic additionalData,
    dynamic iv,
    num? tagLength,
  });
}

@JS()
@anonymous
class AesKeyAlgorithm extends KeyAlgorithm {
  external num length;
  external factory AesKeyAlgorithm({
    num length,
  });
}

@JS()
@anonymous
class AesKeyGenParams extends Algorithm {
  external num length;
  external factory AesKeyGenParams({
    num length,
  });
}

@JS()
@anonymous
class Algorithm {
  external String name;
  external factory Algorithm({
    String name,
  });
}

@JS()
@anonymous
class BlobPropertyBag {
  external EndingType? endings;
  external String? type;
  external factory BlobPropertyBag({
    EndingType? endings,
    String? type,
  });
}

@JS()
@anonymous
class CacheQueryOptions {
  external bool? ignoreMethod;
  external bool? ignoreSearch;
  external bool? ignoreVary;
  external factory CacheQueryOptions({
    bool? ignoreMethod,
    bool? ignoreSearch,
    bool? ignoreVary,
  });
}

@JS()
@anonymous
class CanvasRenderingContext2DSettings {
  external bool? alpha;
  external bool? desynchronized;
  external factory CanvasRenderingContext2DSettings({
    bool? alpha,
    bool? desynchronized,
  });
}

@JS()
@anonymous
class ClientQueryOptions {
  external bool? includeUncontrolled;
  external ClientTypes? type;
  external factory ClientQueryOptions({
    bool? includeUncontrolled,
    ClientTypes? type,
  });
}

@JS()
@anonymous
class CloseEventInit extends EventInit {
  external num? code;
  external String? reason;
  external bool? wasClean;
  external factory CloseEventInit({
    num? code,
    String? reason,
    bool? wasClean,
  });
}

@JS()
@anonymous
class CryptoKeyPair {
  external CryptoKey? privateKey;
  external CryptoKey? publicKey;
  external factory CryptoKeyPair({
    CryptoKey? privateKey,
    CryptoKey? publicKey,
  });
}

@JS()
@anonymous
class CustomEventInit<T> extends EventInit {
  external T? detail;
  external factory CustomEventInit({
    T? detail,
  });
}

@JS()
@anonymous
class DOMMatrix2DInit {
  external num? a;
  external num? b;
  external num? c;
  external num? d;
  external num? e;
  external num? f;
  external num? m11;
  external num? m12;
  external num? m21;
  external num? m22;
  external num? m41;
  external num? m42;
  external factory DOMMatrix2DInit({
    num? a,
    num? b,
    num? c,
    num? d,
    num? e,
    num? f,
    num? m11,
    num? m12,
    num? m21,
    num? m22,
    num? m41,
    num? m42,
  });
}

@JS()
@anonymous
class DOMMatrixInit extends DOMMatrix2DInit {
  external bool? is2D;
  external num? m13;
  external num? m14;
  external num? m23;
  external num? m24;
  external num? m31;
  external num? m32;
  external num? m33;
  external num? m34;
  external num? m43;
  external num? m44;
  external factory DOMMatrixInit({
    bool? is2D,
    num? m13,
    num? m14,
    num? m23,
    num? m24,
    num? m31,
    num? m32,
    num? m33,
    num? m34,
    num? m43,
    num? m44,
  });
}

@JS()
@anonymous
class DOMPointInit {
  external num? w;
  external num? x;
  external num? y;
  external num? z;
  external factory DOMPointInit({
    num? w,
    num? x,
    num? y,
    num? z,
  });
}

@JS()
@anonymous
class DOMQuadInit {
  external DOMPointInit? p1;
  external DOMPointInit? p2;
  external DOMPointInit? p3;
  external DOMPointInit? p4;
  external factory DOMQuadInit({
    DOMPointInit? p1,
    DOMPointInit? p2,
    DOMPointInit? p3,
    DOMPointInit? p4,
  });
}

@JS()
@anonymous
class DOMRectInit {
  external num? height;
  external num? width;
  external num? x;
  external num? y;
  external factory DOMRectInit({
    num? height,
    num? width,
    num? x,
    num? y,
  });
}

@JS()
@anonymous
class DevicePermissionDescriptor extends PermissionDescriptor {
  external String? deviceId;
  external String name;
  external factory DevicePermissionDescriptor({
    String? deviceId,
    String name,
  });
}

@JS()
@anonymous
class EcKeyGenParams extends Algorithm {
  external NamedCurve namedCurve;
  external factory EcKeyGenParams({
    NamedCurve namedCurve,
  });
}

@JS()
@anonymous
class EcKeyImportParams extends Algorithm {
  external NamedCurve namedCurve;
  external factory EcKeyImportParams({
    NamedCurve namedCurve,
  });
}

@JS()
@anonymous
class EcdhKeyDeriveParams extends Algorithm {
  external CryptoKey public;
  external factory EcdhKeyDeriveParams({
    CryptoKey public,
  });
}

@JS()
@anonymous
class EcdsaParams extends Algorithm {
  external HashAlgorithmIdentifier hash;
  external factory EcdsaParams({
    HashAlgorithmIdentifier hash,
  });
}

@JS()
@anonymous
class ErrorEventInit extends EventInit {
  external num? colno;
  external dynamic error;
  external String? filename;
  external num? lineno;
  external String? message;
  external factory ErrorEventInit({
    num? colno,
    dynamic error,
    String? filename,
    num? lineno,
    String? message,
  });
}

@JS()
@anonymous
class EventInit {
  external bool? bubbles;
  external bool? cancelable;
  external bool? composed;
  external factory EventInit({
    bool? bubbles,
    bool? cancelable,
    bool? composed,
  });
}

@JS()
@anonymous
class EventListenerOptions {
  external bool? capture;
  external factory EventListenerOptions({
    bool? capture,
  });
}

@JS()
@anonymous
class EventSourceInit {
  external bool? withCredentials;
  external factory EventSourceInit({
    bool? withCredentials,
  });
}

@JS()
@anonymous
class ExtendableEventInit extends EventInit {
  external factory ExtendableEventInit();
}

@JS()
@anonymous
class ExtendableMessageEventInit extends ExtendableEventInit {
  external dynamic data;
  external String? lastEventId;
  external String? origin;
  external List<MessagePort>? ports;
  external dynamic source;
  external factory ExtendableMessageEventInit({
    dynamic data,
    String? lastEventId,
    String? origin,
    List<MessagePort>? ports,
    dynamic source,
  });
}

@JS()
@anonymous
class FetchEventInit extends ExtendableEventInit {
  external String? clientId;
  external Promise<dynamic>? preloadResponse;
  external String? replacesClientId;
  external Request request;
  external String? resultingClientId;
  external factory FetchEventInit({
    String? clientId,
    Promise<dynamic>? preloadResponse,
    String? replacesClientId,
    Request request,
    String? resultingClientId,
  });
}

@JS()
@anonymous
class FilePropertyBag extends BlobPropertyBag {
  external num? lastModified;
  external factory FilePropertyBag({
    num? lastModified,
  });
}

@JS()
@anonymous
class GetNotificationOptions {
  external String? tag;
  external factory GetNotificationOptions({
    String? tag,
  });
}

@JS()
@anonymous
class HkdfParams extends Algorithm {
  external HashAlgorithmIdentifier hash;
  external dynamic info;
  external dynamic salt;
  external factory HkdfParams({
    HashAlgorithmIdentifier hash,
    dynamic info,
    dynamic salt,
  });
}

@JS()
@anonymous
class HmacImportParams extends Algorithm {
  external HashAlgorithmIdentifier hash;
  external num? length;
  external factory HmacImportParams({
    HashAlgorithmIdentifier hash,
    num? length,
  });
}

@JS()
@anonymous
class HmacKeyGenParams extends Algorithm {
  external HashAlgorithmIdentifier hash;
  external num? length;
  external factory HmacKeyGenParams({
    HashAlgorithmIdentifier hash,
    num? length,
  });
}

@JS()
@anonymous
class IDBIndexParameters {
  external bool? multiEntry;
  external bool? unique;
  external factory IDBIndexParameters({
    bool? multiEntry,
    bool? unique,
  });
}

@JS()
@anonymous
class IDBObjectStoreParameters {
  external bool? autoIncrement;
  external dynamic keyPath;
  external factory IDBObjectStoreParameters({
    bool? autoIncrement,
    dynamic keyPath,
  });
}

@JS()
@anonymous
class IDBVersionChangeEventInit extends EventInit {
  external num? newVersion;
  external num? oldVersion;
  external factory IDBVersionChangeEventInit({
    num? newVersion,
    num? oldVersion,
  });
}

@JS()
@anonymous
class ImageBitmapOptions {
  external ColorSpaceConversion? colorSpaceConversion;
  external ImageOrientation? imageOrientation;
  external PremultiplyAlpha? premultiplyAlpha;
  external num? resizeHeight;
  external ResizeQuality? resizeQuality;
  external num? resizeWidth;
  external factory ImageBitmapOptions({
    ColorSpaceConversion? colorSpaceConversion,
    ImageOrientation? imageOrientation,
    PremultiplyAlpha? premultiplyAlpha,
    num? resizeHeight,
    ResizeQuality? resizeQuality,
    num? resizeWidth,
  });
}

@JS()
@anonymous
class ImageBitmapRenderingContextSettings {
  external bool? alpha;
  external factory ImageBitmapRenderingContextSettings({
    bool? alpha,
  });
}

@JS()
@anonymous
class ImageEncodeOptions {
  external num? quality;
  external String? type;
  external factory ImageEncodeOptions({
    num? quality,
    String? type,
  });
}

@JS()
@anonymous
class ImportMeta {
  external String url;
  external factory ImportMeta({
    String url,
  });
}

@JS()
@anonymous
class JsonWebKey {
  external String? alg;
  external String? crv;
  external String? d;
  external String? dp;
  external String? dq;
  external String? e;
  external bool? ext;
  external String? k;
  external List<String>? key_ops;
  external String? kty;
  external String? n;
  external List<RsaOtherPrimesInfo>? oth;
  external String? p;
  external String? q;
  external String? qi;
  external String? use;
  external String? x;
  external String? y;
  external factory JsonWebKey({
    String? alg,
    String? crv,
    String? d,
    String? dp,
    String? dq,
    String? e,
    bool? ext,
    String? k,
    List<String>? key_ops,
    String? kty,
    String? n,
    List<RsaOtherPrimesInfo>? oth,
    String? p,
    String? q,
    String? qi,
    String? use,
    String? x,
    String? y,
  });
}

@JS()
@anonymous
class KeyAlgorithm {
  external String name;
  external factory KeyAlgorithm({
    String name,
  });
}

@JS()
@anonymous
class MessageEventInit<T> extends EventInit {
  external T? data;
  external String? lastEventId;
  external String? origin;
  external List<MessagePort>? ports;
  external MessageEventSource? source;
  external factory MessageEventInit({
    T? data,
    String? lastEventId,
    String? origin,
    List<MessagePort>? ports,
    MessageEventSource? source,
  });
}

@JS()
@anonymous
class MidiPermissionDescriptor extends PermissionDescriptor {
  external String name;
  external bool? sysex;
  external factory MidiPermissionDescriptor({
    String name,
    bool? sysex,
  });
}

@JS()
@anonymous
class MultiCacheQueryOptions extends CacheQueryOptions {
  external String? cacheName;
  external factory MultiCacheQueryOptions({
    String? cacheName,
  });
}

@JS()
@anonymous
class NavigationPreloadState {
  external bool? enabled;
  external String? headerValue;
  external factory NavigationPreloadState({
    bool? enabled,
    String? headerValue,
  });
}

@JS()
@anonymous
class NotificationAction {
  external String action;
  external String? icon;
  external String title;
  external factory NotificationAction({
    String action,
    String? icon,
    String title,
  });
}

@JS()
@anonymous
class NotificationEventInit extends ExtendableEventInit {
  external String? action;
  external Notification notification;
  external factory NotificationEventInit({
    String? action,
    Notification notification,
  });
}

@JS()
@anonymous
class NotificationOptions {
  external List<NotificationAction>? actions;
  external String? badge;
  external String? body;
  external dynamic data;
  external NotificationDirection? dir;
  external String? icon;
  external String? image;
  external String? lang;
  external bool? renotify;
  external bool? requireInteraction;
  external bool? silent;
  external String? tag;
  external num? timestamp;
  external VibratePattern? vibrate;
  external factory NotificationOptions({
    List<NotificationAction>? actions,
    String? badge,
    String? body,
    dynamic data,
    NotificationDirection? dir,
    String? icon,
    String? image,
    String? lang,
    bool? renotify,
    bool? requireInteraction,
    bool? silent,
    String? tag,
    num? timestamp,
    VibratePattern? vibrate,
  });
}

@JS()
@anonymous
class Pbkdf2Params extends Algorithm {
  external HashAlgorithmIdentifier hash;
  external num iterations;
  external dynamic salt;
  external factory Pbkdf2Params({
    HashAlgorithmIdentifier hash,
    num iterations,
    dynamic salt,
  });
}

@JS()
@anonymous
class PerformanceObserverInit {
  external bool? buffered;
  external List<String>? entryTypes;
  external String? type;
  external factory PerformanceObserverInit({
    bool? buffered,
    List<String>? entryTypes,
    String? type,
  });
}

@JS()
@anonymous
class PermissionDescriptor {
  external PermissionName name;
  external factory PermissionDescriptor({
    PermissionName name,
  });
}

@JS()
@anonymous
class PostMessageOptions {
  external List<dynamic>? transfer;
  external factory PostMessageOptions({
    List<dynamic>? transfer,
  });
}

@JS()
@anonymous
class ProgressEventInit extends EventInit {
  external bool? lengthComputable;
  external num? loaded;
  external num? total;
  external factory ProgressEventInit({
    bool? lengthComputable,
    num? loaded,
    num? total,
  });
}

@JS()
@anonymous
class PromiseRejectionEventInit extends EventInit {
  external Promise<dynamic> promise;
  external dynamic reason;
  external factory PromiseRejectionEventInit({
    Promise<dynamic> promise,
    dynamic reason,
  });
}

@JS()
@anonymous
class PushEventInit extends ExtendableEventInit {
  external PushMessageDataInit? data;
  external factory PushEventInit({
    PushMessageDataInit? data,
  });
}

@JS()
@anonymous
class PushPermissionDescriptor extends PermissionDescriptor {
  external String name;
  external bool? userVisibleOnly;
  external factory PushPermissionDescriptor({
    String name,
    bool? userVisibleOnly,
  });
}

@JS()
@anonymous
class PushSubscriptionJSON {
  external String? endpoint;
  external num? expirationTime;
  external Record<String, String>? keys;
  external factory PushSubscriptionJSON({
    String? endpoint,
    num? expirationTime,
    Record<String, String>? keys,
  });
}

@JS()
@anonymous
class PushSubscriptionOptionsInit {
  external dynamic applicationServerKey;
  external bool? userVisibleOnly;
  external factory PushSubscriptionOptionsInit({
    dynamic applicationServerKey,
    bool? userVisibleOnly,
  });
}

@JS()
@anonymous
class QueuingStrategy<T> {
  external num? highWaterMark;
  external QueuingStrategySize<T>? size;
  external factory QueuingStrategy({
    num? highWaterMark,
    QueuingStrategySize<T>? size,
  });
}

@JS()
@anonymous
class QueuingStrategyInit {
  external num highWaterMark;
  external factory QueuingStrategyInit({
    num highWaterMark,
  });
}

@JS()
@anonymous
class ReadableStreamDefaultReadDoneResult {
  external bool done;
  external dynamic value;
  external factory ReadableStreamDefaultReadDoneResult({
    bool done,
    dynamic value,
  });
}

@JS()
@anonymous
class ReadableStreamDefaultReadValueResult<T> {
  external bool done;
  external T value;
  external factory ReadableStreamDefaultReadValueResult({
    bool done,
    T value,
  });
}

@JS()
@anonymous
class ReadableWritablePair<R, W> {
  external ReadableStream<R> readable;
  external WritableStream<W> writable;
  external factory ReadableWritablePair({
    ReadableStream<R> readable,
    WritableStream<W> writable,
  });
}

@JS()
@anonymous
class RegistrationOptions {
  external String? scope;
  external WorkerType? type;
  external ServiceWorkerUpdateViaCache? updateViaCache;
  external factory RegistrationOptions({
    String? scope,
    WorkerType? type,
    ServiceWorkerUpdateViaCache? updateViaCache,
  });
}

@JS()
@anonymous
class RequestInit {
  external BodyInit? body;
  external RequestCache? cache;
  external RequestCredentials? credentials;
  external HeadersInit? headers;
  external String? integrity;
  external bool? keepalive;
  external String? method;
  external RequestMode? mode;
  external RequestRedirect? redirect;
  external String? referrer;
  external ReferrerPolicy? referrerPolicy;
  external AbortSignal? signal;
  external dynamic window;
  external factory RequestInit({
    BodyInit? body,
    RequestCache? cache,
    RequestCredentials? credentials,
    HeadersInit? headers,
    String? integrity,
    bool? keepalive,
    String? method,
    RequestMode? mode,
    RequestRedirect? redirect,
    String? referrer,
    ReferrerPolicy? referrerPolicy,
    AbortSignal? signal,
    dynamic window,
  });
}

@JS()
@anonymous
class ResponseInit {
  external HeadersInit? headers;
  external num? status;
  external String? statusText;
  external factory ResponseInit({
    HeadersInit? headers,
    num? status,
    String? statusText,
  });
}

@JS()
@anonymous
class RsaHashedImportParams extends Algorithm {
  external HashAlgorithmIdentifier hash;
  external factory RsaHashedImportParams({
    HashAlgorithmIdentifier hash,
  });
}

@JS()
@anonymous
class RsaHashedKeyGenParams extends RsaKeyGenParams {
  external HashAlgorithmIdentifier hash;
  external factory RsaHashedKeyGenParams({
    HashAlgorithmIdentifier hash,
  });
}

@JS()
@anonymous
class RsaKeyGenParams extends Algorithm {
  external num modulusLength;
  external BigInteger publicExponent;
  external factory RsaKeyGenParams({
    num modulusLength,
    BigInteger publicExponent,
  });
}

@JS()
@anonymous
class RsaOaepParams extends Algorithm {
  external dynamic label;
  external factory RsaOaepParams({
    dynamic label,
  });
}

@JS()
@anonymous
class RsaOtherPrimesInfo {
  external String? d;
  external String? r;
  external String? t;
  external factory RsaOtherPrimesInfo({
    String? d,
    String? r,
    String? t,
  });
}

@JS()
@anonymous
class RsaPssParams extends Algorithm {
  external num saltLength;
  external factory RsaPssParams({
    num saltLength,
  });
}

@JS()
@anonymous
class StorageEstimate {
  external num? quota;
  external num? usage;
  external factory StorageEstimate({
    num? quota,
    num? usage,
  });
}

@JS()
@anonymous
class StreamPipeOptions {
  external bool? preventAbort;
  external bool? preventCancel;
  external bool? preventClose;
  external AbortSignal? signal;
  external factory StreamPipeOptions({
    bool? preventAbort,
    bool? preventCancel,
    bool? preventClose,
    AbortSignal? signal,
  });
}

@JS()
@anonymous
class SyncEventInit extends ExtendableEventInit {
  external bool? lastChance;
  external String tag;
  external factory SyncEventInit({
    bool? lastChance,
    String tag,
  });
}

@JS()
@anonymous
class TextDecodeOptions {
  external bool? stream;
  external factory TextDecodeOptions({
    bool? stream,
  });
}

@JS()
@anonymous
class TextDecoderOptions {
  external bool? fatal;
  external bool? ignoreBOM;
  external factory TextDecoderOptions({
    bool? fatal,
    bool? ignoreBOM,
  });
}

@JS()
@anonymous
class TextEncoderEncodeIntoResult {
  external num? read;
  external num? written;
  external factory TextEncoderEncodeIntoResult({
    num? read,
    num? written,
  });
}

@JS()
@anonymous
class Transformer<I, O> {
  external TransformerFlushCallback<O>? flush;
  external dynamic readableType;
  external TransformerStartCallback<O>? start;
  external TransformerTransformCallback<I, O>? transform;
  external dynamic writableType;
  external factory Transformer({
    TransformerFlushCallback<O>? flush,
    dynamic readableType,
    TransformerStartCallback<O>? start,
    TransformerTransformCallback<I, O>? transform,
    dynamic writableType,
  });
}

@JS()
@anonymous
class UnderlyingSink<W> {
  external UnderlyingSinkAbortCallback? abort;
  external UnderlyingSinkCloseCallback? close;
  external UnderlyingSinkStartCallback? start;
  external dynamic type;
  external UnderlyingSinkWriteCallback<W>? write;
  external factory UnderlyingSink({
    UnderlyingSinkAbortCallback? abort,
    UnderlyingSinkCloseCallback? close,
    UnderlyingSinkStartCallback? start,
    dynamic type,
    UnderlyingSinkWriteCallback<W>? write,
  });
}

@JS()
@anonymous
class UnderlyingSource<R> {
  external UnderlyingSourceCancelCallback? cancel;
  external UnderlyingSourcePullCallback<R>? pull;
  external UnderlyingSourceStartCallback<R>? start;
  external dynamic type;
  external factory UnderlyingSource({
    UnderlyingSourceCancelCallback? cancel,
    UnderlyingSourcePullCallback<R>? pull,
    UnderlyingSourceStartCallback<R>? start,
    dynamic type,
  });
}

@JS()
@anonymous
class WebGLContextAttributes {
  external bool? alpha;
  external bool? antialias;
  external bool? depth;
  external bool? desynchronized;
  external bool? failIfMajorPerformanceCaveat;
  external WebGLPowerPreference? powerPreference;
  external bool? premultipliedAlpha;
  external bool? preserveDrawingBuffer;
  external bool? stencil;
  external factory WebGLContextAttributes({
    bool? alpha,
    bool? antialias,
    bool? depth,
    bool? desynchronized,
    bool? failIfMajorPerformanceCaveat,
    WebGLPowerPreference? powerPreference,
    bool? premultipliedAlpha,
    bool? preserveDrawingBuffer,
    bool? stencil,
  });
}

@JS()
@anonymous
class WebGLContextEventInit extends EventInit {
  external String? statusMessage;
  external factory WebGLContextEventInit({
    String? statusMessage,
  });
}

@JS()
@anonymous
class WorkerOptions {
  external RequestCredentials? credentials;
  external String? name;
  external WorkerType? type;
  external factory WorkerOptions({
    RequestCredentials? credentials,
    String? name,
    WorkerType? type,
  });
}

@JS()
@anonymous
class EventListener {
  external void call(Event evt);
  external factory EventListener();
}

@JS()
@anonymous
class ANGLE_instanced_arrays {
  external void drawArraysInstancedANGLE(GLenum mode, GLint first, GLsizei count, GLsizei primcount);
  external void drawElementsInstancedANGLE(GLenum mode, GLsizei count, GLenum type, GLintptr offset, GLsizei primcount);
  external void vertexAttribDivisorANGLE(GLuint index, GLuint divisor);
  external GLenum get VERTEX_ATTRIB_ARRAY_DIVISOR_ANGLE;
  external factory ANGLE_instanced_arrays({
    GLenum VERTEX_ATTRIB_ARRAY_DIVISOR_ANGLE,
  });
}

@JS()
@anonymous
class AbortController {
  external AbortSignal get signal;
  external void abort();
  external factory AbortController({
    AbortSignal signal,
  });
}

@JS(r'AbortController')
external IAbortController JAbortController;

@JS()
@anonymous
class AbortSignalEventMap {
  external Event abort;
  external factory AbortSignalEventMap({
    Event abort,
  });
}

@JS()
@anonymous
class AbortSignal extends EventTarget {
  external bool get aborted;
  external dynamic Function(Event ev)? onabort;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory AbortSignal({
    bool aborted,
    dynamic Function(Event ev)? onabort,
  });
}

@JS(r'AbortSignal')
external IAbortSignal JAbortSignal;

@JS()
@anonymous
class AbstractWorkerEventMap {
  external ErrorEvent error;
  external factory AbstractWorkerEventMap({
    ErrorEvent error,
  });
}

@JS()
@anonymous
class AbstractWorker {
  external dynamic Function(ErrorEvent ev)? onerror;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory AbstractWorker({
    dynamic Function(ErrorEvent ev)? onerror,
  });
}

@JS()
@anonymous
class AesCfbParams extends Algorithm {
  external dynamic iv;
  external factory AesCfbParams({
    dynamic iv,
  });
}

@JS()
@anonymous
class AesCmacParams extends Algorithm {
  external num length;
  external factory AesCmacParams({
    num length,
  });
}

@JS()
@anonymous
class AnimationFrameProvider {
  external void cancelAnimationFrame(num handle);
  external num requestAnimationFrame(FrameRequestCallback callback);
  external factory AnimationFrameProvider();
}

@JS()
@anonymous
class Blob {
  external num get size;
  external String get type;
  external Promise<ByteBuffer> arrayBuffer();
  external Blob slice(num start, num end, String contentType);
  external ReadableStream stream();
  external Promise<String> text();
  external factory Blob({
    num size,
    String type,
  });
}

@JS(r'Blob')
external IBlob JBlob;

@JS()
@anonymous
class Body {
  external ReadableStream<Uint8List>? get body;
  external bool get bodyUsed;
  external Promise<ByteBuffer> arrayBuffer();
  external Promise<Blob> blob();
  external Promise<FormData> formData();
  external Promise<dynamic> json();
  external Promise<String> text();
  external factory Body({
    ReadableStream<Uint8List>? body,
    bool bodyUsed,
  });
}

@JS()
@anonymous
class BroadcastChannelEventMap {
  external MessageEvent message;
  external MessageEvent messageerror;
  external factory BroadcastChannelEventMap({
    MessageEvent message,
    MessageEvent messageerror,
  });
}

@JS()
@anonymous
class BroadcastChannel extends EventTarget {
  external String get name;
  external dynamic Function(MessageEvent ev)? onmessage;
  external dynamic Function(MessageEvent ev)? onmessageerror;
  external void close();
  external void postMessage(dynamic message);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory BroadcastChannel({
    String name,
    dynamic Function(MessageEvent ev)? onmessage,
    dynamic Function(MessageEvent ev)? onmessageerror,
  });
}

@JS(r'BroadcastChannel')
external IBroadcastChannel JBroadcastChannel;

@JS()
@anonymous
class ByteLengthQueuingStrategy extends QueuingStrategy<TypedData> {
  external num get highWaterMark;
  external QueuingStrategySize<TypedData> get size;
  external factory ByteLengthQueuingStrategy({
    num highWaterMark,
    QueuingStrategySize<TypedData> size,
  });
}

@JS(r'ByteLengthQueuingStrategy')
external IByteLengthQueuingStrategy JByteLengthQueuingStrategy;

@JS()
@anonymous
class Cache {
  external Promise<void> add(RequestInfo request);
  external Promise<void> addAll(List<RequestInfo> requests);
  external Promise<bool> delete(RequestInfo request, CacheQueryOptions options);
  external Promise<List<Request>> keys(RequestInfo request, CacheQueryOptions options);
  external Promise<Response?> match(RequestInfo request, CacheQueryOptions options);
  external Promise<List<Response>> matchAll(RequestInfo request, CacheQueryOptions options);
  external Promise<void> put(RequestInfo request, Response response);
  external factory Cache();
}

@JS(r'Cache')
external ICache JCache;

@JS()
@anonymous
class CacheStorage {
  external Promise<bool> delete(String cacheName);
  external Promise<bool> has(String cacheName);
  external Promise<List<String>> keys();
  external Promise<Response?> match(RequestInfo request, MultiCacheQueryOptions options);
  external Promise<Cache> open(String cacheName);
  external factory CacheStorage();
}

@JS(r'CacheStorage')
external ICacheStorage JCacheStorage;

@JS()
@anonymous
class CanvasCompositing {
  external num globalAlpha;
  external String globalCompositeOperation;
  external factory CanvasCompositing({
    num globalAlpha,
    String globalCompositeOperation,
  });
}

@JS()
@anonymous
class CanvasDrawImage {
  external void drawImage(CanvasImageSource image, num dx, num dy);
  external factory CanvasDrawImage();
}

@JS()
@anonymous
class CanvasDrawPath {
  external void beginPath();
  external void clip(CanvasFillRule fillRule);
  external void fill(CanvasFillRule fillRule);
  external bool isPointInPath(num x, num y, CanvasFillRule fillRule);
  external bool isPointInStroke(num x, num y);
  external void stroke();
  external factory CanvasDrawPath();
}

@JS()
@anonymous
class CanvasFillStrokeStyles {
  external dynamic fillStyle;
  external dynamic strokeStyle;
  external CanvasGradient createLinearGradient(num x0, num y0, num x1, num y1);
  external CanvasPattern? createPattern(CanvasImageSource image, String? repetition);
  external CanvasGradient createRadialGradient(num x0, num y0, num r0, num x1, num y1, num r1);
  external factory CanvasFillStrokeStyles({
    dynamic fillStyle,
    dynamic strokeStyle,
  });
}

@JS()
@anonymous
class CanvasFilters {
  external String filter;
  external factory CanvasFilters({
    String filter,
  });
}

@JS()
@anonymous
class CanvasGradient {
  external void addColorStop(num offset, String color);
  external factory CanvasGradient();
}

@JS(r'CanvasGradient')
external ICanvasGradient JCanvasGradient;

@JS()
@anonymous
class CanvasImageData {
  external ImageData createImageData(num sw, num sh);
  external ImageData getImageData(num sx, num sy, num sw, num sh);
  external void putImageData(ImageData imagedata, num dx, num dy);
  external factory CanvasImageData();
}

@JS()
@anonymous
class CanvasImageSmoothing {
  external bool imageSmoothingEnabled;
  external ImageSmoothingQuality imageSmoothingQuality;
  external factory CanvasImageSmoothing({
    bool imageSmoothingEnabled,
    ImageSmoothingQuality imageSmoothingQuality,
  });
}

@JS()
@anonymous
class CanvasPath {
  external void arc(num x, num y, num radius, num startAngle, num endAngle, bool anticlockwise);
  external void arcTo(num x1, num y1, num x2, num y2, num radius);
  external void bezierCurveTo(num cp1x, num cp1y, num cp2x, num cp2y, num x, num y);
  external void closePath();
  external void ellipse(
      num x, num y, num radiusX, num radiusY, num rotation, num startAngle, num endAngle, bool anticlockwise);
  external void lineTo(num x, num y);
  external void moveTo(num x, num y);
  external void quadraticCurveTo(num cpx, num cpy, num x, num y);
  external void rect(num x, num y, num w, num h);
  external factory CanvasPath();
}

@JS()
@anonymous
class CanvasPathDrawingStyles {
  external CanvasLineCap lineCap;
  external num lineDashOffset;
  external CanvasLineJoin lineJoin;
  external num lineWidth;
  external num miterLimit;
  external List<num> getLineDash();
  external void setLineDash(List<num> segments);
  external factory CanvasPathDrawingStyles({
    CanvasLineCap lineCap,
    num lineDashOffset,
    CanvasLineJoin lineJoin,
    num lineWidth,
    num miterLimit,
  });
}

@JS()
@anonymous
class CanvasPattern {
  external void setTransform(DOMMatrix2DInit transform);
  external factory CanvasPattern();
}

@JS(r'CanvasPattern')
external ICanvasPattern JCanvasPattern;

@JS()
@anonymous
class CanvasRect {
  external void clearRect(num x, num y, num w, num h);
  external void fillRect(num x, num y, num w, num h);
  external void strokeRect(num x, num y, num w, num h);
  external factory CanvasRect();
}

@JS()
@anonymous
class CanvasShadowStyles {
  external num shadowBlur;
  external String shadowColor;
  external num shadowOffsetX;
  external num shadowOffsetY;
  external factory CanvasShadowStyles({
    num shadowBlur,
    String shadowColor,
    num shadowOffsetX,
    num shadowOffsetY,
  });
}

@JS()
@anonymous
class CanvasState {
  external void restore();
  external void save();
  external factory CanvasState();
}

@JS()
@anonymous
class CanvasText {
  external void fillText(String text, num x, num y, num maxWidth);
  external TextMetrics measureText(String text);
  external void strokeText(String text, num x, num y, num maxWidth);
  external factory CanvasText();
}

@JS()
@anonymous
class CanvasTextDrawingStyles {
  external CanvasDirection direction;
  external String font;
  external CanvasTextAlign textAlign;
  external CanvasTextBaseline textBaseline;
  external factory CanvasTextDrawingStyles({
    CanvasDirection direction,
    String font,
    CanvasTextAlign textAlign,
    CanvasTextBaseline textBaseline,
  });
}

@JS()
@anonymous
class CanvasTransform {
  external DomMatrix getTransform();
  external void resetTransform();
  external void rotate(num angle);
  external void scale(num x, num y);
  external void setTransform(num a, num b, num c, num d, num e, num f);
  external void transform(num a, num b, num c, num d, num e, num f);
  external void translate(num x, num y);
  external factory CanvasTransform();
}

@JS()
@anonymous
class Client {
  external FrameType get frameType;
  external String get id;
  external ClientTypes get type;
  external String get url;
  external void postMessage(dynamic message, List<Transferable> transfer);
  external factory Client({
    FrameType frameType,
    String id,
    ClientTypes type,
    String url,
  });
}

@JS(r'Client')
external IClient JClient;

@JS()
@anonymous
class Clients {
  external Promise<void> claim();
  external Promise<Client?> get(String id);
  external Promise<List<dynamic>> matchAll<T extends ClientQueryOptions>(T options);
  external Promise<WindowClient?> openWindow(String url);
  external factory Clients();
}

@JS(r'Clients')
external IClients JClients;

@JS()
@anonymous
class CloseEvent extends Event {
  external num get code;
  external String get reason;
  external bool get wasClean;
  external factory CloseEvent({
    num code,
    String reason,
    bool wasClean,
  });
}

@JS(r'CloseEvent')
external ICloseEvent JCloseEvent;

@JS()
@anonymous
class ConcatParams extends Algorithm {
  external Uint8List algorithmId;
  external dynamic hash;
  external Uint8List partyUInfo;
  external Uint8List partyVInfo;
  external Uint8List? privateInfo;
  external Uint8List? publicInfo;
  external factory ConcatParams({
    Uint8List algorithmId,
    dynamic hash,
    Uint8List partyUInfo,
    Uint8List partyVInfo,
    Uint8List? privateInfo,
    Uint8List? publicInfo,
  });
}

@JS()
@anonymous
class CountQueuingStrategy extends QueuingStrategy {
  external num get highWaterMark;
  external QueuingStrategySize get size;
  external factory CountQueuingStrategy({
    num highWaterMark,
    QueuingStrategySize size,
  });
}

@JS(r'CountQueuingStrategy')
external ICountQueuingStrategy JCountQueuingStrategy;

@JS()
@anonymous
class Crypto {
  external SubtleCrypto get subtle;
  external T getRandomValues<T extends dynamic>(T array);
  external factory Crypto({
    SubtleCrypto subtle,
  });
}

@JS(r'Crypto')
external ICrypto JCrypto;

@JS()
@anonymous
class CryptoKey {
  external KeyAlgorithm get algorithm;
  external bool get extractable;
  external KeyType get type;
  external List<KeyUsage> get usages;
  external factory CryptoKey({
    KeyAlgorithm algorithm,
    bool extractable,
    KeyType type,
    List<KeyUsage> usages,
  });
}

@JS(r'CryptoKey')
external ICryptoKey JCryptoKey;

@JS()
@anonymous
class CustomEvent<T> extends Event {
  external T get detail;
  external void initCustomEvent(String typeArg, bool canBubbleArg, bool cancelableArg, T detailArg);
  external factory CustomEvent({
    T detail,
  });
}

@JS(r'CustomEvent')
external ICustomEvent JCustomEvent;

@JS()
@anonymous
class DOMException {
  external num get code;
  external String get message;
  external String get name;
  external num get ABORT_ERR;
  external num get DATA_CLONE_ERR;
  external num get DOMSTRING_SIZE_ERR;
  external num get HIERARCHY_REQUEST_ERR;
  external num get INDEX_SIZE_ERR;
  external num get INUSE_ATTRIBUTE_ERR;
  external num get INVALID_ACCESS_ERR;
  external num get INVALID_CHARACTER_ERR;
  external num get INVALID_MODIFICATION_ERR;
  external num get INVALID_NODE_TYPE_ERR;
  external num get INVALID_STATE_ERR;
  external num get NAMESPACE_ERR;
  external num get NETWORK_ERR;
  external num get NOT_FOUND_ERR;
  external num get NOT_SUPPORTED_ERR;
  external num get NO_DATA_ALLOWED_ERR;
  external num get NO_MODIFICATION_ALLOWED_ERR;
  external num get QUOTA_EXCEEDED_ERR;
  external num get SECURITY_ERR;
  external num get SYNTAX_ERR;
  external num get TIMEOUT_ERR;
  external num get TYPE_MISMATCH_ERR;
  external num get URL_MISMATCH_ERR;
  external num get VALIDATION_ERR;
  external num get WRONG_DOCUMENT_ERR;
  external factory DOMException({
    num code,
    String message,
    String name,
    num ABORT_ERR,
    num DATA_CLONE_ERR,
    num DOMSTRING_SIZE_ERR,
    num HIERARCHY_REQUEST_ERR,
    num INDEX_SIZE_ERR,
    num INUSE_ATTRIBUTE_ERR,
    num INVALID_ACCESS_ERR,
    num INVALID_CHARACTER_ERR,
    num INVALID_MODIFICATION_ERR,
    num INVALID_NODE_TYPE_ERR,
    num INVALID_STATE_ERR,
    num NAMESPACE_ERR,
    num NETWORK_ERR,
    num NOT_FOUND_ERR,
    num NOT_SUPPORTED_ERR,
    num NO_DATA_ALLOWED_ERR,
    num NO_MODIFICATION_ALLOWED_ERR,
    num QUOTA_EXCEEDED_ERR,
    num SECURITY_ERR,
    num SYNTAX_ERR,
    num TIMEOUT_ERR,
    num TYPE_MISMATCH_ERR,
    num URL_MISMATCH_ERR,
    num VALIDATION_ERR,
    num WRONG_DOCUMENT_ERR,
  });
}

@JS(r'DOMException')
external IDOMException JDOMException;

@JS()
@anonymous
class DOMMatrix extends DomMatrixReadOnly {
  external num a;
  external num b;
  external num c;
  external num d;
  external num e;
  external num f;
  external num m11;
  external num m12;
  external num m13;
  external num m14;
  external num m21;
  external num m22;
  external num m23;
  external num m24;
  external num m31;
  external num m32;
  external num m33;
  external num m34;
  external num m41;
  external num m42;
  external num m43;
  external num m44;
  external DomMatrix invertSelf();
  external DomMatrix multiplySelf(DOMMatrixInit other);
  external DomMatrix preMultiplySelf(DOMMatrixInit other);
  external DomMatrix rotateAxisAngleSelf(num x, num y, num z, num angle);
  external DomMatrix rotateFromVectorSelf(num x, num y);
  external DomMatrix rotateSelf(num rotX, num rotY, num rotZ);
  external DomMatrix scale3dSelf(num scale, num originX, num originY, num originZ);
  external DomMatrix scaleSelf(num scaleX, num scaleY, num scaleZ, num originX, num originY, num originZ);
  external DomMatrix skewXSelf(num sx);
  external DomMatrix skewYSelf(num sy);
  external DomMatrix translateSelf(num tx, num ty, num tz);
  external factory DOMMatrix({
    num a,
    num b,
    num c,
    num d,
    num e,
    num f,
    num m11,
    num m12,
    num m13,
    num m14,
    num m21,
    num m22,
    num m23,
    num m24,
    num m31,
    num m32,
    num m33,
    num m34,
    num m41,
    num m42,
    num m43,
    num m44,
  });
}

@JS(r'DOMMatrix')
external IDOMMatrix JDOMMatrix;

@JS()
@anonymous
class DOMMatrixReadOnly {
  external num get a;
  external num get b;
  external num get c;
  external num get d;
  external num get e;
  external num get f;
  external bool get is2D;
  external bool get isIdentity;
  external num get m11;
  external num get m12;
  external num get m13;
  external num get m14;
  external num get m21;
  external num get m22;
  external num get m23;
  external num get m24;
  external num get m31;
  external num get m32;
  external num get m33;
  external num get m34;
  external num get m41;
  external num get m42;
  external num get m43;
  external num get m44;
  external DomMatrix flipX();
  external DomMatrix flipY();
  external DomMatrix inverse();
  external DomMatrix multiply(DOMMatrixInit other);
  external DomMatrix rotate(num rotX, num rotY, num rotZ);
  external DomMatrix rotateAxisAngle(num x, num y, num z, num angle);
  external DomMatrix rotateFromVector(num x, num y);
  external DomMatrix scale(num scaleX, num scaleY, num scaleZ, num originX, num originY, num originZ);
  external DomMatrix scale3d(num scale, num originX, num originY, num originZ);
  external DomMatrix scaleNonUniform(num scaleX, num scaleY);
  external DomMatrix skewX(num sx);
  external DomMatrix skewY(num sy);
  external Float32List toFloat32Array();
  external Float64List toFloat64Array();
  external dynamic toJSON();
  external DomPoint transformPoint(DOMPointInit point);
  external DomMatrix translate(num tx, num ty, num tz);
  external factory DOMMatrixReadOnly({
    num a,
    num b,
    num c,
    num d,
    num e,
    num f,
    bool is2D,
    bool isIdentity,
    num m11,
    num m12,
    num m13,
    num m14,
    num m21,
    num m22,
    num m23,
    num m24,
    num m31,
    num m32,
    num m33,
    num m34,
    num m41,
    num m42,
    num m43,
    num m44,
  });
}

@JS(r'DOMMatrixReadOnly')
external IDOMMatrixReadOnly JDOMMatrixReadOnly;

@JS()
@anonymous
class DOMPoint extends DomPointReadOnly {
  external num w;
  external num x;
  external num y;
  external num z;
  external factory DOMPoint({
    num w,
    num x,
    num y,
    num z,
  });
}

@JS(r'DOMPoint')
external IDOMPoint JDOMPoint;

@JS()
@anonymous
class DOMPointReadOnly {
  external num get w;
  external num get x;
  external num get y;
  external num get z;
  external DomPoint matrixTransform(DOMMatrixInit matrix);
  external dynamic toJSON();
  external factory DOMPointReadOnly({
    num w,
    num x,
    num y,
    num z,
  });
}

@JS(r'DOMPointReadOnly')
external IDOMPointReadOnly JDOMPointReadOnly;

@JS()
@anonymous
class DOMQuad {
  external DomPoint get p1;
  external DomPoint get p2;
  external DomPoint get p3;
  external DomPoint get p4;
  external DOMRect getBounds();
  external dynamic toJSON();
  external factory DOMQuad({
    DomPoint p1,
    DomPoint p2,
    DomPoint p3,
    DomPoint p4,
  });
}

@JS(r'DOMQuad')
external IDOMQuad JDOMQuad;

@JS()
@anonymous
class DOMRect extends DomRectReadOnly {
  external num height;
  external num width;
  external num x;
  external num y;
  external factory DOMRect({
    num height,
    num width,
    num x,
    num y,
  });
}

@JS(r'DOMRect')
external IDOMRect JDOMRect;

@JS()
@anonymous
class DOMRectReadOnly {
  external num get bottom;
  external num get height;
  external num get left;
  external num get right;
  external num get top;
  external num get width;
  external num get x;
  external num get y;
  external dynamic toJSON();
  external factory DOMRectReadOnly({
    num bottom,
    num height,
    num left,
    num right,
    num top,
    num width,
    num x,
    num y,
  });
}

@JS(r'DOMRectReadOnly')
external IDOMRectReadOnly JDOMRectReadOnly;

@JS()
@anonymous
class DOMStringList {
  external num get length;
  external bool contains(String string);
  external String? item(num index);
  external factory DOMStringList({
    num length,
  });
}

@JS(r'DOMStringList')
external IDOMStringList JDOMStringList;

@JS()
@anonymous
class DedicatedWorkerGlobalScopeEventMap extends WorkerGlobalScopeEventMap {
  external MessageEvent message;
  external MessageEvent messageerror;
  external factory DedicatedWorkerGlobalScopeEventMap({
    MessageEvent message,
    MessageEvent messageerror,
  });
}

@JS()
@anonymous
class DedicatedWorkerGlobalScope extends WorkerGlobalScope {
  external String get name;
  external dynamic Function(MessageEvent ev)? onmessage;
  external dynamic Function(MessageEvent ev)? onmessageerror;
  external void close();
  external void postMessage(dynamic message, List<Transferable> transfer);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory DedicatedWorkerGlobalScope({
    String name,
    dynamic Function(MessageEvent ev)? onmessage,
    dynamic Function(MessageEvent ev)? onmessageerror,
  });
}

@JS(r'DedicatedWorkerGlobalScope')
external IDedicatedWorkerGlobalScope JDedicatedWorkerGlobalScope;

@JS()
@anonymous
class DhImportKeyParams extends Algorithm {
  external Uint8List generator;
  external Uint8List prime;
  external factory DhImportKeyParams({
    Uint8List generator,
    Uint8List prime,
  });
}

@JS()
@anonymous
class DhKeyAlgorithm extends KeyAlgorithm {
  external Uint8List generator;
  external Uint8List prime;
  external factory DhKeyAlgorithm({
    Uint8List generator,
    Uint8List prime,
  });
}

@JS()
@anonymous
class DhKeyDeriveParams extends Algorithm {
  external CryptoKey public;
  external factory DhKeyDeriveParams({
    CryptoKey public,
  });
}

@JS()
@anonymous
class DhKeyGenParams extends Algorithm {
  external Uint8List generator;
  external Uint8List prime;
  external factory DhKeyGenParams({
    Uint8List generator,
    Uint8List prime,
  });
}

@JS()
@anonymous
class EXT_blend_minmax {
  external GLenum get MAX_EXT;
  external GLenum get MIN_EXT;
  external factory EXT_blend_minmax({
    GLenum MAX_EXT,
    GLenum MIN_EXT,
  });
}

@JS()
@anonymous
class EXT_frag_depth {
  external factory EXT_frag_depth();
}

@JS()
@anonymous
class EXT_sRGB {
  external GLenum get FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING_EXT;
  external GLenum get SRGB8_ALPHA8_EXT;
  external GLenum get SRGB_ALPHA_EXT;
  external GLenum get SRGB_EXT;
  external factory EXT_sRGB({
    GLenum FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING_EXT,
    GLenum SRGB8_ALPHA8_EXT,
    GLenum SRGB_ALPHA_EXT,
    GLenum SRGB_EXT,
  });
}

@JS()
@anonymous
class EXT_shader_texture_lod {
  external factory EXT_shader_texture_lod();
}

@JS()
@anonymous
class EXT_texture_filter_anisotropic {
  external GLenum get MAX_TEXTURE_MAX_ANISOTROPY_EXT;
  external GLenum get TEXTURE_MAX_ANISOTROPY_EXT;
  external factory EXT_texture_filter_anisotropic({
    GLenum MAX_TEXTURE_MAX_ANISOTROPY_EXT,
    GLenum TEXTURE_MAX_ANISOTROPY_EXT,
  });
}

@JS()
@anonymous
class ErrorEvent extends Event {
  external num get colno;
  external dynamic get error;
  external String get filename;
  external num get lineno;
  external String get message;
  external factory ErrorEvent({
    num colno,
    dynamic error,
    String filename,
    num lineno,
    String message,
  });
}

@JS(r'ErrorEvent')
external IErrorEvent JErrorEvent;

@JS()
@anonymous
class Event {
  external bool get bubbles;
  external bool cancelBubble;
  external bool get cancelable;
  external bool get composed;
  external EventTarget? get currentTarget;
  external bool get defaultPrevented;
  external num get eventPhase;
  external bool get isTrusted;
  external bool returnValue;
  external EventTarget? get srcElement;
  external EventTarget? get target;
  external num get timeStamp;
  external String get type;
  external List<EventTarget> composedPath();
  external void initEvent(String type, bool bubbles, bool cancelable);
  external void preventDefault();
  external void stopImmediatePropagation();
  external void stopPropagation();
  external num get AT_TARGET;
  external num get BUBBLING_PHASE;
  external num get CAPTURING_PHASE;
  external num get NONE;
  external factory Event({
    bool bubbles,
    bool cancelBubble,
    bool cancelable,
    bool composed,
    EventTarget? currentTarget,
    bool defaultPrevented,
    num eventPhase,
    bool isTrusted,
    bool returnValue,
    EventTarget? srcElement,
    EventTarget? target,
    num timeStamp,
    String type,
    num AT_TARGET,
    num BUBBLING_PHASE,
    num CAPTURING_PHASE,
    num NONE,
  });
}

@JS(r'Event')
external IEvent JEvent;

@JS()
@anonymous
class EventListenerObject {
  external void handleEvent(Event evt);
  external factory EventListenerObject();
}

@JS()
@anonymous
class EventSourceEventMap {
  external Event error;
  external MessageEvent message;
  external Event open;
  external factory EventSourceEventMap({
    Event error,
    MessageEvent message,
    Event open,
  });
}

@JS()
@anonymous
class EventSource extends EventTarget {
  external dynamic Function(Event ev)? onerror;
  external dynamic Function(MessageEvent ev)? onmessage;
  external dynamic Function(Event ev)? onopen;
  external num get readyState;
  external String get url;
  external bool get withCredentials;
  external void close();
  external num get CLOSED;
  external num get CONNECTING;
  external num get OPEN;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory EventSource({
    dynamic Function(Event ev)? onerror,
    dynamic Function(MessageEvent ev)? onmessage,
    dynamic Function(Event ev)? onopen,
    num readyState,
    String url,
    bool withCredentials,
    num CLOSED,
    num CONNECTING,
    num OPEN,
  });
}

@JS(r'EventSource')
external IEventSource JEventSource;

@JS()
@anonymous
class EventTarget {
  external void addEventListener(String type, EventListenerOrEventListenerObject? listener, dynamic options);
  external bool dispatchEvent(Event event);
  external void removeEventListener(String type, EventListenerOrEventListenerObject? callback, dynamic options);
  external factory EventTarget();
}

@JS(r'EventTarget')
external IEventTarget JEventTarget;

@JS()
@anonymous
class ExtendableEvent extends Event {
  external void waitUntil(dynamic f);
  external factory ExtendableEvent();
}

@JS(r'ExtendableEvent')
external IExtendableEvent JExtendableEvent;

@JS()
@anonymous
class ExtendableMessageEvent extends ExtendableEvent {
  external dynamic get data;
  external String get lastEventId;
  external String get origin;
  external List<MessagePort> get ports;
  external dynamic get source;
  external factory ExtendableMessageEvent({
    dynamic data,
    String lastEventId,
    String origin,
    List<MessagePort> ports,
    dynamic source,
  });
}

@JS(r'ExtendableMessageEvent')
external IExtendableMessageEvent JExtendableMessageEvent;

@JS()
@anonymous
class FetchEvent extends ExtendableEvent {
  external String get clientId;
  external Promise<dynamic> get preloadResponse;
  external Request get request;
  external String get resultingClientId;
  external void respondWith(dynamic r);
  external factory FetchEvent({
    String clientId,
    Promise<dynamic> preloadResponse,
    Request request,
    String resultingClientId,
  });
}

@JS(r'FetchEvent')
external IFetchEvent JFetchEvent;

@JS()
@anonymous
class File extends Blob {
  external num get lastModified;
  external String get name;
  external factory File({
    num lastModified,
    String name,
  });
}

@JS(r'File')
external IFile JFile;

@JS()
@anonymous
class FileList {
  external num get length;
  external File? item(num index);
  external factory FileList({
    num length,
  });
}

@JS(r'FileList')
external IFileList JFileList;

@JS()
@anonymous
class FileReaderEventMap {
  external ProgressEvent<FileReader> abort;
  external ProgressEvent<FileReader> error;
  external ProgressEvent<FileReader> load;
  external ProgressEvent<FileReader> loadend;
  external ProgressEvent<FileReader> loadstart;
  external ProgressEvent<FileReader> progress;
  external factory FileReaderEventMap({
    ProgressEvent<FileReader> abort,
    ProgressEvent<FileReader> error,
    ProgressEvent<FileReader> load,
    ProgressEvent<FileReader> loadend,
    ProgressEvent<FileReader> loadstart,
    ProgressEvent<FileReader> progress,
  });
}

@JS()
@anonymous
class FileReader extends EventTarget {
  external DomException? get error;
  external dynamic Function(ProgressEvent<FileReader> ev)? onabort;
  external dynamic Function(ProgressEvent<FileReader> ev)? onerror;
  external dynamic Function(ProgressEvent<FileReader> ev)? onload;
  external dynamic Function(ProgressEvent<FileReader> ev)? onloadend;
  external dynamic Function(ProgressEvent<FileReader> ev)? onloadstart;
  external dynamic Function(ProgressEvent<FileReader> ev)? onprogress;
  external num get readyState;
  external dynamic get result;
  external void abort();
  external void readAsArrayBuffer(Blob blob);
  external void readAsBinaryString(Blob blob);
  external void readAsDataURL(Blob blob);
  external void readAsText(Blob blob, String encoding);
  external num get DONE;
  external num get EMPTY;
  external num get LOADING;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory FileReader({
    DomException? error,
    dynamic Function(ProgressEvent<FileReader> ev)? onabort,
    dynamic Function(ProgressEvent<FileReader> ev)? onerror,
    dynamic Function(ProgressEvent<FileReader> ev)? onload,
    dynamic Function(ProgressEvent<FileReader> ev)? onloadend,
    dynamic Function(ProgressEvent<FileReader> ev)? onloadstart,
    dynamic Function(ProgressEvent<FileReader> ev)? onprogress,
    num readyState,
    dynamic result,
    num DONE,
    num EMPTY,
    num LOADING,
  });
}

@JS(r'FileReader')
external IFileReader JFileReader;

@JS()
@anonymous
class FileReaderSync {
  external ByteBuffer readAsArrayBuffer(Blob blob);
  external String readAsBinaryString(Blob blob);
  external String readAsDataURL(Blob blob);
  external String readAsText(Blob blob, String encoding);
  external factory FileReaderSync();
}

@JS(r'FileReaderSync')
external IFileReaderSync JFileReaderSync;

@JS()
@anonymous
class FormData {
  external void append(String name, dynamic value, String fileName);
  external void delete(String name);
  external FormDataEntryValue? get(String name);
  external List<FormDataEntryValue> getAll(String name);
  external bool has(String name);
  external void set(String name, dynamic value, String fileName);
  external void forEach(
      void Function(FormDataEntryValue value, String key, FormData parent) callbackfn, dynamic thisArg);
  external factory FormData();
}

@JS(r'FormData')
external IFormData JFormData;

@JS()
@anonymous
class GenericTransformStream {
  external ReadableStream get readable;
  external WritableStream get writable;
  external factory GenericTransformStream({
    ReadableStream readable,
    WritableStream writable,
  });
}

@JS()
@anonymous
class Headers {
  external void append(String name, String value);
  external void delete(String name);
  external String? get(String name);
  external bool has(String name);
  external void set(String name, String value);
  external void forEach(void Function(String value, String key, Headers parent) callbackfn, dynamic thisArg);
  external factory Headers();
}

@JS(r'Headers')
external IHeaders JHeaders;

@JS()
@anonymous
class IDBArrayKey extends List<IDBValidKey> {
  external factory IDBArrayKey();
}

@JS()
@anonymous
class IDBCursor {
  external IDBCursorDirection get direction;
  external IDBValidKey get key;
  external IDBValidKey get primaryKey;
  external dynamic get source;
  external void advance(num count);
  external void continuePrimaryKey(IDBValidKey key, IDBValidKey primaryKey);
  external Request<dynamic> delete();
  external Request<IDBValidKey> update(dynamic value);
  external factory IDBCursor({
    IDBCursorDirection direction,
    IDBValidKey key,
    IDBValidKey primaryKey,
    dynamic source,
  });
}

@JS(r'IDBCursor')
external IIDBCursor JIDBCursor;

@JS()
@anonymous
class IDBCursorWithValue extends Cursor {
  external dynamic get value;
  external factory IDBCursorWithValue({
    dynamic value,
  });
}

@JS(r'IDBCursorWithValue')
external IIDBCursorWithValue JIDBCursorWithValue;

@JS()
@anonymous
class IDBDatabaseEventMap {
  external Event abort;
  external Event close;
  external Event error;
  external VersionChangeEvent versionchange;
  external factory IDBDatabaseEventMap({
    Event abort,
    Event close,
    Event error,
    VersionChangeEvent versionchange,
  });
}

@JS()
@anonymous
class IDBDatabase extends EventTarget {
  external String get name;
  external DomStringList get objectStoreNames;
  external dynamic Function(Event ev)? onabort;
  external dynamic Function(Event ev)? onclose;
  external dynamic Function(Event ev)? onerror;
  external dynamic Function(VersionChangeEvent ev)? onversionchange;
  external num get version;
  external void close();
  external ObjectStore createObjectStore(String name, IDBObjectStoreParameters options);
  external void deleteObjectStore(String name);
  external Transaction transaction(dynamic storeNames, IDBTransactionMode mode);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory IDBDatabase({
    String name,
    DomStringList objectStoreNames,
    dynamic Function(Event ev)? onabort,
    dynamic Function(Event ev)? onclose,
    dynamic Function(Event ev)? onerror,
    dynamic Function(VersionChangeEvent ev)? onversionchange,
    num version,
  });
}

@JS(r'IDBDatabase')
external IIDBDatabase JIDBDatabase;

@JS()
@anonymous
class IDBFactory {
  external num cmp(dynamic first, dynamic second);
  external OpenDBRequest deleteDatabase(String name);
  external OpenDBRequest open(String name, num version);
  external factory IDBFactory();
}

@JS(r'IDBFactory')
external IIDBFactory JIDBFactory;

@JS()
@anonymous
class IDBIndex {
  external dynamic get keyPath;
  external bool get multiEntry;
  external String name;
  external ObjectStore get objectStore;
  external bool get unique;
  external Request<num> count(dynamic key);
  external Request<dynamic> get(dynamic key);
  external Request<List<dynamic>> getAll(dynamic query, num count);
  external Request<List<IDBValidKey>> getAllKeys(dynamic query, num count);
  external Request<IDBValidKey?> getKey(dynamic key);
  external Request<CursorWithValue?> openCursor(dynamic query, IDBCursorDirection direction);
  external Request<Cursor?> openKeyCursor(dynamic query, IDBCursorDirection direction);
  external factory IDBIndex({
    dynamic keyPath,
    bool multiEntry,
    String name,
    ObjectStore objectStore,
    bool unique,
  });
}

@JS(r'IDBIndex')
external IIDBIndex JIDBIndex;

@JS()
@anonymous
class IDBKeyRange {
  external dynamic get lower;
  external bool get lowerOpen;
  external dynamic get upper;
  external bool get upperOpen;
  external bool includes(dynamic key);
  external factory IDBKeyRange({
    dynamic lower,
    bool lowerOpen,
    dynamic upper,
    bool upperOpen,
  });
}

@JS(r'IDBKeyRange')
external IIDBKeyRange JIDBKeyRange;

@JS()
@anonymous
class IDBObjectStore {
  external bool get autoIncrement;
  external DomStringList get indexNames;
  external dynamic get keyPath;
  external String name;
  external Transaction get transaction;
  external Request<IDBValidKey> add(dynamic value, IDBValidKey key);
  external Request<dynamic> clear();
  external Request<num> count(dynamic key);
  external Index createIndex(String name, dynamic keyPath, IDBIndexParameters options);
  external Request<dynamic> delete(dynamic key);
  external void deleteIndex(String name);
  external Request<dynamic> get(dynamic query);
  external Request<List<dynamic>> getAll(dynamic query, num count);
  external Request<List<IDBValidKey>> getAllKeys(dynamic query, num count);
  external Request<IDBValidKey?> getKey(dynamic query);
  external Index index(String name);
  external Request<CursorWithValue?> openCursor(dynamic query, IDBCursorDirection direction);
  external Request<Cursor?> openKeyCursor(dynamic query, IDBCursorDirection direction);
  external Request<IDBValidKey> put(dynamic value, IDBValidKey key);
  external factory IDBObjectStore({
    bool autoIncrement,
    DomStringList indexNames,
    dynamic keyPath,
    String name,
    Transaction transaction,
  });
}

@JS(r'IDBObjectStore')
external IIDBObjectStore JIDBObjectStore;

@JS()
@anonymous
class IDBOpenDBRequestEventMap extends IDBRequestEventMap {
  external Event blocked;
  external VersionChangeEvent upgradeneeded;
  external factory IDBOpenDBRequestEventMap({
    Event blocked,
    VersionChangeEvent upgradeneeded,
  });
}

@JS()
@anonymous
class IDBOpenDBRequest extends Request<Database> {
  external dynamic Function(Event ev)? onblocked;
  external dynamic Function(VersionChangeEvent ev)? onupgradeneeded;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory IDBOpenDBRequest({
    dynamic Function(Event ev)? onblocked,
    dynamic Function(VersionChangeEvent ev)? onupgradeneeded,
  });
}

@JS(r'IDBOpenDBRequest')
external IIDBOpenDBRequest JIDBOpenDBRequest;

@JS()
@anonymous
class IDBRequestEventMap {
  external Event error;
  external Event success;
  external factory IDBRequestEventMap({
    Event error,
    Event success,
  });
}

@JS()
@anonymous
class IDBRequest<T> extends EventTarget {
  external DomException? get error;
  external dynamic Function(Event ev)? onerror;
  external dynamic Function(Event ev)? onsuccess;
  external IDBRequestReadyState get readyState;
  external T get result;
  external dynamic get source;
  external Transaction? get transaction;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory IDBRequest({
    DomException? error,
    dynamic Function(Event ev)? onerror,
    dynamic Function(Event ev)? onsuccess,
    IDBRequestReadyState readyState,
    T result,
    dynamic source,
    Transaction? transaction,
  });
}

@JS(r'IDBRequest')
external IIDBRequest JIDBRequest;

@JS()
@anonymous
class IDBTransactionEventMap {
  external Event abort;
  external Event complete;
  external Event error;
  external factory IDBTransactionEventMap({
    Event abort,
    Event complete,
    Event error,
  });
}

@JS()
@anonymous
class IDBTransaction extends EventTarget {
  external Database get db;
  external DomException get error;
  external IDBTransactionMode get mode;
  external DomStringList get objectStoreNames;
  external dynamic Function(Event ev)? onabort;
  external dynamic Function(Event ev)? oncomplete;
  external dynamic Function(Event ev)? onerror;
  external void abort();
  external ObjectStore objectStore(String name);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory IDBTransaction({
    Database db,
    DomException error,
    IDBTransactionMode mode,
    DomStringList objectStoreNames,
    dynamic Function(Event ev)? onabort,
    dynamic Function(Event ev)? oncomplete,
    dynamic Function(Event ev)? onerror,
  });
}

@JS(r'IDBTransaction')
external IIDBTransaction JIDBTransaction;

@JS()
@anonymous
class IDBVersionChangeEvent extends Event {
  external num? get newVersion;
  external num get oldVersion;
  external factory IDBVersionChangeEvent({
    num? newVersion,
    num oldVersion,
  });
}

@JS(r'IDBVersionChangeEvent')
external IIDBVersionChangeEvent JIDBVersionChangeEvent;

@JS()
@anonymous
class ImageBitmap {
  external num get height;
  external num get width;
  external void close();
  external factory ImageBitmap({
    num height,
    num width,
  });
}

@JS(r'ImageBitmap')
external IImageBitmap JImageBitmap;

@JS()
@anonymous
class ImageBitmapRenderingContext {
  external OffscreenCanvas get canvas;
  external void transferFromImageBitmap(ImageBitmap? bitmap);
  external factory ImageBitmapRenderingContext({
    OffscreenCanvas canvas,
  });
}

@JS(r'ImageBitmapRenderingContext')
external IImageBitmapRenderingContext JImageBitmapRenderingContext;

@JS()
@anonymous
class ImageData {
  external Uint8ClampedList get data;
  external num get height;
  external num get width;
  external factory ImageData({
    Uint8ClampedList data,
    num height,
    num width,
  });
}

@JS(r'ImageData')
external IImageData JImageData;

@JS()
@anonymous
class MessageChannel {
  external MessagePort get port1;
  external MessagePort get port2;
  external factory MessageChannel({
    MessagePort port1,
    MessagePort port2,
  });
}

@JS(r'MessageChannel')
external IMessageChannel JMessageChannel;

@JS()
@anonymous
class MessageEvent<T> extends Event {
  external T get data;
  external String get lastEventId;
  external String get origin;
  external List<MessagePort> get ports;
  external MessageEventSource? get source;
  external factory MessageEvent({
    T data,
    String lastEventId,
    String origin,
    List<MessagePort> ports,
    MessageEventSource? source,
  });
}

@JS(r'MessageEvent')
external IMessageEvent JMessageEvent;

@JS()
@anonymous
class MessagePortEventMap {
  external MessageEvent message;
  external MessageEvent messageerror;
  external factory MessagePortEventMap({
    MessageEvent message,
    MessageEvent messageerror,
  });
}

@JS()
@anonymous
class MessagePort extends EventTarget {
  external dynamic Function(MessageEvent ev)? onmessage;
  external dynamic Function(MessageEvent ev)? onmessageerror;
  external void close();
  external void postMessage(dynamic message, List<Transferable> transfer);
  external void start();
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory MessagePort({
    dynamic Function(MessageEvent ev)? onmessage,
    dynamic Function(MessageEvent ev)? onmessageerror,
  });
}

@JS(r'MessagePort')
external IMessagePort JMessagePort;

@JS()
@anonymous
class NavigationPreloadManager {
  external Promise<void> disable();
  external Promise<void> enable();
  external Promise<NavigationPreloadState> getState();
  external Promise<void> setHeaderValue(String value);
  external factory NavigationPreloadManager();
}

@JS(r'NavigationPreloadManager')
external INavigationPreloadManager JNavigationPreloadManager;

@JS()
@anonymous
class NavigatorConcurrentHardware {
  external num get hardwareConcurrency;
  external factory NavigatorConcurrentHardware({
    num hardwareConcurrency,
  });
}

@JS()
@anonymous
class NavigatorID {
  external String get appCodeName;
  external String get appName;
  external String get appVersion;
  external String get platform;
  external String get product;
  external String get userAgent;
  external factory NavigatorID({
    String appCodeName,
    String appName,
    String appVersion,
    String platform,
    String product,
    String userAgent,
  });
}

@JS()
@anonymous
class NavigatorLanguage {
  external String get language;
  external List<String> get languages;
  external factory NavigatorLanguage({
    String language,
    List<String> languages,
  });
}

@JS()
@anonymous
class NavigatorOnLine {
  external bool get onLine;
  external factory NavigatorOnLine({
    bool onLine,
  });
}

@JS()
@anonymous
class NavigatorStorage {
  external StorageManager get storage;
  external factory NavigatorStorage({
    StorageManager storage,
  });
}

@JS()
@anonymous
class NotificationEventMap {
  external Event click;
  external Event close;
  external Event error;
  external Event show;
  external factory NotificationEventMap({
    Event click,
    Event close,
    Event error,
    Event show,
  });
}

@JS()
@anonymous
class Notification extends EventTarget {
  external List<NotificationAction> get actions;
  external String get badge;
  external String get body;
  external dynamic get data;
  external NotificationDirection get dir;
  external String get icon;
  external String get image;
  external String get lang;
  external dynamic Function(Event ev)? onclick;
  external dynamic Function(Event ev)? onclose;
  external dynamic Function(Event ev)? onerror;
  external dynamic Function(Event ev)? onshow;
  external bool get renotify;
  external bool get requireInteraction;
  external bool get silent;
  external String get tag;
  external num get timestamp;
  external String get title;
  external List<num> get vibrate;
  external void close();
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory Notification({
    List<NotificationAction> actions,
    String badge,
    String body,
    dynamic data,
    NotificationDirection dir,
    String icon,
    String image,
    String lang,
    dynamic Function(Event ev)? onclick,
    dynamic Function(Event ev)? onclose,
    dynamic Function(Event ev)? onerror,
    dynamic Function(Event ev)? onshow,
    bool renotify,
    bool requireInteraction,
    bool silent,
    String tag,
    num timestamp,
    String title,
    List<num> vibrate,
  });
}

@JS(r'Notification')
external INotification JNotification;

@JS()
@anonymous
class NotificationEvent extends ExtendableEvent {
  external String get action;
  external Notification get notification;
  external factory NotificationEvent({
    String action,
    Notification notification,
  });
}

@JS(r'NotificationEvent')
external INotificationEvent JNotificationEvent;

@JS()
@anonymous
class OES_element_index_uint {
  external factory OES_element_index_uint();
}

@JS()
@anonymous
class OES_standard_derivatives {
  external GLenum get FRAGMENT_SHADER_DERIVATIVE_HINT_OES;
  external factory OES_standard_derivatives({
    GLenum FRAGMENT_SHADER_DERIVATIVE_HINT_OES,
  });
}

@JS()
@anonymous
class OES_texture_float {
  external factory OES_texture_float();
}

@JS()
@anonymous
class OES_texture_float_linear {
  external factory OES_texture_float_linear();
}

@JS()
@anonymous
class OES_texture_half_float {
  external GLenum get HALF_FLOAT_OES;
  external factory OES_texture_half_float({
    GLenum HALF_FLOAT_OES,
  });
}

@JS()
@anonymous
class OES_texture_half_float_linear {
  external factory OES_texture_half_float_linear();
}

@JS()
@anonymous
class OES_vertex_array_object {
  external void bindVertexArrayOES(VertexArrayObject? arrayObject);
  external VertexArrayObject? createVertexArrayOES();
  external void deleteVertexArrayOES(VertexArrayObject? arrayObject);
  external GLboolean isVertexArrayOES(VertexArrayObject? arrayObject);
  external GLenum get VERTEX_ARRAY_BINDING_OES;
  external factory OES_vertex_array_object({
    GLenum VERTEX_ARRAY_BINDING_OES,
  });
}

@JS()
@anonymous
class OffscreenCanvas extends EventTarget {
  external num height;
  external num width;
  external Promise<Blob> convertToBlob(ImageEncodeOptions options);
  external OffscreenCanvasRenderingContext2D? getContext(String contextId, CanvasRenderingContext2DSettings options);
  external ImageBitmap transferToImageBitmap();
  external factory OffscreenCanvas({
    num height,
    num width,
  });
}

@JS(r'OffscreenCanvas')
external IOffscreenCanvas JOffscreenCanvas;

@JS()
@anonymous
class OffscreenCanvasRenderingContext2D extends CanvasCompositing {
  external OffscreenCanvas get canvas;
  external void commit();
  external factory OffscreenCanvasRenderingContext2D({
    OffscreenCanvas canvas,
  });
}

@JS(r'OffscreenCanvasRenderingContext2D')
external IOffscreenCanvasRenderingContext2D JOffscreenCanvasRenderingContext2D;

@JS()
@anonymous
class Path2D extends CanvasPath {
  external void addPath(Path2D path, DOMMatrix2DInit transform);
  external factory Path2D();
}

@JS(r'Path2D')
external IPath2D JPath2D;

@JS()
@anonymous
class PerformanceEventMap {
  external Event resourcetimingbufferfull;
  external factory PerformanceEventMap({
    Event resourcetimingbufferfull,
  });
}

@JS()
@anonymous
class Performance extends EventTarget {
  external dynamic Function(Event ev)? onresourcetimingbufferfull;
  external num get timeOrigin;
  external void clearMarks(String markName);
  external void clearMeasures(String measureName);
  external void clearResourceTimings();
  external PerformanceEntryList getEntries();
  external PerformanceEntryList getEntriesByName(String name, String type);
  external PerformanceEntryList getEntriesByType(String type);
  external void mark(String markName);
  external void measure(String measureName, String startMark, String endMark);
  external num now();
  external void setResourceTimingBufferSize(num maxSize);
  external dynamic toJSON();
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory Performance({
    dynamic Function(Event ev)? onresourcetimingbufferfull,
    num timeOrigin,
  });
}

@JS(r'Performance')
external IPerformance JPerformance;

@JS()
@anonymous
class PerformanceEntry {
  external num get duration;
  external String get entryType;
  external String get name;
  external num get startTime;
  external dynamic toJSON();
  external factory PerformanceEntry({
    num duration,
    String entryType,
    String name,
    num startTime,
  });
}

@JS(r'PerformanceEntry')
external IPerformanceEntry JPerformanceEntry;

@JS()
@anonymous
class PerformanceMark extends PerformanceEntry {
  external factory PerformanceMark();
}

@JS(r'PerformanceMark')
external IPerformanceMark JPerformanceMark;

@JS()
@anonymous
class PerformanceMeasure extends PerformanceEntry {
  external factory PerformanceMeasure();
}

@JS(r'PerformanceMeasure')
external IPerformanceMeasure JPerformanceMeasure;

@JS()
@anonymous
class PerformanceObserver {
  external void disconnect();
  external void observe(PerformanceObserverInit options);
  external PerformanceEntryList takeRecords();
  external factory PerformanceObserver();
}

@JS(r'PerformanceObserver')
external IPerformanceObserver JPerformanceObserver;

@JS()
@anonymous
class PerformanceObserverEntryList {
  external PerformanceEntryList getEntries();
  external PerformanceEntryList getEntriesByName(String name, String type);
  external PerformanceEntryList getEntriesByType(String type);
  external factory PerformanceObserverEntryList();
}

@JS(r'PerformanceObserverEntryList')
external IPerformanceObserverEntryList JPerformanceObserverEntryList;

@JS()
@anonymous
class PerformanceResourceTiming extends PerformanceEntry {
  external num get connectEnd;
  external num get connectStart;
  external num get decodedBodySize;
  external num get domainLookupEnd;
  external num get domainLookupStart;
  external num get encodedBodySize;
  external num get fetchStart;
  external String get initiatorType;
  external String get nextHopProtocol;
  external num get redirectEnd;
  external num get redirectStart;
  external num get requestStart;
  external num get responseEnd;
  external num get responseStart;
  external num get secureConnectionStart;
  external num get transferSize;
  external num get workerStart;
  external dynamic toJSON();
  external factory PerformanceResourceTiming({
    num connectEnd,
    num connectStart,
    num decodedBodySize,
    num domainLookupEnd,
    num domainLookupStart,
    num encodedBodySize,
    num fetchStart,
    String initiatorType,
    String nextHopProtocol,
    num redirectEnd,
    num redirectStart,
    num requestStart,
    num responseEnd,
    num responseStart,
    num secureConnectionStart,
    num transferSize,
    num workerStart,
  });
}

@JS(r'PerformanceResourceTiming')
external IPerformanceResourceTiming JPerformanceResourceTiming;

@JS()
@anonymous
class PermissionStatusEventMap {
  external Event change;
  external factory PermissionStatusEventMap({
    Event change,
  });
}

@JS()
@anonymous
class PermissionStatus extends EventTarget {
  external dynamic Function(Event ev)? onchange;
  external PermissionState get state;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory PermissionStatus({
    dynamic Function(Event ev)? onchange,
    PermissionState state,
  });
}

@JS(r'PermissionStatus')
external IPermissionStatus JPermissionStatus;

@JS()
@anonymous
class Permissions {
  external Promise<PermissionStatus> query(dynamic permissionDesc);
  external factory Permissions();
}

@JS(r'Permissions')
external IPermissions JPermissions;

@JS()
@anonymous
class ProgressEvent<T extends EventTarget> extends Event {
  external bool get lengthComputable;
  external num get loaded;
  external T? get target;
  external num get total;
  external factory ProgressEvent({
    bool lengthComputable,
    num loaded,
    T? target,
    num total,
  });
}

@JS(r'ProgressEvent')
external IProgressEvent JProgressEvent;

@JS()
@anonymous
class PromiseRejectionEvent extends Event {
  external Promise<dynamic> get promise;
  external dynamic get reason;
  external factory PromiseRejectionEvent({
    Promise<dynamic> promise,
    dynamic reason,
  });
}

@JS(r'PromiseRejectionEvent')
external IPromiseRejectionEvent JPromiseRejectionEvent;

@JS()
@anonymous
class PushEvent extends ExtendableEvent {
  external PushMessageData? get data;
  external factory PushEvent({
    PushMessageData? data,
  });
}

@JS(r'PushEvent')
external IPushEvent JPushEvent;

@JS()
@anonymous
class PushManager {
  external Promise<PushSubscription?> getSubscription();
  external Promise<PushPermissionState> permissionState(PushSubscriptionOptionsInit options);
  external Promise<PushSubscription> subscribe(PushSubscriptionOptionsInit options);
  external factory PushManager();
}

@JS(r'PushManager')
external IPushManager JPushManager;

@JS()
@anonymous
class PushMessageData {
  external ByteBuffer arrayBuffer();
  external Blob blob();
  external dynamic json();
  external String text();
  external factory PushMessageData();
}

@JS(r'PushMessageData')
external IPushMessageData JPushMessageData;

@JS()
@anonymous
class PushSubscription {
  external String get endpoint;
  external num? get expirationTime;
  external PushSubscriptionOptions get options;
  external ByteBuffer? getKey(PushEncryptionKeyName name);
  external PushSubscriptionJSON toJSON();
  external Promise<bool> unsubscribe();
  external factory PushSubscription({
    String endpoint,
    num? expirationTime,
    PushSubscriptionOptions options,
  });
}

@JS(r'PushSubscription')
external IPushSubscription JPushSubscription;

@JS()
@anonymous
class PushSubscriptionOptions {
  external ByteBuffer? get applicationServerKey;
  external bool get userVisibleOnly;
  external factory PushSubscriptionOptions({
    ByteBuffer? applicationServerKey,
    bool userVisibleOnly,
  });
}

@JS(r'PushSubscriptionOptions')
external IPushSubscriptionOptions JPushSubscriptionOptions;

@JS()
@anonymous
class ReadableStream<R> {
  external bool get locked;
  external Promise<void> cancel(dynamic reason);
  external ReadableStreamDefaultReader<R> getReader();
  external ReadableStream<T> pipeThrough<T>(ReadableWritablePair<T, R> transform, StreamPipeOptions options);
  external Promise<void> pipeTo(WritableStream<R> dest, StreamPipeOptions options);
  external List<dynamic> tee();
  external factory ReadableStream({
    bool locked,
  });
}

@JS(r'ReadableStream')
external IReadableStream JReadableStream;

@JS()
@anonymous
class ReadableStreamDefaultController<R> {
  external num? get desiredSize;
  external void close();
  external void enqueue(R chunk);
  external void error(dynamic e);
  external factory ReadableStreamDefaultController({
    num? desiredSize,
  });
}

@JS(r'ReadableStreamDefaultController')
external IReadableStreamDefaultController JReadableStreamDefaultController;

@JS()
@anonymous
class ReadableStreamDefaultReader<R> extends ReadableStreamGenericReader {
  external Promise<ReadableStreamDefaultReadResult<R>> read();
  external void releaseLock();
  external factory ReadableStreamDefaultReader();
}

@JS(r'ReadableStreamDefaultReader')
external IReadableStreamDefaultReader JReadableStreamDefaultReader;

@JS()
@anonymous
class ReadableStreamGenericReader {
  external Promise<dynamic> get closed;
  external Promise<void> cancel(dynamic reason);
  external factory ReadableStreamGenericReader({
    Promise<dynamic> closed,
  });
}

@JS()
@anonymous
class Request extends Body {
  external RequestCache get cache;
  external RequestCredentials get credentials;
  external RequestDestination get destination;
  external Headers get headers;
  external String get integrity;
  external bool get isHistoryNavigation;
  external bool get isReloadNavigation;
  external bool get keepalive;
  external String get method;
  external RequestMode get mode;
  external RequestRedirect get redirect;
  external String get referrer;
  external ReferrerPolicy get referrerPolicy;
  external AbortSignal get signal;
  external String get url;
  external Request clone();
  external factory Request({
    RequestCache cache,
    RequestCredentials credentials,
    RequestDestination destination,
    Headers headers,
    String integrity,
    bool isHistoryNavigation,
    bool isReloadNavigation,
    bool keepalive,
    String method,
    RequestMode mode,
    RequestRedirect redirect,
    String referrer,
    ReferrerPolicy referrerPolicy,
    AbortSignal signal,
    String url,
  });
}

@JS(r'Request')
external IRequest JRequest;

@JS()
@anonymous
class Response extends Body {
  external Headers get headers;
  external bool get ok;
  external bool get redirected;
  external num get status;
  external String get statusText;
  external Promise<Headers> get trailer;
  external ResponseType get type;
  external String get url;
  external Response clone();
  external factory Response({
    Headers headers,
    bool ok,
    bool redirected,
    num status,
    String statusText,
    Promise<Headers> trailer,
    ResponseType type,
    String url,
  });
}

@JS(r'Response')
external IResponse JResponse;

@JS()
@anonymous
class ServiceWorkerEventMap extends AbstractWorkerEventMap {
  external Event statechange;
  external factory ServiceWorkerEventMap({
    Event statechange,
  });
}

@JS()
@anonymous
class ServiceWorker extends EventTarget {
  external dynamic Function(Event ev)? onstatechange;
  external String get scriptURL;
  external ServiceWorkerState get state;
  external void postMessage(dynamic message, List<Transferable> transfer);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory ServiceWorker({
    dynamic Function(Event ev)? onstatechange,
    String scriptURL,
    ServiceWorkerState state,
  });
}

@JS(r'ServiceWorker')
external IServiceWorker JServiceWorker;

@JS()
@anonymous
class ServiceWorkerContainerEventMap {
  external Event controllerchange;
  external MessageEvent message;
  external MessageEvent messageerror;
  external factory ServiceWorkerContainerEventMap({
    Event controllerchange,
    MessageEvent message,
    MessageEvent messageerror,
  });
}

@JS()
@anonymous
class ServiceWorkerContainer extends EventTarget {
  external ServiceWorker? get controller;
  external dynamic Function(Event ev)? oncontrollerchange;
  external dynamic Function(MessageEvent ev)? onmessage;
  external dynamic Function(MessageEvent ev)? onmessageerror;
  external Promise<ServiceWorkerRegistration> get ready;
  external Promise<ServiceWorkerRegistration?> getRegistration(String clientURL);
  external Promise<List<ServiceWorkerRegistration>> getRegistrations();
  external Promise<ServiceWorkerRegistration> register(dynamic scriptURL, RegistrationOptions options);
  external void startMessages();
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory ServiceWorkerContainer({
    ServiceWorker? controller,
    dynamic Function(Event ev)? oncontrollerchange,
    dynamic Function(MessageEvent ev)? onmessage,
    dynamic Function(MessageEvent ev)? onmessageerror,
    Promise<ServiceWorkerRegistration> ready,
  });
}

@JS(r'ServiceWorkerContainer')
external IServiceWorkerContainer JServiceWorkerContainer;

@JS()
@anonymous
class ServiceWorkerGlobalScopeEventMap extends WorkerGlobalScopeEventMap {
  external ExtendableEvent activate;
  external FetchEvent fetch;
  external ExtendableEvent install;
  external ExtendableMessageEvent message;
  external MessageEvent messageerror;
  external NotificationEvent notificationclick;
  external NotificationEvent notificationclose;
  external PushEvent push;
  external SyncEvent sync;
  external factory ServiceWorkerGlobalScopeEventMap({
    ExtendableEvent activate,
    FetchEvent fetch,
    ExtendableEvent install,
    ExtendableMessageEvent message,
    MessageEvent messageerror,
    NotificationEvent notificationclick,
    NotificationEvent notificationclose,
    PushEvent push,
    SyncEvent sync,
  });
}

@JS()
@anonymous
class ServiceWorkerGlobalScope extends WorkerGlobalScope {
  external Clients get clients;
  external dynamic Function(ExtendableEvent ev)? onactivate;
  external dynamic Function(FetchEvent ev)? onfetch;
  external dynamic Function(ExtendableEvent ev)? oninstall;
  external dynamic Function(ExtendableMessageEvent ev)? onmessage;
  external dynamic Function(MessageEvent ev)? onmessageerror;
  external dynamic Function(NotificationEvent ev)? onnotificationclick;
  external dynamic Function(NotificationEvent ev)? onnotificationclose;
  external dynamic Function(PushEvent ev)? onpush;
  external dynamic Function(SyncEvent ev)? onsync;
  external ServiceWorkerRegistration get registration;
  external ServiceWorker get serviceWorker;
  external Promise<void> skipWaiting();
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory ServiceWorkerGlobalScope({
    Clients clients,
    dynamic Function(ExtendableEvent ev)? onactivate,
    dynamic Function(FetchEvent ev)? onfetch,
    dynamic Function(ExtendableEvent ev)? oninstall,
    dynamic Function(ExtendableMessageEvent ev)? onmessage,
    dynamic Function(MessageEvent ev)? onmessageerror,
    dynamic Function(NotificationEvent ev)? onnotificationclick,
    dynamic Function(NotificationEvent ev)? onnotificationclose,
    dynamic Function(PushEvent ev)? onpush,
    dynamic Function(SyncEvent ev)? onsync,
    ServiceWorkerRegistration registration,
    ServiceWorker serviceWorker,
  });
}

@JS(r'ServiceWorkerGlobalScope')
external IServiceWorkerGlobalScope JServiceWorkerGlobalScope;

@JS()
@anonymous
class ServiceWorkerRegistrationEventMap {
  external Event updatefound;
  external factory ServiceWorkerRegistrationEventMap({
    Event updatefound,
  });
}

@JS()
@anonymous
class ServiceWorkerRegistration extends EventTarget {
  external ServiceWorker? get active;
  external ServiceWorker? get installing;
  external NavigationPreloadManager get navigationPreload;
  external dynamic Function(Event ev)? onupdatefound;
  external PushManager get pushManager;
  external String get scope;
  external SyncManager get sync;
  external ServiceWorkerUpdateViaCache get updateViaCache;
  external ServiceWorker? get waiting;
  external Promise<List<Notification>> getNotifications(GetNotificationOptions filter);
  external Promise<void> showNotification(String title, NotificationOptions options);
  external Promise<bool> unregister();
  external Promise<void> update();
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory ServiceWorkerRegistration({
    ServiceWorker? active,
    ServiceWorker? installing,
    NavigationPreloadManager navigationPreload,
    dynamic Function(Event ev)? onupdatefound,
    PushManager pushManager,
    String scope,
    SyncManager sync,
    ServiceWorkerUpdateViaCache updateViaCache,
    ServiceWorker? waiting,
  });
}

@JS(r'ServiceWorkerRegistration')
external IServiceWorkerRegistration JServiceWorkerRegistration;

@JS()
@anonymous
class SharedWorker extends EventTarget {
  external MessagePort get port;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SharedWorker({
    MessagePort port,
  });
}

@JS(r'SharedWorker')
external ISharedWorker JSharedWorker;

@JS()
@anonymous
class SharedWorkerGlobalScopeEventMap extends WorkerGlobalScopeEventMap {
  external MessageEvent connect;
  external factory SharedWorkerGlobalScopeEventMap({
    MessageEvent connect,
  });
}

@JS()
@anonymous
class SharedWorkerGlobalScope extends WorkerGlobalScope {
  external String get name;
  external dynamic Function(MessageEvent ev)? onconnect;
  external void close();
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SharedWorkerGlobalScope({
    String name,
    dynamic Function(MessageEvent ev)? onconnect,
  });
}

@JS(r'SharedWorkerGlobalScope')
external ISharedWorkerGlobalScope JSharedWorkerGlobalScope;

@JS()
@anonymous
class StorageManager {
  external Promise<StorageEstimate> estimate();
  external Promise<bool> persisted();
  external factory StorageManager();
}

@JS(r'StorageManager')
external IStorageManager JStorageManager;

@JS()
@anonymous
class SubtleCrypto {
  external Promise<ByteBuffer> decrypt(dynamic algorithm, CryptoKey key, dynamic data);
  external Promise<ByteBuffer> deriveBits(dynamic algorithm, CryptoKey baseKey, num length);
  external Promise<CryptoKey> deriveKey(
      dynamic algorithm, CryptoKey baseKey, dynamic derivedKeyType, bool extractable, List<KeyUsage> keyUsages);
  external Promise<ByteBuffer> digest(AlgorithmIdentifier algorithm, dynamic data);
  external Promise<ByteBuffer> encrypt(dynamic algorithm, CryptoKey key, dynamic data);
  external Promise<JsonWebKey> exportKey(String format, CryptoKey key);
  external Promise<CryptoKeyPair> generateKey(dynamic algorithm, bool extractable, List<KeyUsage> keyUsages);
  external Promise<CryptoKey> importKey(
      String format, JsonWebKey keyData, dynamic algorithm, bool extractable, List<KeyUsage> keyUsages);
  external Promise<ByteBuffer> sign(dynamic algorithm, CryptoKey key, dynamic data);
  external Promise<CryptoKey> unwrapKey(String format, dynamic wrappedKey, CryptoKey unwrappingKey,
      dynamic unwrapAlgorithm, dynamic unwrappedKeyAlgorithm, bool extractable, List<KeyUsage> keyUsages);
  external Promise<bool> verify(dynamic algorithm, CryptoKey key, dynamic signature, dynamic data);
  external Promise<ByteBuffer> wrapKey(String format, CryptoKey key, CryptoKey wrappingKey, dynamic wrapAlgorithm);
  external factory SubtleCrypto();
}

@JS(r'SubtleCrypto')
external ISubtleCrypto JSubtleCrypto;

@JS()
@anonymous
class SyncEvent extends ExtendableEvent {
  external bool get lastChance;
  external String get tag;
  external factory SyncEvent({
    bool lastChance,
    String tag,
  });
}

@JS(r'SyncEvent')
external ISyncEvent JSyncEvent;

@JS()
@anonymous
class SyncManager {
  external Promise<List<String>> getTags();
  external Promise<void> register(String tag);
  external factory SyncManager();
}

@JS(r'SyncManager')
external ISyncManager JSyncManager;

@JS()
@anonymous
class TextDecoder extends TextDecoderCommon {
  external String decode(BufferSource input, TextDecodeOptions options);
  external factory TextDecoder();
}

@JS(r'TextDecoder')
external ITextDecoder JTextDecoder;

@JS()
@anonymous
class TextDecoderCommon {
  external String get encoding;
  external bool get fatal;
  external bool get ignoreBOM;
  external factory TextDecoderCommon({
    String encoding,
    bool fatal,
    bool ignoreBOM,
  });
}

@JS()
@anonymous
class TextDecoderStream extends GenericTransformStream {
  external ReadableStream<String> get readable;
  external WritableStream<BufferSource> get writable;
  external factory TextDecoderStream({
    ReadableStream<String> readable,
    WritableStream<BufferSource> writable,
  });
}

@JS(r'TextDecoderStream')
external ITextDecoderStream JTextDecoderStream;

@JS()
@anonymous
class TextEncoder extends TextEncoderCommon {
  external Uint8List encode(String input);
  external TextEncoderEncodeIntoResult encodeInto(String source, Uint8List destination);
  external factory TextEncoder();
}

@JS(r'TextEncoder')
external ITextEncoder JTextEncoder;

@JS()
@anonymous
class TextEncoderCommon {
  external String get encoding;
  external factory TextEncoderCommon({
    String encoding,
  });
}

@JS()
@anonymous
class TextEncoderStream extends GenericTransformStream {
  external ReadableStream<Uint8List> get readable;
  external WritableStream<String> get writable;
  external factory TextEncoderStream({
    ReadableStream<Uint8List> readable,
    WritableStream<String> writable,
  });
}

@JS(r'TextEncoderStream')
external ITextEncoderStream JTextEncoderStream;

@JS()
@anonymous
class TextMetrics {
  external num get actualBoundingBoxAscent;
  external num get actualBoundingBoxDescent;
  external num get actualBoundingBoxLeft;
  external num get actualBoundingBoxRight;
  external num get width;
  external factory TextMetrics({
    num actualBoundingBoxAscent,
    num actualBoundingBoxDescent,
    num actualBoundingBoxLeft,
    num actualBoundingBoxRight,
    num width,
  });
}

@JS(r'TextMetrics')
external ITextMetrics JTextMetrics;

@JS()
@anonymous
class TransformStream<I, O> {
  external ReadableStream<O> get readable;
  external WritableStream<I> get writable;
  external factory TransformStream({
    ReadableStream<O> readable,
    WritableStream<I> writable,
  });
}

@JS(r'TransformStream')
external ITransformStream JTransformStream;

@JS()
@anonymous
class TransformStreamDefaultController<O> {
  external num? get desiredSize;
  external void enqueue(O chunk);
  external void error(dynamic reason);
  external void terminate();
  external factory TransformStreamDefaultController({
    num? desiredSize,
  });
}

@JS(r'TransformStreamDefaultController')
external ITransformStreamDefaultController JTransformStreamDefaultController;

@JS()
@anonymous
class URL {
  external String hash;
  external String host;
  external String hostname;
  external String href;
  @override
  external String toString();
  external String get origin;
  external String password;
  external String pathname;
  external String port;
  external String protocol;
  external String search;
  external URLSearchParams get searchParams;
  external String username;
  external String toJSON();
  external factory URL({
    String hash,
    String host,
    String hostname,
    String href,
    String origin,
    String password,
    String pathname,
    String port,
    String protocol,
    String search,
    URLSearchParams searchParams,
    String username,
  });
}

@JS(r'URL')
external IURL JURL;

@JS()
@anonymous
class URLSearchParams {
  external void append(String name, String value);
  external void delete(String name);
  external String? get(String name);
  external List<String> getAll(String name);
  external bool has(String name);
  external void set(String name, String value);
  external void sort();
  @override
  external String toString();
  external void forEach(void Function(String value, String key, URLSearchParams parent) callbackfn, dynamic thisArg);
  external factory URLSearchParams();
}

@JS(r'URLSearchParams')
external IURLSearchParams JURLSearchParams;

@JS()
@anonymous
class WEBGL_color_buffer_float {
  external GLenum get FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE_EXT;
  external GLenum get RGBA32F_EXT;
  external GLenum get UNSIGNED_NORMALIZED_EXT;
  external factory WEBGL_color_buffer_float({
    GLenum FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE_EXT,
    GLenum RGBA32F_EXT,
    GLenum UNSIGNED_NORMALIZED_EXT,
  });
}

@JS()
@anonymous
class WEBGL_compressed_texture_astc {
  external List<String> getSupportedProfiles();
  external GLenum get COMPRESSED_RGBA_ASTC_10x10_KHR;
  external GLenum get COMPRESSED_RGBA_ASTC_10x5_KHR;
  external GLenum get COMPRESSED_RGBA_ASTC_10x6_KHR;
  external GLenum get COMPRESSED_RGBA_ASTC_10x8_KHR;
  external GLenum get COMPRESSED_RGBA_ASTC_12x10_KHR;
  external GLenum get COMPRESSED_RGBA_ASTC_12x12_KHR;
  external GLenum get COMPRESSED_RGBA_ASTC_4x4_KHR;
  external GLenum get COMPRESSED_RGBA_ASTC_5x4_KHR;
  external GLenum get COMPRESSED_RGBA_ASTC_5x5_KHR;
  external GLenum get COMPRESSED_RGBA_ASTC_6x5_KHR;
  external GLenum get COMPRESSED_RGBA_ASTC_6x6_KHR;
  external GLenum get COMPRESSED_RGBA_ASTC_8x5_KHR;
  external GLenum get COMPRESSED_RGBA_ASTC_8x6_KHR;
  external GLenum get COMPRESSED_RGBA_ASTC_8x8_KHR;
  external GLenum get COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR;
  external GLenum get COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR;
  external GLenum get COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR;
  external GLenum get COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR;
  external GLenum get COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR;
  external GLenum get COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR;
  external GLenum get COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR;
  external GLenum get COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR;
  external GLenum get COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR;
  external GLenum get COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR;
  external GLenum get COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR;
  external GLenum get COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR;
  external GLenum get COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR;
  external GLenum get COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR;
  external factory WEBGL_compressed_texture_astc({
    GLenum COMPRESSED_RGBA_ASTC_10x10_KHR,
    GLenum COMPRESSED_RGBA_ASTC_10x5_KHR,
    GLenum COMPRESSED_RGBA_ASTC_10x6_KHR,
    GLenum COMPRESSED_RGBA_ASTC_10x8_KHR,
    GLenum COMPRESSED_RGBA_ASTC_12x10_KHR,
    GLenum COMPRESSED_RGBA_ASTC_12x12_KHR,
    GLenum COMPRESSED_RGBA_ASTC_4x4_KHR,
    GLenum COMPRESSED_RGBA_ASTC_5x4_KHR,
    GLenum COMPRESSED_RGBA_ASTC_5x5_KHR,
    GLenum COMPRESSED_RGBA_ASTC_6x5_KHR,
    GLenum COMPRESSED_RGBA_ASTC_6x6_KHR,
    GLenum COMPRESSED_RGBA_ASTC_8x5_KHR,
    GLenum COMPRESSED_RGBA_ASTC_8x6_KHR,
    GLenum COMPRESSED_RGBA_ASTC_8x8_KHR,
    GLenum COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR,
    GLenum COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR,
    GLenum COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR,
    GLenum COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR,
    GLenum COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR,
    GLenum COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR,
    GLenum COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR,
    GLenum COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR,
    GLenum COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR,
    GLenum COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR,
    GLenum COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR,
    GLenum COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR,
    GLenum COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR,
    GLenum COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR,
  });
}

@JS()
@anonymous
class WEBGL_compressed_texture_s3tc {
  external GLenum get COMPRESSED_RGBA_S3TC_DXT1_EXT;
  external GLenum get COMPRESSED_RGBA_S3TC_DXT3_EXT;
  external GLenum get COMPRESSED_RGBA_S3TC_DXT5_EXT;
  external GLenum get COMPRESSED_RGB_S3TC_DXT1_EXT;
  external factory WEBGL_compressed_texture_s3tc({
    GLenum COMPRESSED_RGBA_S3TC_DXT1_EXT,
    GLenum COMPRESSED_RGBA_S3TC_DXT3_EXT,
    GLenum COMPRESSED_RGBA_S3TC_DXT5_EXT,
    GLenum COMPRESSED_RGB_S3TC_DXT1_EXT,
  });
}

@JS()
@anonymous
class WEBGL_compressed_texture_s3tc_srgb {
  external GLenum get COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT;
  external GLenum get COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT;
  external GLenum get COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT;
  external GLenum get COMPRESSED_SRGB_S3TC_DXT1_EXT;
  external factory WEBGL_compressed_texture_s3tc_srgb({
    GLenum COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT,
    GLenum COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT,
    GLenum COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT,
    GLenum COMPRESSED_SRGB_S3TC_DXT1_EXT,
  });
}

@JS()
@anonymous
class WEBGL_debug_renderer_info {
  external GLenum get UNMASKED_RENDERER_WEBGL;
  external GLenum get UNMASKED_VENDOR_WEBGL;
  external factory WEBGL_debug_renderer_info({
    GLenum UNMASKED_RENDERER_WEBGL,
    GLenum UNMASKED_VENDOR_WEBGL,
  });
}

@JS()
@anonymous
class WEBGL_debug_shaders {
  external String getTranslatedShaderSource(Shader shader);
  external factory WEBGL_debug_shaders();
}

@JS()
@anonymous
class WEBGL_depth_texture {
  external GLenum get UNSIGNED_INT_24_8_WEBGL;
  external factory WEBGL_depth_texture({
    GLenum UNSIGNED_INT_24_8_WEBGL,
  });
}

@JS()
@anonymous
class WEBGL_draw_buffers {
  external void drawBuffersWEBGL(List<GLenum> buffers);
  external GLenum get COLOR_ATTACHMENT0_WEBGL;
  external GLenum get COLOR_ATTACHMENT10_WEBGL;
  external GLenum get COLOR_ATTACHMENT11_WEBGL;
  external GLenum get COLOR_ATTACHMENT12_WEBGL;
  external GLenum get COLOR_ATTACHMENT13_WEBGL;
  external GLenum get COLOR_ATTACHMENT14_WEBGL;
  external GLenum get COLOR_ATTACHMENT15_WEBGL;
  external GLenum get COLOR_ATTACHMENT1_WEBGL;
  external GLenum get COLOR_ATTACHMENT2_WEBGL;
  external GLenum get COLOR_ATTACHMENT3_WEBGL;
  external GLenum get COLOR_ATTACHMENT4_WEBGL;
  external GLenum get COLOR_ATTACHMENT5_WEBGL;
  external GLenum get COLOR_ATTACHMENT6_WEBGL;
  external GLenum get COLOR_ATTACHMENT7_WEBGL;
  external GLenum get COLOR_ATTACHMENT8_WEBGL;
  external GLenum get COLOR_ATTACHMENT9_WEBGL;
  external GLenum get DRAW_BUFFER0_WEBGL;
  external GLenum get DRAW_BUFFER10_WEBGL;
  external GLenum get DRAW_BUFFER11_WEBGL;
  external GLenum get DRAW_BUFFER12_WEBGL;
  external GLenum get DRAW_BUFFER13_WEBGL;
  external GLenum get DRAW_BUFFER14_WEBGL;
  external GLenum get DRAW_BUFFER15_WEBGL;
  external GLenum get DRAW_BUFFER1_WEBGL;
  external GLenum get DRAW_BUFFER2_WEBGL;
  external GLenum get DRAW_BUFFER3_WEBGL;
  external GLenum get DRAW_BUFFER4_WEBGL;
  external GLenum get DRAW_BUFFER5_WEBGL;
  external GLenum get DRAW_BUFFER6_WEBGL;
  external GLenum get DRAW_BUFFER7_WEBGL;
  external GLenum get DRAW_BUFFER8_WEBGL;
  external GLenum get DRAW_BUFFER9_WEBGL;
  external GLenum get MAX_COLOR_ATTACHMENTS_WEBGL;
  external GLenum get MAX_DRAW_BUFFERS_WEBGL;
  external factory WEBGL_draw_buffers({
    GLenum COLOR_ATTACHMENT0_WEBGL,
    GLenum COLOR_ATTACHMENT10_WEBGL,
    GLenum COLOR_ATTACHMENT11_WEBGL,
    GLenum COLOR_ATTACHMENT12_WEBGL,
    GLenum COLOR_ATTACHMENT13_WEBGL,
    GLenum COLOR_ATTACHMENT14_WEBGL,
    GLenum COLOR_ATTACHMENT15_WEBGL,
    GLenum COLOR_ATTACHMENT1_WEBGL,
    GLenum COLOR_ATTACHMENT2_WEBGL,
    GLenum COLOR_ATTACHMENT3_WEBGL,
    GLenum COLOR_ATTACHMENT4_WEBGL,
    GLenum COLOR_ATTACHMENT5_WEBGL,
    GLenum COLOR_ATTACHMENT6_WEBGL,
    GLenum COLOR_ATTACHMENT7_WEBGL,
    GLenum COLOR_ATTACHMENT8_WEBGL,
    GLenum COLOR_ATTACHMENT9_WEBGL,
    GLenum DRAW_BUFFER0_WEBGL,
    GLenum DRAW_BUFFER10_WEBGL,
    GLenum DRAW_BUFFER11_WEBGL,
    GLenum DRAW_BUFFER12_WEBGL,
    GLenum DRAW_BUFFER13_WEBGL,
    GLenum DRAW_BUFFER14_WEBGL,
    GLenum DRAW_BUFFER15_WEBGL,
    GLenum DRAW_BUFFER1_WEBGL,
    GLenum DRAW_BUFFER2_WEBGL,
    GLenum DRAW_BUFFER3_WEBGL,
    GLenum DRAW_BUFFER4_WEBGL,
    GLenum DRAW_BUFFER5_WEBGL,
    GLenum DRAW_BUFFER6_WEBGL,
    GLenum DRAW_BUFFER7_WEBGL,
    GLenum DRAW_BUFFER8_WEBGL,
    GLenum DRAW_BUFFER9_WEBGL,
    GLenum MAX_COLOR_ATTACHMENTS_WEBGL,
    GLenum MAX_DRAW_BUFFERS_WEBGL,
  });
}

@JS()
@anonymous
class WEBGL_lose_context {
  external void loseContext();
  external void restoreContext();
  external factory WEBGL_lose_context();
}

@JS()
@anonymous
class WebGL2RenderingContext extends WebGL2RenderingContextBase {
  external factory WebGL2RenderingContext();
}

@JS(r'WebGL2RenderingContext')
external IWebGL2RenderingContext JWebGL2RenderingContext;

@JS()
@anonymous
class WebGL2RenderingContextBase {
  external void beginQuery(GLenum target, WebGLQuery query);
  external void beginTransformFeedback(GLenum primitiveMode);
  external void bindBufferBase(GLenum target, GLuint index, Buffer? buffer);
  external void bindBufferRange(GLenum target, GLuint index, Buffer? buffer, GLintptr offset, GLsizeiptr size);
  external void bindSampler(GLuint unit, WebGLSampler? sampler);
  external void bindTransformFeedback(GLenum target, WebGLTransformFeedback? tf);
  external void bindVertexArray(WebGLVertexArrayObject? array);
  external void blitFramebuffer(GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0,
      GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter);
  external void clearBufferfi(GLenum buffer, GLint drawbuffer, GLfloat depth, GLint stencil);
  external void clearBufferfv(GLenum buffer, GLint drawbuffer, Float32List values, GLuint srcOffset);
  external void clearBufferiv(GLenum buffer, GLint drawbuffer, Int32List values, GLuint srcOffset);
  external void clearBufferuiv(GLenum buffer, GLint drawbuffer, Uint32List values, GLuint srcOffset);
  external GLenum clientWaitSync(WebGLSync sync, GLbitfield flags, GLuint64 timeout);
  external void compressedTexImage3D(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height,
      GLsizei depth, GLint border, GLsizei imageSize, GLintptr offset);
  external void compressedTexSubImage3D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset,
      GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, GLintptr offset);
  external void copyBufferSubData(
      GLenum readTarget, GLenum writeTarget, GLintptr readOffset, GLintptr writeOffset, GLsizeiptr size);
  external void copyTexSubImage3D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x,
      GLint y, GLsizei width, GLsizei height);
  external WebGLQuery? createQuery();
  external WebGLSampler? createSampler();
  external WebGLTransformFeedback? createTransformFeedback();
  external WebGLVertexArrayObject? createVertexArray();
  external void deleteQuery(WebGLQuery? query);
  external void deleteSampler(WebGLSampler? sampler);
  external void deleteSync(WebGLSync? sync);
  external void deleteTransformFeedback(WebGLTransformFeedback? tf);
  external void deleteVertexArray(WebGLVertexArrayObject? vertexArray);
  external void drawArraysInstanced(GLenum mode, GLint first, GLsizei count, GLsizei instanceCount);
  external void drawBuffers(List<GLenum> buffers);
  external void drawElementsInstanced(GLenum mode, GLsizei count, GLenum type, GLintptr offset, GLsizei instanceCount);
  external void drawRangeElements(GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, GLintptr offset);
  external void endQuery(GLenum target);
  external void endTransformFeedback();
  external WebGLSync? fenceSync(GLenum condition, GLbitfield flags);
  external void framebufferTextureLayer(GLenum target, GLenum attachment, Texture? texture, GLint level, GLint layer);
  external String? getActiveUniformBlockName(Program program, GLuint uniformBlockIndex);
  external dynamic getActiveUniformBlockParameter(Program program, GLuint uniformBlockIndex, GLenum pname);
  external dynamic getActiveUniforms(Program program, List<GLuint> uniformIndices, GLenum pname);
  external void getBufferSubData(
      GLenum target, GLintptr srcByteOffset, TypedData dstBuffer, GLuint dstOffset, GLuint length);
  external GLint getFragDataLocation(Program program, String name);
  external dynamic getIndexedParameter(GLenum target, GLuint index);
  external dynamic getInternalformatParameter(GLenum target, GLenum internalformat, GLenum pname);
  external WebGLQuery? getQuery(GLenum target, GLenum pname);
  external dynamic getQueryParameter(WebGLQuery query, GLenum pname);
  external dynamic getSamplerParameter(WebGLSampler sampler, GLenum pname);
  external dynamic getSyncParameter(WebGLSync sync, GLenum pname);
  external ActiveInfo? getTransformFeedbackVarying(Program program, GLuint index);
  external GLuint getUniformBlockIndex(Program program, String uniformBlockName);
  external List<GLuint>? getUniformIndices(Program program, List<String> uniformNames);
  external void invalidateFramebuffer(GLenum target, List<GLenum> attachments);
  external void invalidateSubFramebuffer(
      GLenum target, List<GLenum> attachments, GLint x, GLint y, GLsizei width, GLsizei height);
  external GLboolean isQuery(WebGLQuery? query);
  external GLboolean isSampler(WebGLSampler? sampler);
  external GLboolean isSync(WebGLSync? sync);
  external GLboolean isTransformFeedback(WebGLTransformFeedback? tf);
  external GLboolean isVertexArray(WebGLVertexArrayObject? vertexArray);
  external void pauseTransformFeedback();
  external void readBuffer(GLenum src);
  external void renderbufferStorageMultisample(
      GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height);
  external void resumeTransformFeedback();
  external void samplerParameterf(WebGLSampler sampler, GLenum pname, GLfloat param);
  external void samplerParameteri(WebGLSampler sampler, GLenum pname, GLint param);
  external void texImage3D(GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height,
      GLsizei depth, GLint border, GLenum format, GLenum type, GLintptr pboOffset);
  external void texStorage2D(GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height);
  external void texStorage3D(
      GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth);
  external void texSubImage3D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width,
      GLsizei height, GLsizei depth, GLenum format, GLenum type, GLintptr pboOffset);
  external void transformFeedbackVaryings(Program program, List<String> varyings, GLenum bufferMode);
  external void uniform1ui(UniformLocation? location, GLuint v0);
  external void uniform1uiv(UniformLocation? location, Uint32List data, GLuint srcOffset, GLuint srcLength);
  external void uniform2ui(UniformLocation? location, GLuint v0, GLuint v1);
  external void uniform2uiv(UniformLocation? location, Uint32List data, GLuint srcOffset, GLuint srcLength);
  external void uniform3ui(UniformLocation? location, GLuint v0, GLuint v1, GLuint v2);
  external void uniform3uiv(UniformLocation? location, Uint32List data, GLuint srcOffset, GLuint srcLength);
  external void uniform4ui(UniformLocation? location, GLuint v0, GLuint v1, GLuint v2, GLuint v3);
  external void uniform4uiv(UniformLocation? location, Uint32List data, GLuint srcOffset, GLuint srcLength);
  external void uniformBlockBinding(Program program, GLuint uniformBlockIndex, GLuint uniformBlockBinding);
  external void uniformMatrix2x3fv(
      UniformLocation? location, GLboolean transpose, Float32List data, GLuint srcOffset, GLuint srcLength);
  external void uniformMatrix2x4fv(
      UniformLocation? location, GLboolean transpose, Float32List data, GLuint srcOffset, GLuint srcLength);
  external void uniformMatrix3x2fv(
      UniformLocation? location, GLboolean transpose, Float32List data, GLuint srcOffset, GLuint srcLength);
  external void uniformMatrix3x4fv(
      UniformLocation? location, GLboolean transpose, Float32List data, GLuint srcOffset, GLuint srcLength);
  external void uniformMatrix4x2fv(
      UniformLocation? location, GLboolean transpose, Float32List data, GLuint srcOffset, GLuint srcLength);
  external void uniformMatrix4x3fv(
      UniformLocation? location, GLboolean transpose, Float32List data, GLuint srcOffset, GLuint srcLength);
  external void vertexAttribDivisor(GLuint index, GLuint divisor);
  external void vertexAttribI4i(GLuint index, GLint x, GLint y, GLint z, GLint w);
  external void vertexAttribI4iv(GLuint index, Int32List values);
  external void vertexAttribI4ui(GLuint index, GLuint x, GLuint y, GLuint z, GLuint w);
  external void vertexAttribI4uiv(GLuint index, Uint32List values);
  external void vertexAttribIPointer(GLuint index, GLint size, GLenum type, GLsizei stride, GLintptr offset);
  external void waitSync(WebGLSync sync, GLbitfield flags, GLint64 timeout);
  external GLenum get ACTIVE_UNIFORM_BLOCKS;
  external GLenum get ALREADY_SIGNALED;
  external GLenum get ANY_SAMPLES_PASSED;
  external GLenum get ANY_SAMPLES_PASSED_CONSERVATIVE;
  external GLenum get COLOR;
  external GLenum get COLOR_ATTACHMENT1;
  external GLenum get COLOR_ATTACHMENT10;
  external GLenum get COLOR_ATTACHMENT11;
  external GLenum get COLOR_ATTACHMENT12;
  external GLenum get COLOR_ATTACHMENT13;
  external GLenum get COLOR_ATTACHMENT14;
  external GLenum get COLOR_ATTACHMENT15;
  external GLenum get COLOR_ATTACHMENT2;
  external GLenum get COLOR_ATTACHMENT3;
  external GLenum get COLOR_ATTACHMENT4;
  external GLenum get COLOR_ATTACHMENT5;
  external GLenum get COLOR_ATTACHMENT6;
  external GLenum get COLOR_ATTACHMENT7;
  external GLenum get COLOR_ATTACHMENT8;
  external GLenum get COLOR_ATTACHMENT9;
  external GLenum get COMPARE_REF_TO_TEXTURE;
  external GLenum get CONDITION_SATISFIED;
  external GLenum get COPY_READ_BUFFER;
  external GLenum get COPY_READ_BUFFER_BINDING;
  external GLenum get COPY_WRITE_BUFFER;
  external GLenum get COPY_WRITE_BUFFER_BINDING;
  external GLenum get CURRENT_QUERY;
  external GLenum get DEPTH;
  external GLenum get DEPTH24_STENCIL8;
  external GLenum get DEPTH32F_STENCIL8;
  external GLenum get DEPTH_COMPONENT24;
  external GLenum get DEPTH_COMPONENT32F;
  external GLenum get DRAW_BUFFER0;
  external GLenum get DRAW_BUFFER1;
  external GLenum get DRAW_BUFFER10;
  external GLenum get DRAW_BUFFER11;
  external GLenum get DRAW_BUFFER12;
  external GLenum get DRAW_BUFFER13;
  external GLenum get DRAW_BUFFER14;
  external GLenum get DRAW_BUFFER15;
  external GLenum get DRAW_BUFFER2;
  external GLenum get DRAW_BUFFER3;
  external GLenum get DRAW_BUFFER4;
  external GLenum get DRAW_BUFFER5;
  external GLenum get DRAW_BUFFER6;
  external GLenum get DRAW_BUFFER7;
  external GLenum get DRAW_BUFFER8;
  external GLenum get DRAW_BUFFER9;
  external GLenum get DRAW_FRAMEBUFFER;
  external GLenum get DRAW_FRAMEBUFFER_BINDING;
  external GLenum get DYNAMIC_COPY;
  external GLenum get DYNAMIC_READ;
  external GLenum get FLOAT_32_UNSIGNED_INT_24_8_REV;
  external GLenum get FLOAT_MAT2x3;
  external GLenum get FLOAT_MAT2x4;
  external GLenum get FLOAT_MAT3x2;
  external GLenum get FLOAT_MAT3x4;
  external GLenum get FLOAT_MAT4x2;
  external GLenum get FLOAT_MAT4x3;
  external GLenum get FRAGMENT_SHADER_DERIVATIVE_HINT;
  external GLenum get FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE;
  external GLenum get FRAMEBUFFER_ATTACHMENT_BLUE_SIZE;
  external GLenum get FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING;
  external GLenum get FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE;
  external GLenum get FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE;
  external GLenum get FRAMEBUFFER_ATTACHMENT_GREEN_SIZE;
  external GLenum get FRAMEBUFFER_ATTACHMENT_RED_SIZE;
  external GLenum get FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE;
  external GLenum get FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER;
  external GLenum get FRAMEBUFFER_DEFAULT;
  external GLenum get FRAMEBUFFER_INCOMPLETE_MULTISAMPLE;
  external GLenum get HALF_FLOAT;
  external GLenum get INTERLEAVED_ATTRIBS;
  external GLenum get INT_2_10_10_10_REV;
  external GLenum get INT_SAMPLER_2D;
  external GLenum get INT_SAMPLER_2D_ARRAY;
  external GLenum get INT_SAMPLER_3D;
  external GLenum get INT_SAMPLER_CUBE;
  external GLenum get INVALID_INDEX;
  external GLenum get MAX;
  external GLenum get MAX_3D_TEXTURE_SIZE;
  external GLenum get MAX_ARRAY_TEXTURE_LAYERS;
  external GLenum get MAX_CLIENT_WAIT_TIMEOUT_WEBGL;
  external GLenum get MAX_COLOR_ATTACHMENTS;
  external GLenum get MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS;
  external GLenum get MAX_COMBINED_UNIFORM_BLOCKS;
  external GLenum get MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS;
  external GLenum get MAX_DRAW_BUFFERS;
  external GLenum get MAX_ELEMENTS_INDICES;
  external GLenum get MAX_ELEMENTS_VERTICES;
  external GLenum get MAX_ELEMENT_INDEX;
  external GLenum get MAX_FRAGMENT_INPUT_COMPONENTS;
  external GLenum get MAX_FRAGMENT_UNIFORM_BLOCKS;
  external GLenum get MAX_FRAGMENT_UNIFORM_COMPONENTS;
  external GLenum get MAX_PROGRAM_TEXEL_OFFSET;
  external GLenum get MAX_SAMPLES;
  external GLenum get MAX_SERVER_WAIT_TIMEOUT;
  external GLenum get MAX_TEXTURE_LOD_BIAS;
  external GLenum get MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS;
  external GLenum get MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS;
  external GLenum get MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS;
  external GLenum get MAX_UNIFORM_BLOCK_SIZE;
  external GLenum get MAX_UNIFORM_BUFFER_BINDINGS;
  external GLenum get MAX_VARYING_COMPONENTS;
  external GLenum get MAX_VERTEX_OUTPUT_COMPONENTS;
  external GLenum get MAX_VERTEX_UNIFORM_BLOCKS;
  external GLenum get MAX_VERTEX_UNIFORM_COMPONENTS;
  external GLenum get MIN;
  external GLenum get MIN_PROGRAM_TEXEL_OFFSET;
  external GLenum get OBJECT_TYPE;
  external GLenum get PACK_ROW_LENGTH;
  external GLenum get PACK_SKIP_PIXELS;
  external GLenum get PACK_SKIP_ROWS;
  external GLenum get PIXEL_PACK_BUFFER;
  external GLenum get PIXEL_PACK_BUFFER_BINDING;
  external GLenum get PIXEL_UNPACK_BUFFER;
  external GLenum get PIXEL_UNPACK_BUFFER_BINDING;
  external GLenum get QUERY_RESULT;
  external GLenum get QUERY_RESULT_AVAILABLE;
  external GLenum get R11F_G11F_B10F;
  external GLenum get R16F;
  external GLenum get R16I;
  external GLenum get R16UI;
  external GLenum get R32F;
  external GLenum get R32I;
  external GLenum get R32UI;
  external GLenum get R8;
  external GLenum get R8I;
  external GLenum get R8UI;
  external GLenum get R8_SNORM;
  external GLenum get RASTERIZER_DISCARD;
  external GLenum get READ_BUFFER;
  external GLenum get READ_FRAMEBUFFER;
  external GLenum get READ_FRAMEBUFFER_BINDING;
  external GLenum get RED;
  external GLenum get RED_INTEGER;
  external GLenum get RENDERBUFFER_SAMPLES;
  external GLenum get RG;
  external GLenum get RG16F;
  external GLenum get RG16I;
  external GLenum get RG16UI;
  external GLenum get RG32F;
  external GLenum get RG32I;
  external GLenum get RG32UI;
  external GLenum get RG8;
  external GLenum get RG8I;
  external GLenum get RG8UI;
  external GLenum get RG8_SNORM;
  external GLenum get RGB10_A2;
  external GLenum get RGB10_A2UI;
  external GLenum get RGB16F;
  external GLenum get RGB16I;
  external GLenum get RGB16UI;
  external GLenum get RGB32F;
  external GLenum get RGB32I;
  external GLenum get RGB32UI;
  external GLenum get RGB8;
  external GLenum get RGB8I;
  external GLenum get RGB8UI;
  external GLenum get RGB8_SNORM;
  external GLenum get RGB9_E5;
  external GLenum get RGBA16F;
  external GLenum get RGBA16I;
  external GLenum get RGBA16UI;
  external GLenum get RGBA32F;
  external GLenum get RGBA32I;
  external GLenum get RGBA32UI;
  external GLenum get RGBA8;
  external GLenum get RGBA8I;
  external GLenum get RGBA8UI;
  external GLenum get RGBA8_SNORM;
  external GLenum get RGBA_INTEGER;
  external GLenum get RGB_INTEGER;
  external GLenum get RG_INTEGER;
  external GLenum get SAMPLER_2D_ARRAY;
  external GLenum get SAMPLER_2D_ARRAY_SHADOW;
  external GLenum get SAMPLER_2D_SHADOW;
  external GLenum get SAMPLER_3D;
  external GLenum get SAMPLER_BINDING;
  external GLenum get SAMPLER_CUBE_SHADOW;
  external GLenum get SEPARATE_ATTRIBS;
  external GLenum get SIGNALED;
  external GLenum get SIGNED_NORMALIZED;
  external GLenum get SRGB;
  external GLenum get SRGB8;
  external GLenum get SRGB8_ALPHA8;
  external GLenum get STATIC_COPY;
  external GLenum get STATIC_READ;
  external GLenum get STENCIL;
  external GLenum get STREAM_COPY;
  external GLenum get STREAM_READ;
  external GLenum get SYNC_CONDITION;
  external GLenum get SYNC_FENCE;
  external GLenum get SYNC_FLAGS;
  external GLenum get SYNC_FLUSH_COMMANDS_BIT;
  external GLenum get SYNC_GPU_COMMANDS_COMPLETE;
  external GLenum get SYNC_STATUS;
  external GLenum get TEXTURE_2D_ARRAY;
  external GLenum get TEXTURE_3D;
  external GLenum get TEXTURE_BASE_LEVEL;
  external GLenum get TEXTURE_BINDING_2D_ARRAY;
  external GLenum get TEXTURE_BINDING_3D;
  external GLenum get TEXTURE_COMPARE_FUNC;
  external GLenum get TEXTURE_COMPARE_MODE;
  external GLenum get TEXTURE_IMMUTABLE_FORMAT;
  external GLenum get TEXTURE_IMMUTABLE_LEVELS;
  external GLenum get TEXTURE_MAX_LEVEL;
  external GLenum get TEXTURE_MAX_LOD;
  external GLenum get TEXTURE_MIN_LOD;
  external GLenum get TEXTURE_WRAP_R;
  external GLenum get TIMEOUT_EXPIRED;
  external GLint64 get TIMEOUT_IGNORED;
  external GLenum get TRANSFORM_FEEDBACK;
  external GLenum get TRANSFORM_FEEDBACK_ACTIVE;
  external GLenum get TRANSFORM_FEEDBACK_BINDING;
  external GLenum get TRANSFORM_FEEDBACK_BUFFER;
  external GLenum get TRANSFORM_FEEDBACK_BUFFER_BINDING;
  external GLenum get TRANSFORM_FEEDBACK_BUFFER_MODE;
  external GLenum get TRANSFORM_FEEDBACK_BUFFER_SIZE;
  external GLenum get TRANSFORM_FEEDBACK_BUFFER_START;
  external GLenum get TRANSFORM_FEEDBACK_PAUSED;
  external GLenum get TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN;
  external GLenum get TRANSFORM_FEEDBACK_VARYINGS;
  external GLenum get UNIFORM_ARRAY_STRIDE;
  external GLenum get UNIFORM_BLOCK_ACTIVE_UNIFORMS;
  external GLenum get UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES;
  external GLenum get UNIFORM_BLOCK_BINDING;
  external GLenum get UNIFORM_BLOCK_DATA_SIZE;
  external GLenum get UNIFORM_BLOCK_INDEX;
  external GLenum get UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER;
  external GLenum get UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER;
  external GLenum get UNIFORM_BUFFER;
  external GLenum get UNIFORM_BUFFER_BINDING;
  external GLenum get UNIFORM_BUFFER_OFFSET_ALIGNMENT;
  external GLenum get UNIFORM_BUFFER_SIZE;
  external GLenum get UNIFORM_BUFFER_START;
  external GLenum get UNIFORM_IS_ROW_MAJOR;
  external GLenum get UNIFORM_MATRIX_STRIDE;
  external GLenum get UNIFORM_OFFSET;
  external GLenum get UNIFORM_SIZE;
  external GLenum get UNIFORM_TYPE;
  external GLenum get UNPACK_IMAGE_HEIGHT;
  external GLenum get UNPACK_ROW_LENGTH;
  external GLenum get UNPACK_SKIP_IMAGES;
  external GLenum get UNPACK_SKIP_PIXELS;
  external GLenum get UNPACK_SKIP_ROWS;
  external GLenum get UNSIGNALED;
  external GLenum get UNSIGNED_INT_10F_11F_11F_REV;
  external GLenum get UNSIGNED_INT_24_8;
  external GLenum get UNSIGNED_INT_2_10_10_10_REV;
  external GLenum get UNSIGNED_INT_5_9_9_9_REV;
  external GLenum get UNSIGNED_INT_SAMPLER_2D;
  external GLenum get UNSIGNED_INT_SAMPLER_2D_ARRAY;
  external GLenum get UNSIGNED_INT_SAMPLER_3D;
  external GLenum get UNSIGNED_INT_SAMPLER_CUBE;
  external GLenum get UNSIGNED_INT_VEC2;
  external GLenum get UNSIGNED_INT_VEC3;
  external GLenum get UNSIGNED_INT_VEC4;
  external GLenum get UNSIGNED_NORMALIZED;
  external GLenum get VERTEX_ARRAY_BINDING;
  external GLenum get VERTEX_ATTRIB_ARRAY_DIVISOR;
  external GLenum get VERTEX_ATTRIB_ARRAY_INTEGER;
  external GLenum get WAIT_FAILED;
  external factory WebGL2RenderingContextBase({
    GLenum ACTIVE_UNIFORM_BLOCKS,
    GLenum ALREADY_SIGNALED,
    GLenum ANY_SAMPLES_PASSED,
    GLenum ANY_SAMPLES_PASSED_CONSERVATIVE,
    GLenum COLOR,
    GLenum COLOR_ATTACHMENT1,
    GLenum COLOR_ATTACHMENT10,
    GLenum COLOR_ATTACHMENT11,
    GLenum COLOR_ATTACHMENT12,
    GLenum COLOR_ATTACHMENT13,
    GLenum COLOR_ATTACHMENT14,
    GLenum COLOR_ATTACHMENT15,
    GLenum COLOR_ATTACHMENT2,
    GLenum COLOR_ATTACHMENT3,
    GLenum COLOR_ATTACHMENT4,
    GLenum COLOR_ATTACHMENT5,
    GLenum COLOR_ATTACHMENT6,
    GLenum COLOR_ATTACHMENT7,
    GLenum COLOR_ATTACHMENT8,
    GLenum COLOR_ATTACHMENT9,
    GLenum COMPARE_REF_TO_TEXTURE,
    GLenum CONDITION_SATISFIED,
    GLenum COPY_READ_BUFFER,
    GLenum COPY_READ_BUFFER_BINDING,
    GLenum COPY_WRITE_BUFFER,
    GLenum COPY_WRITE_BUFFER_BINDING,
    GLenum CURRENT_QUERY,
    GLenum DEPTH,
    GLenum DEPTH24_STENCIL8,
    GLenum DEPTH32F_STENCIL8,
    GLenum DEPTH_COMPONENT24,
    GLenum DEPTH_COMPONENT32F,
    GLenum DRAW_BUFFER0,
    GLenum DRAW_BUFFER1,
    GLenum DRAW_BUFFER10,
    GLenum DRAW_BUFFER11,
    GLenum DRAW_BUFFER12,
    GLenum DRAW_BUFFER13,
    GLenum DRAW_BUFFER14,
    GLenum DRAW_BUFFER15,
    GLenum DRAW_BUFFER2,
    GLenum DRAW_BUFFER3,
    GLenum DRAW_BUFFER4,
    GLenum DRAW_BUFFER5,
    GLenum DRAW_BUFFER6,
    GLenum DRAW_BUFFER7,
    GLenum DRAW_BUFFER8,
    GLenum DRAW_BUFFER9,
    GLenum DRAW_FRAMEBUFFER,
    GLenum DRAW_FRAMEBUFFER_BINDING,
    GLenum DYNAMIC_COPY,
    GLenum DYNAMIC_READ,
    GLenum FLOAT_32_UNSIGNED_INT_24_8_REV,
    GLenum FLOAT_MAT2x3,
    GLenum FLOAT_MAT2x4,
    GLenum FLOAT_MAT3x2,
    GLenum FLOAT_MAT3x4,
    GLenum FLOAT_MAT4x2,
    GLenum FLOAT_MAT4x3,
    GLenum FRAGMENT_SHADER_DERIVATIVE_HINT,
    GLenum FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE,
    GLenum FRAMEBUFFER_ATTACHMENT_BLUE_SIZE,
    GLenum FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING,
    GLenum FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE,
    GLenum FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE,
    GLenum FRAMEBUFFER_ATTACHMENT_GREEN_SIZE,
    GLenum FRAMEBUFFER_ATTACHMENT_RED_SIZE,
    GLenum FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE,
    GLenum FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER,
    GLenum FRAMEBUFFER_DEFAULT,
    GLenum FRAMEBUFFER_INCOMPLETE_MULTISAMPLE,
    GLenum HALF_FLOAT,
    GLenum INTERLEAVED_ATTRIBS,
    GLenum INT_2_10_10_10_REV,
    GLenum INT_SAMPLER_2D,
    GLenum INT_SAMPLER_2D_ARRAY,
    GLenum INT_SAMPLER_3D,
    GLenum INT_SAMPLER_CUBE,
    GLenum INVALID_INDEX,
    GLenum MAX,
    GLenum MAX_3D_TEXTURE_SIZE,
    GLenum MAX_ARRAY_TEXTURE_LAYERS,
    GLenum MAX_CLIENT_WAIT_TIMEOUT_WEBGL,
    GLenum MAX_COLOR_ATTACHMENTS,
    GLenum MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS,
    GLenum MAX_COMBINED_UNIFORM_BLOCKS,
    GLenum MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS,
    GLenum MAX_DRAW_BUFFERS,
    GLenum MAX_ELEMENTS_INDICES,
    GLenum MAX_ELEMENTS_VERTICES,
    GLenum MAX_ELEMENT_INDEX,
    GLenum MAX_FRAGMENT_INPUT_COMPONENTS,
    GLenum MAX_FRAGMENT_UNIFORM_BLOCKS,
    GLenum MAX_FRAGMENT_UNIFORM_COMPONENTS,
    GLenum MAX_PROGRAM_TEXEL_OFFSET,
    GLenum MAX_SAMPLES,
    GLenum MAX_SERVER_WAIT_TIMEOUT,
    GLenum MAX_TEXTURE_LOD_BIAS,
    GLenum MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS,
    GLenum MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS,
    GLenum MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS,
    GLenum MAX_UNIFORM_BLOCK_SIZE,
    GLenum MAX_UNIFORM_BUFFER_BINDINGS,
    GLenum MAX_VARYING_COMPONENTS,
    GLenum MAX_VERTEX_OUTPUT_COMPONENTS,
    GLenum MAX_VERTEX_UNIFORM_BLOCKS,
    GLenum MAX_VERTEX_UNIFORM_COMPONENTS,
    GLenum MIN,
    GLenum MIN_PROGRAM_TEXEL_OFFSET,
    GLenum OBJECT_TYPE,
    GLenum PACK_ROW_LENGTH,
    GLenum PACK_SKIP_PIXELS,
    GLenum PACK_SKIP_ROWS,
    GLenum PIXEL_PACK_BUFFER,
    GLenum PIXEL_PACK_BUFFER_BINDING,
    GLenum PIXEL_UNPACK_BUFFER,
    GLenum PIXEL_UNPACK_BUFFER_BINDING,
    GLenum QUERY_RESULT,
    GLenum QUERY_RESULT_AVAILABLE,
    GLenum R11F_G11F_B10F,
    GLenum R16F,
    GLenum R16I,
    GLenum R16UI,
    GLenum R32F,
    GLenum R32I,
    GLenum R32UI,
    GLenum R8,
    GLenum R8I,
    GLenum R8UI,
    GLenum R8_SNORM,
    GLenum RASTERIZER_DISCARD,
    GLenum READ_BUFFER,
    GLenum READ_FRAMEBUFFER,
    GLenum READ_FRAMEBUFFER_BINDING,
    GLenum RED,
    GLenum RED_INTEGER,
    GLenum RENDERBUFFER_SAMPLES,
    GLenum RG,
    GLenum RG16F,
    GLenum RG16I,
    GLenum RG16UI,
    GLenum RG32F,
    GLenum RG32I,
    GLenum RG32UI,
    GLenum RG8,
    GLenum RG8I,
    GLenum RG8UI,
    GLenum RG8_SNORM,
    GLenum RGB10_A2,
    GLenum RGB10_A2UI,
    GLenum RGB16F,
    GLenum RGB16I,
    GLenum RGB16UI,
    GLenum RGB32F,
    GLenum RGB32I,
    GLenum RGB32UI,
    GLenum RGB8,
    GLenum RGB8I,
    GLenum RGB8UI,
    GLenum RGB8_SNORM,
    GLenum RGB9_E5,
    GLenum RGBA16F,
    GLenum RGBA16I,
    GLenum RGBA16UI,
    GLenum RGBA32F,
    GLenum RGBA32I,
    GLenum RGBA32UI,
    GLenum RGBA8,
    GLenum RGBA8I,
    GLenum RGBA8UI,
    GLenum RGBA8_SNORM,
    GLenum RGBA_INTEGER,
    GLenum RGB_INTEGER,
    GLenum RG_INTEGER,
    GLenum SAMPLER_2D_ARRAY,
    GLenum SAMPLER_2D_ARRAY_SHADOW,
    GLenum SAMPLER_2D_SHADOW,
    GLenum SAMPLER_3D,
    GLenum SAMPLER_BINDING,
    GLenum SAMPLER_CUBE_SHADOW,
    GLenum SEPARATE_ATTRIBS,
    GLenum SIGNALED,
    GLenum SIGNED_NORMALIZED,
    GLenum SRGB,
    GLenum SRGB8,
    GLenum SRGB8_ALPHA8,
    GLenum STATIC_COPY,
    GLenum STATIC_READ,
    GLenum STENCIL,
    GLenum STREAM_COPY,
    GLenum STREAM_READ,
    GLenum SYNC_CONDITION,
    GLenum SYNC_FENCE,
    GLenum SYNC_FLAGS,
    GLenum SYNC_FLUSH_COMMANDS_BIT,
    GLenum SYNC_GPU_COMMANDS_COMPLETE,
    GLenum SYNC_STATUS,
    GLenum TEXTURE_2D_ARRAY,
    GLenum TEXTURE_3D,
    GLenum TEXTURE_BASE_LEVEL,
    GLenum TEXTURE_BINDING_2D_ARRAY,
    GLenum TEXTURE_BINDING_3D,
    GLenum TEXTURE_COMPARE_FUNC,
    GLenum TEXTURE_COMPARE_MODE,
    GLenum TEXTURE_IMMUTABLE_FORMAT,
    GLenum TEXTURE_IMMUTABLE_LEVELS,
    GLenum TEXTURE_MAX_LEVEL,
    GLenum TEXTURE_MAX_LOD,
    GLenum TEXTURE_MIN_LOD,
    GLenum TEXTURE_WRAP_R,
    GLenum TIMEOUT_EXPIRED,
    GLint64 TIMEOUT_IGNORED,
    GLenum TRANSFORM_FEEDBACK,
    GLenum TRANSFORM_FEEDBACK_ACTIVE,
    GLenum TRANSFORM_FEEDBACK_BINDING,
    GLenum TRANSFORM_FEEDBACK_BUFFER,
    GLenum TRANSFORM_FEEDBACK_BUFFER_BINDING,
    GLenum TRANSFORM_FEEDBACK_BUFFER_MODE,
    GLenum TRANSFORM_FEEDBACK_BUFFER_SIZE,
    GLenum TRANSFORM_FEEDBACK_BUFFER_START,
    GLenum TRANSFORM_FEEDBACK_PAUSED,
    GLenum TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN,
    GLenum TRANSFORM_FEEDBACK_VARYINGS,
    GLenum UNIFORM_ARRAY_STRIDE,
    GLenum UNIFORM_BLOCK_ACTIVE_UNIFORMS,
    GLenum UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES,
    GLenum UNIFORM_BLOCK_BINDING,
    GLenum UNIFORM_BLOCK_DATA_SIZE,
    GLenum UNIFORM_BLOCK_INDEX,
    GLenum UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER,
    GLenum UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER,
    GLenum UNIFORM_BUFFER,
    GLenum UNIFORM_BUFFER_BINDING,
    GLenum UNIFORM_BUFFER_OFFSET_ALIGNMENT,
    GLenum UNIFORM_BUFFER_SIZE,
    GLenum UNIFORM_BUFFER_START,
    GLenum UNIFORM_IS_ROW_MAJOR,
    GLenum UNIFORM_MATRIX_STRIDE,
    GLenum UNIFORM_OFFSET,
    GLenum UNIFORM_SIZE,
    GLenum UNIFORM_TYPE,
    GLenum UNPACK_IMAGE_HEIGHT,
    GLenum UNPACK_ROW_LENGTH,
    GLenum UNPACK_SKIP_IMAGES,
    GLenum UNPACK_SKIP_PIXELS,
    GLenum UNPACK_SKIP_ROWS,
    GLenum UNSIGNALED,
    GLenum UNSIGNED_INT_10F_11F_11F_REV,
    GLenum UNSIGNED_INT_24_8,
    GLenum UNSIGNED_INT_2_10_10_10_REV,
    GLenum UNSIGNED_INT_5_9_9_9_REV,
    GLenum UNSIGNED_INT_SAMPLER_2D,
    GLenum UNSIGNED_INT_SAMPLER_2D_ARRAY,
    GLenum UNSIGNED_INT_SAMPLER_3D,
    GLenum UNSIGNED_INT_SAMPLER_CUBE,
    GLenum UNSIGNED_INT_VEC2,
    GLenum UNSIGNED_INT_VEC3,
    GLenum UNSIGNED_INT_VEC4,
    GLenum UNSIGNED_NORMALIZED,
    GLenum VERTEX_ARRAY_BINDING,
    GLenum VERTEX_ATTRIB_ARRAY_DIVISOR,
    GLenum VERTEX_ATTRIB_ARRAY_INTEGER,
    GLenum WAIT_FAILED,
  });
}

@JS()
@anonymous
class WebGL2RenderingContextOverloads {
  external void bufferData(GLenum target, GLsizeiptr size, GLenum usage);
  external void bufferSubData(GLenum target, GLintptr dstByteOffset, BufferSource srcData);
  external void compressedTexImage2D(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height,
      GLint border, GLsizei imageSize, GLintptr offset);
  external void compressedTexSubImage2D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width,
      GLsizei height, GLenum format, GLsizei imageSize, GLintptr offset);
  external void readPixels(
      GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, TypedData? dstData);
  external void texImage2D(GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height,
      GLint border, GLenum format, GLenum type, TypedData? pixels);
  external void texSubImage2D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height,
      GLenum format, GLenum type, TypedData? pixels);
  external void uniform1fv(UniformLocation? location, Float32List data, GLuint srcOffset, GLuint srcLength);
  external void uniform1iv(UniformLocation? location, Int32List data, GLuint srcOffset, GLuint srcLength);
  external void uniform2fv(UniformLocation? location, Float32List data, GLuint srcOffset, GLuint srcLength);
  external void uniform2iv(UniformLocation? location, Int32List data, GLuint srcOffset, GLuint srcLength);
  external void uniform3fv(UniformLocation? location, Float32List data, GLuint srcOffset, GLuint srcLength);
  external void uniform3iv(UniformLocation? location, Int32List data, GLuint srcOffset, GLuint srcLength);
  external void uniform4fv(UniformLocation? location, Float32List data, GLuint srcOffset, GLuint srcLength);
  external void uniform4iv(UniformLocation? location, Int32List data, GLuint srcOffset, GLuint srcLength);
  external void uniformMatrix2fv(
      UniformLocation? location, GLboolean transpose, Float32List data, GLuint srcOffset, GLuint srcLength);
  external void uniformMatrix3fv(
      UniformLocation? location, GLboolean transpose, Float32List data, GLuint srcOffset, GLuint srcLength);
  external void uniformMatrix4fv(
      UniformLocation? location, GLboolean transpose, Float32List data, GLuint srcOffset, GLuint srcLength);
  external factory WebGL2RenderingContextOverloads();
}

@JS()
@anonymous
class WebGLActiveInfo {
  external String get name;
  external GLint get size;
  external GLenum get type;
  external factory WebGLActiveInfo({
    String name,
    GLint size,
    GLenum type,
  });
}

@JS(r'WebGLActiveInfo')
external IWebGLActiveInfo JWebGLActiveInfo;

@JS()
@anonymous
class WebGLBuffer {
  external factory WebGLBuffer();
}

@JS(r'WebGLBuffer')
external IWebGLBuffer JWebGLBuffer;

@JS()
@anonymous
class WebGLContextEvent extends Event {
  external String get statusMessage;
  external factory WebGLContextEvent({
    String statusMessage,
  });
}

@JS(r'WebGLContextEvent')
external IWebGLContextEvent JWebGLContextEvent;

@JS()
@anonymous
class WebGLFramebuffer {
  external factory WebGLFramebuffer();
}

@JS(r'WebGLFramebuffer')
external IWebGLFramebuffer JWebGLFramebuffer;

@JS()
@anonymous
class WebGLProgram {
  external factory WebGLProgram();
}

@JS(r'WebGLProgram')
external IWebGLProgram JWebGLProgram;

@JS()
@anonymous
class WebGLQuery {
  external factory WebGLQuery();
}

@JS(r'WebGLQuery')
external IWebGLQuery JWebGLQuery;

@JS()
@anonymous
class WebGLRenderbuffer {
  external factory WebGLRenderbuffer();
}

@JS(r'WebGLRenderbuffer')
external IWebGLRenderbuffer JWebGLRenderbuffer;

@JS()
@anonymous
class WebGLRenderingContext extends WebGLRenderingContextBase {
  external factory WebGLRenderingContext();
}

@JS(r'WebGLRenderingContext')
external IWebGLRenderingContext JWebGLRenderingContext;

@JS()
@anonymous
class WebGLRenderingContextBase {
  external OffscreenCanvas get canvas;
  external GLsizei get drawingBufferHeight;
  external GLsizei get drawingBufferWidth;
  external void activeTexture(GLenum texture);
  external void attachShader(Program program, Shader shader);
  external void bindAttribLocation(Program program, GLuint index, String name);
  external void bindBuffer(GLenum target, Buffer? buffer);
  external void bindFramebuffer(GLenum target, Framebuffer? framebuffer);
  external void bindRenderbuffer(GLenum target, Renderbuffer? renderbuffer);
  external void bindTexture(GLenum target, Texture? texture);
  external void blendColor(GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha);
  external void blendEquation(GLenum mode);
  external void blendEquationSeparate(GLenum modeRGB, GLenum modeAlpha);
  external void blendFunc(GLenum sfactor, GLenum dfactor);
  external void blendFuncSeparate(GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha);
  external GLenum checkFramebufferStatus(GLenum target);
  external void clear(GLbitfield mask);
  external void clearColor(GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha);
  external void clearDepth(GLclampf depth);
  external void clearStencil(GLint s);
  external void colorMask(GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha);
  external void compileShader(Shader shader);
  external void copyTexImage2D(
      GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border);
  external void copyTexSubImage2D(
      GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height);
  external Buffer? createBuffer();
  external Framebuffer? createFramebuffer();
  external Program? createProgram();
  external Renderbuffer? createRenderbuffer();
  external Shader? createShader(GLenum type);
  external Texture? createTexture();
  external void cullFace(GLenum mode);
  external void deleteBuffer(Buffer? buffer);
  external void deleteFramebuffer(Framebuffer? framebuffer);
  external void deleteProgram(Program? program);
  external void deleteRenderbuffer(Renderbuffer? renderbuffer);
  external void deleteShader(Shader? shader);
  external void deleteTexture(Texture? texture);
  external void depthFunc(GLenum func);
  external void depthMask(GLboolean flag);
  external void depthRange(GLclampf zNear, GLclampf zFar);
  external void detachShader(Program program, Shader shader);
  external void disable(GLenum cap);
  external void disableVertexAttribArray(GLuint index);
  external void drawArrays(GLenum mode, GLint first, GLsizei count);
  external void drawElements(GLenum mode, GLsizei count, GLenum type, GLintptr offset);
  external void enable(GLenum cap);
  external void enableVertexAttribArray(GLuint index);
  external void finish();
  external void flush();
  external void framebufferRenderbuffer(
      GLenum target, GLenum attachment, GLenum renderbuffertarget, Renderbuffer? renderbuffer);
  external void framebufferTexture2D(GLenum target, GLenum attachment, GLenum textarget, Texture? texture, GLint level);
  external void frontFace(GLenum mode);
  external void generateMipmap(GLenum target);
  external ActiveInfo? getActiveAttrib(Program program, GLuint index);
  external ActiveInfo? getActiveUniform(Program program, GLuint index);
  external List<Shader>? getAttachedShaders(Program program);
  external GLint getAttribLocation(Program program, String name);
  external dynamic getBufferParameter(GLenum target, GLenum pname);
  external ContextAttributes? getContextAttributes();
  external GLenum getError();
  external EXT_blend_minmax? getExtension(String extensionName);
  external dynamic getFramebufferAttachmentParameter(GLenum target, GLenum attachment, GLenum pname);
  external dynamic getParameter(GLenum pname);
  external String? getProgramInfoLog(Program program);
  external dynamic getProgramParameter(Program program, GLenum pname);
  external dynamic getRenderbufferParameter(GLenum target, GLenum pname);
  external String? getShaderInfoLog(Shader shader);
  external dynamic getShaderParameter(Shader shader, GLenum pname);
  external ShaderPrecisionFormat? getShaderPrecisionFormat(GLenum shadertype, GLenum precisiontype);
  external String? getShaderSource(Shader shader);
  external List<String>? getSupportedExtensions();
  external dynamic getTexParameter(GLenum target, GLenum pname);
  external dynamic getUniform(Program program, UniformLocation location);
  external UniformLocation? getUniformLocation(Program program, String name);
  external dynamic getVertexAttrib(GLuint index, GLenum pname);
  external GLintptr getVertexAttribOffset(GLuint index, GLenum pname);
  external void hint(GLenum target, GLenum mode);
  external GLboolean isBuffer(Buffer? buffer);
  external bool isContextLost();
  external GLboolean isEnabled(GLenum cap);
  external GLboolean isFramebuffer(Framebuffer? framebuffer);
  external GLboolean isProgram(Program? program);
  external GLboolean isRenderbuffer(Renderbuffer? renderbuffer);
  external GLboolean isShader(Shader? shader);
  external GLboolean isTexture(Texture? texture);
  external void lineWidth(GLfloat width);
  external void linkProgram(Program program);
  external void pixelStorei(GLenum pname, dynamic param);
  external void polygonOffset(GLfloat factor, GLfloat units);
  external void renderbufferStorage(GLenum target, GLenum internalformat, GLsizei width, GLsizei height);
  external void sampleCoverage(GLclampf value, GLboolean invert);
  external void scissor(GLint x, GLint y, GLsizei width, GLsizei height);
  external void shaderSource(Shader shader, String source);
  external void stencilFunc(GLenum func, GLint ref, GLuint mask);
  external void stencilFuncSeparate(GLenum face, GLenum func, GLint ref, GLuint mask);
  external void stencilMask(GLuint mask);
  external void stencilMaskSeparate(GLenum face, GLuint mask);
  external void stencilOp(GLenum fail, GLenum zfail, GLenum zpass);
  external void stencilOpSeparate(GLenum face, GLenum fail, GLenum zfail, GLenum zpass);
  external void texParameterf(GLenum target, GLenum pname, GLfloat param);
  external void texParameteri(GLenum target, GLenum pname, GLint param);
  external void uniform1f(UniformLocation? location, GLfloat x);
  external void uniform1i(UniformLocation? location, GLint x);
  external void uniform2f(UniformLocation? location, GLfloat x, GLfloat y);
  external void uniform2i(UniformLocation? location, GLint x, GLint y);
  external void uniform3f(UniformLocation? location, GLfloat x, GLfloat y, GLfloat z);
  external void uniform3i(UniformLocation? location, GLint x, GLint y, GLint z);
  external void uniform4f(UniformLocation? location, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
  external void uniform4i(UniformLocation? location, GLint x, GLint y, GLint z, GLint w);
  external void useProgram(Program? program);
  external void validateProgram(Program program);
  external void vertexAttrib1f(GLuint index, GLfloat x);
  external void vertexAttrib1fv(GLuint index, Float32List values);
  external void vertexAttrib2f(GLuint index, GLfloat x, GLfloat y);
  external void vertexAttrib2fv(GLuint index, Float32List values);
  external void vertexAttrib3f(GLuint index, GLfloat x, GLfloat y, GLfloat z);
  external void vertexAttrib3fv(GLuint index, Float32List values);
  external void vertexAttrib4f(GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
  external void vertexAttrib4fv(GLuint index, Float32List values);
  external void vertexAttribPointer(
      GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, GLintptr offset);
  external void viewport(GLint x, GLint y, GLsizei width, GLsizei height);
  external GLenum get ACTIVE_ATTRIBUTES;
  external GLenum get ACTIVE_TEXTURE;
  external GLenum get ACTIVE_UNIFORMS;
  external GLenum get ALIASED_LINE_WIDTH_RANGE;
  external GLenum get ALIASED_POINT_SIZE_RANGE;
  external GLenum get ALPHA;
  external GLenum get ALPHA_BITS;
  external GLenum get ALWAYS;
  external GLenum get ARRAY_BUFFER;
  external GLenum get ARRAY_BUFFER_BINDING;
  external GLenum get ATTACHED_SHADERS;
  external GLenum get BACK;
  external GLenum get BLEND;
  external GLenum get BLEND_COLOR;
  external GLenum get BLEND_DST_ALPHA;
  external GLenum get BLEND_DST_RGB;
  external GLenum get BLEND_EQUATION;
  external GLenum get BLEND_EQUATION_ALPHA;
  external GLenum get BLEND_EQUATION_RGB;
  external GLenum get BLEND_SRC_ALPHA;
  external GLenum get BLEND_SRC_RGB;
  external GLenum get BLUE_BITS;
  external GLenum get BOOL;
  external GLenum get BOOL_VEC2;
  external GLenum get BOOL_VEC3;
  external GLenum get BOOL_VEC4;
  external GLenum get BROWSER_DEFAULT_WEBGL;
  external GLenum get BUFFER_SIZE;
  external GLenum get BUFFER_USAGE;
  external GLenum get BYTE;
  external GLenum get CCW;
  external GLenum get CLAMP_TO_EDGE;
  external GLenum get COLOR_ATTACHMENT0;
  external GLenum get COLOR_BUFFER_BIT;
  external GLenum get COLOR_CLEAR_VALUE;
  external GLenum get COLOR_WRITEMASK;
  external GLenum get COMPILE_STATUS;
  external GLenum get COMPRESSED_TEXTURE_FORMATS;
  external GLenum get CONSTANT_ALPHA;
  external GLenum get CONSTANT_COLOR;
  external GLenum get CONTEXT_LOST_WEBGL;
  external GLenum get CULL_FACE;
  external GLenum get CULL_FACE_MODE;
  external GLenum get CURRENT_PROGRAM;
  external GLenum get CURRENT_VERTEX_ATTRIB;
  external GLenum get CW;
  external GLenum get DECR;
  external GLenum get DECR_WRAP;
  external GLenum get DELETE_STATUS;
  external GLenum get DEPTH_ATTACHMENT;
  external GLenum get DEPTH_BITS;
  external GLenum get DEPTH_BUFFER_BIT;
  external GLenum get DEPTH_CLEAR_VALUE;
  external GLenum get DEPTH_COMPONENT;
  external GLenum get DEPTH_COMPONENT16;
  external GLenum get DEPTH_FUNC;
  external GLenum get DEPTH_RANGE;
  external GLenum get DEPTH_STENCIL;
  external GLenum get DEPTH_STENCIL_ATTACHMENT;
  external GLenum get DEPTH_TEST;
  external GLenum get DEPTH_WRITEMASK;
  external GLenum get DITHER;
  external GLenum get DONT_CARE;
  external GLenum get DST_ALPHA;
  external GLenum get DST_COLOR;
  external GLenum get DYNAMIC_DRAW;
  external GLenum get ELEMENT_ARRAY_BUFFER;
  external GLenum get ELEMENT_ARRAY_BUFFER_BINDING;
  external GLenum get EQUAL;
  external GLenum get FASTEST;
  external GLenum get FLOAT;
  external GLenum get FLOAT_MAT2;
  external GLenum get FLOAT_MAT3;
  external GLenum get FLOAT_MAT4;
  external GLenum get FLOAT_VEC2;
  external GLenum get FLOAT_VEC3;
  external GLenum get FLOAT_VEC4;
  external GLenum get FRAGMENT_SHADER;
  external GLenum get FRAMEBUFFER;
  external GLenum get FRAMEBUFFER_ATTACHMENT_OBJECT_NAME;
  external GLenum get FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE;
  external GLenum get FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE;
  external GLenum get FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL;
  external GLenum get FRAMEBUFFER_BINDING;
  external GLenum get FRAMEBUFFER_COMPLETE;
  external GLenum get FRAMEBUFFER_INCOMPLETE_ATTACHMENT;
  external GLenum get FRAMEBUFFER_INCOMPLETE_DIMENSIONS;
  external GLenum get FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT;
  external GLenum get FRAMEBUFFER_UNSUPPORTED;
  external GLenum get FRONT;
  external GLenum get FRONT_AND_BACK;
  external GLenum get FRONT_FACE;
  external GLenum get FUNC_ADD;
  external GLenum get FUNC_REVERSE_SUBTRACT;
  external GLenum get FUNC_SUBTRACT;
  external GLenum get GENERATE_MIPMAP_HINT;
  external GLenum get GEQUAL;
  external GLenum get GREATER;
  external GLenum get GREEN_BITS;
  external GLenum get HIGH_FLOAT;
  external GLenum get HIGH_INT;
  external GLenum get IMPLEMENTATION_COLOR_READ_FORMAT;
  external GLenum get IMPLEMENTATION_COLOR_READ_TYPE;
  external GLenum get INCR;
  external GLenum get INCR_WRAP;
  external GLenum get INT;
  external GLenum get INT_VEC2;
  external GLenum get INT_VEC3;
  external GLenum get INT_VEC4;
  external GLenum get INVALID_ENUM;
  external GLenum get INVALID_FRAMEBUFFER_OPERATION;
  external GLenum get INVALID_OPERATION;
  external GLenum get INVALID_VALUE;
  external GLenum get INVERT;
  external GLenum get KEEP;
  external GLenum get LEQUAL;
  external GLenum get LESS;
  external GLenum get LINEAR;
  external GLenum get LINEAR_MIPMAP_LINEAR;
  external GLenum get LINEAR_MIPMAP_NEAREST;
  external GLenum get LINES;
  external GLenum get LINE_LOOP;
  external GLenum get LINE_STRIP;
  external GLenum get LINE_WIDTH;
  external GLenum get LINK_STATUS;
  external GLenum get LOW_FLOAT;
  external GLenum get LOW_INT;
  external GLenum get LUMINANCE;
  external GLenum get LUMINANCE_ALPHA;
  external GLenum get MAX_COMBINED_TEXTURE_IMAGE_UNITS;
  external GLenum get MAX_CUBE_MAP_TEXTURE_SIZE;
  external GLenum get MAX_FRAGMENT_UNIFORM_VECTORS;
  external GLenum get MAX_RENDERBUFFER_SIZE;
  external GLenum get MAX_TEXTURE_IMAGE_UNITS;
  external GLenum get MAX_TEXTURE_SIZE;
  external GLenum get MAX_VARYING_VECTORS;
  external GLenum get MAX_VERTEX_ATTRIBS;
  external GLenum get MAX_VERTEX_TEXTURE_IMAGE_UNITS;
  external GLenum get MAX_VERTEX_UNIFORM_VECTORS;
  external GLenum get MAX_VIEWPORT_DIMS;
  external GLenum get MEDIUM_FLOAT;
  external GLenum get MEDIUM_INT;
  external GLenum get MIRRORED_REPEAT;
  external GLenum get NEAREST;
  external GLenum get NEAREST_MIPMAP_LINEAR;
  external GLenum get NEAREST_MIPMAP_NEAREST;
  external GLenum get NEVER;
  external GLenum get NICEST;
  external GLenum get NONE;
  external GLenum get NOTEQUAL;
  external GLenum get NO_ERROR;
  external GLenum get ONE;
  external GLenum get ONE_MINUS_CONSTANT_ALPHA;
  external GLenum get ONE_MINUS_CONSTANT_COLOR;
  external GLenum get ONE_MINUS_DST_ALPHA;
  external GLenum get ONE_MINUS_DST_COLOR;
  external GLenum get ONE_MINUS_SRC_ALPHA;
  external GLenum get ONE_MINUS_SRC_COLOR;
  external GLenum get OUT_OF_MEMORY;
  external GLenum get PACK_ALIGNMENT;
  external GLenum get POINTS;
  external GLenum get POLYGON_OFFSET_FACTOR;
  external GLenum get POLYGON_OFFSET_FILL;
  external GLenum get POLYGON_OFFSET_UNITS;
  external GLenum get RED_BITS;
  external GLenum get RENDERBUFFER;
  external GLenum get RENDERBUFFER_ALPHA_SIZE;
  external GLenum get RENDERBUFFER_BINDING;
  external GLenum get RENDERBUFFER_BLUE_SIZE;
  external GLenum get RENDERBUFFER_DEPTH_SIZE;
  external GLenum get RENDERBUFFER_GREEN_SIZE;
  external GLenum get RENDERBUFFER_HEIGHT;
  external GLenum get RENDERBUFFER_INTERNAL_FORMAT;
  external GLenum get RENDERBUFFER_RED_SIZE;
  external GLenum get RENDERBUFFER_STENCIL_SIZE;
  external GLenum get RENDERBUFFER_WIDTH;
  external GLenum get RENDERER;
  external GLenum get REPEAT;
  external GLenum get REPLACE;
  external GLenum get RGB;
  external GLenum get RGB565;
  external GLenum get RGB5_A1;
  external GLenum get RGBA;
  external GLenum get RGBA4;
  external GLenum get SAMPLER_2D;
  external GLenum get SAMPLER_CUBE;
  external GLenum get SAMPLES;
  external GLenum get SAMPLE_ALPHA_TO_COVERAGE;
  external GLenum get SAMPLE_BUFFERS;
  external GLenum get SAMPLE_COVERAGE;
  external GLenum get SAMPLE_COVERAGE_INVERT;
  external GLenum get SAMPLE_COVERAGE_VALUE;
  external GLenum get SCISSOR_BOX;
  external GLenum get SCISSOR_TEST;
  external GLenum get SHADER_TYPE;
  external GLenum get SHADING_LANGUAGE_VERSION;
  external GLenum get SHORT;
  external GLenum get SRC_ALPHA;
  external GLenum get SRC_ALPHA_SATURATE;
  external GLenum get SRC_COLOR;
  external GLenum get STATIC_DRAW;
  external GLenum get STENCIL_ATTACHMENT;
  external GLenum get STENCIL_BACK_FAIL;
  external GLenum get STENCIL_BACK_FUNC;
  external GLenum get STENCIL_BACK_PASS_DEPTH_FAIL;
  external GLenum get STENCIL_BACK_PASS_DEPTH_PASS;
  external GLenum get STENCIL_BACK_REF;
  external GLenum get STENCIL_BACK_VALUE_MASK;
  external GLenum get STENCIL_BACK_WRITEMASK;
  external GLenum get STENCIL_BITS;
  external GLenum get STENCIL_BUFFER_BIT;
  external GLenum get STENCIL_CLEAR_VALUE;
  external GLenum get STENCIL_FAIL;
  external GLenum get STENCIL_FUNC;
  external GLenum get STENCIL_INDEX8;
  external GLenum get STENCIL_PASS_DEPTH_FAIL;
  external GLenum get STENCIL_PASS_DEPTH_PASS;
  external GLenum get STENCIL_REF;
  external GLenum get STENCIL_TEST;
  external GLenum get STENCIL_VALUE_MASK;
  external GLenum get STENCIL_WRITEMASK;
  external GLenum get STREAM_DRAW;
  external GLenum get SUBPIXEL_BITS;
  external GLenum get TEXTURE;
  external GLenum get TEXTURE0;
  external GLenum get TEXTURE1;
  external GLenum get TEXTURE10;
  external GLenum get TEXTURE11;
  external GLenum get TEXTURE12;
  external GLenum get TEXTURE13;
  external GLenum get TEXTURE14;
  external GLenum get TEXTURE15;
  external GLenum get TEXTURE16;
  external GLenum get TEXTURE17;
  external GLenum get TEXTURE18;
  external GLenum get TEXTURE19;
  external GLenum get TEXTURE2;
  external GLenum get TEXTURE20;
  external GLenum get TEXTURE21;
  external GLenum get TEXTURE22;
  external GLenum get TEXTURE23;
  external GLenum get TEXTURE24;
  external GLenum get TEXTURE25;
  external GLenum get TEXTURE26;
  external GLenum get TEXTURE27;
  external GLenum get TEXTURE28;
  external GLenum get TEXTURE29;
  external GLenum get TEXTURE3;
  external GLenum get TEXTURE30;
  external GLenum get TEXTURE31;
  external GLenum get TEXTURE4;
  external GLenum get TEXTURE5;
  external GLenum get TEXTURE6;
  external GLenum get TEXTURE7;
  external GLenum get TEXTURE8;
  external GLenum get TEXTURE9;
  external GLenum get TEXTURE_2D;
  external GLenum get TEXTURE_BINDING_2D;
  external GLenum get TEXTURE_BINDING_CUBE_MAP;
  external GLenum get TEXTURE_CUBE_MAP;
  external GLenum get TEXTURE_CUBE_MAP_NEGATIVE_X;
  external GLenum get TEXTURE_CUBE_MAP_NEGATIVE_Y;
  external GLenum get TEXTURE_CUBE_MAP_NEGATIVE_Z;
  external GLenum get TEXTURE_CUBE_MAP_POSITIVE_X;
  external GLenum get TEXTURE_CUBE_MAP_POSITIVE_Y;
  external GLenum get TEXTURE_CUBE_MAP_POSITIVE_Z;
  external GLenum get TEXTURE_MAG_FILTER;
  external GLenum get TEXTURE_MIN_FILTER;
  external GLenum get TEXTURE_WRAP_S;
  external GLenum get TEXTURE_WRAP_T;
  external GLenum get TRIANGLES;
  external GLenum get TRIANGLE_FAN;
  external GLenum get TRIANGLE_STRIP;
  external GLenum get UNPACK_ALIGNMENT;
  external GLenum get UNPACK_COLORSPACE_CONVERSION_WEBGL;
  external GLenum get UNPACK_FLIP_Y_WEBGL;
  external GLenum get UNPACK_PREMULTIPLY_ALPHA_WEBGL;
  external GLenum get UNSIGNED_BYTE;
  external GLenum get UNSIGNED_INT;
  external GLenum get UNSIGNED_SHORT;
  external GLenum get UNSIGNED_SHORT_4_4_4_4;
  external GLenum get UNSIGNED_SHORT_5_5_5_1;
  external GLenum get UNSIGNED_SHORT_5_6_5;
  external GLenum get VALIDATE_STATUS;
  external GLenum get VENDOR;
  external GLenum get VERSION;
  external GLenum get VERTEX_ATTRIB_ARRAY_BUFFER_BINDING;
  external GLenum get VERTEX_ATTRIB_ARRAY_ENABLED;
  external GLenum get VERTEX_ATTRIB_ARRAY_NORMALIZED;
  external GLenum get VERTEX_ATTRIB_ARRAY_POINTER;
  external GLenum get VERTEX_ATTRIB_ARRAY_SIZE;
  external GLenum get VERTEX_ATTRIB_ARRAY_STRIDE;
  external GLenum get VERTEX_ATTRIB_ARRAY_TYPE;
  external GLenum get VERTEX_SHADER;
  external GLenum get VIEWPORT;
  external GLenum get ZERO;
  external factory WebGLRenderingContextBase({
    OffscreenCanvas canvas,
    GLsizei drawingBufferHeight,
    GLsizei drawingBufferWidth,
    GLenum ACTIVE_ATTRIBUTES,
    GLenum ACTIVE_TEXTURE,
    GLenum ACTIVE_UNIFORMS,
    GLenum ALIASED_LINE_WIDTH_RANGE,
    GLenum ALIASED_POINT_SIZE_RANGE,
    GLenum ALPHA,
    GLenum ALPHA_BITS,
    GLenum ALWAYS,
    GLenum ARRAY_BUFFER,
    GLenum ARRAY_BUFFER_BINDING,
    GLenum ATTACHED_SHADERS,
    GLenum BACK,
    GLenum BLEND,
    GLenum BLEND_COLOR,
    GLenum BLEND_DST_ALPHA,
    GLenum BLEND_DST_RGB,
    GLenum BLEND_EQUATION,
    GLenum BLEND_EQUATION_ALPHA,
    GLenum BLEND_EQUATION_RGB,
    GLenum BLEND_SRC_ALPHA,
    GLenum BLEND_SRC_RGB,
    GLenum BLUE_BITS,
    GLenum BOOL,
    GLenum BOOL_VEC2,
    GLenum BOOL_VEC3,
    GLenum BOOL_VEC4,
    GLenum BROWSER_DEFAULT_WEBGL,
    GLenum BUFFER_SIZE,
    GLenum BUFFER_USAGE,
    GLenum BYTE,
    GLenum CCW,
    GLenum CLAMP_TO_EDGE,
    GLenum COLOR_ATTACHMENT0,
    GLenum COLOR_BUFFER_BIT,
    GLenum COLOR_CLEAR_VALUE,
    GLenum COLOR_WRITEMASK,
    GLenum COMPILE_STATUS,
    GLenum COMPRESSED_TEXTURE_FORMATS,
    GLenum CONSTANT_ALPHA,
    GLenum CONSTANT_COLOR,
    GLenum CONTEXT_LOST_WEBGL,
    GLenum CULL_FACE,
    GLenum CULL_FACE_MODE,
    GLenum CURRENT_PROGRAM,
    GLenum CURRENT_VERTEX_ATTRIB,
    GLenum CW,
    GLenum DECR,
    GLenum DECR_WRAP,
    GLenum DELETE_STATUS,
    GLenum DEPTH_ATTACHMENT,
    GLenum DEPTH_BITS,
    GLenum DEPTH_BUFFER_BIT,
    GLenum DEPTH_CLEAR_VALUE,
    GLenum DEPTH_COMPONENT,
    GLenum DEPTH_COMPONENT16,
    GLenum DEPTH_FUNC,
    GLenum DEPTH_RANGE,
    GLenum DEPTH_STENCIL,
    GLenum DEPTH_STENCIL_ATTACHMENT,
    GLenum DEPTH_TEST,
    GLenum DEPTH_WRITEMASK,
    GLenum DITHER,
    GLenum DONT_CARE,
    GLenum DST_ALPHA,
    GLenum DST_COLOR,
    GLenum DYNAMIC_DRAW,
    GLenum ELEMENT_ARRAY_BUFFER,
    GLenum ELEMENT_ARRAY_BUFFER_BINDING,
    GLenum EQUAL,
    GLenum FASTEST,
    GLenum FLOAT,
    GLenum FLOAT_MAT2,
    GLenum FLOAT_MAT3,
    GLenum FLOAT_MAT4,
    GLenum FLOAT_VEC2,
    GLenum FLOAT_VEC3,
    GLenum FLOAT_VEC4,
    GLenum FRAGMENT_SHADER,
    GLenum FRAMEBUFFER,
    GLenum FRAMEBUFFER_ATTACHMENT_OBJECT_NAME,
    GLenum FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE,
    GLenum FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE,
    GLenum FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL,
    GLenum FRAMEBUFFER_BINDING,
    GLenum FRAMEBUFFER_COMPLETE,
    GLenum FRAMEBUFFER_INCOMPLETE_ATTACHMENT,
    GLenum FRAMEBUFFER_INCOMPLETE_DIMENSIONS,
    GLenum FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT,
    GLenum FRAMEBUFFER_UNSUPPORTED,
    GLenum FRONT,
    GLenum FRONT_AND_BACK,
    GLenum FRONT_FACE,
    GLenum FUNC_ADD,
    GLenum FUNC_REVERSE_SUBTRACT,
    GLenum FUNC_SUBTRACT,
    GLenum GENERATE_MIPMAP_HINT,
    GLenum GEQUAL,
    GLenum GREATER,
    GLenum GREEN_BITS,
    GLenum HIGH_FLOAT,
    GLenum HIGH_INT,
    GLenum IMPLEMENTATION_COLOR_READ_FORMAT,
    GLenum IMPLEMENTATION_COLOR_READ_TYPE,
    GLenum INCR,
    GLenum INCR_WRAP,
    GLenum INT,
    GLenum INT_VEC2,
    GLenum INT_VEC3,
    GLenum INT_VEC4,
    GLenum INVALID_ENUM,
    GLenum INVALID_FRAMEBUFFER_OPERATION,
    GLenum INVALID_OPERATION,
    GLenum INVALID_VALUE,
    GLenum INVERT,
    GLenum KEEP,
    GLenum LEQUAL,
    GLenum LESS,
    GLenum LINEAR,
    GLenum LINEAR_MIPMAP_LINEAR,
    GLenum LINEAR_MIPMAP_NEAREST,
    GLenum LINES,
    GLenum LINE_LOOP,
    GLenum LINE_STRIP,
    GLenum LINE_WIDTH,
    GLenum LINK_STATUS,
    GLenum LOW_FLOAT,
    GLenum LOW_INT,
    GLenum LUMINANCE,
    GLenum LUMINANCE_ALPHA,
    GLenum MAX_COMBINED_TEXTURE_IMAGE_UNITS,
    GLenum MAX_CUBE_MAP_TEXTURE_SIZE,
    GLenum MAX_FRAGMENT_UNIFORM_VECTORS,
    GLenum MAX_RENDERBUFFER_SIZE,
    GLenum MAX_TEXTURE_IMAGE_UNITS,
    GLenum MAX_TEXTURE_SIZE,
    GLenum MAX_VARYING_VECTORS,
    GLenum MAX_VERTEX_ATTRIBS,
    GLenum MAX_VERTEX_TEXTURE_IMAGE_UNITS,
    GLenum MAX_VERTEX_UNIFORM_VECTORS,
    GLenum MAX_VIEWPORT_DIMS,
    GLenum MEDIUM_FLOAT,
    GLenum MEDIUM_INT,
    GLenum MIRRORED_REPEAT,
    GLenum NEAREST,
    GLenum NEAREST_MIPMAP_LINEAR,
    GLenum NEAREST_MIPMAP_NEAREST,
    GLenum NEVER,
    GLenum NICEST,
    GLenum NONE,
    GLenum NOTEQUAL,
    GLenum NO_ERROR,
    GLenum ONE,
    GLenum ONE_MINUS_CONSTANT_ALPHA,
    GLenum ONE_MINUS_CONSTANT_COLOR,
    GLenum ONE_MINUS_DST_ALPHA,
    GLenum ONE_MINUS_DST_COLOR,
    GLenum ONE_MINUS_SRC_ALPHA,
    GLenum ONE_MINUS_SRC_COLOR,
    GLenum OUT_OF_MEMORY,
    GLenum PACK_ALIGNMENT,
    GLenum POINTS,
    GLenum POLYGON_OFFSET_FACTOR,
    GLenum POLYGON_OFFSET_FILL,
    GLenum POLYGON_OFFSET_UNITS,
    GLenum RED_BITS,
    GLenum RENDERBUFFER,
    GLenum RENDERBUFFER_ALPHA_SIZE,
    GLenum RENDERBUFFER_BINDING,
    GLenum RENDERBUFFER_BLUE_SIZE,
    GLenum RENDERBUFFER_DEPTH_SIZE,
    GLenum RENDERBUFFER_GREEN_SIZE,
    GLenum RENDERBUFFER_HEIGHT,
    GLenum RENDERBUFFER_INTERNAL_FORMAT,
    GLenum RENDERBUFFER_RED_SIZE,
    GLenum RENDERBUFFER_STENCIL_SIZE,
    GLenum RENDERBUFFER_WIDTH,
    GLenum RENDERER,
    GLenum REPEAT,
    GLenum REPLACE,
    GLenum RGB,
    GLenum RGB565,
    GLenum RGB5_A1,
    GLenum RGBA,
    GLenum RGBA4,
    GLenum SAMPLER_2D,
    GLenum SAMPLER_CUBE,
    GLenum SAMPLES,
    GLenum SAMPLE_ALPHA_TO_COVERAGE,
    GLenum SAMPLE_BUFFERS,
    GLenum SAMPLE_COVERAGE,
    GLenum SAMPLE_COVERAGE_INVERT,
    GLenum SAMPLE_COVERAGE_VALUE,
    GLenum SCISSOR_BOX,
    GLenum SCISSOR_TEST,
    GLenum SHADER_TYPE,
    GLenum SHADING_LANGUAGE_VERSION,
    GLenum SHORT,
    GLenum SRC_ALPHA,
    GLenum SRC_ALPHA_SATURATE,
    GLenum SRC_COLOR,
    GLenum STATIC_DRAW,
    GLenum STENCIL_ATTACHMENT,
    GLenum STENCIL_BACK_FAIL,
    GLenum STENCIL_BACK_FUNC,
    GLenum STENCIL_BACK_PASS_DEPTH_FAIL,
    GLenum STENCIL_BACK_PASS_DEPTH_PASS,
    GLenum STENCIL_BACK_REF,
    GLenum STENCIL_BACK_VALUE_MASK,
    GLenum STENCIL_BACK_WRITEMASK,
    GLenum STENCIL_BITS,
    GLenum STENCIL_BUFFER_BIT,
    GLenum STENCIL_CLEAR_VALUE,
    GLenum STENCIL_FAIL,
    GLenum STENCIL_FUNC,
    GLenum STENCIL_INDEX8,
    GLenum STENCIL_PASS_DEPTH_FAIL,
    GLenum STENCIL_PASS_DEPTH_PASS,
    GLenum STENCIL_REF,
    GLenum STENCIL_TEST,
    GLenum STENCIL_VALUE_MASK,
    GLenum STENCIL_WRITEMASK,
    GLenum STREAM_DRAW,
    GLenum SUBPIXEL_BITS,
    GLenum TEXTURE,
    GLenum TEXTURE0,
    GLenum TEXTURE1,
    GLenum TEXTURE10,
    GLenum TEXTURE11,
    GLenum TEXTURE12,
    GLenum TEXTURE13,
    GLenum TEXTURE14,
    GLenum TEXTURE15,
    GLenum TEXTURE16,
    GLenum TEXTURE17,
    GLenum TEXTURE18,
    GLenum TEXTURE19,
    GLenum TEXTURE2,
    GLenum TEXTURE20,
    GLenum TEXTURE21,
    GLenum TEXTURE22,
    GLenum TEXTURE23,
    GLenum TEXTURE24,
    GLenum TEXTURE25,
    GLenum TEXTURE26,
    GLenum TEXTURE27,
    GLenum TEXTURE28,
    GLenum TEXTURE29,
    GLenum TEXTURE3,
    GLenum TEXTURE30,
    GLenum TEXTURE31,
    GLenum TEXTURE4,
    GLenum TEXTURE5,
    GLenum TEXTURE6,
    GLenum TEXTURE7,
    GLenum TEXTURE8,
    GLenum TEXTURE9,
    GLenum TEXTURE_2D,
    GLenum TEXTURE_BINDING_2D,
    GLenum TEXTURE_BINDING_CUBE_MAP,
    GLenum TEXTURE_CUBE_MAP,
    GLenum TEXTURE_CUBE_MAP_NEGATIVE_X,
    GLenum TEXTURE_CUBE_MAP_NEGATIVE_Y,
    GLenum TEXTURE_CUBE_MAP_NEGATIVE_Z,
    GLenum TEXTURE_CUBE_MAP_POSITIVE_X,
    GLenum TEXTURE_CUBE_MAP_POSITIVE_Y,
    GLenum TEXTURE_CUBE_MAP_POSITIVE_Z,
    GLenum TEXTURE_MAG_FILTER,
    GLenum TEXTURE_MIN_FILTER,
    GLenum TEXTURE_WRAP_S,
    GLenum TEXTURE_WRAP_T,
    GLenum TRIANGLES,
    GLenum TRIANGLE_FAN,
    GLenum TRIANGLE_STRIP,
    GLenum UNPACK_ALIGNMENT,
    GLenum UNPACK_COLORSPACE_CONVERSION_WEBGL,
    GLenum UNPACK_FLIP_Y_WEBGL,
    GLenum UNPACK_PREMULTIPLY_ALPHA_WEBGL,
    GLenum UNSIGNED_BYTE,
    GLenum UNSIGNED_INT,
    GLenum UNSIGNED_SHORT,
    GLenum UNSIGNED_SHORT_4_4_4_4,
    GLenum UNSIGNED_SHORT_5_5_5_1,
    GLenum UNSIGNED_SHORT_5_6_5,
    GLenum VALIDATE_STATUS,
    GLenum VENDOR,
    GLenum VERSION,
    GLenum VERTEX_ATTRIB_ARRAY_BUFFER_BINDING,
    GLenum VERTEX_ATTRIB_ARRAY_ENABLED,
    GLenum VERTEX_ATTRIB_ARRAY_NORMALIZED,
    GLenum VERTEX_ATTRIB_ARRAY_POINTER,
    GLenum VERTEX_ATTRIB_ARRAY_SIZE,
    GLenum VERTEX_ATTRIB_ARRAY_STRIDE,
    GLenum VERTEX_ATTRIB_ARRAY_TYPE,
    GLenum VERTEX_SHADER,
    GLenum VIEWPORT,
    GLenum ZERO,
  });
}

@JS()
@anonymous
class WebGLRenderingContextOverloads {
  external void bufferData(GLenum target, GLsizeiptr size, GLenum usage);
  external void bufferSubData(GLenum target, GLintptr offset, BufferSource data);
  external void compressedTexImage2D(
      GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, TypedData data);
  external void compressedTexSubImage2D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width,
      GLsizei height, GLenum format, TypedData data);
  external void readPixels(
      GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, TypedData? pixels);
  external void texImage2D(GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height,
      GLint border, GLenum format, GLenum type, TypedData? pixels);
  external void texSubImage2D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height,
      GLenum format, GLenum type, TypedData? pixels);
  external void uniform1fv(UniformLocation? location, Float32List v);
  external void uniform1iv(UniformLocation? location, Int32List v);
  external void uniform2fv(UniformLocation? location, Float32List v);
  external void uniform2iv(UniformLocation? location, Int32List v);
  external void uniform3fv(UniformLocation? location, Float32List v);
  external void uniform3iv(UniformLocation? location, Int32List v);
  external void uniform4fv(UniformLocation? location, Float32List v);
  external void uniform4iv(UniformLocation? location, Int32List v);
  external void uniformMatrix2fv(UniformLocation? location, GLboolean transpose, Float32List value);
  external void uniformMatrix3fv(UniformLocation? location, GLboolean transpose, Float32List value);
  external void uniformMatrix4fv(UniformLocation? location, GLboolean transpose, Float32List value);
  external factory WebGLRenderingContextOverloads();
}

@JS()
@anonymous
class WebGLSampler {
  external factory WebGLSampler();
}

@JS(r'WebGLSampler')
external IWebGLSampler JWebGLSampler;

@JS()
@anonymous
class WebGLShader {
  external factory WebGLShader();
}

@JS(r'WebGLShader')
external IWebGLShader JWebGLShader;

@JS()
@anonymous
class WebGLShaderPrecisionFormat {
  external GLint get precision;
  external GLint get rangeMax;
  external GLint get rangeMin;
  external factory WebGLShaderPrecisionFormat({
    GLint precision,
    GLint rangeMax,
    GLint rangeMin,
  });
}

@JS(r'WebGLShaderPrecisionFormat')
external IWebGLShaderPrecisionFormat JWebGLShaderPrecisionFormat;

@JS()
@anonymous
class WebGLSync {
  external factory WebGLSync();
}

@JS(r'WebGLSync')
external IWebGLSync JWebGLSync;

@JS()
@anonymous
class WebGLTexture {
  external factory WebGLTexture();
}

@JS(r'WebGLTexture')
external IWebGLTexture JWebGLTexture;

@JS()
@anonymous
class WebGLTransformFeedback {
  external factory WebGLTransformFeedback();
}

@JS(r'WebGLTransformFeedback')
external IWebGLTransformFeedback JWebGLTransformFeedback;

@JS()
@anonymous
class WebGLUniformLocation {
  external factory WebGLUniformLocation();
}

@JS(r'WebGLUniformLocation')
external IWebGLUniformLocation JWebGLUniformLocation;

@JS()
@anonymous
class WebGLVertexArrayObject {
  external factory WebGLVertexArrayObject();
}

@JS(r'WebGLVertexArrayObject')
external IWebGLVertexArrayObject JWebGLVertexArrayObject;

@JS()
@anonymous
class WebGLVertexArrayObjectOES {
  external factory WebGLVertexArrayObjectOES();
}

@JS()
@anonymous
class WebSocketEventMap {
  external CloseEvent close;
  external Event error;
  external MessageEvent message;
  external Event open;
  external factory WebSocketEventMap({
    CloseEvent close,
    Event error,
    MessageEvent message,
    Event open,
  });
}

@JS()
@anonymous
class WebSocket extends EventTarget {
  external BinaryType binaryType;
  external num get bufferedAmount;
  external String get extensions;
  external dynamic Function(CloseEvent ev)? onclose;
  external dynamic Function(Event ev)? onerror;
  external dynamic Function(MessageEvent ev)? onmessage;
  external dynamic Function(Event ev)? onopen;
  external String get protocol;
  external num get readyState;
  external String get url;
  external void close(num code, String reason);
  external void send(dynamic data);
  external num get CLOSED;
  external num get CLOSING;
  external num get CONNECTING;
  external num get OPEN;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory WebSocket({
    BinaryType binaryType,
    num bufferedAmount,
    String extensions,
    dynamic Function(CloseEvent ev)? onclose,
    dynamic Function(Event ev)? onerror,
    dynamic Function(MessageEvent ev)? onmessage,
    dynamic Function(Event ev)? onopen,
    String protocol,
    num readyState,
    String url,
    num CLOSED,
    num CLOSING,
    num CONNECTING,
    num OPEN,
  });
}

@JS(r'WebSocket')
external IWebSocket JWebSocket;

@JS()
@anonymous
class WindowClient extends Client {
  external bool get focused;
  external VisibilityState get visibilityState;
  external Promise<WindowClient> focus();
  external Promise<WindowClient?> navigate(String url);
  external factory WindowClient({
    bool focused,
    VisibilityState visibilityState,
  });
}

@JS(r'WindowClient')
external IWindowClient JWindowClient;

@JS()
@anonymous
class WindowOrWorkerGlobalScope {
  external CacheStorage get caches;
  external Crypto get crypto;
  external IdbFactory get indexedDB;
  external bool get isSecureContext;
  external String get origin;
  external Performance get performance;
  external String atob(String data);
  external String btoa(String data);
  external void clearInterval(num handle);
  external void clearTimeout(num handle);
  external Promise<ImageBitmap> createImageBitmap(ImageBitmapSource image, ImageBitmapOptions options);
  external Promise<Response> fetch(RequestInfo input, RequestInit init);
  external void queueMicrotask(VoidFunction callback);
  external num setInterval(
    TimerHandler handler,
    num timeout, [
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
  external num setTimeout(
    TimerHandler handler,
    num timeout, [
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
  external factory WindowOrWorkerGlobalScope({
    CacheStorage caches,
    Crypto crypto,
    IdbFactory indexedDB,
    bool isSecureContext,
    String origin,
    Performance performance,
  });
}

@JS()
@anonymous
class WorkerEventMap extends AbstractWorkerEventMap {
  external MessageEvent message;
  external MessageEvent messageerror;
  external factory WorkerEventMap({
    MessageEvent message,
    MessageEvent messageerror,
  });
}

@JS()
@anonymous
class Worker extends EventTarget {
  external dynamic Function(MessageEvent ev)? onmessage;
  external dynamic Function(MessageEvent ev)? onmessageerror;
  external void postMessage(dynamic message, List<Transferable> transfer);
  external void terminate();
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory Worker({
    dynamic Function(MessageEvent ev)? onmessage,
    dynamic Function(MessageEvent ev)? onmessageerror,
  });
}

@JS(r'Worker')
external IWorker JWorker;

@JS()
@anonymous
class WorkerGlobalScopeEventMap {
  external ErrorEvent error;
  external Event languagechange;
  external Event offline;
  external Event online;
  external PromiseRejectionEvent rejectionhandled;
  external PromiseRejectionEvent unhandledrejection;
  external factory WorkerGlobalScopeEventMap({
    ErrorEvent error,
    Event languagechange,
    Event offline,
    Event online,
    PromiseRejectionEvent rejectionhandled,
    PromiseRejectionEvent unhandledrejection,
  });
}

@JS()
@anonymous
class WorkerGlobalScope extends EventTarget {
  external WorkerLocation get location;
  external WorkerNavigator get navigator;
  external dynamic Function(ErrorEvent ev)? onerror;
  external dynamic Function(Event ev)? onlanguagechange;
  external dynamic Function(Event ev)? onoffline;
  external dynamic Function(Event ev)? ononline;
  external dynamic Function(PromiseRejectionEvent ev)? onrejectionhandled;
  external dynamic Function(PromiseRejectionEvent ev)? onunhandledrejection;
  external dynamic get self;
  external void importScripts([
    String? urls1,
    String? urls2,
    String? urls3,
    String? urls4,
    String? urls5,
    String? urls6,
    String? urls7,
    String? urls8,
    String? urls9,
  ]);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory WorkerGlobalScope({
    WorkerLocation location,
    WorkerNavigator navigator,
    dynamic Function(ErrorEvent ev)? onerror,
    dynamic Function(Event ev)? onlanguagechange,
    dynamic Function(Event ev)? onoffline,
    dynamic Function(Event ev)? ononline,
    dynamic Function(PromiseRejectionEvent ev)? onrejectionhandled,
    dynamic Function(PromiseRejectionEvent ev)? onunhandledrejection,
    dynamic self,
  });
}

@JS(r'WorkerGlobalScope')
external IWorkerGlobalScope JWorkerGlobalScope;

@JS()
@anonymous
class WorkerLocation {
  external String get hash;
  external String get host;
  external String get hostname;
  external String get href;
  @override
  external String toString();
  external String get origin;
  external String get pathname;
  external String get port;
  external String get protocol;
  external String get search;
  external factory WorkerLocation({
    String hash,
    String host,
    String hostname,
    String href,
    String origin,
    String pathname,
    String port,
    String protocol,
    String search,
  });
}

@JS(r'WorkerLocation')
external IWorkerLocation JWorkerLocation;

@JS()
@anonymous
class WorkerNavigator extends NavigatorConcurrentHardware {
  external Permissions get permissions;
  external factory WorkerNavigator({
    Permissions permissions,
  });
}

@JS(r'WorkerNavigator')
external IWorkerNavigator JWorkerNavigator;

@JS()
@anonymous
class WritableStream<W> {
  external bool get locked;
  external Promise<void> abort(dynamic reason);
  external WritableStreamDefaultWriter<W> getWriter();
  external factory WritableStream({
    bool locked,
  });
}

@JS(r'WritableStream')
external IWritableStream JWritableStream;

@JS()
@anonymous
class WritableStreamDefaultController {
  external void error(dynamic e);
  external factory WritableStreamDefaultController();
}

@JS(r'WritableStreamDefaultController')
external IWritableStreamDefaultController JWritableStreamDefaultController;

@JS()
@anonymous
class WritableStreamDefaultWriter<W> {
  external Promise<dynamic> get closed;
  external num? get desiredSize;
  external Promise<dynamic> get ready;
  external Promise<void> abort(dynamic reason);
  external Promise<void> close();
  external void releaseLock();
  external Promise<void> write(W chunk);
  external factory WritableStreamDefaultWriter({
    Promise<dynamic> closed,
    num? desiredSize,
    Promise<dynamic> ready,
  });
}

@JS(r'WritableStreamDefaultWriter')
external IWritableStreamDefaultWriter JWritableStreamDefaultWriter;

@JS()
@anonymous
class XMLHttpRequestEventMap extends XMLHttpRequestEventTargetEventMap {
  external Event readystatechange;
  external factory XMLHttpRequestEventMap({
    Event readystatechange,
  });
}

@JS()
@anonymous
class XMLHttpRequest extends HttpRequestEventTarget {
  external dynamic Function(Event ev)? onreadystatechange;
  external num get readyState;
  external dynamic get response;
  external String get responseText;
  external XMLHttpRequestResponseType responseType;
  external String get responseURL;
  external num get status;
  external String get statusText;
  external num timeout;
  external HttpRequestUpload get upload;
  external bool withCredentials;
  external void abort();
  external String getAllResponseHeaders();
  external String? getResponseHeader(String name);
  external void open(String method, String url);
  external void overrideMimeType(String mime);
  external void send(BodyInit? body);
  external void setRequestHeader(String name, String value);
  external num get DONE;
  external num get HEADERS_RECEIVED;
  external num get LOADING;
  external num get OPENED;
  external num get UNSENT;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory XMLHttpRequest({
    dynamic Function(Event ev)? onreadystatechange,
    num readyState,
    dynamic response,
    String responseText,
    XMLHttpRequestResponseType responseType,
    String responseURL,
    num status,
    String statusText,
    num timeout,
    HttpRequestUpload upload,
    bool withCredentials,
    num DONE,
    num HEADERS_RECEIVED,
    num LOADING,
    num OPENED,
    num UNSENT,
  });
}

@JS(r'XMLHttpRequest')
external IXMLHttpRequest JXMLHttpRequest;

@JS()
@anonymous
class XMLHttpRequestEventTargetEventMap {
  external ProgressEvent<HttpRequestEventTarget> abort;
  external ProgressEvent<HttpRequestEventTarget> error;
  external ProgressEvent<HttpRequestEventTarget> load;
  external ProgressEvent<HttpRequestEventTarget> loadend;
  external ProgressEvent<HttpRequestEventTarget> loadstart;
  external ProgressEvent<HttpRequestEventTarget> progress;
  external ProgressEvent<HttpRequestEventTarget> timeout;
  external factory XMLHttpRequestEventTargetEventMap({
    ProgressEvent<HttpRequestEventTarget> abort,
    ProgressEvent<HttpRequestEventTarget> error,
    ProgressEvent<HttpRequestEventTarget> load,
    ProgressEvent<HttpRequestEventTarget> loadend,
    ProgressEvent<HttpRequestEventTarget> loadstart,
    ProgressEvent<HttpRequestEventTarget> progress,
    ProgressEvent<HttpRequestEventTarget> timeout,
  });
}

@JS()
@anonymous
class XMLHttpRequestEventTarget extends EventTarget {
  external dynamic Function(ProgressEvent ev)? onabort;
  external dynamic Function(ProgressEvent ev)? onerror;
  external dynamic Function(ProgressEvent ev)? onload;
  external dynamic Function(ProgressEvent ev)? onloadend;
  external dynamic Function(ProgressEvent ev)? onloadstart;
  external dynamic Function(ProgressEvent ev)? onprogress;
  external dynamic Function(ProgressEvent ev)? ontimeout;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory XMLHttpRequestEventTarget({
    dynamic Function(ProgressEvent ev)? onabort,
    dynamic Function(ProgressEvent ev)? onerror,
    dynamic Function(ProgressEvent ev)? onload,
    dynamic Function(ProgressEvent ev)? onloadend,
    dynamic Function(ProgressEvent ev)? onloadstart,
    dynamic Function(ProgressEvent ev)? onprogress,
    dynamic Function(ProgressEvent ev)? ontimeout,
  });
}

@JS(r'XMLHttpRequestEventTarget')
external IXMLHttpRequestEventTarget JXMLHttpRequestEventTarget;

@JS()
@anonymous
class XMLHttpRequestUpload extends HttpRequestEventTarget {
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory XMLHttpRequestUpload();
}

@JS(r'XMLHttpRequestUpload')
external IXMLHttpRequestUpload JXMLHttpRequestUpload;

/// EventListener | EventListenerObject
typedef EventListenerOrEventListenerObject = dynamic;

@JS()
@anonymous
class Console {
  external dynamic memory;
  external void clear();
  external void count(String label);
  external void countReset(String label);
  external void debug([
    dynamic data1,
    dynamic data2,
    dynamic data3,
    dynamic data4,
    dynamic data5,
    dynamic data6,
    dynamic data7,
    dynamic data8,
    dynamic data9,
  ]);
  external void dir(dynamic item, dynamic options);
  external void dirxml([
    dynamic data1,
    dynamic data2,
    dynamic data3,
    dynamic data4,
    dynamic data5,
    dynamic data6,
    dynamic data7,
    dynamic data8,
    dynamic data9,
  ]);
  external void error([
    dynamic data1,
    dynamic data2,
    dynamic data3,
    dynamic data4,
    dynamic data5,
    dynamic data6,
    dynamic data7,
    dynamic data8,
    dynamic data9,
  ]);
  external void exception(
    String message, [
    dynamic optionalParams1,
    dynamic optionalParams2,
    dynamic optionalParams3,
    dynamic optionalParams4,
    dynamic optionalParams5,
    dynamic optionalParams6,
    dynamic optionalParams7,
    dynamic optionalParams8,
    dynamic optionalParams9,
  ]);
  external void group([
    dynamic data1,
    dynamic data2,
    dynamic data3,
    dynamic data4,
    dynamic data5,
    dynamic data6,
    dynamic data7,
    dynamic data8,
    dynamic data9,
  ]);
  external void groupCollapsed([
    dynamic data1,
    dynamic data2,
    dynamic data3,
    dynamic data4,
    dynamic data5,
    dynamic data6,
    dynamic data7,
    dynamic data8,
    dynamic data9,
  ]);
  external void groupEnd();
  external void info([
    dynamic data1,
    dynamic data2,
    dynamic data3,
    dynamic data4,
    dynamic data5,
    dynamic data6,
    dynamic data7,
    dynamic data8,
    dynamic data9,
  ]);
  external void log([
    dynamic data1,
    dynamic data2,
    dynamic data3,
    dynamic data4,
    dynamic data5,
    dynamic data6,
    dynamic data7,
    dynamic data8,
    dynamic data9,
  ]);
  external void table(dynamic tabularData, List<String> properties);
  external void time(String label);
  external void timeEnd(String label);
  external void timeLog(
    String label, [
    dynamic data1,
    dynamic data2,
    dynamic data3,
    dynamic data4,
    dynamic data5,
    dynamic data6,
    dynamic data7,
    dynamic data8,
    dynamic data9,
  ]);
  external void timeStamp(String label);
  external void trace([
    dynamic data1,
    dynamic data2,
    dynamic data3,
    dynamic data4,
    dynamic data5,
    dynamic data6,
    dynamic data7,
    dynamic data8,
    dynamic data9,
  ]);
  external void warn([
    dynamic data1,
    dynamic data2,
    dynamic data3,
    dynamic data4,
    dynamic data5,
    dynamic data6,
    dynamic data7,
    dynamic data8,
    dynamic data9,
  ]);
  external factory Console({
    dynamic memory,
  });
}

@JS(r'console')
external Console console;

@JS()
@anonymous
class Global {
  external dynamic value;
  external dynamic valueOf();
  external factory Global({
    dynamic value,
  });
}

@JS(r'WebAssembly.Global')
external IGlobal JGlobal;

@JS()
@anonymous
class Instance {
  external Exports get exports;
  external factory Instance({
    Exports exports,
  });
}

@JS(r'WebAssembly.Instance')
external IInstance JInstance;

@JS()
@anonymous
class Memory {
  external ByteBuffer get buffer;
  external num grow(num delta);
  external factory Memory({
    ByteBuffer buffer,
  });
}

@JS(r'WebAssembly.Memory')
external IMemory JMemory;

@JS()
@anonymous
class Module {
  external factory Module();
}

@JS(r'WebAssembly.Module')
external IModule JModule;

@JS()
@anonymous
class Table {
  external num get length;
  external Function? get(num index);
  external num grow(num delta);
  external void set(num index, Function? value);
  external factory Table({
    num length,
  });
}

@JS(r'WebAssembly.Table')
external ITable JTable;

@JS()
@anonymous
class GlobalDescriptor {
  external bool? mutable;
  external ValueType value;
  external factory GlobalDescriptor({
    bool? mutable,
    ValueType value,
  });
}

@JS()
@anonymous
class MemoryDescriptor {
  external num initial;
  external num? maximum;
  external bool? shared;
  external factory MemoryDescriptor({
    num initial,
    num? maximum,
    bool? shared,
  });
}

@JS()
@anonymous
class ModuleExportDescriptor {
  external ImportExportKind kind;
  external String name;
  external factory ModuleExportDescriptor({
    ImportExportKind kind,
    String name,
  });
}

@JS()
@anonymous
class ModuleImportDescriptor {
  external ImportExportKind kind;
  external String module;
  external String name;
  external factory ModuleImportDescriptor({
    ImportExportKind kind,
    String module,
    String name,
  });
}

@JS()
@anonymous
class TableDescriptor {
  external TableKind element;
  external num initial;
  external num? maximum;
  external factory TableDescriptor({
    TableKind element,
    num initial,
    num? maximum,
  });
}

@JS()
@anonymous
class WebAssemblyInstantiatedSource {
  external Instance instance;
  external Module module;
  external factory WebAssemblyInstantiatedSource({
    Instance instance,
    Module module,
  });
}

/// "function" | "global" | "memory" | "table"
typedef ImportExportKind = String;
typedef TableKind = String;

/// "f32" | "f64" | "i32" | "i64"
typedef ValueType = String;

/// Function | Global | Memory | Table
typedef ExportValue = dynamic;
typedef Exports = Record<String, ExportValue>;

/// ExportValue | num
typedef ImportValue = dynamic;
typedef ModuleImports = Record<String, ImportValue>;
typedef Imports = Record<String, ModuleImports>;
@JS(r'WebAssembly.compile')
external Promise<Module> compile(BufferSource bytes);
@JS(r'WebAssembly.compileStreaming')
external Promise<Module> compileStreaming(dynamic source);
@JS(r'WebAssembly.instantiate')
external Promise<WebAssemblyInstantiatedSource> instantiate(BufferSource bytes, Imports importObject);
@JS(r'WebAssembly.instantiate')
external Promise<Instance> instantiate1(Module moduleObject, Imports importObject);
@JS(r'WebAssembly.instantiateStreaming')
external Promise<WebAssemblyInstantiatedSource> instantiateStreaming(dynamic response, Imports importObject);
@JS(r'WebAssembly.validate')
external bool validate(BufferSource bytes);

@JS()
@anonymous
class FrameRequestCallback {
  external void call(num time);
  external factory FrameRequestCallback();
}

@JS()
@anonymous
class OnErrorEventHandlerNonNull {
  external dynamic call(dynamic event, String source, num lineno, num colno, Error error);
  external factory OnErrorEventHandlerNonNull();
}

@JS()
@anonymous
class PerformanceObserverCallback {
  external void call(PerformanceObserverEntryList entries, PerformanceObserver observer);
  external factory PerformanceObserverCallback();
}

@JS()
@anonymous
class QueuingStrategySize<T> {
  external num call(T chunk);
  external factory QueuingStrategySize();
}

@JS()
@anonymous
class TransformerFlushCallback<O> {
  external dynamic call(TransformStreamDefaultController<O> controller);
  external factory TransformerFlushCallback();
}

@JS()
@anonymous
class TransformerStartCallback<O> {
  external dynamic call(TransformStreamDefaultController<O> controller);
  external factory TransformerStartCallback();
}

@JS()
@anonymous
class TransformerTransformCallback<I, O> {
  external dynamic call(I chunk, TransformStreamDefaultController<O> controller);
  external factory TransformerTransformCallback();
}

@JS()
@anonymous
class UnderlyingSinkAbortCallback {
  external dynamic call(dynamic reason);
  external factory UnderlyingSinkAbortCallback();
}

@JS()
@anonymous
class UnderlyingSinkCloseCallback {
  external dynamic call();
  external factory UnderlyingSinkCloseCallback();
}

@JS()
@anonymous
class UnderlyingSinkStartCallback {
  external dynamic call(WritableStreamDefaultController controller);
  external factory UnderlyingSinkStartCallback();
}

@JS()
@anonymous
class UnderlyingSinkWriteCallback<W> {
  external dynamic call(W chunk, WritableStreamDefaultController controller);
  external factory UnderlyingSinkWriteCallback();
}

@JS()
@anonymous
class UnderlyingSourceCancelCallback {
  external dynamic call(dynamic reason);
  external factory UnderlyingSourceCancelCallback();
}

@JS()
@anonymous
class UnderlyingSourcePullCallback<R> {
  external dynamic call(ReadableStreamController<R> controller);
  external factory UnderlyingSourcePullCallback();
}

@JS()
@anonymous
class UnderlyingSourceStartCallback<R> {
  external dynamic call(ReadableStreamController<R> controller);
  external factory UnderlyingSourceStartCallback();
}

@JS()
@anonymous
class VoidFunction {
  external void call();
  external factory VoidFunction();
}

@JS(r'name')
external String name;
@JS(r'onmessage')
external dynamic Function(MessageEvent ev)? onmessage;
@JS(r'onmessageerror')
external dynamic Function(MessageEvent ev)? onmessageerror;
@JS(r'close')
external void close();
@JS(r'postMessage')
external void postMessage(dynamic message, List<Transferable> transfer);
@JS(r'postMessage')
external void postMessage1(dynamic message, PostMessageOptions options);
@JS(r'dispatchEvent')
external bool dispatchEvent(Event event);
@JS(r'location')
external WorkerLocation location;
@JS(r'navigator')
external WorkerNavigator navigator;
@JS(r'onerror')
external dynamic Function(ErrorEvent ev)? onerror;
@JS(r'onlanguagechange')
external dynamic Function(Event ev)? onlanguagechange;
@JS(r'onoffline')
external dynamic Function(Event ev)? onoffline;
@JS(r'ononline')
external dynamic Function(Event ev)? ononline;
@JS(r'onrejectionhandled')
external dynamic Function(PromiseRejectionEvent ev)? onrejectionhandled;
@JS(r'onunhandledrejection')
external dynamic Function(PromiseRejectionEvent ev)? onunhandledrejection;
@JS(r'self')
external dynamic self;
@JS(r'importScripts')
external void importScripts([
  String? urls1,
  String? urls2,
  String? urls3,
  String? urls4,
  String? urls5,
  String? urls6,
  String? urls7,
  String? urls8,
  String? urls9,
]);
@JS(r'dispatchEvent')
external bool dispatchEvent1(Event event);
@JS(r'caches')
external CacheStorage caches;
@JS(r'crypto')
external Crypto crypto;
@JS(r'indexedDB')
external IdbFactory indexedDB;
@JS(r'isSecureContext')
external bool isSecureContext;
@JS(r'origin')
external String origin;
@JS(r'performance')
external Performance performance;
@JS(r'atob')
external String atob(String data);
@JS(r'btoa')
external String btoa(String data);
@JS(r'clearInterval')
external void clearInterval(num handle);
@JS(r'clearTimeout')
external void clearTimeout(num handle);
@JS(r'createImageBitmap')
external Promise<ImageBitmap> createImageBitmap(ImageBitmapSource image, ImageBitmapOptions options);
@JS(r'createImageBitmap')
external Promise<ImageBitmap> createImageBitmap1(
    ImageBitmapSource image, num sx, num sy, num sw, num sh, ImageBitmapOptions options);
@JS(r'fetch')
external Promise<Response> fetch(RequestInfo input, RequestInit init);
@JS(r'queueMicrotask')
external void queueMicrotask(VoidFunction callback);
@JS(r'setInterval')
external num setInterval(
  TimerHandler handler,
  num timeout, [
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
@JS(r'setTimeout')
external num setTimeout(
  TimerHandler handler,
  num timeout, [
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
@JS(r'cancelAnimationFrame')
external void cancelAnimationFrame(num handle);
@JS(r'requestAnimationFrame')
external num requestAnimationFrame(FrameRequestCallback callback);
@JS(r'addEventListener')
external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
@JS(r'addEventListener')
external void addEventListener1(String type, EventListenerOrEventListenerObject listener, dynamic options);
@JS(r'removeEventListener')
external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
@JS(r'removeEventListener')
external void removeEventListener1(String type, EventListenerOrEventListenerObject listener, dynamic options);

/// Headers | List<List<String>> | Record<String,String>
typedef HeadersInit = dynamic;

/// Blob | BufferSource | FormData | URLSearchParams | ReadableStream<Uint8List> | String
typedef BodyInit = dynamic;

/// Request | String
typedef RequestInfo = dynamic;

/// BufferSource | Blob | String
typedef BlobPart = dynamic;
typedef DOMHighResTimeStamp = num;

/// ImageBitmap | OffscreenCanvas
typedef CanvasImageSource = dynamic;

/// OffscreenCanvasRenderingContext2D | ImageBitmapRenderingContext | RenderingContext | WebGL2RenderingContext
typedef OffscreenRenderingContext = dynamic;

/// MessagePort | ServiceWorker
typedef MessageEventSource = dynamic;

/// CanvasImageSource | Blob | ImageData
typedef ImageBitmapSource = dynamic;

/// OnErrorEventHandlerNonNull | null
typedef OnErrorEventHandler = OnErrorEventHandlerNonNull?;

/// String | Function
typedef TimerHandler = dynamic;
typedef PerformanceEntryList = List<PerformanceEntry>;

/// BufferSource | String
typedef PushMessageDataInit = dynamic;
typedef ReadableStreamReader<T> = ReadableStreamDefaultReader<T>;
typedef ReadableStreamController<T> = ReadableStreamDefaultController<T>;

/// num | List<num>
typedef VibratePattern = dynamic;

/// String | Algorithm
typedef AlgorithmIdentifier = dynamic;
typedef HashAlgorithmIdentifier = AlgorithmIdentifier;
typedef BigInteger = Uint8List;
typedef NamedCurve = String;
typedef GLenum = num;
typedef GLboolean = bool;
typedef GLbitfield = num;
typedef GLint = num;
typedef GLsizei = num;
typedef GLintptr = num;
typedef GLsizeiptr = num;
typedef GLuint = num;
typedef GLfloat = num;
typedef GLclampf = num;

/// ImageBitmap | ImageData | OffscreenCanvas
typedef TexImageSource = dynamic;

/// Float32List | List<GLfloat>
typedef Float32List = dynamic;

/// Int32List | List<GLint>
typedef Int32List = dynamic;
typedef GLint64 = num;
typedef GLuint64 = num;

/// Uint32List | List<GLuint>
typedef Uint32List = dynamic;

/// TypedData | ByteBuffer
typedef BufferSource = dynamic;
typedef DOMTimeStamp = num;

/// File | String
typedef FormDataEntryValue = dynamic;

/// num | String | DateTime | BufferSource | IDBArrayKey
typedef IDBValidKey = dynamic;

/// ByteBuffer | MessagePort | ImageBitmap | OffscreenCanvas
typedef Transferable = dynamic;

/// ReadableStreamDefaultReadValueResult<T> | ReadableStreamDefaultReadDoneResult
typedef ReadableStreamDefaultReadResult<T> = dynamic;

/// "arraybuffer" | "blob"
typedef BinaryType = String;

/// "inherit" | "ltr" | "rtl"
typedef CanvasDirection = String;

/// "evenodd" | "nonzero"
typedef CanvasFillRule = String;

/// "butt" | "round" | "square"
typedef CanvasLineCap = String;

/// "bevel" | "miter" | "round"
typedef CanvasLineJoin = String;

/// "center" | "end" | "left" | "right" | "start"
typedef CanvasTextAlign = String;

/// "alphabetic" | "bottom" | "hanging" | "ideographic" | "middle" | "top"
typedef CanvasTextBaseline = String;

/// "all" | "sharedworker" | "window" | "worker"
typedef ClientTypes = String;

/// "default" | "none"
typedef ColorSpaceConversion = String;

/// "native" | "transparent"
typedef EndingType = String;

/// "auxiliary" | "nested" | "none" | "top-level"
typedef FrameType = String;

/// "next" | "nextunique" | "prev" | "prevunique"
typedef IDBCursorDirection = String;

/// "done" | "pending"
typedef IDBRequestReadyState = String;

/// "readonly" | "readwrite" | "versionchange"
typedef IDBTransactionMode = String;

/// "flipY" | "none"
typedef ImageOrientation = String;

/// "high" | "low" | "medium"
typedef ImageSmoothingQuality = String;

/// "jwk" | "pkcs8" | "raw" | "spki"
typedef KeyFormat = String;

/// "private" | "public" | "secret"
typedef KeyType = String;

/// "decrypt" | "deriveBits" | "deriveKey" | "encrypt" | "sign" | "unwrapKey" | "verify" | "wrapKey"
typedef KeyUsage = String;

/// "auto" | "ltr" | "rtl"
typedef NotificationDirection = String;

/// "default" | "denied" | "granted"
typedef NotificationPermission = String;

/// "2d" | "bitmaprenderer" | "webgl" | "webgl2"
typedef OffscreenRenderingContextId = String;

/// "accelerometer" | "ambient-light-sensor" | "background-fetch" | "background-sync" | "bluetooth" | "camera" | "clipboard-read" | "clipboard-write" | "device-info" | "display-capture" | "geolocation" | "gyroscope" | "magnetometer" | "microphone" | "midi" | "nfc" | "notifications" | "persistent-storage" | "push" | "speaker"
typedef PermissionName = String;

/// "denied" | "granted" | "prompt"
typedef PermissionState = String;

/// "default" | "none" | "premultiply"
typedef PremultiplyAlpha = String;

/// "auth" | "p256dh"
typedef PushEncryptionKeyName = String;

/// "denied" | "granted" | "prompt"
typedef PushPermissionState = String;

/// "" | "no-referrer" | "no-referrer-when-downgrade" | "origin" | "origin-when-cross-origin" | "same-origin" | "strict-origin" | "strict-origin-when-cross-origin" | "unsafe-url"
typedef ReferrerPolicy = String;

/// "default" | "force-cache" | "no-cache" | "no-store" | "only-if-cached" | "reload"
typedef RequestCache = String;

/// "include" | "omit" | "same-origin"
typedef RequestCredentials = String;

/// "" | "audio" | "audioworklet" | "document" | "embed" | "font" | "image" | "manifest" | "object" | "paintworklet" | "report" | "script" | "sharedworker" | "style" | "track" | "video" | "worker" | "xslt"
typedef RequestDestination = String;

/// "cors" | "navigate" | "no-cors" | "same-origin"
typedef RequestMode = String;

/// "error" | "follow" | "manual"
typedef RequestRedirect = String;

/// "high" | "low" | "medium" | "pixelated"
typedef ResizeQuality = String;

/// "basic" | "cors" | "default" | "error" | "opaque" | "opaqueredirect"
typedef ResponseType = String;

/// "activated" | "activating" | "installed" | "installing" | "parsed" | "redundant"
typedef ServiceWorkerState = String;

/// "all" | "imports" | "none"
typedef ServiceWorkerUpdateViaCache = String;

/// "hidden" | "visible"
typedef VisibilityState = String;

/// "default" | "high-performance" | "low-power"
typedef WebGLPowerPreference = String;

/// "classic" | "module"
typedef WorkerType = String;

/// "" | "arraybuffer" | "blob" | "document" | "json" | "text"
typedef XMLHttpRequestResponseType = String;

@JS()
@anonymous
class IAbortController {
  external AbortController prototype;
  external factory IAbortController();
}

@JS()
@anonymous
class IAbortSignal {
  external AbortSignal prototype;
  external factory IAbortSignal();
}

@JS()
@anonymous
class IBlob {
  external Blob prototype;
  external factory IBlob({List<BlobPart> blobParts, BlobPropertyBag options});
}

@JS()
@anonymous
class IBroadcastChannel {
  external BroadcastChannel prototype;
  external factory IBroadcastChannel({String name});
}

@JS()
@anonymous
class IByteLengthQueuingStrategy {
  external ByteLengthQueuingStrategy prototype;
  external factory IByteLengthQueuingStrategy({QueuingStrategyInit init});
}

@JS()
@anonymous
class ICache {
  external Cache prototype;
  external factory ICache();
}

@JS()
@anonymous
class ICacheStorage {
  external CacheStorage prototype;
  external factory ICacheStorage();
}

@JS()
@anonymous
class ICanvasGradient {
  external CanvasGradient prototype;
  external factory ICanvasGradient();
}

@JS()
@anonymous
class ICanvasPattern {
  external CanvasPattern prototype;
  external factory ICanvasPattern();
}

@JS()
@anonymous
class IClient {
  external Client prototype;
  external factory IClient();
}

@JS()
@anonymous
class IClients {
  external Clients prototype;
  external factory IClients();
}

@JS()
@anonymous
class ICloseEvent {
  external CloseEvent prototype;
  external factory ICloseEvent({String type, CloseEventInit eventInitDict});
}

@JS()
@anonymous
class ICountQueuingStrategy {
  external CountQueuingStrategy prototype;
  external factory ICountQueuingStrategy({QueuingStrategyInit init});
}

@JS()
@anonymous
class ICrypto {
  external Crypto prototype;
  external factory ICrypto();
}

@JS()
@anonymous
class ICryptoKey {
  external CryptoKey prototype;
  external factory ICryptoKey();
}

@JS()
@anonymous
class ICustomEvent {
  external CustomEvent prototype;
  external factory ICustomEvent({String typeArg, CustomEventInit<T> eventInitDict});
}

@JS()
@anonymous
class IDOMException {
  external DomException prototype;
  external factory IDOMException({String message, String name});
  external num get ABORT_ERR;
  external num get DATA_CLONE_ERR;
  external num get DOMSTRING_SIZE_ERR;
  external num get HIERARCHY_REQUEST_ERR;
  external num get INDEX_SIZE_ERR;
  external num get INUSE_ATTRIBUTE_ERR;
  external num get INVALID_ACCESS_ERR;
  external num get INVALID_CHARACTER_ERR;
  external num get INVALID_MODIFICATION_ERR;
  external num get INVALID_NODE_TYPE_ERR;
  external num get INVALID_STATE_ERR;
  external num get NAMESPACE_ERR;
  external num get NETWORK_ERR;
  external num get NOT_FOUND_ERR;
  external num get NOT_SUPPORTED_ERR;
  external num get NO_DATA_ALLOWED_ERR;
  external num get NO_MODIFICATION_ALLOWED_ERR;
  external num get QUOTA_EXCEEDED_ERR;
  external num get SECURITY_ERR;
  external num get SYNTAX_ERR;
  external num get TIMEOUT_ERR;
  external num get TYPE_MISMATCH_ERR;
  external num get URL_MISMATCH_ERR;
  external num get VALIDATION_ERR;
  external num get WRONG_DOCUMENT_ERR;
}

@JS()
@anonymous
class IDOMMatrix {
  external DomMatrix prototype;
  external factory IDOMMatrix({dynamic init});
  external DomMatrix fromFloat32Array(Float32List array32);
  external DomMatrix fromFloat64Array(Float64List array64);
  external DomMatrix fromMatrix(DOMMatrixInit other);
}

@JS()
@anonymous
class IDOMMatrixReadOnly {
  external DomMatrixReadOnly prototype;
  external factory IDOMMatrixReadOnly({dynamic init});
  external DomMatrixReadOnly fromFloat32Array(Float32List array32);
  external DomMatrixReadOnly fromFloat64Array(Float64List array64);
  external DomMatrixReadOnly fromMatrix(DOMMatrixInit other);
}

@JS()
@anonymous
class IDOMPoint {
  external DomPoint prototype;
  external factory IDOMPoint({num x, num y, num z, num w});
  external DomPoint fromPoint(DOMPointInit other);
}

@JS()
@anonymous
class IDOMPointReadOnly {
  external DomPointReadOnly prototype;
  external factory IDOMPointReadOnly({num x, num y, num z, num w});
  external DomPointReadOnly fromPoint(DOMPointInit other);
}

@JS()
@anonymous
class IDOMQuad {
  external DOMQuad prototype;
  external factory IDOMQuad({DOMPointInit p1, DOMPointInit p2, DOMPointInit p3, DOMPointInit p4});
  external DOMQuad fromQuad(DOMQuadInit other);
  external DOMQuad fromRect(DOMRectInit other);
}

@JS()
@anonymous
class IDOMRect {
  external DOMRect prototype;
  external factory IDOMRect({num x, num y, num width, num height});
  external DOMRect fromRect(DOMRectInit other);
}

@JS()
@anonymous
class IDOMRectReadOnly {
  external DomRectReadOnly prototype;
  external factory IDOMRectReadOnly({num x, num y, num width, num height});
  external DomRectReadOnly fromRect(DOMRectInit other);
}

@JS()
@anonymous
class IDOMStringList {
  external DomStringList prototype;
  external factory IDOMStringList();
}

@JS()
@anonymous
class IDedicatedWorkerGlobalScope {
  external DedicatedWorkerGlobalScope prototype;
  external factory IDedicatedWorkerGlobalScope();
}

@JS()
@anonymous
class IErrorEvent {
  external ErrorEvent prototype;
  external factory IErrorEvent({String type, ErrorEventInit eventInitDict});
}

@JS()
@anonymous
class IEvent {
  external Event prototype;
  external factory IEvent({String type, EventInit eventInitDict});
  external num get AT_TARGET;
  external num get BUBBLING_PHASE;
  external num get CAPTURING_PHASE;
  external num get NONE;
}

@JS()
@anonymous
class IEventSource {
  external EventSource prototype;
  external factory IEventSource({String url, EventSourceInit eventSourceInitDict});
  external num get CLOSED;
  external num get CONNECTING;
  external num get OPEN;
}

@JS()
@anonymous
class IEventTarget {
  external EventTarget prototype;
  external factory IEventTarget();
}

@JS()
@anonymous
class IExtendableEvent {
  external ExtendableEvent prototype;
  external factory IExtendableEvent({String type, ExtendableEventInit eventInitDict});
}

@JS()
@anonymous
class IExtendableMessageEvent {
  external ExtendableMessageEvent prototype;
  external factory IExtendableMessageEvent({String type, ExtendableMessageEventInit eventInitDict});
}

@JS()
@anonymous
class IFetchEvent {
  external FetchEvent prototype;
  external factory IFetchEvent({String type, FetchEventInit eventInitDict});
}

@JS()
@anonymous
class IFile {
  external File prototype;
  external factory IFile({List<BlobPart> fileBits, String fileName, FilePropertyBag options});
}

@JS()
@anonymous
class IFileList {
  external FileList prototype;
  external factory IFileList();
}

@JS()
@anonymous
class IFileReader {
  external FileReader prototype;
  external factory IFileReader();
  external num get DONE;
  external num get EMPTY;
  external num get LOADING;
}

@JS()
@anonymous
class IFileReaderSync {
  external FileReaderSync prototype;
  external factory IFileReaderSync();
}

@JS()
@anonymous
class IFormData {
  external FormData prototype;
  external factory IFormData();
}

@JS()
@anonymous
class IGlobal {
  external Global prototype;
  external factory IGlobal({GlobalDescriptor descriptor, dynamic v});
}

@JS()
@anonymous
class IHeaders {
  external Headers prototype;
  external factory IHeaders({HeadersInit init});
}

@JS()
@anonymous
class IIDBCursor {
  external Cursor prototype;
  external factory IIDBCursor();
}

@JS()
@anonymous
class IIDBCursorWithValue {
  external CursorWithValue prototype;
  external factory IIDBCursorWithValue();
}

@JS()
@anonymous
class IIDBDatabase {
  external Database prototype;
  external factory IIDBDatabase();
}

@JS()
@anonymous
class IIDBFactory {
  external IdbFactory prototype;
  external factory IIDBFactory();
}

@JS()
@anonymous
class IIDBIndex {
  external Index prototype;
  external factory IIDBIndex();
}

@JS()
@anonymous
class IIDBKeyRange {
  external KeyRange prototype;
  external factory IIDBKeyRange();
  external KeyRange bound(dynamic lower, dynamic upper, bool lowerOpen, bool upperOpen);
  external KeyRange lowerBound(dynamic lower, bool open);
  external KeyRange only(dynamic value);
  external KeyRange upperBound(dynamic upper, bool open);
}

@JS()
@anonymous
class IIDBObjectStore {
  external ObjectStore prototype;
  external factory IIDBObjectStore();
}

@JS()
@anonymous
class IIDBOpenDBRequest {
  external OpenDBRequest prototype;
  external factory IIDBOpenDBRequest();
}

@JS()
@anonymous
class IIDBRequest {
  external Request prototype;
  external factory IIDBRequest();
}

@JS()
@anonymous
class IIDBTransaction {
  external Transaction prototype;
  external factory IIDBTransaction();
}

@JS()
@anonymous
class IIDBVersionChangeEvent {
  external VersionChangeEvent prototype;
  external factory IIDBVersionChangeEvent({String type, IDBVersionChangeEventInit eventInitDict});
}

@JS()
@anonymous
class IImageBitmap {
  external ImageBitmap prototype;
  external factory IImageBitmap();
}

@JS()
@anonymous
class IImageBitmapRenderingContext {
  external ImageBitmapRenderingContext prototype;
  external factory IImageBitmapRenderingContext();
}

@JS()
@anonymous
class IImageData {
  external ImageData prototype;
  external factory IImageData({num sw, num sh});
}

@JS()
@anonymous
class IInstance {
  external Instance prototype;
  external factory IInstance({Module module, Imports importObject});
}

@JS()
@anonymous
class IMemory {
  external Memory prototype;
  external factory IMemory({MemoryDescriptor descriptor});
}

@JS()
@anonymous
class IMessageChannel {
  external MessageChannel prototype;
  external factory IMessageChannel();
}

@JS()
@anonymous
class IMessageEvent {
  external MessageEvent prototype;
  external factory IMessageEvent({String type, MessageEventInit<T> eventInitDict});
}

@JS()
@anonymous
class IMessagePort {
  external MessagePort prototype;
  external factory IMessagePort();
}

@JS()
@anonymous
class IModule {
  external Module prototype;
  external factory IModule({BufferSource bytes});
  external List<ByteBuffer> customSections(Module moduleObject, String sectionName);
  external List<ModuleExportDescriptor> exports(Module moduleObject);
  external List<ModuleImportDescriptor> imports(Module moduleObject);
}

@JS()
@anonymous
class INavigationPreloadManager {
  external NavigationPreloadManager prototype;
  external factory INavigationPreloadManager();
}

@JS()
@anonymous
class INotification {
  external Notification prototype;
  external factory INotification({String title, NotificationOptions options});
  external num get maxActions;
  external NotificationPermission get permission;
}

@JS()
@anonymous
class INotificationEvent {
  external NotificationEvent prototype;
  external factory INotificationEvent({String type, NotificationEventInit eventInitDict});
}

@JS()
@anonymous
class IOffscreenCanvas {
  external OffscreenCanvas prototype;
  external factory IOffscreenCanvas({num width, num height});
}

@JS()
@anonymous
class IOffscreenCanvasRenderingContext2D {
  external OffscreenCanvasRenderingContext2D prototype;
  external factory IOffscreenCanvasRenderingContext2D();
}

@JS()
@anonymous
class IPath2D {
  external Path2D prototype;
  external factory IPath2D({dynamic path});
}

@JS()
@anonymous
class IPerformance {
  external Performance prototype;
  external factory IPerformance();
}

@JS()
@anonymous
class IPerformanceEntry {
  external PerformanceEntry prototype;
  external factory IPerformanceEntry();
}

@JS()
@anonymous
class IPerformanceMark {
  external PerformanceMark prototype;
  external factory IPerformanceMark();
}

@JS()
@anonymous
class IPerformanceMeasure {
  external PerformanceMeasure prototype;
  external factory IPerformanceMeasure();
}

@JS()
@anonymous
class IPerformanceObserver {
  external PerformanceObserver prototype;
  external factory IPerformanceObserver({PerformanceObserverCallback callback});
  external List<String> get supportedEntryTypes;
}

@JS()
@anonymous
class IPerformanceObserverEntryList {
  external PerformanceObserverEntryList prototype;
  external factory IPerformanceObserverEntryList();
}

@JS()
@anonymous
class IPerformanceResourceTiming {
  external PerformanceResourceTiming prototype;
  external factory IPerformanceResourceTiming();
}

@JS()
@anonymous
class IPermissionStatus {
  external PermissionStatus prototype;
  external factory IPermissionStatus();
}

@JS()
@anonymous
class IPermissions {
  external Permissions prototype;
  external factory IPermissions();
}

@JS()
@anonymous
class IProgressEvent {
  external ProgressEvent prototype;
  external factory IProgressEvent({String type, ProgressEventInit eventInitDict});
}

@JS()
@anonymous
class IPromiseRejectionEvent {
  external PromiseRejectionEvent prototype;
  external factory IPromiseRejectionEvent({String type, PromiseRejectionEventInit eventInitDict});
}

@JS()
@anonymous
class IPushEvent {
  external PushEvent prototype;
  external factory IPushEvent({String type, PushEventInit eventInitDict});
}

@JS()
@anonymous
class IPushManager {
  external PushManager prototype;
  external factory IPushManager();
  external List<String> get supportedContentEncodings;
}

@JS()
@anonymous
class IPushMessageData {
  external PushMessageData prototype;
  external factory IPushMessageData();
}

@JS()
@anonymous
class IPushSubscription {
  external PushSubscription prototype;
  external factory IPushSubscription();
}

@JS()
@anonymous
class IPushSubscriptionOptions {
  external PushSubscriptionOptions prototype;
  external factory IPushSubscriptionOptions();
}

@JS()
@anonymous
class IReadableStream {
  external ReadableStream prototype;
  external factory IReadableStream({UnderlyingSource<R> underlyingSource, QueuingStrategy<R> strategy});
}

@JS()
@anonymous
class IReadableStreamDefaultController {
  external ReadableStreamDefaultController prototype;
  external factory IReadableStreamDefaultController();
}

@JS()
@anonymous
class IReadableStreamDefaultReader {
  external ReadableStreamDefaultReader prototype;
  external factory IReadableStreamDefaultReader({ReadableStream<R> stream});
}

@JS()
@anonymous
class IRequest {
  external Request prototype;
  external factory IRequest({RequestInfo input, RequestInit init});
}

@JS()
@anonymous
class IResponse {
  external Response prototype;
  external factory IResponse({BodyInit? body, ResponseInit init});
  external Response error();
  external Response redirect(String url, num status);
}

@JS()
@anonymous
class IServiceWorker {
  external ServiceWorker prototype;
  external factory IServiceWorker();
}

@JS()
@anonymous
class IServiceWorkerContainer {
  external ServiceWorkerContainer prototype;
  external factory IServiceWorkerContainer();
}

@JS()
@anonymous
class IServiceWorkerGlobalScope {
  external ServiceWorkerGlobalScope prototype;
  external factory IServiceWorkerGlobalScope();
}

@JS()
@anonymous
class IServiceWorkerRegistration {
  external ServiceWorkerRegistration prototype;
  external factory IServiceWorkerRegistration();
}

@JS()
@anonymous
class ISharedWorker {
  external SharedWorker prototype;
  external factory ISharedWorker({String scriptURL, dynamic options});
}

@JS()
@anonymous
class ISharedWorkerGlobalScope {
  external SharedWorkerGlobalScope prototype;
  external factory ISharedWorkerGlobalScope();
}

@JS()
@anonymous
class IStorageManager {
  external StorageManager prototype;
  external factory IStorageManager();
}

@JS()
@anonymous
class ISubtleCrypto {
  external SubtleCrypto prototype;
  external factory ISubtleCrypto();
}

@JS()
@anonymous
class ISyncEvent {
  external SyncEvent prototype;
  external factory ISyncEvent({String type, SyncEventInit init});
}

@JS()
@anonymous
class ISyncManager {
  external SyncManager prototype;
  external factory ISyncManager();
}

@JS()
@anonymous
class ITable {
  external Table prototype;
  external factory ITable({TableDescriptor descriptor});
}

@JS()
@anonymous
class ITextDecoder {
  external TextDecoder prototype;
  external factory ITextDecoder({String label, TextDecoderOptions options});
}

@JS()
@anonymous
class ITextDecoderStream {
  external TextDecoderStream prototype;
  external factory ITextDecoderStream({String label, TextDecoderOptions options});
}

@JS()
@anonymous
class ITextEncoder {
  external TextEncoder prototype;
  external factory ITextEncoder();
}

@JS()
@anonymous
class ITextEncoderStream {
  external TextEncoderStream prototype;
  external factory ITextEncoderStream();
}

@JS()
@anonymous
class ITextMetrics {
  external TextMetrics prototype;
  external factory ITextMetrics();
}

@JS()
@anonymous
class ITransformStream {
  external TransformStream prototype;
  external factory ITransformStream(
      {Transformer<I, O> transformer, QueuingStrategy<I> writableStrategy, QueuingStrategy<O> readableStrategy});
}

@JS()
@anonymous
class ITransformStreamDefaultController {
  external TransformStreamDefaultController prototype;
  external factory ITransformStreamDefaultController();
}

@JS()
@anonymous
class IURL {
  external Url prototype;
  external factory IURL({String url, dynamic base});
  external String createObjectURL(dynamic object);
  external void revokeObjectURL(String url);
}

@JS()
@anonymous
class IURLSearchParams {
  external URLSearchParams prototype;
  external factory IURLSearchParams({dynamic init});
  @override
  external String toString();
}

@JS()
@anonymous
class IWebGL2RenderingContext {
  external WebGL2RenderingContext prototype;
  external factory IWebGL2RenderingContext();
  external GLenum get ACTIVE_ATTRIBUTES;
  external GLenum get ACTIVE_TEXTURE;
  external GLenum get ACTIVE_UNIFORMS;
  external GLenum get ALIASED_LINE_WIDTH_RANGE;
  external GLenum get ALIASED_POINT_SIZE_RANGE;
  external GLenum get ALPHA;
  external GLenum get ALPHA_BITS;
  external GLenum get ALWAYS;
  external GLenum get ARRAY_BUFFER;
  external GLenum get ARRAY_BUFFER_BINDING;
  external GLenum get ATTACHED_SHADERS;
  external GLenum get BACK;
  external GLenum get BLEND;
  external GLenum get BLEND_COLOR;
  external GLenum get BLEND_DST_ALPHA;
  external GLenum get BLEND_DST_RGB;
  external GLenum get BLEND_EQUATION;
  external GLenum get BLEND_EQUATION_ALPHA;
  external GLenum get BLEND_EQUATION_RGB;
  external GLenum get BLEND_SRC_ALPHA;
  external GLenum get BLEND_SRC_RGB;
  external GLenum get BLUE_BITS;
  external GLenum get BOOL;
  external GLenum get BOOL_VEC2;
  external GLenum get BOOL_VEC3;
  external GLenum get BOOL_VEC4;
  external GLenum get BROWSER_DEFAULT_WEBGL;
  external GLenum get BUFFER_SIZE;
  external GLenum get BUFFER_USAGE;
  external GLenum get BYTE;
  external GLenum get CCW;
  external GLenum get CLAMP_TO_EDGE;
  external GLenum get COLOR_ATTACHMENT0;
  external GLenum get COLOR_BUFFER_BIT;
  external GLenum get COLOR_CLEAR_VALUE;
  external GLenum get COLOR_WRITEMASK;
  external GLenum get COMPILE_STATUS;
  external GLenum get COMPRESSED_TEXTURE_FORMATS;
  external GLenum get CONSTANT_ALPHA;
  external GLenum get CONSTANT_COLOR;
  external GLenum get CONTEXT_LOST_WEBGL;
  external GLenum get CULL_FACE;
  external GLenum get CULL_FACE_MODE;
  external GLenum get CURRENT_PROGRAM;
  external GLenum get CURRENT_VERTEX_ATTRIB;
  external GLenum get CW;
  external GLenum get DECR;
  external GLenum get DECR_WRAP;
  external GLenum get DELETE_STATUS;
  external GLenum get DEPTH_ATTACHMENT;
  external GLenum get DEPTH_BITS;
  external GLenum get DEPTH_BUFFER_BIT;
  external GLenum get DEPTH_CLEAR_VALUE;
  external GLenum get DEPTH_COMPONENT;
  external GLenum get DEPTH_COMPONENT16;
  external GLenum get DEPTH_FUNC;
  external GLenum get DEPTH_RANGE;
  external GLenum get DEPTH_STENCIL;
  external GLenum get DEPTH_STENCIL_ATTACHMENT;
  external GLenum get DEPTH_TEST;
  external GLenum get DEPTH_WRITEMASK;
  external GLenum get DITHER;
  external GLenum get DONT_CARE;
  external GLenum get DST_ALPHA;
  external GLenum get DST_COLOR;
  external GLenum get DYNAMIC_DRAW;
  external GLenum get ELEMENT_ARRAY_BUFFER;
  external GLenum get ELEMENT_ARRAY_BUFFER_BINDING;
  external GLenum get EQUAL;
  external GLenum get FASTEST;
  external GLenum get FLOAT;
  external GLenum get FLOAT_MAT2;
  external GLenum get FLOAT_MAT3;
  external GLenum get FLOAT_MAT4;
  external GLenum get FLOAT_VEC2;
  external GLenum get FLOAT_VEC3;
  external GLenum get FLOAT_VEC4;
  external GLenum get FRAGMENT_SHADER;
  external GLenum get FRAMEBUFFER;
  external GLenum get FRAMEBUFFER_ATTACHMENT_OBJECT_NAME;
  external GLenum get FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE;
  external GLenum get FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE;
  external GLenum get FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL;
  external GLenum get FRAMEBUFFER_BINDING;
  external GLenum get FRAMEBUFFER_COMPLETE;
  external GLenum get FRAMEBUFFER_INCOMPLETE_ATTACHMENT;
  external GLenum get FRAMEBUFFER_INCOMPLETE_DIMENSIONS;
  external GLenum get FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT;
  external GLenum get FRAMEBUFFER_UNSUPPORTED;
  external GLenum get FRONT;
  external GLenum get FRONT_AND_BACK;
  external GLenum get FRONT_FACE;
  external GLenum get FUNC_ADD;
  external GLenum get FUNC_REVERSE_SUBTRACT;
  external GLenum get FUNC_SUBTRACT;
  external GLenum get GENERATE_MIPMAP_HINT;
  external GLenum get GEQUAL;
  external GLenum get GREATER;
  external GLenum get GREEN_BITS;
  external GLenum get HIGH_FLOAT;
  external GLenum get HIGH_INT;
  external GLenum get IMPLEMENTATION_COLOR_READ_FORMAT;
  external GLenum get IMPLEMENTATION_COLOR_READ_TYPE;
  external GLenum get INCR;
  external GLenum get INCR_WRAP;
  external GLenum get INT;
  external GLenum get INT_VEC2;
  external GLenum get INT_VEC3;
  external GLenum get INT_VEC4;
  external GLenum get INVALID_ENUM;
  external GLenum get INVALID_FRAMEBUFFER_OPERATION;
  external GLenum get INVALID_OPERATION;
  external GLenum get INVALID_VALUE;
  external GLenum get INVERT;
  external GLenum get KEEP;
  external GLenum get LEQUAL;
  external GLenum get LESS;
  external GLenum get LINEAR;
  external GLenum get LINEAR_MIPMAP_LINEAR;
  external GLenum get LINEAR_MIPMAP_NEAREST;
  external GLenum get LINES;
  external GLenum get LINE_LOOP;
  external GLenum get LINE_STRIP;
  external GLenum get LINE_WIDTH;
  external GLenum get LINK_STATUS;
  external GLenum get LOW_FLOAT;
  external GLenum get LOW_INT;
  external GLenum get LUMINANCE;
  external GLenum get LUMINANCE_ALPHA;
  external GLenum get MAX_COMBINED_TEXTURE_IMAGE_UNITS;
  external GLenum get MAX_CUBE_MAP_TEXTURE_SIZE;
  external GLenum get MAX_FRAGMENT_UNIFORM_VECTORS;
  external GLenum get MAX_RENDERBUFFER_SIZE;
  external GLenum get MAX_TEXTURE_IMAGE_UNITS;
  external GLenum get MAX_TEXTURE_SIZE;
  external GLenum get MAX_VARYING_VECTORS;
  external GLenum get MAX_VERTEX_ATTRIBS;
  external GLenum get MAX_VERTEX_TEXTURE_IMAGE_UNITS;
  external GLenum get MAX_VERTEX_UNIFORM_VECTORS;
  external GLenum get MAX_VIEWPORT_DIMS;
  external GLenum get MEDIUM_FLOAT;
  external GLenum get MEDIUM_INT;
  external GLenum get MIRRORED_REPEAT;
  external GLenum get NEAREST;
  external GLenum get NEAREST_MIPMAP_LINEAR;
  external GLenum get NEAREST_MIPMAP_NEAREST;
  external GLenum get NEVER;
  external GLenum get NICEST;
  external GLenum get NONE;
  external GLenum get NOTEQUAL;
  external GLenum get NO_ERROR;
  external GLenum get ONE;
  external GLenum get ONE_MINUS_CONSTANT_ALPHA;
  external GLenum get ONE_MINUS_CONSTANT_COLOR;
  external GLenum get ONE_MINUS_DST_ALPHA;
  external GLenum get ONE_MINUS_DST_COLOR;
  external GLenum get ONE_MINUS_SRC_ALPHA;
  external GLenum get ONE_MINUS_SRC_COLOR;
  external GLenum get OUT_OF_MEMORY;
  external GLenum get PACK_ALIGNMENT;
  external GLenum get POINTS;
  external GLenum get POLYGON_OFFSET_FACTOR;
  external GLenum get POLYGON_OFFSET_FILL;
  external GLenum get POLYGON_OFFSET_UNITS;
  external GLenum get RED_BITS;
  external GLenum get RENDERBUFFER;
  external GLenum get RENDERBUFFER_ALPHA_SIZE;
  external GLenum get RENDERBUFFER_BINDING;
  external GLenum get RENDERBUFFER_BLUE_SIZE;
  external GLenum get RENDERBUFFER_DEPTH_SIZE;
  external GLenum get RENDERBUFFER_GREEN_SIZE;
  external GLenum get RENDERBUFFER_HEIGHT;
  external GLenum get RENDERBUFFER_INTERNAL_FORMAT;
  external GLenum get RENDERBUFFER_RED_SIZE;
  external GLenum get RENDERBUFFER_STENCIL_SIZE;
  external GLenum get RENDERBUFFER_WIDTH;
  external GLenum get RENDERER;
  external GLenum get REPEAT;
  external GLenum get REPLACE;
  external GLenum get RGB;
  external GLenum get RGB565;
  external GLenum get RGB5_A1;
  external GLenum get RGBA;
  external GLenum get RGBA4;
  external GLenum get SAMPLER_2D;
  external GLenum get SAMPLER_CUBE;
  external GLenum get SAMPLES;
  external GLenum get SAMPLE_ALPHA_TO_COVERAGE;
  external GLenum get SAMPLE_BUFFERS;
  external GLenum get SAMPLE_COVERAGE;
  external GLenum get SAMPLE_COVERAGE_INVERT;
  external GLenum get SAMPLE_COVERAGE_VALUE;
  external GLenum get SCISSOR_BOX;
  external GLenum get SCISSOR_TEST;
  external GLenum get SHADER_TYPE;
  external GLenum get SHADING_LANGUAGE_VERSION;
  external GLenum get SHORT;
  external GLenum get SRC_ALPHA;
  external GLenum get SRC_ALPHA_SATURATE;
  external GLenum get SRC_COLOR;
  external GLenum get STATIC_DRAW;
  external GLenum get STENCIL_ATTACHMENT;
  external GLenum get STENCIL_BACK_FAIL;
  external GLenum get STENCIL_BACK_FUNC;
  external GLenum get STENCIL_BACK_PASS_DEPTH_FAIL;
  external GLenum get STENCIL_BACK_PASS_DEPTH_PASS;
  external GLenum get STENCIL_BACK_REF;
  external GLenum get STENCIL_BACK_VALUE_MASK;
  external GLenum get STENCIL_BACK_WRITEMASK;
  external GLenum get STENCIL_BITS;
  external GLenum get STENCIL_BUFFER_BIT;
  external GLenum get STENCIL_CLEAR_VALUE;
  external GLenum get STENCIL_FAIL;
  external GLenum get STENCIL_FUNC;
  external GLenum get STENCIL_INDEX8;
  external GLenum get STENCIL_PASS_DEPTH_FAIL;
  external GLenum get STENCIL_PASS_DEPTH_PASS;
  external GLenum get STENCIL_REF;
  external GLenum get STENCIL_TEST;
  external GLenum get STENCIL_VALUE_MASK;
  external GLenum get STENCIL_WRITEMASK;
  external GLenum get STREAM_DRAW;
  external GLenum get SUBPIXEL_BITS;
  external GLenum get TEXTURE;
  external GLenum get TEXTURE0;
  external GLenum get TEXTURE1;
  external GLenum get TEXTURE10;
  external GLenum get TEXTURE11;
  external GLenum get TEXTURE12;
  external GLenum get TEXTURE13;
  external GLenum get TEXTURE14;
  external GLenum get TEXTURE15;
  external GLenum get TEXTURE16;
  external GLenum get TEXTURE17;
  external GLenum get TEXTURE18;
  external GLenum get TEXTURE19;
  external GLenum get TEXTURE2;
  external GLenum get TEXTURE20;
  external GLenum get TEXTURE21;
  external GLenum get TEXTURE22;
  external GLenum get TEXTURE23;
  external GLenum get TEXTURE24;
  external GLenum get TEXTURE25;
  external GLenum get TEXTURE26;
  external GLenum get TEXTURE27;
  external GLenum get TEXTURE28;
  external GLenum get TEXTURE29;
  external GLenum get TEXTURE3;
  external GLenum get TEXTURE30;
  external GLenum get TEXTURE31;
  external GLenum get TEXTURE4;
  external GLenum get TEXTURE5;
  external GLenum get TEXTURE6;
  external GLenum get TEXTURE7;
  external GLenum get TEXTURE8;
  external GLenum get TEXTURE9;
  external GLenum get TEXTURE_2D;
  external GLenum get TEXTURE_BINDING_2D;
  external GLenum get TEXTURE_BINDING_CUBE_MAP;
  external GLenum get TEXTURE_CUBE_MAP;
  external GLenum get TEXTURE_CUBE_MAP_NEGATIVE_X;
  external GLenum get TEXTURE_CUBE_MAP_NEGATIVE_Y;
  external GLenum get TEXTURE_CUBE_MAP_NEGATIVE_Z;
  external GLenum get TEXTURE_CUBE_MAP_POSITIVE_X;
  external GLenum get TEXTURE_CUBE_MAP_POSITIVE_Y;
  external GLenum get TEXTURE_CUBE_MAP_POSITIVE_Z;
  external GLenum get TEXTURE_MAG_FILTER;
  external GLenum get TEXTURE_MIN_FILTER;
  external GLenum get TEXTURE_WRAP_S;
  external GLenum get TEXTURE_WRAP_T;
  external GLenum get TRIANGLES;
  external GLenum get TRIANGLE_FAN;
  external GLenum get TRIANGLE_STRIP;
  external GLenum get UNPACK_ALIGNMENT;
  external GLenum get UNPACK_COLORSPACE_CONVERSION_WEBGL;
  external GLenum get UNPACK_FLIP_Y_WEBGL;
  external GLenum get UNPACK_PREMULTIPLY_ALPHA_WEBGL;
  external GLenum get UNSIGNED_BYTE;
  external GLenum get UNSIGNED_INT;
  external GLenum get UNSIGNED_SHORT;
  external GLenum get UNSIGNED_SHORT_4_4_4_4;
  external GLenum get UNSIGNED_SHORT_5_5_5_1;
  external GLenum get UNSIGNED_SHORT_5_6_5;
  external GLenum get VALIDATE_STATUS;
  external GLenum get VENDOR;
  external GLenum get VERSION;
  external GLenum get VERTEX_ATTRIB_ARRAY_BUFFER_BINDING;
  external GLenum get VERTEX_ATTRIB_ARRAY_ENABLED;
  external GLenum get VERTEX_ATTRIB_ARRAY_NORMALIZED;
  external GLenum get VERTEX_ATTRIB_ARRAY_POINTER;
  external GLenum get VERTEX_ATTRIB_ARRAY_SIZE;
  external GLenum get VERTEX_ATTRIB_ARRAY_STRIDE;
  external GLenum get VERTEX_ATTRIB_ARRAY_TYPE;
  external GLenum get VERTEX_SHADER;
  external GLenum get VIEWPORT;
  external GLenum get ZERO;
  external GLenum get ACTIVE_UNIFORM_BLOCKS;
  external GLenum get ALREADY_SIGNALED;
  external GLenum get ANY_SAMPLES_PASSED;
  external GLenum get ANY_SAMPLES_PASSED_CONSERVATIVE;
  external GLenum get COLOR;
  external GLenum get COLOR_ATTACHMENT1;
  external GLenum get COLOR_ATTACHMENT10;
  external GLenum get COLOR_ATTACHMENT11;
  external GLenum get COLOR_ATTACHMENT12;
  external GLenum get COLOR_ATTACHMENT13;
  external GLenum get COLOR_ATTACHMENT14;
  external GLenum get COLOR_ATTACHMENT15;
  external GLenum get COLOR_ATTACHMENT2;
  external GLenum get COLOR_ATTACHMENT3;
  external GLenum get COLOR_ATTACHMENT4;
  external GLenum get COLOR_ATTACHMENT5;
  external GLenum get COLOR_ATTACHMENT6;
  external GLenum get COLOR_ATTACHMENT7;
  external GLenum get COLOR_ATTACHMENT8;
  external GLenum get COLOR_ATTACHMENT9;
  external GLenum get COMPARE_REF_TO_TEXTURE;
  external GLenum get CONDITION_SATISFIED;
  external GLenum get COPY_READ_BUFFER;
  external GLenum get COPY_READ_BUFFER_BINDING;
  external GLenum get COPY_WRITE_BUFFER;
  external GLenum get COPY_WRITE_BUFFER_BINDING;
  external GLenum get CURRENT_QUERY;
  external GLenum get DEPTH;
  external GLenum get DEPTH24_STENCIL8;
  external GLenum get DEPTH32F_STENCIL8;
  external GLenum get DEPTH_COMPONENT24;
  external GLenum get DEPTH_COMPONENT32F;
  external GLenum get DRAW_BUFFER0;
  external GLenum get DRAW_BUFFER1;
  external GLenum get DRAW_BUFFER10;
  external GLenum get DRAW_BUFFER11;
  external GLenum get DRAW_BUFFER12;
  external GLenum get DRAW_BUFFER13;
  external GLenum get DRAW_BUFFER14;
  external GLenum get DRAW_BUFFER15;
  external GLenum get DRAW_BUFFER2;
  external GLenum get DRAW_BUFFER3;
  external GLenum get DRAW_BUFFER4;
  external GLenum get DRAW_BUFFER5;
  external GLenum get DRAW_BUFFER6;
  external GLenum get DRAW_BUFFER7;
  external GLenum get DRAW_BUFFER8;
  external GLenum get DRAW_BUFFER9;
  external GLenum get DRAW_FRAMEBUFFER;
  external GLenum get DRAW_FRAMEBUFFER_BINDING;
  external GLenum get DYNAMIC_COPY;
  external GLenum get DYNAMIC_READ;
  external GLenum get FLOAT_32_UNSIGNED_INT_24_8_REV;
  external GLenum get FLOAT_MAT2x3;
  external GLenum get FLOAT_MAT2x4;
  external GLenum get FLOAT_MAT3x2;
  external GLenum get FLOAT_MAT3x4;
  external GLenum get FLOAT_MAT4x2;
  external GLenum get FLOAT_MAT4x3;
  external GLenum get FRAGMENT_SHADER_DERIVATIVE_HINT;
  external GLenum get FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE;
  external GLenum get FRAMEBUFFER_ATTACHMENT_BLUE_SIZE;
  external GLenum get FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING;
  external GLenum get FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE;
  external GLenum get FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE;
  external GLenum get FRAMEBUFFER_ATTACHMENT_GREEN_SIZE;
  external GLenum get FRAMEBUFFER_ATTACHMENT_RED_SIZE;
  external GLenum get FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE;
  external GLenum get FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER;
  external GLenum get FRAMEBUFFER_DEFAULT;
  external GLenum get FRAMEBUFFER_INCOMPLETE_MULTISAMPLE;
  external GLenum get HALF_FLOAT;
  external GLenum get INTERLEAVED_ATTRIBS;
  external GLenum get INT_2_10_10_10_REV;
  external GLenum get INT_SAMPLER_2D;
  external GLenum get INT_SAMPLER_2D_ARRAY;
  external GLenum get INT_SAMPLER_3D;
  external GLenum get INT_SAMPLER_CUBE;
  external GLenum get INVALID_INDEX;
  external GLenum get MAX;
  external GLenum get MAX_3D_TEXTURE_SIZE;
  external GLenum get MAX_ARRAY_TEXTURE_LAYERS;
  external GLenum get MAX_CLIENT_WAIT_TIMEOUT_WEBGL;
  external GLenum get MAX_COLOR_ATTACHMENTS;
  external GLenum get MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS;
  external GLenum get MAX_COMBINED_UNIFORM_BLOCKS;
  external GLenum get MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS;
  external GLenum get MAX_DRAW_BUFFERS;
  external GLenum get MAX_ELEMENTS_INDICES;
  external GLenum get MAX_ELEMENTS_VERTICES;
  external GLenum get MAX_ELEMENT_INDEX;
  external GLenum get MAX_FRAGMENT_INPUT_COMPONENTS;
  external GLenum get MAX_FRAGMENT_UNIFORM_BLOCKS;
  external GLenum get MAX_FRAGMENT_UNIFORM_COMPONENTS;
  external GLenum get MAX_PROGRAM_TEXEL_OFFSET;
  external GLenum get MAX_SAMPLES;
  external GLenum get MAX_SERVER_WAIT_TIMEOUT;
  external GLenum get MAX_TEXTURE_LOD_BIAS;
  external GLenum get MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS;
  external GLenum get MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS;
  external GLenum get MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS;
  external GLenum get MAX_UNIFORM_BLOCK_SIZE;
  external GLenum get MAX_UNIFORM_BUFFER_BINDINGS;
  external GLenum get MAX_VARYING_COMPONENTS;
  external GLenum get MAX_VERTEX_OUTPUT_COMPONENTS;
  external GLenum get MAX_VERTEX_UNIFORM_BLOCKS;
  external GLenum get MAX_VERTEX_UNIFORM_COMPONENTS;
  external GLenum get MIN;
  external GLenum get MIN_PROGRAM_TEXEL_OFFSET;
  external GLenum get OBJECT_TYPE;
  external GLenum get PACK_ROW_LENGTH;
  external GLenum get PACK_SKIP_PIXELS;
  external GLenum get PACK_SKIP_ROWS;
  external GLenum get PIXEL_PACK_BUFFER;
  external GLenum get PIXEL_PACK_BUFFER_BINDING;
  external GLenum get PIXEL_UNPACK_BUFFER;
  external GLenum get PIXEL_UNPACK_BUFFER_BINDING;
  external GLenum get QUERY_RESULT;
  external GLenum get QUERY_RESULT_AVAILABLE;
  external GLenum get R11F_G11F_B10F;
  external GLenum get R16F;
  external GLenum get R16I;
  external GLenum get R16UI;
  external GLenum get R32F;
  external GLenum get R32I;
  external GLenum get R32UI;
  external GLenum get R8;
  external GLenum get R8I;
  external GLenum get R8UI;
  external GLenum get R8_SNORM;
  external GLenum get RASTERIZER_DISCARD;
  external GLenum get READ_BUFFER;
  external GLenum get READ_FRAMEBUFFER;
  external GLenum get READ_FRAMEBUFFER_BINDING;
  external GLenum get RED;
  external GLenum get RED_INTEGER;
  external GLenum get RENDERBUFFER_SAMPLES;
  external GLenum get RG;
  external GLenum get RG16F;
  external GLenum get RG16I;
  external GLenum get RG16UI;
  external GLenum get RG32F;
  external GLenum get RG32I;
  external GLenum get RG32UI;
  external GLenum get RG8;
  external GLenum get RG8I;
  external GLenum get RG8UI;
  external GLenum get RG8_SNORM;
  external GLenum get RGB10_A2;
  external GLenum get RGB10_A2UI;
  external GLenum get RGB16F;
  external GLenum get RGB16I;
  external GLenum get RGB16UI;
  external GLenum get RGB32F;
  external GLenum get RGB32I;
  external GLenum get RGB32UI;
  external GLenum get RGB8;
  external GLenum get RGB8I;
  external GLenum get RGB8UI;
  external GLenum get RGB8_SNORM;
  external GLenum get RGB9_E5;
  external GLenum get RGBA16F;
  external GLenum get RGBA16I;
  external GLenum get RGBA16UI;
  external GLenum get RGBA32F;
  external GLenum get RGBA32I;
  external GLenum get RGBA32UI;
  external GLenum get RGBA8;
  external GLenum get RGBA8I;
  external GLenum get RGBA8UI;
  external GLenum get RGBA8_SNORM;
  external GLenum get RGBA_INTEGER;
  external GLenum get RGB_INTEGER;
  external GLenum get RG_INTEGER;
  external GLenum get SAMPLER_2D_ARRAY;
  external GLenum get SAMPLER_2D_ARRAY_SHADOW;
  external GLenum get SAMPLER_2D_SHADOW;
  external GLenum get SAMPLER_3D;
  external GLenum get SAMPLER_BINDING;
  external GLenum get SAMPLER_CUBE_SHADOW;
  external GLenum get SEPARATE_ATTRIBS;
  external GLenum get SIGNALED;
  external GLenum get SIGNED_NORMALIZED;
  external GLenum get SRGB;
  external GLenum get SRGB8;
  external GLenum get SRGB8_ALPHA8;
  external GLenum get STATIC_COPY;
  external GLenum get STATIC_READ;
  external GLenum get STENCIL;
  external GLenum get STREAM_COPY;
  external GLenum get STREAM_READ;
  external GLenum get SYNC_CONDITION;
  external GLenum get SYNC_FENCE;
  external GLenum get SYNC_FLAGS;
  external GLenum get SYNC_FLUSH_COMMANDS_BIT;
  external GLenum get SYNC_GPU_COMMANDS_COMPLETE;
  external GLenum get SYNC_STATUS;
  external GLenum get TEXTURE_2D_ARRAY;
  external GLenum get TEXTURE_3D;
  external GLenum get TEXTURE_BASE_LEVEL;
  external GLenum get TEXTURE_BINDING_2D_ARRAY;
  external GLenum get TEXTURE_BINDING_3D;
  external GLenum get TEXTURE_COMPARE_FUNC;
  external GLenum get TEXTURE_COMPARE_MODE;
  external GLenum get TEXTURE_IMMUTABLE_FORMAT;
  external GLenum get TEXTURE_IMMUTABLE_LEVELS;
  external GLenum get TEXTURE_MAX_LEVEL;
  external GLenum get TEXTURE_MAX_LOD;
  external GLenum get TEXTURE_MIN_LOD;
  external GLenum get TEXTURE_WRAP_R;
  external GLenum get TIMEOUT_EXPIRED;
  external GLint64 get TIMEOUT_IGNORED;
  external GLenum get TRANSFORM_FEEDBACK;
  external GLenum get TRANSFORM_FEEDBACK_ACTIVE;
  external GLenum get TRANSFORM_FEEDBACK_BINDING;
  external GLenum get TRANSFORM_FEEDBACK_BUFFER;
  external GLenum get TRANSFORM_FEEDBACK_BUFFER_BINDING;
  external GLenum get TRANSFORM_FEEDBACK_BUFFER_MODE;
  external GLenum get TRANSFORM_FEEDBACK_BUFFER_SIZE;
  external GLenum get TRANSFORM_FEEDBACK_BUFFER_START;
  external GLenum get TRANSFORM_FEEDBACK_PAUSED;
  external GLenum get TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN;
  external GLenum get TRANSFORM_FEEDBACK_VARYINGS;
  external GLenum get UNIFORM_ARRAY_STRIDE;
  external GLenum get UNIFORM_BLOCK_ACTIVE_UNIFORMS;
  external GLenum get UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES;
  external GLenum get UNIFORM_BLOCK_BINDING;
  external GLenum get UNIFORM_BLOCK_DATA_SIZE;
  external GLenum get UNIFORM_BLOCK_INDEX;
  external GLenum get UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER;
  external GLenum get UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER;
  external GLenum get UNIFORM_BUFFER;
  external GLenum get UNIFORM_BUFFER_BINDING;
  external GLenum get UNIFORM_BUFFER_OFFSET_ALIGNMENT;
  external GLenum get UNIFORM_BUFFER_SIZE;
  external GLenum get UNIFORM_BUFFER_START;
  external GLenum get UNIFORM_IS_ROW_MAJOR;
  external GLenum get UNIFORM_MATRIX_STRIDE;
  external GLenum get UNIFORM_OFFSET;
  external GLenum get UNIFORM_SIZE;
  external GLenum get UNIFORM_TYPE;
  external GLenum get UNPACK_IMAGE_HEIGHT;
  external GLenum get UNPACK_ROW_LENGTH;
  external GLenum get UNPACK_SKIP_IMAGES;
  external GLenum get UNPACK_SKIP_PIXELS;
  external GLenum get UNPACK_SKIP_ROWS;
  external GLenum get UNSIGNALED;
  external GLenum get UNSIGNED_INT_10F_11F_11F_REV;
  external GLenum get UNSIGNED_INT_24_8;
  external GLenum get UNSIGNED_INT_2_10_10_10_REV;
  external GLenum get UNSIGNED_INT_5_9_9_9_REV;
  external GLenum get UNSIGNED_INT_SAMPLER_2D;
  external GLenum get UNSIGNED_INT_SAMPLER_2D_ARRAY;
  external GLenum get UNSIGNED_INT_SAMPLER_3D;
  external GLenum get UNSIGNED_INT_SAMPLER_CUBE;
  external GLenum get UNSIGNED_INT_VEC2;
  external GLenum get UNSIGNED_INT_VEC3;
  external GLenum get UNSIGNED_INT_VEC4;
  external GLenum get UNSIGNED_NORMALIZED;
  external GLenum get VERTEX_ARRAY_BINDING;
  external GLenum get VERTEX_ATTRIB_ARRAY_DIVISOR;
  external GLenum get VERTEX_ATTRIB_ARRAY_INTEGER;
  external GLenum get WAIT_FAILED;
}

@JS()
@anonymous
class IWebGLActiveInfo {
  external ActiveInfo prototype;
  external factory IWebGLActiveInfo();
}

@JS()
@anonymous
class IWebGLBuffer {
  external Buffer prototype;
  external factory IWebGLBuffer();
}

@JS()
@anonymous
class IWebGLContextEvent {
  external ContextEvent prototype;
  external factory IWebGLContextEvent({String type, WebGLContextEventInit eventInit});
}

@JS()
@anonymous
class IWebGLFramebuffer {
  external Framebuffer prototype;
  external factory IWebGLFramebuffer();
}

@JS()
@anonymous
class IWebGLProgram {
  external Program prototype;
  external factory IWebGLProgram();
}

@JS()
@anonymous
class IWebGLQuery {
  external WebGLQuery prototype;
  external factory IWebGLQuery();
}

@JS()
@anonymous
class IWebGLRenderbuffer {
  external Renderbuffer prototype;
  external factory IWebGLRenderbuffer();
}

@JS()
@anonymous
class IWebGLRenderingContext {
  external RenderingContext prototype;
  external factory IWebGLRenderingContext();
  external GLenum get ACTIVE_ATTRIBUTES;
  external GLenum get ACTIVE_TEXTURE;
  external GLenum get ACTIVE_UNIFORMS;
  external GLenum get ALIASED_LINE_WIDTH_RANGE;
  external GLenum get ALIASED_POINT_SIZE_RANGE;
  external GLenum get ALPHA;
  external GLenum get ALPHA_BITS;
  external GLenum get ALWAYS;
  external GLenum get ARRAY_BUFFER;
  external GLenum get ARRAY_BUFFER_BINDING;
  external GLenum get ATTACHED_SHADERS;
  external GLenum get BACK;
  external GLenum get BLEND;
  external GLenum get BLEND_COLOR;
  external GLenum get BLEND_DST_ALPHA;
  external GLenum get BLEND_DST_RGB;
  external GLenum get BLEND_EQUATION;
  external GLenum get BLEND_EQUATION_ALPHA;
  external GLenum get BLEND_EQUATION_RGB;
  external GLenum get BLEND_SRC_ALPHA;
  external GLenum get BLEND_SRC_RGB;
  external GLenum get BLUE_BITS;
  external GLenum get BOOL;
  external GLenum get BOOL_VEC2;
  external GLenum get BOOL_VEC3;
  external GLenum get BOOL_VEC4;
  external GLenum get BROWSER_DEFAULT_WEBGL;
  external GLenum get BUFFER_SIZE;
  external GLenum get BUFFER_USAGE;
  external GLenum get BYTE;
  external GLenum get CCW;
  external GLenum get CLAMP_TO_EDGE;
  external GLenum get COLOR_ATTACHMENT0;
  external GLenum get COLOR_BUFFER_BIT;
  external GLenum get COLOR_CLEAR_VALUE;
  external GLenum get COLOR_WRITEMASK;
  external GLenum get COMPILE_STATUS;
  external GLenum get COMPRESSED_TEXTURE_FORMATS;
  external GLenum get CONSTANT_ALPHA;
  external GLenum get CONSTANT_COLOR;
  external GLenum get CONTEXT_LOST_WEBGL;
  external GLenum get CULL_FACE;
  external GLenum get CULL_FACE_MODE;
  external GLenum get CURRENT_PROGRAM;
  external GLenum get CURRENT_VERTEX_ATTRIB;
  external GLenum get CW;
  external GLenum get DECR;
  external GLenum get DECR_WRAP;
  external GLenum get DELETE_STATUS;
  external GLenum get DEPTH_ATTACHMENT;
  external GLenum get DEPTH_BITS;
  external GLenum get DEPTH_BUFFER_BIT;
  external GLenum get DEPTH_CLEAR_VALUE;
  external GLenum get DEPTH_COMPONENT;
  external GLenum get DEPTH_COMPONENT16;
  external GLenum get DEPTH_FUNC;
  external GLenum get DEPTH_RANGE;
  external GLenum get DEPTH_STENCIL;
  external GLenum get DEPTH_STENCIL_ATTACHMENT;
  external GLenum get DEPTH_TEST;
  external GLenum get DEPTH_WRITEMASK;
  external GLenum get DITHER;
  external GLenum get DONT_CARE;
  external GLenum get DST_ALPHA;
  external GLenum get DST_COLOR;
  external GLenum get DYNAMIC_DRAW;
  external GLenum get ELEMENT_ARRAY_BUFFER;
  external GLenum get ELEMENT_ARRAY_BUFFER_BINDING;
  external GLenum get EQUAL;
  external GLenum get FASTEST;
  external GLenum get FLOAT;
  external GLenum get FLOAT_MAT2;
  external GLenum get FLOAT_MAT3;
  external GLenum get FLOAT_MAT4;
  external GLenum get FLOAT_VEC2;
  external GLenum get FLOAT_VEC3;
  external GLenum get FLOAT_VEC4;
  external GLenum get FRAGMENT_SHADER;
  external GLenum get FRAMEBUFFER;
  external GLenum get FRAMEBUFFER_ATTACHMENT_OBJECT_NAME;
  external GLenum get FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE;
  external GLenum get FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE;
  external GLenum get FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL;
  external GLenum get FRAMEBUFFER_BINDING;
  external GLenum get FRAMEBUFFER_COMPLETE;
  external GLenum get FRAMEBUFFER_INCOMPLETE_ATTACHMENT;
  external GLenum get FRAMEBUFFER_INCOMPLETE_DIMENSIONS;
  external GLenum get FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT;
  external GLenum get FRAMEBUFFER_UNSUPPORTED;
  external GLenum get FRONT;
  external GLenum get FRONT_AND_BACK;
  external GLenum get FRONT_FACE;
  external GLenum get FUNC_ADD;
  external GLenum get FUNC_REVERSE_SUBTRACT;
  external GLenum get FUNC_SUBTRACT;
  external GLenum get GENERATE_MIPMAP_HINT;
  external GLenum get GEQUAL;
  external GLenum get GREATER;
  external GLenum get GREEN_BITS;
  external GLenum get HIGH_FLOAT;
  external GLenum get HIGH_INT;
  external GLenum get IMPLEMENTATION_COLOR_READ_FORMAT;
  external GLenum get IMPLEMENTATION_COLOR_READ_TYPE;
  external GLenum get INCR;
  external GLenum get INCR_WRAP;
  external GLenum get INT;
  external GLenum get INT_VEC2;
  external GLenum get INT_VEC3;
  external GLenum get INT_VEC4;
  external GLenum get INVALID_ENUM;
  external GLenum get INVALID_FRAMEBUFFER_OPERATION;
  external GLenum get INVALID_OPERATION;
  external GLenum get INVALID_VALUE;
  external GLenum get INVERT;
  external GLenum get KEEP;
  external GLenum get LEQUAL;
  external GLenum get LESS;
  external GLenum get LINEAR;
  external GLenum get LINEAR_MIPMAP_LINEAR;
  external GLenum get LINEAR_MIPMAP_NEAREST;
  external GLenum get LINES;
  external GLenum get LINE_LOOP;
  external GLenum get LINE_STRIP;
  external GLenum get LINE_WIDTH;
  external GLenum get LINK_STATUS;
  external GLenum get LOW_FLOAT;
  external GLenum get LOW_INT;
  external GLenum get LUMINANCE;
  external GLenum get LUMINANCE_ALPHA;
  external GLenum get MAX_COMBINED_TEXTURE_IMAGE_UNITS;
  external GLenum get MAX_CUBE_MAP_TEXTURE_SIZE;
  external GLenum get MAX_FRAGMENT_UNIFORM_VECTORS;
  external GLenum get MAX_RENDERBUFFER_SIZE;
  external GLenum get MAX_TEXTURE_IMAGE_UNITS;
  external GLenum get MAX_TEXTURE_SIZE;
  external GLenum get MAX_VARYING_VECTORS;
  external GLenum get MAX_VERTEX_ATTRIBS;
  external GLenum get MAX_VERTEX_TEXTURE_IMAGE_UNITS;
  external GLenum get MAX_VERTEX_UNIFORM_VECTORS;
  external GLenum get MAX_VIEWPORT_DIMS;
  external GLenum get MEDIUM_FLOAT;
  external GLenum get MEDIUM_INT;
  external GLenum get MIRRORED_REPEAT;
  external GLenum get NEAREST;
  external GLenum get NEAREST_MIPMAP_LINEAR;
  external GLenum get NEAREST_MIPMAP_NEAREST;
  external GLenum get NEVER;
  external GLenum get NICEST;
  external GLenum get NONE;
  external GLenum get NOTEQUAL;
  external GLenum get NO_ERROR;
  external GLenum get ONE;
  external GLenum get ONE_MINUS_CONSTANT_ALPHA;
  external GLenum get ONE_MINUS_CONSTANT_COLOR;
  external GLenum get ONE_MINUS_DST_ALPHA;
  external GLenum get ONE_MINUS_DST_COLOR;
  external GLenum get ONE_MINUS_SRC_ALPHA;
  external GLenum get ONE_MINUS_SRC_COLOR;
  external GLenum get OUT_OF_MEMORY;
  external GLenum get PACK_ALIGNMENT;
  external GLenum get POINTS;
  external GLenum get POLYGON_OFFSET_FACTOR;
  external GLenum get POLYGON_OFFSET_FILL;
  external GLenum get POLYGON_OFFSET_UNITS;
  external GLenum get RED_BITS;
  external GLenum get RENDERBUFFER;
  external GLenum get RENDERBUFFER_ALPHA_SIZE;
  external GLenum get RENDERBUFFER_BINDING;
  external GLenum get RENDERBUFFER_BLUE_SIZE;
  external GLenum get RENDERBUFFER_DEPTH_SIZE;
  external GLenum get RENDERBUFFER_GREEN_SIZE;
  external GLenum get RENDERBUFFER_HEIGHT;
  external GLenum get RENDERBUFFER_INTERNAL_FORMAT;
  external GLenum get RENDERBUFFER_RED_SIZE;
  external GLenum get RENDERBUFFER_STENCIL_SIZE;
  external GLenum get RENDERBUFFER_WIDTH;
  external GLenum get RENDERER;
  external GLenum get REPEAT;
  external GLenum get REPLACE;
  external GLenum get RGB;
  external GLenum get RGB565;
  external GLenum get RGB5_A1;
  external GLenum get RGBA;
  external GLenum get RGBA4;
  external GLenum get SAMPLER_2D;
  external GLenum get SAMPLER_CUBE;
  external GLenum get SAMPLES;
  external GLenum get SAMPLE_ALPHA_TO_COVERAGE;
  external GLenum get SAMPLE_BUFFERS;
  external GLenum get SAMPLE_COVERAGE;
  external GLenum get SAMPLE_COVERAGE_INVERT;
  external GLenum get SAMPLE_COVERAGE_VALUE;
  external GLenum get SCISSOR_BOX;
  external GLenum get SCISSOR_TEST;
  external GLenum get SHADER_TYPE;
  external GLenum get SHADING_LANGUAGE_VERSION;
  external GLenum get SHORT;
  external GLenum get SRC_ALPHA;
  external GLenum get SRC_ALPHA_SATURATE;
  external GLenum get SRC_COLOR;
  external GLenum get STATIC_DRAW;
  external GLenum get STENCIL_ATTACHMENT;
  external GLenum get STENCIL_BACK_FAIL;
  external GLenum get STENCIL_BACK_FUNC;
  external GLenum get STENCIL_BACK_PASS_DEPTH_FAIL;
  external GLenum get STENCIL_BACK_PASS_DEPTH_PASS;
  external GLenum get STENCIL_BACK_REF;
  external GLenum get STENCIL_BACK_VALUE_MASK;
  external GLenum get STENCIL_BACK_WRITEMASK;
  external GLenum get STENCIL_BITS;
  external GLenum get STENCIL_BUFFER_BIT;
  external GLenum get STENCIL_CLEAR_VALUE;
  external GLenum get STENCIL_FAIL;
  external GLenum get STENCIL_FUNC;
  external GLenum get STENCIL_INDEX8;
  external GLenum get STENCIL_PASS_DEPTH_FAIL;
  external GLenum get STENCIL_PASS_DEPTH_PASS;
  external GLenum get STENCIL_REF;
  external GLenum get STENCIL_TEST;
  external GLenum get STENCIL_VALUE_MASK;
  external GLenum get STENCIL_WRITEMASK;
  external GLenum get STREAM_DRAW;
  external GLenum get SUBPIXEL_BITS;
  external GLenum get TEXTURE;
  external GLenum get TEXTURE0;
  external GLenum get TEXTURE1;
  external GLenum get TEXTURE10;
  external GLenum get TEXTURE11;
  external GLenum get TEXTURE12;
  external GLenum get TEXTURE13;
  external GLenum get TEXTURE14;
  external GLenum get TEXTURE15;
  external GLenum get TEXTURE16;
  external GLenum get TEXTURE17;
  external GLenum get TEXTURE18;
  external GLenum get TEXTURE19;
  external GLenum get TEXTURE2;
  external GLenum get TEXTURE20;
  external GLenum get TEXTURE21;
  external GLenum get TEXTURE22;
  external GLenum get TEXTURE23;
  external GLenum get TEXTURE24;
  external GLenum get TEXTURE25;
  external GLenum get TEXTURE26;
  external GLenum get TEXTURE27;
  external GLenum get TEXTURE28;
  external GLenum get TEXTURE29;
  external GLenum get TEXTURE3;
  external GLenum get TEXTURE30;
  external GLenum get TEXTURE31;
  external GLenum get TEXTURE4;
  external GLenum get TEXTURE5;
  external GLenum get TEXTURE6;
  external GLenum get TEXTURE7;
  external GLenum get TEXTURE8;
  external GLenum get TEXTURE9;
  external GLenum get TEXTURE_2D;
  external GLenum get TEXTURE_BINDING_2D;
  external GLenum get TEXTURE_BINDING_CUBE_MAP;
  external GLenum get TEXTURE_CUBE_MAP;
  external GLenum get TEXTURE_CUBE_MAP_NEGATIVE_X;
  external GLenum get TEXTURE_CUBE_MAP_NEGATIVE_Y;
  external GLenum get TEXTURE_CUBE_MAP_NEGATIVE_Z;
  external GLenum get TEXTURE_CUBE_MAP_POSITIVE_X;
  external GLenum get TEXTURE_CUBE_MAP_POSITIVE_Y;
  external GLenum get TEXTURE_CUBE_MAP_POSITIVE_Z;
  external GLenum get TEXTURE_MAG_FILTER;
  external GLenum get TEXTURE_MIN_FILTER;
  external GLenum get TEXTURE_WRAP_S;
  external GLenum get TEXTURE_WRAP_T;
  external GLenum get TRIANGLES;
  external GLenum get TRIANGLE_FAN;
  external GLenum get TRIANGLE_STRIP;
  external GLenum get UNPACK_ALIGNMENT;
  external GLenum get UNPACK_COLORSPACE_CONVERSION_WEBGL;
  external GLenum get UNPACK_FLIP_Y_WEBGL;
  external GLenum get UNPACK_PREMULTIPLY_ALPHA_WEBGL;
  external GLenum get UNSIGNED_BYTE;
  external GLenum get UNSIGNED_INT;
  external GLenum get UNSIGNED_SHORT;
  external GLenum get UNSIGNED_SHORT_4_4_4_4;
  external GLenum get UNSIGNED_SHORT_5_5_5_1;
  external GLenum get UNSIGNED_SHORT_5_6_5;
  external GLenum get VALIDATE_STATUS;
  external GLenum get VENDOR;
  external GLenum get VERSION;
  external GLenum get VERTEX_ATTRIB_ARRAY_BUFFER_BINDING;
  external GLenum get VERTEX_ATTRIB_ARRAY_ENABLED;
  external GLenum get VERTEX_ATTRIB_ARRAY_NORMALIZED;
  external GLenum get VERTEX_ATTRIB_ARRAY_POINTER;
  external GLenum get VERTEX_ATTRIB_ARRAY_SIZE;
  external GLenum get VERTEX_ATTRIB_ARRAY_STRIDE;
  external GLenum get VERTEX_ATTRIB_ARRAY_TYPE;
  external GLenum get VERTEX_SHADER;
  external GLenum get VIEWPORT;
  external GLenum get ZERO;
}

@JS()
@anonymous
class IWebGLSampler {
  external WebGLSampler prototype;
  external factory IWebGLSampler();
}

@JS()
@anonymous
class IWebGLShader {
  external Shader prototype;
  external factory IWebGLShader();
}

@JS()
@anonymous
class IWebGLShaderPrecisionFormat {
  external ShaderPrecisionFormat prototype;
  external factory IWebGLShaderPrecisionFormat();
}

@JS()
@anonymous
class IWebGLSync {
  external WebGLSync prototype;
  external factory IWebGLSync();
}

@JS()
@anonymous
class IWebGLTexture {
  external Texture prototype;
  external factory IWebGLTexture();
}

@JS()
@anonymous
class IWebGLTransformFeedback {
  external WebGLTransformFeedback prototype;
  external factory IWebGLTransformFeedback();
}

@JS()
@anonymous
class IWebGLUniformLocation {
  external UniformLocation prototype;
  external factory IWebGLUniformLocation();
}

@JS()
@anonymous
class IWebGLVertexArrayObject {
  external WebGLVertexArrayObject prototype;
  external factory IWebGLVertexArrayObject();
}

@JS()
@anonymous
class IWebSocket {
  external WebSocket prototype;
  external factory IWebSocket({String url, dynamic protocols});
  external num get CLOSED;
  external num get CLOSING;
  external num get CONNECTING;
  external num get OPEN;
}

@JS()
@anonymous
class IWindowClient {
  external WindowClient prototype;
  external factory IWindowClient();
}

@JS()
@anonymous
class IWorker {
  external Worker prototype;
  external factory IWorker({dynamic stringUrl, WorkerOptions options});
}

@JS()
@anonymous
class IWorkerGlobalScope {
  external WorkerGlobalScope prototype;
  external factory IWorkerGlobalScope();
}

@JS()
@anonymous
class IWorkerLocation {
  external WorkerLocation prototype;
  external factory IWorkerLocation();
}

@JS()
@anonymous
class IWorkerNavigator {
  external WorkerNavigator prototype;
  external factory IWorkerNavigator();
}

@JS()
@anonymous
class IWritableStream {
  external WritableStream prototype;
  external factory IWritableStream({UnderlyingSink<W> underlyingSink, QueuingStrategy<W> strategy});
}

@JS()
@anonymous
class IWritableStreamDefaultController {
  external WritableStreamDefaultController prototype;
  external factory IWritableStreamDefaultController();
}

@JS()
@anonymous
class IWritableStreamDefaultWriter {
  external WritableStreamDefaultWriter prototype;
  external factory IWritableStreamDefaultWriter({WritableStream<W> stream});
}

@JS()
@anonymous
class IXMLHttpRequest {
  external HttpRequest prototype;
  external factory IXMLHttpRequest();
  external num get DONE;
  external num get HEADERS_RECEIVED;
  external num get LOADING;
  external num get OPENED;
  external num get UNSENT;
}

@JS()
@anonymous
class IXMLHttpRequestEventTarget {
  external HttpRequestEventTarget prototype;
  external factory IXMLHttpRequestEventTarget();
}

@JS()
@anonymous
class IXMLHttpRequestUpload {
  external HttpRequestUpload prototype;
  external factory IXMLHttpRequestUpload();
}

typedef ArrayBufferLike = dynamic;
typedef Error = dynamic;
typedef PromiseLike<T> = dynamic;
typedef Record<T, U> = dynamic;
