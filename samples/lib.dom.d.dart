@JS()
library samples.lib.dom.d.ts;

// ignore_for_file: non_constant_identifier_names, private_optional_parameter, unused_element
import 'package:js/js.dart';
import "dart:html";
import "dart:indexed_db";
import "dart:math";
import "dart:svg";
import "dart:typed_data";
import "dart:web_audio";
import "dart:web_gl";
import "lib.es5.d.dart";

@JS()
@anonymous
class AddEventListenerOptions extends EventListenerOptions {
  external bool? get once;
  external set once(bool? value);
  external bool? get passive;
  external set passive(bool? value);
  external AbortSignal? get signal;
  external set signal(AbortSignal? value);
  external factory AddEventListenerOptions({
    bool? once,
    bool? passive,
    AbortSignal? signal,
  });
}

@JS()
@anonymous
class AesCbcParams extends Algorithm {
  external BufferSource get iv;
  external set iv(BufferSource value);
  external factory AesCbcParams({
    BufferSource iv,
  });
}

@JS()
@anonymous
class AesCtrParams extends Algorithm {
  external BufferSource get counter;
  external set counter(BufferSource value);
  external num get length;
  external set length(num value);
  external factory AesCtrParams({
    BufferSource counter,
    num length,
  });
}

@JS()
@anonymous
class AesDerivedKeyParams extends Algorithm {
  external num get length;
  external set length(num value);
  external factory AesDerivedKeyParams({
    num length,
  });
}

@JS()
@anonymous
class AesGcmParams extends Algorithm {
  external BufferSource? get additionalData;
  external set additionalData(BufferSource? value);
  external BufferSource get iv;
  external set iv(BufferSource value);
  external num? get tagLength;
  external set tagLength(num? value);
  external factory AesGcmParams({
    BufferSource? additionalData,
    BufferSource iv,
    num? tagLength,
  });
}

@JS()
@anonymous
class AesKeyAlgorithm extends KeyAlgorithm {
  external num get length;
  external set length(num value);
  external factory AesKeyAlgorithm({
    num length,
  });
}

@JS()
@anonymous
class AesKeyGenParams extends Algorithm {
  external num get length;
  external set length(num value);
  external factory AesKeyGenParams({
    num length,
  });
}

@JS()
@anonymous
class Algorithm {
  external String get name;
  external set name(String value);
  external factory Algorithm({
    String name,
  });
}

@JS()
@anonymous
class AnalyserOptions extends AudioNodeOptions {
  external num? get fftSize;
  external set fftSize(num? value);
  external num? get maxDecibels;
  external set maxDecibels(num? value);
  external num? get minDecibels;
  external set minDecibels(num? value);
  external num? get smoothingTimeConstant;
  external set smoothingTimeConstant(num? value);
  external factory AnalyserOptions({
    num? fftSize,
    num? maxDecibels,
    num? minDecibels,
    num? smoothingTimeConstant,
  });
}

@JS()
@anonymous
class AnimationEventInit extends EventInit {
  external String? get animationName;
  external set animationName(String? value);
  external num? get elapsedTime;
  external set elapsedTime(num? value);
  external String? get pseudoElement;
  external set pseudoElement(String? value);
  external factory AnimationEventInit({
    String? animationName,
    num? elapsedTime,
    String? pseudoElement,
  });
}

@JS()
@anonymous
class AnimationPlaybackEventInit extends EventInit {
  external num? get currentTime;
  external set currentTime(num? value);
  external num? get timelineTime;
  external set timelineTime(num? value);
  external factory AnimationPlaybackEventInit({
    num? currentTime,
    num? timelineTime,
  });
}

@JS()
@anonymous
class AssignedNodesOptions {
  external bool? get flatten;
  external set flatten(bool? value);
  external factory AssignedNodesOptions({
    bool? flatten,
  });
}

@JS()
@anonymous
class AudioBufferOptions {
  external num get length;
  external set length(num value);
  external num? get numberOfChannels;
  external set numberOfChannels(num? value);
  external num get sampleRate;
  external set sampleRate(num value);
  external factory AudioBufferOptions({
    num length,
    num? numberOfChannels,
    num sampleRate,
  });
}

@JS()
@anonymous
class AudioBufferSourceOptions {
  external AudioBuffer? get buffer;
  external set buffer(AudioBuffer? value);
  external num? get detune;
  external set detune(num? value);
  external bool? get loop;
  external set loop(bool? value);
  external num? get loopEnd;
  external set loopEnd(num? value);
  external num? get loopStart;
  external set loopStart(num? value);
  external num? get playbackRate;
  external set playbackRate(num? value);
  external factory AudioBufferSourceOptions({
    AudioBuffer? buffer,
    num? detune,
    bool? loop,
    num? loopEnd,
    num? loopStart,
    num? playbackRate,
  });
}

@JS()
@anonymous
class AudioConfiguration {
  external num? get bitrate;
  external set bitrate(num? value);
  external String? get channels;
  external set channels(String? value);
  external String get contentType;
  external set contentType(String value);
  external num? get samplerate;
  external set samplerate(num? value);
  external bool? get spatialRendering;
  external set spatialRendering(bool? value);
  external factory AudioConfiguration({
    num? bitrate,
    String? channels,
    String contentType,
    num? samplerate,
    bool? spatialRendering,
  });
}

@JS()
@anonymous
class AudioContextOptions {
  external dynamic get latencyHint;
  external set latencyHint(dynamic value);
  external num? get sampleRate;
  external set sampleRate(num? value);
  external factory AudioContextOptions({
    dynamic latencyHint,
    num? sampleRate,
  });
}

@JS()
@anonymous
class AudioNodeOptions {
  external num? get channelCount;
  external set channelCount(num? value);
  external ChannelCountMode? get channelCountMode;
  external set channelCountMode(ChannelCountMode? value);
  external ChannelInterpretation? get channelInterpretation;
  external set channelInterpretation(ChannelInterpretation? value);
  external factory AudioNodeOptions({
    num? channelCount,
    ChannelCountMode? channelCountMode,
    ChannelInterpretation? channelInterpretation,
  });
}

@JS()
@anonymous
class AudioProcessingEventInit extends EventInit {
  external AudioBuffer get inputBuffer;
  external set inputBuffer(AudioBuffer value);
  external AudioBuffer get outputBuffer;
  external set outputBuffer(AudioBuffer value);
  external num get playbackTime;
  external set playbackTime(num value);
  external factory AudioProcessingEventInit({
    AudioBuffer inputBuffer,
    AudioBuffer outputBuffer,
    num playbackTime,
  });
}

@JS()
@anonymous
class AudioTimestamp {
  external num? get contextTime;
  external set contextTime(num? value);
  external DOMHighResTimeStamp? get performanceTime;
  external set performanceTime(DOMHighResTimeStamp? value);
  external factory AudioTimestamp({
    num? contextTime,
    DOMHighResTimeStamp? performanceTime,
  });
}

@JS()
@anonymous
class AudioWorkletNodeOptions extends AudioNodeOptions {
  external num? get numberOfInputs;
  external set numberOfInputs(num? value);
  external num? get numberOfOutputs;
  external set numberOfOutputs(num? value);
  external List<num>? get outputChannelCount;
  external set outputChannelCount(List<num>? value);
  external Record<String, num>? get parameterData;
  external set parameterData(Record<String, num>? value);
  external dynamic get processorOptions;
  external set processorOptions(dynamic value);
  external factory AudioWorkletNodeOptions({
    num? numberOfInputs,
    num? numberOfOutputs,
    List<num>? outputChannelCount,
    Record<String, num>? parameterData,
    dynamic processorOptions,
  });
}

@JS()
@anonymous
class AuthenticationExtensionsClientInputs {
  external String? get appid;
  external set appid(String? value);
  external String? get appidExclude;
  external set appidExclude(String? value);
  external bool? get credProps;
  external set credProps(bool? value);
  external bool? get uvm;
  external set uvm(bool? value);
  external factory AuthenticationExtensionsClientInputs({
    String? appid,
    String? appidExclude,
    bool? credProps,
    bool? uvm,
  });
}

@JS()
@anonymous
class AuthenticationExtensionsClientOutputs {
  external bool? get appid;
  external set appid(bool? value);
  external CredentialPropertiesOutput? get credProps;
  external set credProps(CredentialPropertiesOutput? value);
  external UvmEntries? get uvm;
  external set uvm(UvmEntries? value);
  external factory AuthenticationExtensionsClientOutputs({
    bool? appid,
    CredentialPropertiesOutput? credProps,
    UvmEntries? uvm,
  });
}

@JS()
@anonymous
class AuthenticatorSelectionCriteria {
  external AuthenticatorAttachment? get authenticatorAttachment;
  external set authenticatorAttachment(AuthenticatorAttachment? value);
  external bool? get requireResidentKey;
  external set requireResidentKey(bool? value);
  external ResidentKeyRequirement? get residentKey;
  external set residentKey(ResidentKeyRequirement? value);
  external UserVerificationRequirement? get userVerification;
  external set userVerification(UserVerificationRequirement? value);
  external factory AuthenticatorSelectionCriteria({
    AuthenticatorAttachment? authenticatorAttachment,
    bool? requireResidentKey,
    ResidentKeyRequirement? residentKey,
    UserVerificationRequirement? userVerification,
  });
}

@JS()
@anonymous
class BiquadFilterOptions extends AudioNodeOptions {
  external num? get Q;
  external set Q(num? value);
  external num? get detune;
  external set detune(num? value);
  external num? get frequency;
  external set frequency(num? value);
  external num? get gain;
  external set gain(num? value);
  external BiquadFilterType? get type;
  external set type(BiquadFilterType? value);
  external factory BiquadFilterOptions({
    num? Q,
    num? detune,
    num? frequency,
    num? gain,
    BiquadFilterType? type,
  });
}

@JS()
@anonymous
class BlobEventInit {
  external Blob get data;
  external set data(Blob value);
  external DOMHighResTimeStamp? get timecode;
  external set timecode(DOMHighResTimeStamp? value);
  external factory BlobEventInit({
    Blob data,
    DOMHighResTimeStamp? timecode,
  });
}

@JS()
@anonymous
class BlobPropertyBag {
  external EndingType? get endings;
  external set endings(EndingType? value);
  external String? get type;
  external set type(String? value);
  external factory BlobPropertyBag({
    EndingType? endings,
    String? type,
  });
}

@JS()
@anonymous
class CacheQueryOptions {
  external bool? get ignoreMethod;
  external set ignoreMethod(bool? value);
  external bool? get ignoreSearch;
  external set ignoreSearch(bool? value);
  external bool? get ignoreVary;
  external set ignoreVary(bool? value);
  external factory CacheQueryOptions({
    bool? ignoreMethod,
    bool? ignoreSearch,
    bool? ignoreVary,
  });
}

@JS()
@anonymous
class CanvasRenderingContext2DSettings {
  external bool? get alpha;
  external set alpha(bool? value);
  external PredefinedColorSpace? get colorSpace;
  external set colorSpace(PredefinedColorSpace? value);
  external bool? get desynchronized;
  external set desynchronized(bool? value);
  external factory CanvasRenderingContext2DSettings({
    bool? alpha,
    PredefinedColorSpace? colorSpace,
    bool? desynchronized,
  });
}

@JS()
@anonymous
class ChannelMergerOptions extends AudioNodeOptions {
  external num? get numberOfInputs;
  external set numberOfInputs(num? value);
  external factory ChannelMergerOptions({
    num? numberOfInputs,
  });
}

@JS()
@anonymous
class ChannelSplitterOptions extends AudioNodeOptions {
  external num? get numberOfOutputs;
  external set numberOfOutputs(num? value);
  external factory ChannelSplitterOptions({
    num? numberOfOutputs,
  });
}

@JS()
@anonymous
class ClientQueryOptions {
  external bool? get includeUncontrolled;
  external set includeUncontrolled(bool? value);
  external ClientTypes? get type;
  external set type(ClientTypes? value);
  external factory ClientQueryOptions({
    bool? includeUncontrolled,
    ClientTypes? type,
  });
}

@JS()
@anonymous
class ClipboardEventInit extends EventInit {
  external DataTransfer? get clipboardData;
  external set clipboardData(DataTransfer? value);
  external factory ClipboardEventInit({
    DataTransfer? clipboardData,
  });
}

@JS()
@anonymous
class ClipboardItemOptions {
  external PresentationStyle? get presentationStyle;
  external set presentationStyle(PresentationStyle? value);
  external factory ClipboardItemOptions({
    PresentationStyle? presentationStyle,
  });
}

@JS()
@anonymous
class CloseEventInit extends EventInit {
  external num? get code;
  external set code(num? value);
  external String? get reason;
  external set reason(String? value);
  external bool? get wasClean;
  external set wasClean(bool? value);
  external factory CloseEventInit({
    num? code,
    String? reason,
    bool? wasClean,
  });
}

@JS()
@anonymous
class CompositionEventInit extends UIEventInit {
  external String? get data;
  external set data(String? value);
  external factory CompositionEventInit({
    String? data,
  });
}

@JS()
@anonymous
class ComputedEffectTiming extends EffectTiming {
  external num? get activeDuration;
  external set activeDuration(num? value);
  external num? get currentIteration;
  external set currentIteration(num? value);
  external num? get endTime;
  external set endTime(num? value);
  external num? get localTime;
  external set localTime(num? value);
  external num? get progress;
  external set progress(num? value);
  external num? get startTime;
  external set startTime(num? value);
  external factory ComputedEffectTiming({
    num? activeDuration,
    num? currentIteration,
    num? endTime,
    num? localTime,
    num? progress,
    num? startTime,
  });
}

@JS()
@anonymous
class ComputedKeyframe {
  external CompositeOperationOrAuto get composite;
  external set composite(CompositeOperationOrAuto value);
  external num get computedOffset;
  external set computedOffset(num value);
  external String get easing;
  external set easing(String value);
  external num? get offset;
  external set offset(num? value);
  external factory ComputedKeyframe({
    CompositeOperationOrAuto composite,
    num computedOffset,
    String easing,
    num? offset,
  });
}

@JS()
@anonymous
class ConstantSourceOptions {
  external num? get offset;
  external set offset(num? value);
  external factory ConstantSourceOptions({
    num? offset,
  });
}

@JS()
@anonymous
class ConstrainBooleanParameters {
  external bool? get exact;
  external set exact(bool? value);
  external bool? get ideal;
  external set ideal(bool? value);
  external factory ConstrainBooleanParameters({
    bool? exact,
    bool? ideal,
  });
}

@JS()
@anonymous
class ConstrainDOMStringParameters {
  external dynamic get exact;
  external set exact(dynamic value);
  external dynamic get ideal;
  external set ideal(dynamic value);
  external factory ConstrainDOMStringParameters({
    dynamic exact,
    dynamic ideal,
  });
}

@JS()
@anonymous
class ConstrainDoubleRange extends DoubleRange {
  external num? get exact;
  external set exact(num? value);
  external num? get ideal;
  external set ideal(num? value);
  external factory ConstrainDoubleRange({
    num? exact,
    num? ideal,
  });
}

@JS()
@anonymous
class ConstrainULongRange extends ULongRange {
  external num? get exact;
  external set exact(num? value);
  external num? get ideal;
  external set ideal(num? value);
  external factory ConstrainULongRange({
    num? exact,
    num? ideal,
  });
}

@JS()
@anonymous
class ConvolverOptions extends AudioNodeOptions {
  external AudioBuffer? get buffer;
  external set buffer(AudioBuffer? value);
  external bool? get disableNormalization;
  external set disableNormalization(bool? value);
  external factory ConvolverOptions({
    AudioBuffer? buffer,
    bool? disableNormalization,
  });
}

@JS()
@anonymous
class CredentialCreationOptions {
  external PublicKeyCredentialCreationOptions? get publicKey;
  external set publicKey(PublicKeyCredentialCreationOptions? value);
  external AbortSignal? get signal;
  external set signal(AbortSignal? value);
  external factory CredentialCreationOptions({
    PublicKeyCredentialCreationOptions? publicKey,
    AbortSignal? signal,
  });
}

@JS()
@anonymous
class CredentialPropertiesOutput {
  external bool? get rk;
  external set rk(bool? value);
  external factory CredentialPropertiesOutput({
    bool? rk,
  });
}

@JS()
@anonymous
class CredentialRequestOptions {
  external CredentialMediationRequirement? get mediation;
  external set mediation(CredentialMediationRequirement? value);
  external PublicKeyCredentialRequestOptions? get publicKey;
  external set publicKey(PublicKeyCredentialRequestOptions? value);
  external AbortSignal? get signal;
  external set signal(AbortSignal? value);
  external factory CredentialRequestOptions({
    CredentialMediationRequirement? mediation,
    PublicKeyCredentialRequestOptions? publicKey,
    AbortSignal? signal,
  });
}

@JS()
@anonymous
class CryptoKeyPair {
  external CryptoKey? get privateKey;
  external set privateKey(CryptoKey? value);
  external CryptoKey? get publicKey;
  external set publicKey(CryptoKey? value);
  external factory CryptoKeyPair({
    CryptoKey? privateKey,
    CryptoKey? publicKey,
  });
}

@JS()
@anonymous
class CustomEventInit<T> extends EventInit {
  external T? get detail;
  external set detail(T? value);
  external factory CustomEventInit({
    T? detail,
  });
}

@JS()
@anonymous
class DOMMatrix2DInit {
  external num? get a;
  external set a(num? value);
  external num? get b;
  external set b(num? value);
  external num? get c;
  external set c(num? value);
  external num? get d;
  external set d(num? value);
  external num? get e;
  external set e(num? value);
  external num? get f;
  external set f(num? value);
  external num? get m11;
  external set m11(num? value);
  external num? get m12;
  external set m12(num? value);
  external num? get m21;
  external set m21(num? value);
  external num? get m22;
  external set m22(num? value);
  external num? get m41;
  external set m41(num? value);
  external num? get m42;
  external set m42(num? value);
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
  external bool? get is2D;
  external set is2D(bool? value);
  external num? get m13;
  external set m13(num? value);
  external num? get m14;
  external set m14(num? value);
  external num? get m23;
  external set m23(num? value);
  external num? get m24;
  external set m24(num? value);
  external num? get m31;
  external set m31(num? value);
  external num? get m32;
  external set m32(num? value);
  external num? get m33;
  external set m33(num? value);
  external num? get m34;
  external set m34(num? value);
  external num? get m43;
  external set m43(num? value);
  external num? get m44;
  external set m44(num? value);
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
  external num? get w;
  external set w(num? value);
  external num? get x;
  external set x(num? value);
  external num? get y;
  external set y(num? value);
  external num? get z;
  external set z(num? value);
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
  external DOMPointInit? get p1;
  external set p1(DOMPointInit? value);
  external DOMPointInit? get p2;
  external set p2(DOMPointInit? value);
  external DOMPointInit? get p3;
  external set p3(DOMPointInit? value);
  external DOMPointInit? get p4;
  external set p4(DOMPointInit? value);
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
  external num? get height;
  external set height(num? value);
  external num? get width;
  external set width(num? value);
  external num? get x;
  external set x(num? value);
  external num? get y;
  external set y(num? value);
  external factory DOMRectInit({
    num? height,
    num? width,
    num? x,
    num? y,
  });
}

@JS()
@anonymous
class DelayOptions extends AudioNodeOptions {
  external num? get delayTime;
  external set delayTime(num? value);
  external num? get maxDelayTime;
  external set maxDelayTime(num? value);
  external factory DelayOptions({
    num? delayTime,
    num? maxDelayTime,
  });
}

@JS()
@anonymous
class DeviceMotionEventAccelerationInit {
  external num? get x;
  external set x(num? value);
  external num? get y;
  external set y(num? value);
  external num? get z;
  external set z(num? value);
  external factory DeviceMotionEventAccelerationInit({
    num? x,
    num? y,
    num? z,
  });
}

@JS()
@anonymous
class DeviceMotionEventInit extends EventInit {
  external DeviceMotionEventAccelerationInit? get acceleration;
  external set acceleration(DeviceMotionEventAccelerationInit? value);
  external DeviceMotionEventAccelerationInit? get accelerationIncludingGravity;
  external set accelerationIncludingGravity(DeviceMotionEventAccelerationInit? value);
  external num? get interval;
  external set interval(num? value);
  external DeviceMotionEventRotationRateInit? get rotationRate;
  external set rotationRate(DeviceMotionEventRotationRateInit? value);
  external factory DeviceMotionEventInit({
    DeviceMotionEventAccelerationInit? acceleration,
    DeviceMotionEventAccelerationInit? accelerationIncludingGravity,
    num? interval,
    DeviceMotionEventRotationRateInit? rotationRate,
  });
}

@JS()
@anonymous
class DeviceMotionEventRotationRateInit {
  external num? get alpha;
  external set alpha(num? value);
  external num? get beta;
  external set beta(num? value);
  external num? get gamma;
  external set gamma(num? value);
  external factory DeviceMotionEventRotationRateInit({
    num? alpha,
    num? beta,
    num? gamma,
  });
}

@JS()
@anonymous
class DeviceOrientationEventInit extends EventInit {
  external bool? get absolute;
  external set absolute(bool? value);
  external num? get alpha;
  external set alpha(num? value);
  external num? get beta;
  external set beta(num? value);
  external num? get gamma;
  external set gamma(num? value);
  external factory DeviceOrientationEventInit({
    bool? absolute,
    num? alpha,
    num? beta,
    num? gamma,
  });
}

@JS()
@anonymous
class DisplayMediaStreamConstraints {
  external dynamic get audio;
  external set audio(dynamic value);
  external dynamic get video;
  external set video(dynamic value);
  external factory DisplayMediaStreamConstraints({
    dynamic audio,
    dynamic video,
  });
}

@JS()
@anonymous
class DocumentTimelineOptions {
  external DOMHighResTimeStamp? get originTime;
  external set originTime(DOMHighResTimeStamp? value);
  external factory DocumentTimelineOptions({
    DOMHighResTimeStamp? originTime,
  });
}

@JS()
@anonymous
class DoubleRange {
  external num? get max;
  external set max(num? value);
  external num? get min;
  external set min(num? value);
  external factory DoubleRange({
    num? max,
    num? min,
  });
}

@JS()
@anonymous
class DragEventInit extends MouseEventInit {
  external DataTransfer? get dataTransfer;
  external set dataTransfer(DataTransfer? value);
  external factory DragEventInit({
    DataTransfer? dataTransfer,
  });
}

@JS()
@anonymous
class DynamicsCompressorOptions extends AudioNodeOptions {
  external num? get attack;
  external set attack(num? value);
  external num? get knee;
  external set knee(num? value);
  external num? get ratio;
  external set ratio(num? value);
  external num? get release;
  external set release(num? value);
  external num? get threshold;
  external set threshold(num? value);
  external factory DynamicsCompressorOptions({
    num? attack,
    num? knee,
    num? ratio,
    num? release,
    num? threshold,
  });
}

@JS()
@anonymous
class EcKeyAlgorithm extends KeyAlgorithm {
  external NamedCurve get namedCurve;
  external set namedCurve(NamedCurve value);
  external factory EcKeyAlgorithm({
    NamedCurve namedCurve,
  });
}

@JS()
@anonymous
class EcKeyGenParams extends Algorithm {
  external NamedCurve get namedCurve;
  external set namedCurve(NamedCurve value);
  external factory EcKeyGenParams({
    NamedCurve namedCurve,
  });
}

@JS()
@anonymous
class EcKeyImportParams extends Algorithm {
  external NamedCurve get namedCurve;
  external set namedCurve(NamedCurve value);
  external factory EcKeyImportParams({
    NamedCurve namedCurve,
  });
}

@JS()
@anonymous
class EcdhKeyDeriveParams extends Algorithm {
  external CryptoKey get public;
  external set public(CryptoKey value);
  external factory EcdhKeyDeriveParams({
    CryptoKey public,
  });
}

@JS()
@anonymous
class EcdsaParams extends Algorithm {
  external HashAlgorithmIdentifier get hash;
  external set hash(HashAlgorithmIdentifier value);
  external factory EcdsaParams({
    HashAlgorithmIdentifier hash,
  });
}

@JS()
@anonymous
class EffectTiming {
  external num? get delay;
  external set delay(num? value);
  external PlaybackDirection? get direction;
  external set direction(PlaybackDirection? value);
  external dynamic get duration;
  external set duration(dynamic value);
  external String? get easing;
  external set easing(String? value);
  external num? get endDelay;
  external set endDelay(num? value);
  external FillMode? get fill;
  external set fill(FillMode? value);
  external num? get iterationStart;
  external set iterationStart(num? value);
  external num? get iterations;
  external set iterations(num? value);
  external num? get playbackRate;
  external set playbackRate(num? value);
  external factory EffectTiming({
    num? delay,
    PlaybackDirection? direction,
    dynamic duration,
    String? easing,
    num? endDelay,
    FillMode? fill,
    num? iterationStart,
    num? iterations,
    num? playbackRate,
  });
}

@JS()
@anonymous
class ElementCreationOptions {
  external factory ElementCreationOptions();
}

@JS()
@anonymous
class ElementDefinitionOptions {
  external factory ElementDefinitionOptions();
}

@JS()
@anonymous
class ErrorEventInit extends EventInit {
  external num? get colno;
  external set colno(num? value);
  external dynamic get error;
  external set error(dynamic value);
  external String? get filename;
  external set filename(String? value);
  external num? get lineno;
  external set lineno(num? value);
  external String? get message;
  external set message(String? value);
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
  external bool? get bubbles;
  external set bubbles(bool? value);
  external bool? get cancelable;
  external set cancelable(bool? value);
  external bool? get composed;
  external set composed(bool? value);
  external factory EventInit({
    bool? bubbles,
    bool? cancelable,
    bool? composed,
  });
}

@JS()
@anonymous
class EventListenerOptions {
  external bool? get capture;
  external set capture(bool? value);
  external factory EventListenerOptions({
    bool? capture,
  });
}

@JS()
@anonymous
class EventModifierInit extends UIEventInit {
  external bool? get altKey;
  external set altKey(bool? value);
  external bool? get ctrlKey;
  external set ctrlKey(bool? value);
  external bool? get metaKey;
  external set metaKey(bool? value);
  external bool? get modifierAltGraph;
  external set modifierAltGraph(bool? value);
  external bool? get modifierCapsLock;
  external set modifierCapsLock(bool? value);
  external bool? get modifierFn;
  external set modifierFn(bool? value);
  external bool? get modifierFnLock;
  external set modifierFnLock(bool? value);
  external bool? get modifierHyper;
  external set modifierHyper(bool? value);
  external bool? get modifierNumLock;
  external set modifierNumLock(bool? value);
  external bool? get modifierScrollLock;
  external set modifierScrollLock(bool? value);
  external bool? get modifierSuper;
  external set modifierSuper(bool? value);
  external bool? get modifierSymbol;
  external set modifierSymbol(bool? value);
  external bool? get modifierSymbolLock;
  external set modifierSymbolLock(bool? value);
  external bool? get shiftKey;
  external set shiftKey(bool? value);
  external factory EventModifierInit({
    bool? altKey,
    bool? ctrlKey,
    bool? metaKey,
    bool? modifierAltGraph,
    bool? modifierCapsLock,
    bool? modifierFn,
    bool? modifierFnLock,
    bool? modifierHyper,
    bool? modifierNumLock,
    bool? modifierScrollLock,
    bool? modifierSuper,
    bool? modifierSymbol,
    bool? modifierSymbolLock,
    bool? shiftKey,
  });
}

@JS()
@anonymous
class EventSourceInit {
  external bool? get withCredentials;
  external set withCredentials(bool? value);
  external factory EventSourceInit({
    bool? withCredentials,
  });
}

@JS()
@anonymous
class FilePropertyBag extends BlobPropertyBag {
  external num? get lastModified;
  external set lastModified(num? value);
  external factory FilePropertyBag({
    num? lastModified,
  });
}

@JS()
@anonymous
class FileSystemFlags {
  external bool? get create;
  external set create(bool? value);
  external bool? get exclusive;
  external set exclusive(bool? value);
  external factory FileSystemFlags({
    bool? create,
    bool? exclusive,
  });
}

@JS()
@anonymous
class FocusEventInit extends UIEventInit {
  external EventTarget? get relatedTarget;
  external set relatedTarget(EventTarget? value);
  external factory FocusEventInit({
    EventTarget? relatedTarget,
  });
}

@JS()
@anonymous
class FocusOptions {
  external bool? get preventScroll;
  external set preventScroll(bool? value);
  external factory FocusOptions({
    bool? preventScroll,
  });
}

@JS()
@anonymous
class FontFaceDescriptors {
  external String? get display;
  external set display(String? value);
  external String? get featureSettings;
  external set featureSettings(String? value);
  external String? get stretch;
  external set stretch(String? value);
  external String? get style;
  external set style(String? value);
  external String? get unicodeRange;
  external set unicodeRange(String? value);
  external String? get variant;
  external set variant(String? value);
  external String? get weight;
  external set weight(String? value);
  external factory FontFaceDescriptors({
    String? display,
    String? featureSettings,
    String? stretch,
    String? style,
    String? unicodeRange,
    String? variant,
    String? weight,
  });
}

@JS()
@anonymous
class FontFaceSetLoadEventInit extends EventInit {
  external List<FontFace>? get fontfaces;
  external set fontfaces(List<FontFace>? value);
  external factory FontFaceSetLoadEventInit({
    List<FontFace>? fontfaces,
  });
}

@JS()
@anonymous
class FormDataEventInit extends EventInit {
  external FormData get formData;
  external set formData(FormData value);
  external factory FormDataEventInit({
    FormData formData,
  });
}

@JS()
@anonymous
class FullscreenOptions {
  external FullscreenNavigationUI? get navigationUI;
  external set navigationUI(FullscreenNavigationUI? value);
  external factory FullscreenOptions({
    FullscreenNavigationUI? navigationUI,
  });
}

@JS()
@anonymous
class GainOptions extends AudioNodeOptions {
  external num? get gain;
  external set gain(num? value);
  external factory GainOptions({
    num? gain,
  });
}

@JS()
@anonymous
class GamepadEventInit extends EventInit {
  external Gamepad get gamepad;
  external set gamepad(Gamepad value);
  external factory GamepadEventInit({
    Gamepad gamepad,
  });
}

@JS()
@anonymous
class GetAnimationsOptions {
  external bool? get subtree;
  external set subtree(bool? value);
  external factory GetAnimationsOptions({
    bool? subtree,
  });
}

@JS()
@anonymous
class GetNotificationOptions {
  external String? get tag;
  external set tag(String? value);
  external factory GetNotificationOptions({
    String? tag,
  });
}

@JS()
@anonymous
class GetRootNodeOptions {
  external bool? get composed;
  external set composed(bool? value);
  external factory GetRootNodeOptions({
    bool? composed,
  });
}

@JS()
@anonymous
class HashChangeEventInit extends EventInit {
  external String? get newURL;
  external set newURL(String? value);
  external String? get oldURL;
  external set oldURL(String? value);
  external factory HashChangeEventInit({
    String? newURL,
    String? oldURL,
  });
}

@JS()
@anonymous
class HkdfParams extends Algorithm {
  external HashAlgorithmIdentifier get hash;
  external set hash(HashAlgorithmIdentifier value);
  external BufferSource get info;
  external set info(BufferSource value);
  external BufferSource get salt;
  external set salt(BufferSource value);
  external factory HkdfParams({
    HashAlgorithmIdentifier hash,
    BufferSource info,
    BufferSource salt,
  });
}

@JS()
@anonymous
class HmacImportParams extends Algorithm {
  external HashAlgorithmIdentifier get hash;
  external set hash(HashAlgorithmIdentifier value);
  external num? get length;
  external set length(num? value);
  external factory HmacImportParams({
    HashAlgorithmIdentifier hash,
    num? length,
  });
}

@JS()
@anonymous
class HmacKeyAlgorithm extends KeyAlgorithm {
  external KeyAlgorithm get hash;
  external set hash(KeyAlgorithm value);
  external num get length;
  external set length(num value);
  external factory HmacKeyAlgorithm({
    KeyAlgorithm hash,
    num length,
  });
}

@JS()
@anonymous
class HmacKeyGenParams extends Algorithm {
  external HashAlgorithmIdentifier get hash;
  external set hash(HashAlgorithmIdentifier value);
  external num? get length;
  external set length(num? value);
  external factory HmacKeyGenParams({
    HashAlgorithmIdentifier hash,
    num? length,
  });
}

@JS()
@anonymous
class IDBDatabaseInfo {
  external String? get name;
  external set name(String? value);
  external num? get version;
  external set version(num? value);
  external factory IDBDatabaseInfo({
    String? name,
    num? version,
  });
}

@JS()
@anonymous
class IDBIndexParameters {
  external bool? get multiEntry;
  external set multiEntry(bool? value);
  external bool? get unique;
  external set unique(bool? value);
  external factory IDBIndexParameters({
    bool? multiEntry,
    bool? unique,
  });
}

@JS()
@anonymous
class IDBObjectStoreParameters {
  external bool? get autoIncrement;
  external set autoIncrement(bool? value);
  external dynamic get keyPath;
  external set keyPath(dynamic value);
  external factory IDBObjectStoreParameters({
    bool? autoIncrement,
    dynamic keyPath,
  });
}

@JS()
@anonymous
class IDBVersionChangeEventInit extends EventInit {
  external num? get newVersion;
  external set newVersion(num? value);
  external num? get oldVersion;
  external set oldVersion(num? value);
  external factory IDBVersionChangeEventInit({
    num? newVersion,
    num? oldVersion,
  });
}

@JS()
@anonymous
class IIRFilterOptions extends AudioNodeOptions {
  external List<num> get feedback;
  external set feedback(List<num> value);
  external List<num> get feedforward;
  external set feedforward(List<num> value);
  external factory IIRFilterOptions({
    List<num> feedback,
    List<num> feedforward,
  });
}

@JS()
@anonymous
class IdleRequestOptions {
  external num? get timeout;
  external set timeout(num? value);
  external factory IdleRequestOptions({
    num? timeout,
  });
}

@JS()
@anonymous
class ImageBitmapOptions {
  external ColorSpaceConversion? get colorSpaceConversion;
  external set colorSpaceConversion(ColorSpaceConversion? value);
  external ImageOrientation? get imageOrientation;
  external set imageOrientation(ImageOrientation? value);
  external PremultiplyAlpha? get premultiplyAlpha;
  external set premultiplyAlpha(PremultiplyAlpha? value);
  external num? get resizeHeight;
  external set resizeHeight(num? value);
  external ResizeQuality? get resizeQuality;
  external set resizeQuality(ResizeQuality? value);
  external num? get resizeWidth;
  external set resizeWidth(num? value);
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
  external bool? get alpha;
  external set alpha(bool? value);
  external factory ImageBitmapRenderingContextSettings({
    bool? alpha,
  });
}

@JS()
@anonymous
class ImageDataSettings {
  external PredefinedColorSpace? get colorSpace;
  external set colorSpace(PredefinedColorSpace? value);
  external factory ImageDataSettings({
    PredefinedColorSpace? colorSpace,
  });
}

@JS()
@anonymous
class ImportMeta {
  external String get url;
  external set url(String value);
  external factory ImportMeta({
    String url,
  });
}

@JS()
@anonymous
class InputEventInit extends UIEventInit {
  external String? get data;
  external set data(String? value);
  external DataTransfer? get dataTransfer;
  external set dataTransfer(DataTransfer? value);
  external String? get inputType;
  external set inputType(String? value);
  external bool? get isComposing;
  external set isComposing(bool? value);
  external List<StaticRange>? get targetRanges;
  external set targetRanges(List<StaticRange>? value);
  external factory InputEventInit({
    String? data,
    DataTransfer? dataTransfer,
    String? inputType,
    bool? isComposing,
    List<StaticRange>? targetRanges,
  });
}

@JS()
@anonymous
class IntersectionObserverEntryInit {
  external DOMRectInit get boundingClientRect;
  external set boundingClientRect(DOMRectInit value);
  external num get intersectionRatio;
  external set intersectionRatio(num value);
  external DOMRectInit get intersectionRect;
  external set intersectionRect(DOMRectInit value);
  external bool get isIntersecting;
  external set isIntersecting(bool value);
  external DOMRectInit? get rootBounds;
  external set rootBounds(DOMRectInit? value);
  external Element get target;
  external set target(Element value);
  external DOMHighResTimeStamp get time;
  external set time(DOMHighResTimeStamp value);
  external factory IntersectionObserverEntryInit({
    DOMRectInit boundingClientRect,
    num intersectionRatio,
    DOMRectInit intersectionRect,
    bool isIntersecting,
    DOMRectInit? rootBounds,
    Element target,
    DOMHighResTimeStamp time,
  });
}

@JS()
@anonymous
class IntersectionObserverInit {
  external dynamic get root;
  external set root(dynamic value);
  external String? get rootMargin;
  external set rootMargin(String? value);
  external dynamic get threshold;
  external set threshold(dynamic value);
  external factory IntersectionObserverInit({
    dynamic root,
    String? rootMargin,
    dynamic threshold,
  });
}

@JS()
@anonymous
class JsonWebKey {
  external String? get alg;
  external set alg(String? value);
  external String? get crv;
  external set crv(String? value);
  external String? get d;
  external set d(String? value);
  external String? get dp;
  external set dp(String? value);
  external String? get dq;
  external set dq(String? value);
  external String? get e;
  external set e(String? value);
  external bool? get ext;
  external set ext(bool? value);
  external String? get k;
  external set k(String? value);
  external List<String>? get key_ops;
  external set key_ops(List<String>? value);
  external String? get kty;
  external set kty(String? value);
  external String? get n;
  external set n(String? value);
  external List<RsaOtherPrimesInfo>? get oth;
  external set oth(List<RsaOtherPrimesInfo>? value);
  external String? get p;
  external set p(String? value);
  external String? get q;
  external set q(String? value);
  external String? get qi;
  external set qi(String? value);
  external String? get use;
  external set use(String? value);
  external String? get x;
  external set x(String? value);
  external String? get y;
  external set y(String? value);
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
  external String get name;
  external set name(String value);
  external factory KeyAlgorithm({
    String name,
  });
}

@JS()
@anonymous
class KeyboardEventInit extends EventModifierInit {
  external num? get charCode;
  external set charCode(num? value);
  external String? get code;
  external set code(String? value);
  external bool? get isComposing;
  external set isComposing(bool? value);
  external String? get key;
  external set key(String? value);
  external num? get keyCode;
  external set keyCode(num? value);
  external num? get location;
  external set location(num? value);
  external bool? get repeat;
  external set repeat(bool? value);
  external factory KeyboardEventInit({
    num? charCode,
    String? code,
    bool? isComposing,
    String? key,
    num? keyCode,
    num? location,
    bool? repeat,
  });
}

@JS()
@anonymous
class Keyframe {
  external CompositeOperationOrAuto? get composite;
  external set composite(CompositeOperationOrAuto? value);
  external String? get easing;
  external set easing(String? value);
  external num? get offset;
  external set offset(num? value);
  external factory Keyframe({
    CompositeOperationOrAuto? composite,
    String? easing,
    num? offset,
  });
}

@JS()
@anonymous
class KeyframeAnimationOptions extends KeyframeEffectOptions {
  external String? get id;
  external set id(String? value);
  external factory KeyframeAnimationOptions({
    String? id,
  });
}

@JS()
@anonymous
class KeyframeEffectOptions extends EffectTiming {
  external CompositeOperation? get composite;
  external set composite(CompositeOperation? value);
  external IterationCompositeOperation? get iterationComposite;
  external set iterationComposite(IterationCompositeOperation? value);
  external String? get pseudoElement;
  external set pseudoElement(String? value);
  external factory KeyframeEffectOptions({
    CompositeOperation? composite,
    IterationCompositeOperation? iterationComposite,
    String? pseudoElement,
  });
}

@JS()
@anonymous
class MediaCapabilitiesDecodingInfo extends MediaCapabilitiesInfo {
  external MediaDecodingConfiguration? get configuration;
  external set configuration(MediaDecodingConfiguration? value);
  external factory MediaCapabilitiesDecodingInfo({
    MediaDecodingConfiguration? configuration,
  });
}

@JS()
@anonymous
class MediaCapabilitiesEncodingInfo extends MediaCapabilitiesInfo {
  external MediaEncodingConfiguration? get configuration;
  external set configuration(MediaEncodingConfiguration? value);
  external factory MediaCapabilitiesEncodingInfo({
    MediaEncodingConfiguration? configuration,
  });
}

@JS()
@anonymous
class MediaCapabilitiesInfo {
  external bool get powerEfficient;
  external set powerEfficient(bool value);
  external bool get smooth;
  external set smooth(bool value);
  external bool get supported;
  external set supported(bool value);
  external factory MediaCapabilitiesInfo({
    bool powerEfficient,
    bool smooth,
    bool supported,
  });
}

@JS()
@anonymous
class MediaConfiguration {
  external AudioConfiguration? get audio;
  external set audio(AudioConfiguration? value);
  external VideoConfiguration? get video;
  external set video(VideoConfiguration? value);
  external factory MediaConfiguration({
    AudioConfiguration? audio,
    VideoConfiguration? video,
  });
}

@JS()
@anonymous
class MediaDecodingConfiguration extends MediaConfiguration {
  external MediaDecodingType get type;
  external set type(MediaDecodingType value);
  external factory MediaDecodingConfiguration({
    MediaDecodingType type,
  });
}

@JS()
@anonymous
class MediaElementAudioSourceOptions {
  external MediaElement get mediaElement;
  external set mediaElement(MediaElement value);
  external factory MediaElementAudioSourceOptions({
    MediaElement mediaElement,
  });
}

@JS()
@anonymous
class MediaEncodingConfiguration extends MediaConfiguration {
  external MediaEncodingType get type;
  external set type(MediaEncodingType value);
  external factory MediaEncodingConfiguration({
    MediaEncodingType type,
  });
}

@JS()
@anonymous
class MediaEncryptedEventInit extends EventInit {
  external ByteBuffer? get initData;
  external set initData(ByteBuffer? value);
  external String? get initDataType;
  external set initDataType(String? value);
  external factory MediaEncryptedEventInit({
    ByteBuffer? initData,
    String? initDataType,
  });
}

@JS()
@anonymous
class MediaImage {
  external String? get sizes;
  external set sizes(String? value);
  external String get src;
  external set src(String value);
  external String? get type;
  external set type(String? value);
  external factory MediaImage({
    String? sizes,
    String src,
    String? type,
  });
}

@JS()
@anonymous
class MediaKeyMessageEventInit extends EventInit {
  external ByteBuffer get message;
  external set message(ByteBuffer value);
  external MediaKeyMessageType get messageType;
  external set messageType(MediaKeyMessageType value);
  external factory MediaKeyMessageEventInit({
    ByteBuffer message,
    MediaKeyMessageType messageType,
  });
}

@JS()
@anonymous
class MediaKeySystemConfiguration {
  external List<MediaKeySystemMediaCapability>? get audioCapabilities;
  external set audioCapabilities(List<MediaKeySystemMediaCapability>? value);
  external MediaKeysRequirement? get distinctiveIdentifier;
  external set distinctiveIdentifier(MediaKeysRequirement? value);
  external List<String>? get initDataTypes;
  external set initDataTypes(List<String>? value);
  external String? get label;
  external set label(String? value);
  external MediaKeysRequirement? get persistentState;
  external set persistentState(MediaKeysRequirement? value);
  external List<String>? get sessionTypes;
  external set sessionTypes(List<String>? value);
  external List<MediaKeySystemMediaCapability>? get videoCapabilities;
  external set videoCapabilities(List<MediaKeySystemMediaCapability>? value);
  external factory MediaKeySystemConfiguration({
    List<MediaKeySystemMediaCapability>? audioCapabilities,
    MediaKeysRequirement? distinctiveIdentifier,
    List<String>? initDataTypes,
    String? label,
    MediaKeysRequirement? persistentState,
    List<String>? sessionTypes,
    List<MediaKeySystemMediaCapability>? videoCapabilities,
  });
}

@JS()
@anonymous
class MediaKeySystemMediaCapability {
  external String? get contentType;
  external set contentType(String? value);
  external String? get encryptionScheme;
  external set encryptionScheme(String? value);
  external String? get robustness;
  external set robustness(String? value);
  external factory MediaKeySystemMediaCapability({
    String? contentType,
    String? encryptionScheme,
    String? robustness,
  });
}

@JS()
@anonymous
class MediaMetadataInit {
  external String? get album;
  external set album(String? value);
  external String? get artist;
  external set artist(String? value);
  external List<MediaImage>? get artwork;
  external set artwork(List<MediaImage>? value);
  external String? get title;
  external set title(String? value);
  external factory MediaMetadataInit({
    String? album,
    String? artist,
    List<MediaImage>? artwork,
    String? title,
  });
}

@JS()
@anonymous
class MediaPositionState {
  external num? get duration;
  external set duration(num? value);
  external num? get playbackRate;
  external set playbackRate(num? value);
  external num? get position;
  external set position(num? value);
  external factory MediaPositionState({
    num? duration,
    num? playbackRate,
    num? position,
  });
}

@JS()
@anonymous
class MediaQueryListEventInit extends EventInit {
  external bool? get matches;
  external set matches(bool? value);
  external String? get media;
  external set media(String? value);
  external factory MediaQueryListEventInit({
    bool? matches,
    String? media,
  });
}

@JS()
@anonymous
class MediaRecorderErrorEventInit extends EventInit {
  external DomException get error;
  external set error(DomException value);
  external factory MediaRecorderErrorEventInit({
    DomException error,
  });
}

@JS()
@anonymous
class MediaRecorderOptions {
  external num? get audioBitsPerSecond;
  external set audioBitsPerSecond(num? value);
  external num? get bitsPerSecond;
  external set bitsPerSecond(num? value);
  external String? get mimeType;
  external set mimeType(String? value);
  external num? get videoBitsPerSecond;
  external set videoBitsPerSecond(num? value);
  external factory MediaRecorderOptions({
    num? audioBitsPerSecond,
    num? bitsPerSecond,
    String? mimeType,
    num? videoBitsPerSecond,
  });
}

@JS()
@anonymous
class MediaSessionActionDetails {
  external MediaSessionAction get action;
  external set action(MediaSessionAction value);
  external bool? get fastSeek;
  external set fastSeek(bool? value);
  external num? get seekOffset;
  external set seekOffset(num? value);
  external num? get seekTime;
  external set seekTime(num? value);
  external factory MediaSessionActionDetails({
    MediaSessionAction action,
    bool? fastSeek,
    num? seekOffset,
    num? seekTime,
  });
}

@JS()
@anonymous
class MediaStreamAudioSourceOptions {
  external MediaStream get mediaStream;
  external set mediaStream(MediaStream value);
  external factory MediaStreamAudioSourceOptions({
    MediaStream mediaStream,
  });
}

@JS()
@anonymous
class MediaStreamConstraints {
  external dynamic get audio;
  external set audio(dynamic value);
  external String? get peerIdentity;
  external set peerIdentity(String? value);
  external dynamic get video;
  external set video(dynamic value);
  external factory MediaStreamConstraints({
    dynamic audio,
    String? peerIdentity,
    dynamic video,
  });
}

@JS()
@anonymous
class MediaStreamTrackEventInit extends EventInit {
  external MediaStreamTrack get track;
  external set track(MediaStreamTrack value);
  external factory MediaStreamTrackEventInit({
    MediaStreamTrack track,
  });
}

@JS()
@anonymous
class MediaTrackCapabilities {
  external DoubleRange? get aspectRatio;
  external set aspectRatio(DoubleRange? value);
  external List<bool>? get autoGainControl;
  external set autoGainControl(List<bool>? value);
  external ULongRange? get channelCount;
  external set channelCount(ULongRange? value);
  external List<String>? get cursor;
  external set cursor(List<String>? value);
  external String? get deviceId;
  external set deviceId(String? value);
  external String? get displaySurface;
  external set displaySurface(String? value);
  external List<bool>? get echoCancellation;
  external set echoCancellation(List<bool>? value);
  external List<String>? get facingMode;
  external set facingMode(List<String>? value);
  external DoubleRange? get frameRate;
  external set frameRate(DoubleRange? value);
  external String? get groupId;
  external set groupId(String? value);
  external ULongRange? get height;
  external set height(ULongRange? value);
  external DoubleRange? get latency;
  external set latency(DoubleRange? value);
  external bool? get logicalSurface;
  external set logicalSurface(bool? value);
  external List<bool>? get noiseSuppression;
  external set noiseSuppression(List<bool>? value);
  external List<String>? get resizeMode;
  external set resizeMode(List<String>? value);
  external ULongRange? get sampleRate;
  external set sampleRate(ULongRange? value);
  external ULongRange? get sampleSize;
  external set sampleSize(ULongRange? value);
  external ULongRange? get width;
  external set width(ULongRange? value);
  external factory MediaTrackCapabilities({
    DoubleRange? aspectRatio,
    List<bool>? autoGainControl,
    ULongRange? channelCount,
    List<String>? cursor,
    String? deviceId,
    String? displaySurface,
    List<bool>? echoCancellation,
    List<String>? facingMode,
    DoubleRange? frameRate,
    String? groupId,
    ULongRange? height,
    DoubleRange? latency,
    bool? logicalSurface,
    List<bool>? noiseSuppression,
    List<String>? resizeMode,
    ULongRange? sampleRate,
    ULongRange? sampleSize,
    ULongRange? width,
  });
}

@JS()
@anonymous
class MediaTrackConstraintSet {
  external ConstrainDouble? get aspectRatio;
  external set aspectRatio(ConstrainDouble? value);
  external ConstrainULong? get channelCount;
  external set channelCount(ConstrainULong? value);
  external ConstrainDOMString? get deviceId;
  external set deviceId(ConstrainDOMString? value);
  external ConstrainBoolean? get echoCancellation;
  external set echoCancellation(ConstrainBoolean? value);
  external ConstrainDOMString? get facingMode;
  external set facingMode(ConstrainDOMString? value);
  external ConstrainDouble? get frameRate;
  external set frameRate(ConstrainDouble? value);
  external ConstrainDOMString? get groupId;
  external set groupId(ConstrainDOMString? value);
  external ConstrainULong? get height;
  external set height(ConstrainULong? value);
  external ConstrainDouble? get latency;
  external set latency(ConstrainDouble? value);
  external ConstrainULong? get sampleRate;
  external set sampleRate(ConstrainULong? value);
  external ConstrainULong? get sampleSize;
  external set sampleSize(ConstrainULong? value);
  external ConstrainBoolean? get suppressLocalAudioPlayback;
  external set suppressLocalAudioPlayback(ConstrainBoolean? value);
  external ConstrainULong? get width;
  external set width(ConstrainULong? value);
  external factory MediaTrackConstraintSet({
    ConstrainDouble? aspectRatio,
    ConstrainULong? channelCount,
    ConstrainDOMString? deviceId,
    ConstrainBoolean? echoCancellation,
    ConstrainDOMString? facingMode,
    ConstrainDouble? frameRate,
    ConstrainDOMString? groupId,
    ConstrainULong? height,
    ConstrainDouble? latency,
    ConstrainULong? sampleRate,
    ConstrainULong? sampleSize,
    ConstrainBoolean? suppressLocalAudioPlayback,
    ConstrainULong? width,
  });
}

@JS()
@anonymous
class MediaTrackConstraints extends MediaTrackConstraintSet {
  external List<MediaTrackConstraintSet>? get advanced;
  external set advanced(List<MediaTrackConstraintSet>? value);
  external factory MediaTrackConstraints({
    List<MediaTrackConstraintSet>? advanced,
  });
}

@JS()
@anonymous
class MediaTrackSettings {
  external num? get aspectRatio;
  external set aspectRatio(num? value);
  external String? get deviceId;
  external set deviceId(String? value);
  external bool? get echoCancellation;
  external set echoCancellation(bool? value);
  external String? get facingMode;
  external set facingMode(String? value);
  external num? get frameRate;
  external set frameRate(num? value);
  external String? get groupId;
  external set groupId(String? value);
  external num? get height;
  external set height(num? value);
  external bool? get restrictOwnAudio;
  external set restrictOwnAudio(bool? value);
  external num? get sampleRate;
  external set sampleRate(num? value);
  external num? get sampleSize;
  external set sampleSize(num? value);
  external num? get width;
  external set width(num? value);
  external factory MediaTrackSettings({
    num? aspectRatio,
    String? deviceId,
    bool? echoCancellation,
    String? facingMode,
    num? frameRate,
    String? groupId,
    num? height,
    bool? restrictOwnAudio,
    num? sampleRate,
    num? sampleSize,
    num? width,
  });
}

@JS()
@anonymous
class MediaTrackSupportedConstraints {
  external bool? get aspectRatio;
  external set aspectRatio(bool? value);
  external bool? get deviceId;
  external set deviceId(bool? value);
  external bool? get echoCancellation;
  external set echoCancellation(bool? value);
  external bool? get facingMode;
  external set facingMode(bool? value);
  external bool? get frameRate;
  external set frameRate(bool? value);
  external bool? get groupId;
  external set groupId(bool? value);
  external bool? get height;
  external set height(bool? value);
  external bool? get sampleRate;
  external set sampleRate(bool? value);
  external bool? get sampleSize;
  external set sampleSize(bool? value);
  external bool? get suppressLocalAudioPlayback;
  external set suppressLocalAudioPlayback(bool? value);
  external bool? get width;
  external set width(bool? value);
  external factory MediaTrackSupportedConstraints({
    bool? aspectRatio,
    bool? deviceId,
    bool? echoCancellation,
    bool? facingMode,
    bool? frameRate,
    bool? groupId,
    bool? height,
    bool? sampleRate,
    bool? sampleSize,
    bool? suppressLocalAudioPlayback,
    bool? width,
  });
}

@JS()
@anonymous
class MessageEventInit<T> extends EventInit {
  external T? get data;
  external set data(T? value);
  external String? get lastEventId;
  external set lastEventId(String? value);
  external String? get origin;
  external set origin(String? value);
  external List<MessagePort>? get ports;
  external set ports(List<MessagePort>? value);
  external MessageEventSource? get source;
  external set source(MessageEventSource? value);
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
class MouseEventInit extends EventModifierInit {
  external num? get button;
  external set button(num? value);
  external num? get buttons;
  external set buttons(num? value);
  external num? get clientX;
  external set clientX(num? value);
  external num? get clientY;
  external set clientY(num? value);
  external num? get movementX;
  external set movementX(num? value);
  external num? get movementY;
  external set movementY(num? value);
  external EventTarget? get relatedTarget;
  external set relatedTarget(EventTarget? value);
  external num? get screenX;
  external set screenX(num? value);
  external num? get screenY;
  external set screenY(num? value);
  external factory MouseEventInit({
    num? button,
    num? buttons,
    num? clientX,
    num? clientY,
    num? movementX,
    num? movementY,
    EventTarget? relatedTarget,
    num? screenX,
    num? screenY,
  });
}

@JS()
@anonymous
class MultiCacheQueryOptions extends CacheQueryOptions {
  external String? get cacheName;
  external set cacheName(String? value);
  external factory MultiCacheQueryOptions({
    String? cacheName,
  });
}

@JS()
@anonymous
class MutationObserverInit {
  external List<String>? get attributeFilter;
  external set attributeFilter(List<String>? value);
  external bool? get attributeOldValue;
  external set attributeOldValue(bool? value);
  external bool? get attributes;
  external set attributes(bool? value);
  external bool? get characterData;
  external set characterData(bool? value);
  external bool? get characterDataOldValue;
  external set characterDataOldValue(bool? value);
  external bool? get childList;
  external set childList(bool? value);
  external bool? get subtree;
  external set subtree(bool? value);
  external factory MutationObserverInit({
    List<String>? attributeFilter,
    bool? attributeOldValue,
    bool? attributes,
    bool? characterData,
    bool? characterDataOldValue,
    bool? childList,
    bool? subtree,
  });
}

@JS()
@anonymous
class NotificationAction {
  external String get action;
  external set action(String value);
  external String? get icon;
  external set icon(String? value);
  external String get title;
  external set title(String value);
  external factory NotificationAction({
    String action,
    String? icon,
    String title,
  });
}

@JS()
@anonymous
class NotificationOptions {
  external List<NotificationAction>? get actions;
  external set actions(List<NotificationAction>? value);
  external String? get badge;
  external set badge(String? value);
  external String? get body;
  external set body(String? value);
  external dynamic get data;
  external set data(dynamic value);
  external NotificationDirection? get dir;
  external set dir(NotificationDirection? value);
  external String? get icon;
  external set icon(String? value);
  external String? get image;
  external set image(String? value);
  external String? get lang;
  external set lang(String? value);
  external bool? get renotify;
  external set renotify(bool? value);
  external bool? get requireInteraction;
  external set requireInteraction(bool? value);
  external bool? get silent;
  external set silent(bool? value);
  external String? get tag;
  external set tag(String? value);
  external DOMTimeStamp? get timestamp;
  external set timestamp(DOMTimeStamp? value);
  external VibratePattern? get vibrate;
  external set vibrate(VibratePattern? value);
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
    DOMTimeStamp? timestamp,
    VibratePattern? vibrate,
  });
}

@JS()
@anonymous
class OfflineAudioCompletionEventInit extends EventInit {
  external AudioBuffer get renderedBuffer;
  external set renderedBuffer(AudioBuffer value);
  external factory OfflineAudioCompletionEventInit({
    AudioBuffer renderedBuffer,
  });
}

@JS()
@anonymous
class OfflineAudioContextOptions {
  external num get length;
  external set length(num value);
  external num? get numberOfChannels;
  external set numberOfChannels(num? value);
  external num get sampleRate;
  external set sampleRate(num value);
  external factory OfflineAudioContextOptions({
    num length,
    num? numberOfChannels,
    num sampleRate,
  });
}

@JS()
@anonymous
class OptionalEffectTiming {
  external num? get delay;
  external set delay(num? value);
  external PlaybackDirection? get direction;
  external set direction(PlaybackDirection? value);
  external dynamic get duration;
  external set duration(dynamic value);
  external String? get easing;
  external set easing(String? value);
  external num? get endDelay;
  external set endDelay(num? value);
  external FillMode? get fill;
  external set fill(FillMode? value);
  external num? get iterationStart;
  external set iterationStart(num? value);
  external num? get iterations;
  external set iterations(num? value);
  external num? get playbackRate;
  external set playbackRate(num? value);
  external factory OptionalEffectTiming({
    num? delay,
    PlaybackDirection? direction,
    dynamic duration,
    String? easing,
    num? endDelay,
    FillMode? fill,
    num? iterationStart,
    num? iterations,
    num? playbackRate,
  });
}

@JS()
@anonymous
class OscillatorOptions extends AudioNodeOptions {
  external num? get detune;
  external set detune(num? value);
  external num? get frequency;
  external set frequency(num? value);
  external PeriodicWave? get periodicWave;
  external set periodicWave(PeriodicWave? value);
  external OscillatorType? get type;
  external set type(OscillatorType? value);
  external factory OscillatorOptions({
    num? detune,
    num? frequency,
    PeriodicWave? periodicWave,
    OscillatorType? type,
  });
}

@JS()
@anonymous
class PageTransitionEventInit extends EventInit {
  external bool? get persisted;
  external set persisted(bool? value);
  external factory PageTransitionEventInit({
    bool? persisted,
  });
}

@JS()
@anonymous
class PannerOptions extends AudioNodeOptions {
  external num? get coneInnerAngle;
  external set coneInnerAngle(num? value);
  external num? get coneOuterAngle;
  external set coneOuterAngle(num? value);
  external num? get coneOuterGain;
  external set coneOuterGain(num? value);
  external DistanceModelType? get distanceModel;
  external set distanceModel(DistanceModelType? value);
  external num? get maxDistance;
  external set maxDistance(num? value);
  external num? get orientationX;
  external set orientationX(num? value);
  external num? get orientationY;
  external set orientationY(num? value);
  external num? get orientationZ;
  external set orientationZ(num? value);
  external PanningModelType? get panningModel;
  external set panningModel(PanningModelType? value);
  external num? get positionX;
  external set positionX(num? value);
  external num? get positionY;
  external set positionY(num? value);
  external num? get positionZ;
  external set positionZ(num? value);
  external num? get refDistance;
  external set refDistance(num? value);
  external num? get rolloffFactor;
  external set rolloffFactor(num? value);
  external factory PannerOptions({
    num? coneInnerAngle,
    num? coneOuterAngle,
    num? coneOuterGain,
    DistanceModelType? distanceModel,
    num? maxDistance,
    num? orientationX,
    num? orientationY,
    num? orientationZ,
    PanningModelType? panningModel,
    num? positionX,
    num? positionY,
    num? positionZ,
    num? refDistance,
    num? rolloffFactor,
  });
}

@JS()
@anonymous
class PaymentCurrencyAmount {
  external String get currency;
  external set currency(String value);
  external String get value;
  external set value(String value);
  external factory PaymentCurrencyAmount({
    String currency,
    String value,
  });
}

@JS()
@anonymous
class PaymentDetailsBase {
  external List<PaymentItem>? get displayItems;
  external set displayItems(List<PaymentItem>? value);
  external List<PaymentDetailsModifier>? get modifiers;
  external set modifiers(List<PaymentDetailsModifier>? value);
  external factory PaymentDetailsBase({
    List<PaymentItem>? displayItems,
    List<PaymentDetailsModifier>? modifiers,
  });
}

@JS()
@anonymous
class PaymentDetailsInit extends PaymentDetailsBase {
  external String? get id;
  external set id(String? value);
  external PaymentItem get total;
  external set total(PaymentItem value);
  external factory PaymentDetailsInit({
    String? id,
    PaymentItem total,
  });
}

@JS()
@anonymous
class PaymentDetailsModifier {
  external List<PaymentItem>? get additionalDisplayItems;
  external set additionalDisplayItems(List<PaymentItem>? value);
  external dynamic get data;
  external set data(dynamic value);
  external String get supportedMethods;
  external set supportedMethods(String value);
  external PaymentItem? get total;
  external set total(PaymentItem? value);
  external factory PaymentDetailsModifier({
    List<PaymentItem>? additionalDisplayItems,
    dynamic data,
    String supportedMethods,
    PaymentItem? total,
  });
}

@JS()
@anonymous
class PaymentDetailsUpdate extends PaymentDetailsBase {
  external dynamic get paymentMethodErrors;
  external set paymentMethodErrors(dynamic value);
  external PaymentItem? get total;
  external set total(PaymentItem? value);
  external factory PaymentDetailsUpdate({
    dynamic paymentMethodErrors,
    PaymentItem? total,
  });
}

@JS()
@anonymous
class PaymentItem {
  external PaymentCurrencyAmount get amount;
  external set amount(PaymentCurrencyAmount value);
  external String get label;
  external set label(String value);
  external bool? get pending;
  external set pending(bool? value);
  external factory PaymentItem({
    PaymentCurrencyAmount amount,
    String label,
    bool? pending,
  });
}

@JS()
@anonymous
class PaymentMethodChangeEventInit extends PaymentRequestUpdateEventInit {
  external dynamic get methodDetails;
  external set methodDetails(dynamic value);
  external String? get methodName;
  external set methodName(String? value);
  external factory PaymentMethodChangeEventInit({
    dynamic methodDetails,
    String? methodName,
  });
}

@JS()
@anonymous
class PaymentMethodData {
  external dynamic get data;
  external set data(dynamic value);
  external String get supportedMethods;
  external set supportedMethods(String value);
  external factory PaymentMethodData({
    dynamic data,
    String supportedMethods,
  });
}

@JS()
@anonymous
class PaymentRequestUpdateEventInit extends EventInit {
  external factory PaymentRequestUpdateEventInit();
}

@JS()
@anonymous
class PaymentValidationErrors {
  external String? get error;
  external set error(String? value);
  external dynamic get paymentMethod;
  external set paymentMethod(dynamic value);
  external factory PaymentValidationErrors({
    String? error,
    dynamic paymentMethod,
  });
}

@JS()
@anonymous
class Pbkdf2Params extends Algorithm {
  external HashAlgorithmIdentifier get hash;
  external set hash(HashAlgorithmIdentifier value);
  external num get iterations;
  external set iterations(num value);
  external BufferSource get salt;
  external set salt(BufferSource value);
  external factory Pbkdf2Params({
    HashAlgorithmIdentifier hash,
    num iterations,
    BufferSource salt,
  });
}

@JS()
@anonymous
class PerformanceMarkOptions {
  external dynamic get detail;
  external set detail(dynamic value);
  external DOMHighResTimeStamp? get startTime;
  external set startTime(DOMHighResTimeStamp? value);
  external factory PerformanceMarkOptions({
    dynamic detail,
    DOMHighResTimeStamp? startTime,
  });
}

@JS()
@anonymous
class PerformanceMeasureOptions {
  external dynamic get detail;
  external set detail(dynamic value);
  external DOMHighResTimeStamp? get duration;
  external set duration(DOMHighResTimeStamp? value);
  external dynamic get end;
  external set end(dynamic value);
  external dynamic get start;
  external set start(dynamic value);
  external factory PerformanceMeasureOptions({
    dynamic detail,
    DOMHighResTimeStamp? duration,
    dynamic end,
    dynamic start,
  });
}

@JS()
@anonymous
class PerformanceObserverInit {
  external bool? get buffered;
  external set buffered(bool? value);
  external List<String>? get entryTypes;
  external set entryTypes(List<String>? value);
  external String? get type;
  external set type(String? value);
  external factory PerformanceObserverInit({
    bool? buffered,
    List<String>? entryTypes,
    String? type,
  });
}

@JS()
@anonymous
class PeriodicWaveConstraints {
  external bool? get disableNormalization;
  external set disableNormalization(bool? value);
  external factory PeriodicWaveConstraints({
    bool? disableNormalization,
  });
}

@JS()
@anonymous
class PeriodicWaveOptions extends PeriodicWaveConstraints {
  external dynamic get imag;
  external set imag(dynamic value);
  external dynamic get real;
  external set real(dynamic value);
  external factory PeriodicWaveOptions({
    dynamic imag,
    dynamic real,
  });
}

@JS()
@anonymous
class PermissionDescriptor {
  external PermissionName get name;
  external set name(PermissionName value);
  external factory PermissionDescriptor({
    PermissionName name,
  });
}

@JS()
@anonymous
class PointerEventInit extends MouseEventInit {
  external List<PointerEvent>? get coalescedEvents;
  external set coalescedEvents(List<PointerEvent>? value);
  external num? get height;
  external set height(num? value);
  external bool? get isPrimary;
  external set isPrimary(bool? value);
  external num? get pointerId;
  external set pointerId(num? value);
  external String? get pointerType;
  external set pointerType(String? value);
  external List<PointerEvent>? get predictedEvents;
  external set predictedEvents(List<PointerEvent>? value);
  external num? get pressure;
  external set pressure(num? value);
  external num? get tangentialPressure;
  external set tangentialPressure(num? value);
  external num? get tiltX;
  external set tiltX(num? value);
  external num? get tiltY;
  external set tiltY(num? value);
  external num? get twist;
  external set twist(num? value);
  external num? get width;
  external set width(num? value);
  external factory PointerEventInit({
    List<PointerEvent>? coalescedEvents,
    num? height,
    bool? isPrimary,
    num? pointerId,
    String? pointerType,
    List<PointerEvent>? predictedEvents,
    num? pressure,
    num? tangentialPressure,
    num? tiltX,
    num? tiltY,
    num? twist,
    num? width,
  });
}

@JS()
@anonymous
class PopStateEventInit extends EventInit {
  external dynamic get state;
  external set state(dynamic value);
  external factory PopStateEventInit({
    dynamic state,
  });
}

@JS()
@anonymous
class PositionOptions {
  external bool? get enableHighAccuracy;
  external set enableHighAccuracy(bool? value);
  external num? get maximumAge;
  external set maximumAge(num? value);
  external num? get timeout;
  external set timeout(num? value);
  external factory PositionOptions({
    bool? enableHighAccuracy,
    num? maximumAge,
    num? timeout,
  });
}

@JS()
@anonymous
class PostMessageOptions {
  external List<dynamic>? get transfer;
  external set transfer(List<dynamic>? value);
  external factory PostMessageOptions({
    List<dynamic>? transfer,
  });
}

@JS()
@anonymous
class ProgressEventInit extends EventInit {
  external bool? get lengthComputable;
  external set lengthComputable(bool? value);
  external num? get loaded;
  external set loaded(num? value);
  external num? get total;
  external set total(num? value);
  external factory ProgressEventInit({
    bool? lengthComputable,
    num? loaded,
    num? total,
  });
}

@JS()
@anonymous
class PromiseRejectionEventInit extends EventInit {
  external Promise<dynamic> get promise;
  external set promise(Promise<dynamic> value);
  external dynamic get reason;
  external set reason(dynamic value);
  external factory PromiseRejectionEventInit({
    Promise<dynamic> promise,
    dynamic reason,
  });
}

@JS()
@anonymous
class PropertyIndexedKeyframes {
  external dynamic get composite;
  external set composite(dynamic value);
  external dynamic get easing;
  external set easing(dynamic value);
  external dynamic get offset;
  external set offset(dynamic value);
  external factory PropertyIndexedKeyframes({
    dynamic composite,
    dynamic easing,
    dynamic offset,
  });
}

@JS()
@anonymous
class PublicKeyCredentialCreationOptions {
  external AttestationConveyancePreference? get attestation;
  external set attestation(AttestationConveyancePreference? value);
  external AuthenticatorSelectionCriteria? get authenticatorSelection;
  external set authenticatorSelection(AuthenticatorSelectionCriteria? value);
  external BufferSource get challenge;
  external set challenge(BufferSource value);
  external List<PublicKeyCredentialDescriptor>? get excludeCredentials;
  external set excludeCredentials(List<PublicKeyCredentialDescriptor>? value);
  external AuthenticationExtensionsClientInputs? get extensions;
  external set extensions(AuthenticationExtensionsClientInputs? value);
  external List<PublicKeyCredentialParameters> get pubKeyCredParams;
  external set pubKeyCredParams(List<PublicKeyCredentialParameters> value);
  external PublicKeyCredentialRpEntity get rp;
  external set rp(PublicKeyCredentialRpEntity value);
  external num? get timeout;
  external set timeout(num? value);
  external PublicKeyCredentialUserEntity get user;
  external set user(PublicKeyCredentialUserEntity value);
  external factory PublicKeyCredentialCreationOptions({
    AttestationConveyancePreference? attestation,
    AuthenticatorSelectionCriteria? authenticatorSelection,
    BufferSource challenge,
    List<PublicKeyCredentialDescriptor>? excludeCredentials,
    AuthenticationExtensionsClientInputs? extensions,
    List<PublicKeyCredentialParameters> pubKeyCredParams,
    PublicKeyCredentialRpEntity rp,
    num? timeout,
    PublicKeyCredentialUserEntity user,
  });
}

@JS()
@anonymous
class PublicKeyCredentialDescriptor {
  external BufferSource get id;
  external set id(BufferSource value);
  external List<AuthenticatorTransport>? get transports;
  external set transports(List<AuthenticatorTransport>? value);
  external PublicKeyCredentialType get type;
  external set type(PublicKeyCredentialType value);
  external factory PublicKeyCredentialDescriptor({
    BufferSource id,
    List<AuthenticatorTransport>? transports,
    PublicKeyCredentialType type,
  });
}

@JS()
@anonymous
class PublicKeyCredentialEntity {
  external String get name;
  external set name(String value);
  external factory PublicKeyCredentialEntity({
    String name,
  });
}

@JS()
@anonymous
class PublicKeyCredentialParameters {
  external COSEAlgorithmIdentifier get alg;
  external set alg(COSEAlgorithmIdentifier value);
  external PublicKeyCredentialType get type;
  external set type(PublicKeyCredentialType value);
  external factory PublicKeyCredentialParameters({
    COSEAlgorithmIdentifier alg,
    PublicKeyCredentialType type,
  });
}

@JS()
@anonymous
class PublicKeyCredentialRequestOptions {
  external List<PublicKeyCredentialDescriptor>? get allowCredentials;
  external set allowCredentials(List<PublicKeyCredentialDescriptor>? value);
  external BufferSource get challenge;
  external set challenge(BufferSource value);
  external AuthenticationExtensionsClientInputs? get extensions;
  external set extensions(AuthenticationExtensionsClientInputs? value);
  external String? get rpId;
  external set rpId(String? value);
  external num? get timeout;
  external set timeout(num? value);
  external UserVerificationRequirement? get userVerification;
  external set userVerification(UserVerificationRequirement? value);
  external factory PublicKeyCredentialRequestOptions({
    List<PublicKeyCredentialDescriptor>? allowCredentials,
    BufferSource challenge,
    AuthenticationExtensionsClientInputs? extensions,
    String? rpId,
    num? timeout,
    UserVerificationRequirement? userVerification,
  });
}

@JS()
@anonymous
class PublicKeyCredentialRpEntity extends PublicKeyCredentialEntity {
  external String? get id;
  external set id(String? value);
  external factory PublicKeyCredentialRpEntity({
    String? id,
  });
}

@JS()
@anonymous
class PublicKeyCredentialUserEntity extends PublicKeyCredentialEntity {
  external String get displayName;
  external set displayName(String value);
  external BufferSource get id;
  external set id(BufferSource value);
  external factory PublicKeyCredentialUserEntity({
    String displayName,
    BufferSource id,
  });
}

@JS()
@anonymous
class PushSubscriptionJSON {
  external String? get endpoint;
  external set endpoint(String? value);
  external DOMTimeStamp? get expirationTime;
  external set expirationTime(DOMTimeStamp? value);
  external Record<String, String>? get keys;
  external set keys(Record<String, String>? value);
  external factory PushSubscriptionJSON({
    String? endpoint,
    DOMTimeStamp? expirationTime,
    Record<String, String>? keys,
  });
}

@JS()
@anonymous
class PushSubscriptionOptionsInit {
  external dynamic get applicationServerKey;
  external set applicationServerKey(dynamic value);
  external bool? get userVisibleOnly;
  external set userVisibleOnly(bool? value);
  external factory PushSubscriptionOptionsInit({
    dynamic applicationServerKey,
    bool? userVisibleOnly,
  });
}

@JS()
@anonymous
class QueuingStrategy<T> {
  external num? get highWaterMark;
  external set highWaterMark(num? value);
  external QueuingStrategySize<T>? get size;
  external set size(QueuingStrategySize<T>? value);
  external factory QueuingStrategy({
    num? highWaterMark,
    QueuingStrategySize<T>? size,
  });
}

@JS()
@anonymous
class QueuingStrategyInit {
  external num get highWaterMark;
  external set highWaterMark(num value);
  external factory QueuingStrategyInit({
    num highWaterMark,
  });
}

@JS()
@anonymous
class RTCAnswerOptions extends RTCOfferAnswerOptions {
  external factory RTCAnswerOptions();
}

@JS()
@anonymous
class RTCCertificateExpiration {
  external DOMTimeStamp? get expires;
  external set expires(DOMTimeStamp? value);
  external factory RTCCertificateExpiration({
    DOMTimeStamp? expires,
  });
}

@JS()
@anonymous
class RTCConfiguration {
  external RTCBundlePolicy? get bundlePolicy;
  external set bundlePolicy(RTCBundlePolicy? value);
  external List<RTCCertificate>? get certificates;
  external set certificates(List<RTCCertificate>? value);
  external num? get iceCandidatePoolSize;
  external set iceCandidatePoolSize(num? value);
  external List<RTCIceServer>? get iceServers;
  external set iceServers(List<RTCIceServer>? value);
  external RTCIceTransportPolicy? get iceTransportPolicy;
  external set iceTransportPolicy(RTCIceTransportPolicy? value);
  external RTCRtcpMuxPolicy? get rtcpMuxPolicy;
  external set rtcpMuxPolicy(RTCRtcpMuxPolicy? value);
  external factory RTCConfiguration({
    RTCBundlePolicy? bundlePolicy,
    List<RTCCertificate>? certificates,
    num? iceCandidatePoolSize,
    List<RTCIceServer>? iceServers,
    RTCIceTransportPolicy? iceTransportPolicy,
    RTCRtcpMuxPolicy? rtcpMuxPolicy,
  });
}

@JS()
@anonymous
class RTCDTMFToneChangeEventInit extends EventInit {
  external String? get tone;
  external set tone(String? value);
  external factory RTCDTMFToneChangeEventInit({
    String? tone,
  });
}

@JS()
@anonymous
class RTCDataChannelEventInit extends EventInit {
  external RtcDataChannel get channel;
  external set channel(RtcDataChannel value);
  external factory RTCDataChannelEventInit({
    RtcDataChannel channel,
  });
}

@JS()
@anonymous
class RTCDataChannelInit {
  external num? get id;
  external set id(num? value);
  external num? get maxPacketLifeTime;
  external set maxPacketLifeTime(num? value);
  external num? get maxRetransmits;
  external set maxRetransmits(num? value);
  external bool? get negotiated;
  external set negotiated(bool? value);
  external bool? get ordered;
  external set ordered(bool? value);
  external String? get protocol;
  external set protocol(String? value);
  external factory RTCDataChannelInit({
    num? id,
    num? maxPacketLifeTime,
    num? maxRetransmits,
    bool? negotiated,
    bool? ordered,
    String? protocol,
  });
}

@JS()
@anonymous
class RTCDtlsFingerprint {
  external String? get algorithm;
  external set algorithm(String? value);
  external String? get value;
  external set value(String? value);
  external factory RTCDtlsFingerprint({
    String? algorithm,
    String? value,
  });
}

@JS()
@anonymous
class RTCIceCandidateInit {
  external String? get candidate;
  external set candidate(String? value);
  external num? get sdpMLineIndex;
  external set sdpMLineIndex(num? value);
  external String? get sdpMid;
  external set sdpMid(String? value);
  external String? get usernameFragment;
  external set usernameFragment(String? value);
  external factory RTCIceCandidateInit({
    String? candidate,
    num? sdpMLineIndex,
    String? sdpMid,
    String? usernameFragment,
  });
}

@JS()
@anonymous
class RTCIceCandidatePairStats extends RTCStats {
  external num? get availableIncomingBitrate;
  external set availableIncomingBitrate(num? value);
  external num? get availableOutgoingBitrate;
  external set availableOutgoingBitrate(num? value);
  external num? get bytesReceived;
  external set bytesReceived(num? value);
  external num? get bytesSent;
  external set bytesSent(num? value);
  external num? get currentRoundTripTime;
  external set currentRoundTripTime(num? value);
  external String get localCandidateId;
  external set localCandidateId(String value);
  external bool? get nominated;
  external set nominated(bool? value);
  external String get remoteCandidateId;
  external set remoteCandidateId(String value);
  external num? get requestsReceived;
  external set requestsReceived(num? value);
  external num? get requestsSent;
  external set requestsSent(num? value);
  external num? get responsesReceived;
  external set responsesReceived(num? value);
  external num? get responsesSent;
  external set responsesSent(num? value);
  external RTCStatsIceCandidatePairState get state;
  external set state(RTCStatsIceCandidatePairState value);
  external num? get totalRoundTripTime;
  external set totalRoundTripTime(num? value);
  external String get transportId;
  external set transportId(String value);
  external factory RTCIceCandidatePairStats({
    num? availableIncomingBitrate,
    num? availableOutgoingBitrate,
    num? bytesReceived,
    num? bytesSent,
    num? currentRoundTripTime,
    String localCandidateId,
    bool? nominated,
    String remoteCandidateId,
    num? requestsReceived,
    num? requestsSent,
    num? responsesReceived,
    num? responsesSent,
    RTCStatsIceCandidatePairState state,
    num? totalRoundTripTime,
    String transportId,
  });
}

@JS()
@anonymous
class RTCIceServer {
  external String? get credential;
  external set credential(String? value);
  external RTCIceCredentialType? get credentialType;
  external set credentialType(RTCIceCredentialType? value);
  external dynamic get urls;
  external set urls(dynamic value);
  external String? get username;
  external set username(String? value);
  external factory RTCIceServer({
    String? credential,
    RTCIceCredentialType? credentialType,
    dynamic urls,
    String? username,
  });
}

@JS()
@anonymous
class RTCInboundRtpStreamStats extends RTCReceivedRtpStreamStats {
  external num? get firCount;
  external set firCount(num? value);
  external num? get framesDecoded;
  external set framesDecoded(num? value);
  external num? get nackCount;
  external set nackCount(num? value);
  external num? get pliCount;
  external set pliCount(num? value);
  external num? get qpSum;
  external set qpSum(num? value);
  external String? get remoteId;
  external set remoteId(String? value);
  external factory RTCInboundRtpStreamStats({
    num? firCount,
    num? framesDecoded,
    num? nackCount,
    num? pliCount,
    num? qpSum,
    String? remoteId,
  });
}

@JS()
@anonymous
class RTCLocalSessionDescriptionInit {
  external String? get sdp;
  external set sdp(String? value);
  external RTCSdpType? get type;
  external set type(RTCSdpType? value);
  external factory RTCLocalSessionDescriptionInit({
    String? sdp,
    RTCSdpType? type,
  });
}

@JS()
@anonymous
class RTCOfferAnswerOptions {
  external factory RTCOfferAnswerOptions();
}

@JS()
@anonymous
class RTCOfferOptions extends RTCOfferAnswerOptions {
  external bool? get iceRestart;
  external set iceRestart(bool? value);
  external bool? get offerToReceiveAudio;
  external set offerToReceiveAudio(bool? value);
  external bool? get offerToReceiveVideo;
  external set offerToReceiveVideo(bool? value);
  external factory RTCOfferOptions({
    bool? iceRestart,
    bool? offerToReceiveAudio,
    bool? offerToReceiveVideo,
  });
}

@JS()
@anonymous
class RTCOutboundRtpStreamStats extends RTCSentRtpStreamStats {
  external num? get firCount;
  external set firCount(num? value);
  external num? get framesEncoded;
  external set framesEncoded(num? value);
  external num? get nackCount;
  external set nackCount(num? value);
  external num? get pliCount;
  external set pliCount(num? value);
  external num? get qpSum;
  external set qpSum(num? value);
  external String? get remoteId;
  external set remoteId(String? value);
  external factory RTCOutboundRtpStreamStats({
    num? firCount,
    num? framesEncoded,
    num? nackCount,
    num? pliCount,
    num? qpSum,
    String? remoteId,
  });
}

@JS()
@anonymous
class RTCPeerConnectionIceErrorEventInit extends EventInit {
  external String? get address;
  external set address(String? value);
  external num get errorCode;
  external set errorCode(num value);
  external String? get errorText;
  external set errorText(String? value);
  external num? get port;
  external set port(num? value);
  external String? get url;
  external set url(String? value);
  external factory RTCPeerConnectionIceErrorEventInit({
    String? address,
    num errorCode,
    String? errorText,
    num? port,
    String? url,
  });
}

@JS()
@anonymous
class RTCPeerConnectionIceEventInit extends EventInit {
  external RtcIceCandidate? get candidate;
  external set candidate(RtcIceCandidate? value);
  external String? get url;
  external set url(String? value);
  external factory RTCPeerConnectionIceEventInit({
    RtcIceCandidate? candidate,
    String? url,
  });
}

@JS()
@anonymous
class RTCReceivedRtpStreamStats extends RTCRtpStreamStats {
  external num? get jitter;
  external set jitter(num? value);
  external num? get packetsDiscarded;
  external set packetsDiscarded(num? value);
  external num? get packetsLost;
  external set packetsLost(num? value);
  external num? get packetsReceived;
  external set packetsReceived(num? value);
  external factory RTCReceivedRtpStreamStats({
    num? jitter,
    num? packetsDiscarded,
    num? packetsLost,
    num? packetsReceived,
  });
}

@JS()
@anonymous
class RTCRtcpParameters {
  external String? get cname;
  external set cname(String? value);
  external bool? get reducedSize;
  external set reducedSize(bool? value);
  external factory RTCRtcpParameters({
    String? cname,
    bool? reducedSize,
  });
}

@JS()
@anonymous
class RTCRtpCapabilities {
  external List<RTCRtpCodecCapability> get codecs;
  external set codecs(List<RTCRtpCodecCapability> value);
  external List<RTCRtpHeaderExtensionCapability> get headerExtensions;
  external set headerExtensions(List<RTCRtpHeaderExtensionCapability> value);
  external factory RTCRtpCapabilities({
    List<RTCRtpCodecCapability> codecs,
    List<RTCRtpHeaderExtensionCapability> headerExtensions,
  });
}

@JS()
@anonymous
class RTCRtpCodecCapability {
  external num? get channels;
  external set channels(num? value);
  external num get clockRate;
  external set clockRate(num value);
  external String get mimeType;
  external set mimeType(String value);
  external String? get sdpFmtpLine;
  external set sdpFmtpLine(String? value);
  external factory RTCRtpCodecCapability({
    num? channels,
    num clockRate,
    String mimeType,
    String? sdpFmtpLine,
  });
}

@JS()
@anonymous
class RTCRtpCodecParameters {
  external num? get channels;
  external set channels(num? value);
  external num get clockRate;
  external set clockRate(num value);
  external String get mimeType;
  external set mimeType(String value);
  external num get payloadType;
  external set payloadType(num value);
  external String? get sdpFmtpLine;
  external set sdpFmtpLine(String? value);
  external factory RTCRtpCodecParameters({
    num? channels,
    num clockRate,
    String mimeType,
    num payloadType,
    String? sdpFmtpLine,
  });
}

@JS()
@anonymous
class RTCRtpCodingParameters {
  external String? get rid;
  external set rid(String? value);
  external factory RTCRtpCodingParameters({
    String? rid,
  });
}

@JS()
@anonymous
class RTCRtpContributingSource {
  external num? get audioLevel;
  external set audioLevel(num? value);
  external num get rtpTimestamp;
  external set rtpTimestamp(num value);
  external num get source;
  external set source(num value);
  external DOMHighResTimeStamp get timestamp;
  external set timestamp(DOMHighResTimeStamp value);
  external factory RTCRtpContributingSource({
    num? audioLevel,
    num rtpTimestamp,
    num source,
    DOMHighResTimeStamp timestamp,
  });
}

@JS()
@anonymous
class RTCRtpEncodingParameters extends RTCRtpCodingParameters {
  external bool? get active;
  external set active(bool? value);
  external num? get maxBitrate;
  external set maxBitrate(num? value);
  external RTCPriorityType? get priority;
  external set priority(RTCPriorityType? value);
  external num? get scaleResolutionDownBy;
  external set scaleResolutionDownBy(num? value);
  external factory RTCRtpEncodingParameters({
    bool? active,
    num? maxBitrate,
    RTCPriorityType? priority,
    num? scaleResolutionDownBy,
  });
}

@JS()
@anonymous
class RTCRtpHeaderExtensionCapability {
  external String? get uri;
  external set uri(String? value);
  external factory RTCRtpHeaderExtensionCapability({
    String? uri,
  });
}

@JS()
@anonymous
class RTCRtpHeaderExtensionParameters {
  external bool? get encrypted;
  external set encrypted(bool? value);
  external num get id;
  external set id(num value);
  external String get uri;
  external set uri(String value);
  external factory RTCRtpHeaderExtensionParameters({
    bool? encrypted,
    num id,
    String uri,
  });
}

@JS()
@anonymous
class RTCRtpParameters {
  external List<RTCRtpCodecParameters> get codecs;
  external set codecs(List<RTCRtpCodecParameters> value);
  external List<RTCRtpHeaderExtensionParameters> get headerExtensions;
  external set headerExtensions(List<RTCRtpHeaderExtensionParameters> value);
  external RTCRtcpParameters get rtcp;
  external set rtcp(RTCRtcpParameters value);
  external factory RTCRtpParameters({
    List<RTCRtpCodecParameters> codecs,
    List<RTCRtpHeaderExtensionParameters> headerExtensions,
    RTCRtcpParameters rtcp,
  });
}

@JS()
@anonymous
class RTCRtpReceiveParameters extends RTCRtpParameters {
  external factory RTCRtpReceiveParameters();
}

@JS()
@anonymous
class RTCRtpSendParameters extends RTCRtpParameters {
  external RTCDegradationPreference? get degradationPreference;
  external set degradationPreference(RTCDegradationPreference? value);
  external List<RTCRtpEncodingParameters> get encodings;
  external set encodings(List<RTCRtpEncodingParameters> value);
  external String get transactionId;
  external set transactionId(String value);
  external factory RTCRtpSendParameters({
    RTCDegradationPreference? degradationPreference,
    List<RTCRtpEncodingParameters> encodings,
    String transactionId,
  });
}

@JS()
@anonymous
class RTCRtpStreamStats extends RTCStats {
  external String? get codecId;
  external set codecId(String? value);
  external String get kind;
  external set kind(String value);
  external num get ssrc;
  external set ssrc(num value);
  external String? get transportId;
  external set transportId(String? value);
  external factory RTCRtpStreamStats({
    String? codecId,
    String kind,
    num ssrc,
    String? transportId,
  });
}

@JS()
@anonymous
class RTCRtpSynchronizationSource extends RTCRtpContributingSource {
  external factory RTCRtpSynchronizationSource();
}

@JS()
@anonymous
class RTCRtpTransceiverInit {
  external RTCRtpTransceiverDirection? get direction;
  external set direction(RTCRtpTransceiverDirection? value);
  external List<RTCRtpEncodingParameters>? get sendEncodings;
  external set sendEncodings(List<RTCRtpEncodingParameters>? value);
  external List<MediaStream>? get streams;
  external set streams(List<MediaStream>? value);
  external factory RTCRtpTransceiverInit({
    RTCRtpTransceiverDirection? direction,
    List<RTCRtpEncodingParameters>? sendEncodings,
    List<MediaStream>? streams,
  });
}

@JS()
@anonymous
class RTCSentRtpStreamStats extends RTCRtpStreamStats {
  external num? get bytesSent;
  external set bytesSent(num? value);
  external num? get packetsSent;
  external set packetsSent(num? value);
  external factory RTCSentRtpStreamStats({
    num? bytesSent,
    num? packetsSent,
  });
}

@JS()
@anonymous
class RTCSessionDescriptionInit {
  external String? get sdp;
  external set sdp(String? value);
  external RTCSdpType get type;
  external set type(RTCSdpType value);
  external factory RTCSessionDescriptionInit({
    String? sdp,
    RTCSdpType type,
  });
}

@JS()
@anonymous
class RTCStats {
  external String get id;
  external set id(String value);
  external DOMHighResTimeStamp get timestamp;
  external set timestamp(DOMHighResTimeStamp value);
  external RTCStatsType get type;
  external set type(RTCStatsType value);
  external factory RTCStats({
    String id,
    DOMHighResTimeStamp timestamp,
    RTCStatsType type,
  });
}

@JS()
@anonymous
class RTCTrackEventInit extends EventInit {
  external RTCRtpReceiver get receiver;
  external set receiver(RTCRtpReceiver value);
  external List<MediaStream>? get streams;
  external set streams(List<MediaStream>? value);
  external MediaStreamTrack get track;
  external set track(MediaStreamTrack value);
  external RTCRtpTransceiver get transceiver;
  external set transceiver(RTCRtpTransceiver value);
  external factory RTCTrackEventInit({
    RTCRtpReceiver receiver,
    List<MediaStream>? streams,
    MediaStreamTrack track,
    RTCRtpTransceiver transceiver,
  });
}

@JS()
@anonymous
class RTCTransportStats extends RTCStats {
  external num? get bytesReceived;
  external set bytesReceived(num? value);
  external num? get bytesSent;
  external set bytesSent(num? value);
  external String? get dtlsCipher;
  external set dtlsCipher(String? value);
  external RTCDtlsTransportState get dtlsState;
  external set dtlsState(RTCDtlsTransportState value);
  external String? get localCertificateId;
  external set localCertificateId(String? value);
  external String? get remoteCertificateId;
  external set remoteCertificateId(String? value);
  external String? get rtcpTransportStatsId;
  external set rtcpTransportStatsId(String? value);
  external String? get selectedCandidatePairId;
  external set selectedCandidatePairId(String? value);
  external String? get srtpCipher;
  external set srtpCipher(String? value);
  external String? get tlsVersion;
  external set tlsVersion(String? value);
  external factory RTCTransportStats({
    num? bytesReceived,
    num? bytesSent,
    String? dtlsCipher,
    RTCDtlsTransportState dtlsState,
    String? localCertificateId,
    String? remoteCertificateId,
    String? rtcpTransportStatsId,
    String? selectedCandidatePairId,
    String? srtpCipher,
    String? tlsVersion,
  });
}

@JS()
@anonymous
class ReadableStreamDefaultReadDoneResult {
  external bool get done;
  external set done(bool value);
  external dynamic get value;
  external set value(dynamic value);
  external factory ReadableStreamDefaultReadDoneResult({
    bool done,
    dynamic value,
  });
}

@JS()
@anonymous
class ReadableStreamDefaultReadValueResult<T> {
  external bool get done;
  external set done(bool value);
  external T get value;
  external set value(T value);
  external factory ReadableStreamDefaultReadValueResult({
    bool done,
    T value,
  });
}

@JS()
@anonymous
class ReadableWritablePair<R, W> {
  external ReadableStream<R> get readable;
  external set readable(ReadableStream<R> value);
  external WritableStream<W> get writable;
  external set writable(WritableStream<W> value);
  external factory ReadableWritablePair({
    ReadableStream<R> readable,
    WritableStream<W> writable,
  });
}

@JS()
@anonymous
class RegistrationOptions {
  external String? get scope;
  external set scope(String? value);
  external WorkerType? get type;
  external set type(WorkerType? value);
  external ServiceWorkerUpdateViaCache? get updateViaCache;
  external set updateViaCache(ServiceWorkerUpdateViaCache? value);
  external factory RegistrationOptions({
    String? scope,
    WorkerType? type,
    ServiceWorkerUpdateViaCache? updateViaCache,
  });
}

@JS()
@anonymous
class RequestInit {
  external BodyInit? get body;
  external set body(BodyInit? value);
  external RequestCache? get cache;
  external set cache(RequestCache? value);
  external RequestCredentials? get credentials;
  external set credentials(RequestCredentials? value);
  external HeadersInit? get headers;
  external set headers(HeadersInit? value);
  external String? get integrity;
  external set integrity(String? value);
  external bool? get keepalive;
  external set keepalive(bool? value);
  external String? get method;
  external set method(String? value);
  external RequestMode? get mode;
  external set mode(RequestMode? value);
  external RequestRedirect? get redirect;
  external set redirect(RequestRedirect? value);
  external String? get referrer;
  external set referrer(String? value);
  external ReferrerPolicy? get referrerPolicy;
  external set referrerPolicy(ReferrerPolicy? value);
  external AbortSignal? get signal;
  external set signal(AbortSignal? value);
  external dynamic get window;
  external set window(dynamic value);
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
class ResizeObserverOptions {
  external ResizeObserverBoxOptions? get box;
  external set box(ResizeObserverBoxOptions? value);
  external factory ResizeObserverOptions({
    ResizeObserverBoxOptions? box,
  });
}

@JS()
@anonymous
class ResponseInit {
  external HeadersInit? get headers;
  external set headers(HeadersInit? value);
  external num? get status;
  external set status(num? value);
  external String? get statusText;
  external set statusText(String? value);
  external factory ResponseInit({
    HeadersInit? headers,
    num? status,
    String? statusText,
  });
}

@JS()
@anonymous
class RsaHashedImportParams extends Algorithm {
  external HashAlgorithmIdentifier get hash;
  external set hash(HashAlgorithmIdentifier value);
  external factory RsaHashedImportParams({
    HashAlgorithmIdentifier hash,
  });
}

@JS()
@anonymous
class RsaHashedKeyAlgorithm extends RsaKeyAlgorithm {
  external KeyAlgorithm get hash;
  external set hash(KeyAlgorithm value);
  external factory RsaHashedKeyAlgorithm({
    KeyAlgorithm hash,
  });
}

@JS()
@anonymous
class RsaHashedKeyGenParams extends RsaKeyGenParams {
  external HashAlgorithmIdentifier get hash;
  external set hash(HashAlgorithmIdentifier value);
  external factory RsaHashedKeyGenParams({
    HashAlgorithmIdentifier hash,
  });
}

@JS()
@anonymous
class RsaKeyAlgorithm extends KeyAlgorithm {
  external num get modulusLength;
  external set modulusLength(num value);
  external BigInteger get publicExponent;
  external set publicExponent(BigInteger value);
  external factory RsaKeyAlgorithm({
    num modulusLength,
    BigInteger publicExponent,
  });
}

@JS()
@anonymous
class RsaKeyGenParams extends Algorithm {
  external num get modulusLength;
  external set modulusLength(num value);
  external BigInteger get publicExponent;
  external set publicExponent(BigInteger value);
  external factory RsaKeyGenParams({
    num modulusLength,
    BigInteger publicExponent,
  });
}

@JS()
@anonymous
class RsaOaepParams extends Algorithm {
  external BufferSource? get label;
  external set label(BufferSource? value);
  external factory RsaOaepParams({
    BufferSource? label,
  });
}

@JS()
@anonymous
class RsaOtherPrimesInfo {
  external String? get d;
  external set d(String? value);
  external String? get r;
  external set r(String? value);
  external String? get t;
  external set t(String? value);
  external factory RsaOtherPrimesInfo({
    String? d,
    String? r,
    String? t,
  });
}

@JS()
@anonymous
class RsaPssParams extends Algorithm {
  external num get saltLength;
  external set saltLength(num value);
  external factory RsaPssParams({
    num saltLength,
  });
}

@JS()
@anonymous
class SVGBoundingBoxOptions {
  external bool? get clipped;
  external set clipped(bool? value);
  external bool? get fill;
  external set fill(bool? value);
  external bool? get markers;
  external set markers(bool? value);
  external bool? get stroke;
  external set stroke(bool? value);
  external factory SVGBoundingBoxOptions({
    bool? clipped,
    bool? fill,
    bool? markers,
    bool? stroke,
  });
}

@JS()
@anonymous
class ScrollIntoViewOptions extends ScrollOptions {
  external ScrollLogicalPosition? get block;
  external set block(ScrollLogicalPosition? value);
  external ScrollLogicalPosition? get inline;
  external set inline(ScrollLogicalPosition? value);
  external factory ScrollIntoViewOptions({
    ScrollLogicalPosition? block,
    ScrollLogicalPosition? inline,
  });
}

@JS()
@anonymous
class ScrollOptions {
  external ScrollBehavior? get behavior;
  external set behavior(ScrollBehavior? value);
  external factory ScrollOptions({
    ScrollBehavior? behavior,
  });
}

@JS()
@anonymous
class ScrollToOptions extends ScrollOptions {
  external num? get left;
  external set left(num? value);
  external num? get top;
  external set top(num? value);
  external factory ScrollToOptions({
    num? left,
    num? top,
  });
}

@JS()
@anonymous
class SecurityPolicyViolationEventInit extends EventInit {
  external String? get blockedURI;
  external set blockedURI(String? value);
  external String? get blockedURL;
  external set blockedURL(String? value);
  external num? get colno;
  external set colno(num? value);
  external num? get columnNumber;
  external set columnNumber(num? value);
  external SecurityPolicyViolationEventDisposition get disposition;
  external set disposition(SecurityPolicyViolationEventDisposition value);
  external String? get documentURI;
  external set documentURI(String? value);
  external String get documentURL;
  external set documentURL(String value);
  external String get effectiveDirective;
  external set effectiveDirective(String value);
  external num? get lineNumber;
  external set lineNumber(num? value);
  external num? get lineno;
  external set lineno(num? value);
  external String get originalPolicy;
  external set originalPolicy(String value);
  external String? get referrer;
  external set referrer(String? value);
  external String? get sample;
  external set sample(String? value);
  external String? get sourceFile;
  external set sourceFile(String? value);
  external num get statusCode;
  external set statusCode(num value);
  external factory SecurityPolicyViolationEventInit({
    String? blockedURI,
    String? blockedURL,
    num? colno,
    num? columnNumber,
    SecurityPolicyViolationEventDisposition disposition,
    String? documentURI,
    String documentURL,
    String effectiveDirective,
    num? lineNumber,
    num? lineno,
    String originalPolicy,
    String? referrer,
    String? sample,
    String? sourceFile,
    num statusCode,
  });
}

@JS()
@anonymous
class ShadowRootInit {
  external bool? get delegatesFocus;
  external set delegatesFocus(bool? value);
  external ShadowRootMode get mode;
  external set mode(ShadowRootMode value);
  external SlotAssignmentMode? get slotAssignment;
  external set slotAssignment(SlotAssignmentMode? value);
  external factory ShadowRootInit({
    bool? delegatesFocus,
    ShadowRootMode mode,
    SlotAssignmentMode? slotAssignment,
  });
}

@JS()
@anonymous
class ShareData {
  external List<File>? get files;
  external set files(List<File>? value);
  external String? get text;
  external set text(String? value);
  external String? get title;
  external set title(String? value);
  external String? get url;
  external set url(String? value);
  external factory ShareData({
    List<File>? files,
    String? text,
    String? title,
    String? url,
  });
}

@JS()
@anonymous
class SpeechRecognitionErrorEventInit extends EventInit {
  external SpeechRecognitionErrorCode get error;
  external set error(SpeechRecognitionErrorCode value);
  external String? get message;
  external set message(String? value);
  external factory SpeechRecognitionErrorEventInit({
    SpeechRecognitionErrorCode error,
    String? message,
  });
}

@JS()
@anonymous
class SpeechSynthesisErrorEventInit extends SpeechSynthesisEventInit {
  external SpeechSynthesisErrorCode get error;
  external set error(SpeechSynthesisErrorCode value);
  external factory SpeechSynthesisErrorEventInit({
    SpeechSynthesisErrorCode error,
  });
}

@JS()
@anonymous
class SpeechSynthesisEventInit extends EventInit {
  external num? get charIndex;
  external set charIndex(num? value);
  external num? get charLength;
  external set charLength(num? value);
  external num? get elapsedTime;
  external set elapsedTime(num? value);
  external String? get name;
  external set name(String? value);
  external SpeechSynthesisUtterance get utterance;
  external set utterance(SpeechSynthesisUtterance value);
  external factory SpeechSynthesisEventInit({
    num? charIndex,
    num? charLength,
    num? elapsedTime,
    String? name,
    SpeechSynthesisUtterance utterance,
  });
}

@JS()
@anonymous
class StaticRangeInit {
  external Node get endContainer;
  external set endContainer(Node value);
  external num get endOffset;
  external set endOffset(num value);
  external Node get startContainer;
  external set startContainer(Node value);
  external num get startOffset;
  external set startOffset(num value);
  external factory StaticRangeInit({
    Node endContainer,
    num endOffset,
    Node startContainer,
    num startOffset,
  });
}

@JS()
@anonymous
class StereoPannerOptions extends AudioNodeOptions {
  external num? get pan;
  external set pan(num? value);
  external factory StereoPannerOptions({
    num? pan,
  });
}

@JS()
@anonymous
class StorageEstimate {
  external num? get quota;
  external set quota(num? value);
  external num? get usage;
  external set usage(num? value);
  external factory StorageEstimate({
    num? quota,
    num? usage,
  });
}

@JS()
@anonymous
class StorageEventInit extends EventInit {
  external String? get key;
  external set key(String? value);
  external String? get newValue;
  external set newValue(String? value);
  external String? get oldValue;
  external set oldValue(String? value);
  external Storage? get storageArea;
  external set storageArea(Storage? value);
  external String? get url;
  external set url(String? value);
  external factory StorageEventInit({
    String? key,
    String? newValue,
    String? oldValue,
    Storage? storageArea,
    String? url,
  });
}

@JS()
@anonymous
class StreamPipeOptions {
  external bool? get preventAbort;
  external set preventAbort(bool? value);
  external bool? get preventCancel;
  external set preventCancel(bool? value);
  external bool? get preventClose;
  external set preventClose(bool? value);
  external AbortSignal? get signal;
  external set signal(AbortSignal? value);
  external factory StreamPipeOptions({
    bool? preventAbort,
    bool? preventCancel,
    bool? preventClose,
    AbortSignal? signal,
  });
}

@JS()
@anonymous
class SubmitEventInit extends EventInit {
  external HtmlElement? get submitter;
  external set submitter(HtmlElement? value);
  external factory SubmitEventInit({
    HtmlElement? submitter,
  });
}

@JS()
@anonymous
class TextDecodeOptions {
  external bool? get stream;
  external set stream(bool? value);
  external factory TextDecodeOptions({
    bool? stream,
  });
}

@JS()
@anonymous
class TextDecoderOptions {
  external bool? get fatal;
  external set fatal(bool? value);
  external bool? get ignoreBOM;
  external set ignoreBOM(bool? value);
  external factory TextDecoderOptions({
    bool? fatal,
    bool? ignoreBOM,
  });
}

@JS()
@anonymous
class TextEncoderEncodeIntoResult {
  external num? get read;
  external set read(num? value);
  external num? get written;
  external set written(num? value);
  external factory TextEncoderEncodeIntoResult({
    num? read,
    num? written,
  });
}

@JS()
@anonymous
class TouchEventInit extends EventModifierInit {
  external List<Touch>? get changedTouches;
  external set changedTouches(List<Touch>? value);
  external List<Touch>? get targetTouches;
  external set targetTouches(List<Touch>? value);
  external List<Touch>? get touches;
  external set touches(List<Touch>? value);
  external factory TouchEventInit({
    List<Touch>? changedTouches,
    List<Touch>? targetTouches,
    List<Touch>? touches,
  });
}

@JS()
@anonymous
class TouchInit {
  external num? get altitudeAngle;
  external set altitudeAngle(num? value);
  external num? get azimuthAngle;
  external set azimuthAngle(num? value);
  external num? get clientX;
  external set clientX(num? value);
  external num? get clientY;
  external set clientY(num? value);
  external num? get force;
  external set force(num? value);
  external num get identifier;
  external set identifier(num value);
  external num? get pageX;
  external set pageX(num? value);
  external num? get pageY;
  external set pageY(num? value);
  external num? get radiusX;
  external set radiusX(num? value);
  external num? get radiusY;
  external set radiusY(num? value);
  external num? get rotationAngle;
  external set rotationAngle(num? value);
  external num? get screenX;
  external set screenX(num? value);
  external num? get screenY;
  external set screenY(num? value);
  external EventTarget get target;
  external set target(EventTarget value);
  external TouchType? get touchType;
  external set touchType(TouchType? value);
  external factory TouchInit({
    num? altitudeAngle,
    num? azimuthAngle,
    num? clientX,
    num? clientY,
    num? force,
    num identifier,
    num? pageX,
    num? pageY,
    num? radiusX,
    num? radiusY,
    num? rotationAngle,
    num? screenX,
    num? screenY,
    EventTarget target,
    TouchType? touchType,
  });
}

@JS()
@anonymous
class TrackEventInit extends EventInit {
  external TextTrack? get track;
  external set track(TextTrack? value);
  external factory TrackEventInit({
    TextTrack? track,
  });
}

@JS()
@anonymous
class Transformer<I, O> {
  external TransformerFlushCallback<O>? get flush;
  external set flush(TransformerFlushCallback<O>? value);
  external dynamic get readableType;
  external set readableType(dynamic value);
  external TransformerStartCallback<O>? get start;
  external set start(TransformerStartCallback<O>? value);
  external TransformerTransformCallback<I, O>? get transform;
  external set transform(TransformerTransformCallback<I, O>? value);
  external dynamic get writableType;
  external set writableType(dynamic value);
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
class TransitionEventInit extends EventInit {
  external num? get elapsedTime;
  external set elapsedTime(num? value);
  external String? get propertyName;
  external set propertyName(String? value);
  external String? get pseudoElement;
  external set pseudoElement(String? value);
  external factory TransitionEventInit({
    num? elapsedTime,
    String? propertyName,
    String? pseudoElement,
  });
}

@JS()
@anonymous
class UIEventInit extends EventInit {
  external num? get detail;
  external set detail(num? value);
  external Window? get view;
  external set view(Window? value);
  external num? get which;
  external set which(num? value);
  external factory UIEventInit({
    num? detail,
    Window? view,
    num? which,
  });
}

@JS()
@anonymous
class ULongRange {
  external num? get max;
  external set max(num? value);
  external num? get min;
  external set min(num? value);
  external factory ULongRange({
    num? max,
    num? min,
  });
}

@JS()
@anonymous
class UnderlyingSink<W> {
  external UnderlyingSinkAbortCallback? get abort;
  external set abort(UnderlyingSinkAbortCallback? value);
  external UnderlyingSinkCloseCallback? get close;
  external set close(UnderlyingSinkCloseCallback? value);
  external UnderlyingSinkStartCallback? get start;
  external set start(UnderlyingSinkStartCallback? value);
  external dynamic get type;
  external set type(dynamic value);
  external UnderlyingSinkWriteCallback<W>? get write;
  external set write(UnderlyingSinkWriteCallback<W>? value);
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
  external UnderlyingSourceCancelCallback? get cancel;
  external set cancel(UnderlyingSourceCancelCallback? value);
  external UnderlyingSourcePullCallback<R>? get pull;
  external set pull(UnderlyingSourcePullCallback<R>? value);
  external UnderlyingSourceStartCallback<R>? get start;
  external set start(UnderlyingSourceStartCallback<R>? value);
  external dynamic get type;
  external set type(dynamic value);
  external factory UnderlyingSource({
    UnderlyingSourceCancelCallback? cancel,
    UnderlyingSourcePullCallback<R>? pull,
    UnderlyingSourceStartCallback<R>? start,
    dynamic type,
  });
}

@JS()
@anonymous
class VideoConfiguration {
  external num get bitrate;
  external set bitrate(num value);
  external ColorGamut? get colorGamut;
  external set colorGamut(ColorGamut? value);
  external String get contentType;
  external set contentType(String value);
  external num get framerate;
  external set framerate(num value);
  external HdrMetadataType? get hdrMetadataType;
  external set hdrMetadataType(HdrMetadataType? value);
  external num get height;
  external set height(num value);
  external String? get scalabilityMode;
  external set scalabilityMode(String? value);
  external TransferFunction? get transferFunction;
  external set transferFunction(TransferFunction? value);
  external num get width;
  external set width(num value);
  external factory VideoConfiguration({
    num bitrate,
    ColorGamut? colorGamut,
    String contentType,
    num framerate,
    HdrMetadataType? hdrMetadataType,
    num height,
    String? scalabilityMode,
    TransferFunction? transferFunction,
    num width,
  });
}

@JS()
@anonymous
class WaveShaperOptions extends AudioNodeOptions {
  external dynamic get curve;
  external set curve(dynamic value);
  external OverSampleType? get oversample;
  external set oversample(OverSampleType? value);
  external factory WaveShaperOptions({
    dynamic curve,
    OverSampleType? oversample,
  });
}

@JS()
@anonymous
class WebGLContextAttributes {
  external bool? get alpha;
  external set alpha(bool? value);
  external bool? get antialias;
  external set antialias(bool? value);
  external bool? get depth;
  external set depth(bool? value);
  external bool? get desynchronized;
  external set desynchronized(bool? value);
  external bool? get failIfMajorPerformanceCaveat;
  external set failIfMajorPerformanceCaveat(bool? value);
  external WebGLPowerPreference? get powerPreference;
  external set powerPreference(WebGLPowerPreference? value);
  external bool? get premultipliedAlpha;
  external set premultipliedAlpha(bool? value);
  external bool? get preserveDrawingBuffer;
  external set preserveDrawingBuffer(bool? value);
  external bool? get stencil;
  external set stencil(bool? value);
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
  external String? get statusMessage;
  external set statusMessage(String? value);
  external factory WebGLContextEventInit({
    String? statusMessage,
  });
}

@JS()
@anonymous
class WheelEventInit extends MouseEventInit {
  external num? get deltaMode;
  external set deltaMode(num? value);
  external num? get deltaX;
  external set deltaX(num? value);
  external num? get deltaY;
  external set deltaY(num? value);
  external num? get deltaZ;
  external set deltaZ(num? value);
  external factory WheelEventInit({
    num? deltaMode,
    num? deltaX,
    num? deltaY,
    num? deltaZ,
  });
}

@JS()
@anonymous
class WindowPostMessageOptions extends PostMessageOptions {
  external String? get targetOrigin;
  external set targetOrigin(String? value);
  external factory WindowPostMessageOptions({
    String? targetOrigin,
  });
}

@JS()
@anonymous
class WorkerOptions {
  external RequestCredentials? get credentials;
  external set credentials(RequestCredentials? value);
  external String? get name;
  external set name(String? value);
  external WorkerType? get type;
  external set type(WorkerType? value);
  external factory WorkerOptions({
    RequestCredentials? credentials,
    String? name,
    WorkerType? type,
  });
}

@JS()
@anonymous
class WorkletOptions {
  external RequestCredentials? get credentials;
  external set credentials(RequestCredentials? value);
  external factory WorkletOptions({
    RequestCredentials? credentials,
  });
}

typedef NodeFilter = dynamic;
@JS(r'NodeFilter')
external INodeFilter JNodeFilter;
typedef XPathNSResolver = dynamic;

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
class ARIAMixin {
  external String get ariaAtomic;
  external set ariaAtomic(String value);
  external String get ariaAutoComplete;
  external set ariaAutoComplete(String value);
  external String get ariaBusy;
  external set ariaBusy(String value);
  external String get ariaChecked;
  external set ariaChecked(String value);
  external String get ariaColCount;
  external set ariaColCount(String value);
  external String get ariaColIndex;
  external set ariaColIndex(String value);
  external String get ariaColSpan;
  external set ariaColSpan(String value);
  external String get ariaCurrent;
  external set ariaCurrent(String value);
  external String get ariaDisabled;
  external set ariaDisabled(String value);
  external String get ariaExpanded;
  external set ariaExpanded(String value);
  external String get ariaHasPopup;
  external set ariaHasPopup(String value);
  external String get ariaHidden;
  external set ariaHidden(String value);
  external String get ariaKeyShortcuts;
  external set ariaKeyShortcuts(String value);
  external String get ariaLabel;
  external set ariaLabel(String value);
  external String get ariaLevel;
  external set ariaLevel(String value);
  external String get ariaLive;
  external set ariaLive(String value);
  external String get ariaModal;
  external set ariaModal(String value);
  external String get ariaMultiLine;
  external set ariaMultiLine(String value);
  external String get ariaMultiSelectable;
  external set ariaMultiSelectable(String value);
  external String get ariaOrientation;
  external set ariaOrientation(String value);
  external String get ariaPlaceholder;
  external set ariaPlaceholder(String value);
  external String get ariaPosInSet;
  external set ariaPosInSet(String value);
  external String get ariaPressed;
  external set ariaPressed(String value);
  external String get ariaReadOnly;
  external set ariaReadOnly(String value);
  external String get ariaRequired;
  external set ariaRequired(String value);
  external String get ariaRoleDescription;
  external set ariaRoleDescription(String value);
  external String get ariaRowCount;
  external set ariaRowCount(String value);
  external String get ariaRowIndex;
  external set ariaRowIndex(String value);
  external String get ariaRowSpan;
  external set ariaRowSpan(String value);
  external String get ariaSelected;
  external set ariaSelected(String value);
  external String get ariaSetSize;
  external set ariaSetSize(String value);
  external String get ariaSort;
  external set ariaSort(String value);
  external String get ariaValueMax;
  external set ariaValueMax(String value);
  external String get ariaValueMin;
  external set ariaValueMin(String value);
  external String get ariaValueNow;
  external set ariaValueNow(String value);
  external String get ariaValueText;
  external set ariaValueText(String value);
  external factory ARIAMixin({
    String ariaAtomic,
    String ariaAutoComplete,
    String ariaBusy,
    String ariaChecked,
    String ariaColCount,
    String ariaColIndex,
    String ariaColSpan,
    String ariaCurrent,
    String ariaDisabled,
    String ariaExpanded,
    String ariaHasPopup,
    String ariaHidden,
    String ariaKeyShortcuts,
    String ariaLabel,
    String ariaLevel,
    String ariaLive,
    String ariaModal,
    String ariaMultiLine,
    String ariaMultiSelectable,
    String ariaOrientation,
    String ariaPlaceholder,
    String ariaPosInSet,
    String ariaPressed,
    String ariaReadOnly,
    String ariaRequired,
    String ariaRoleDescription,
    String ariaRowCount,
    String ariaRowIndex,
    String ariaRowSpan,
    String ariaSelected,
    String ariaSetSize,
    String ariaSort,
    String ariaValueMax,
    String ariaValueMin,
    String ariaValueNow,
    String ariaValueText,
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
  external Event get abort;
  external set abort(Event value);
  external factory AbortSignalEventMap({
    Event abort,
  });
}

@JS()
@anonymous
class AbortSignal extends EventTarget {
  external bool get aborted;
  external dynamic Function(Event ev)? get onabort;
  external set onabort(dynamic Function(Event ev)? value);
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
class AbstractRange {
  external bool get collapsed;
  external Node get endContainer;
  external num get endOffset;
  external Node get startContainer;
  external num get startOffset;
  external factory AbstractRange({
    bool collapsed,
    Node endContainer,
    num endOffset,
    Node startContainer,
    num startOffset,
  });
}

@JS(r'AbstractRange')
external IAbstractRange JAbstractRange;

@JS()
@anonymous
class AbstractWorkerEventMap {
  external ErrorEvent get error;
  external set error(ErrorEvent value);
  external factory AbstractWorkerEventMap({
    ErrorEvent error,
  });
}

@JS()
@anonymous
class AbstractWorker {
  external dynamic Function(ErrorEvent ev)? get onerror;
  external set onerror(dynamic Function(ErrorEvent ev)? value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory AbstractWorker({
    dynamic Function(ErrorEvent ev)? onerror,
  });
}

@JS()
@anonymous
class AnalyserNode extends AudioNode {
  external num get fftSize;
  external set fftSize(num value);
  external num get frequencyBinCount;
  external num get maxDecibels;
  external set maxDecibels(num value);
  external num get minDecibels;
  external set minDecibels(num value);
  external num get smoothingTimeConstant;
  external set smoothingTimeConstant(num value);
  external void getByteFrequencyData(Uint8List array);
  external void getByteTimeDomainData(Uint8List array);
  external void getFloatFrequencyData(Float32List array);
  external void getFloatTimeDomainData(Float32List array);
  external factory AnalyserNode({
    num fftSize,
    num frequencyBinCount,
    num maxDecibels,
    num minDecibels,
    num smoothingTimeConstant,
  });
}

@JS(r'AnalyserNode')
external IAnalyserNode JAnalyserNode;

@JS()
@anonymous
class Animatable {
  external Animation animate(dynamic keyframes, dynamic options);
  external List<Animation> getAnimations(GetAnimationsOptions options);
  external factory Animatable();
}

@JS()
@anonymous
class AnimationEventMap {
  external AnimationPlaybackEvent get cancel;
  external set cancel(AnimationPlaybackEvent value);
  external AnimationPlaybackEvent get finish;
  external set finish(AnimationPlaybackEvent value);
  external Event get remove;
  external set remove(Event value);
  external factory AnimationEventMap({
    AnimationPlaybackEvent cancel,
    AnimationPlaybackEvent finish,
    Event remove,
  });
}

@JS()
@anonymous
class Animation extends EventTarget {
  external num? get currentTime;
  external set currentTime(num? value);
  external AnimationEffect? get effect;
  external set effect(AnimationEffect? value);
  external Promise<Animation> get finished;
  external String get id;
  external set id(String value);
  external dynamic Function(AnimationPlaybackEvent ev)? get oncancel;
  external set oncancel(dynamic Function(AnimationPlaybackEvent ev)? value);
  external dynamic Function(AnimationPlaybackEvent ev)? get onfinish;
  external set onfinish(dynamic Function(AnimationPlaybackEvent ev)? value);
  external dynamic Function(Event ev)? get onremove;
  external set onremove(dynamic Function(Event ev)? value);
  external bool get pending;
  external AnimationPlayState get playState;
  external num get playbackRate;
  external set playbackRate(num value);
  external Promise<Animation> get ready;
  external AnimationReplaceState get replaceState;
  external num? get startTime;
  external set startTime(num? value);
  external AnimationTimeline? get timeline;
  external set timeline(AnimationTimeline? value);
  external void cancel();
  external void commitStyles();
  external void finish();
  external void pause();
  external void persist();
  external void play();
  external void reverse();
  external void updatePlaybackRate(num playbackRate);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory Animation({
    num? currentTime,
    AnimationEffect? effect,
    Promise<Animation> finished,
    String id,
    dynamic Function(AnimationPlaybackEvent ev)? oncancel,
    dynamic Function(AnimationPlaybackEvent ev)? onfinish,
    dynamic Function(Event ev)? onremove,
    bool pending,
    AnimationPlayState playState,
    num playbackRate,
    Promise<Animation> ready,
    AnimationReplaceState replaceState,
    num? startTime,
    AnimationTimeline? timeline,
  });
}

@JS(r'Animation')
external IAnimation JAnimation;

@JS()
@anonymous
class AnimationEffect {
  external ComputedEffectTiming getComputedTiming();
  external EffectTiming getTiming();
  external void updateTiming(OptionalEffectTiming timing);
  external factory AnimationEffect();
}

@JS(r'AnimationEffect')
external IAnimationEffect JAnimationEffect;

@JS()
@anonymous
class AnimationEvent extends Event {
  external String get animationName;
  external num get elapsedTime;
  external String get pseudoElement;
  external factory AnimationEvent({
    String animationName,
    num elapsedTime,
    String pseudoElement,
  });
}

@JS(r'AnimationEvent')
external IAnimationEvent JAnimationEvent;

@JS()
@anonymous
class AnimationFrameProvider {
  external void cancelAnimationFrame(num handle);
  external num requestAnimationFrame(FrameRequestCallback callback);
  external factory AnimationFrameProvider();
}

@JS()
@anonymous
class AnimationPlaybackEvent extends Event {
  external num? get currentTime;
  external num? get timelineTime;
  external factory AnimationPlaybackEvent({
    num? currentTime,
    num? timelineTime,
  });
}

@JS(r'AnimationPlaybackEvent')
external IAnimationPlaybackEvent JAnimationPlaybackEvent;

@JS()
@anonymous
class AnimationTimeline {
  external num? get currentTime;
  external factory AnimationTimeline({
    num? currentTime,
  });
}

@JS(r'AnimationTimeline')
external IAnimationTimeline JAnimationTimeline;

@JS()
@anonymous
class Attr extends Node {
  external String get localName;
  external String get name;
  external String? get namespaceURI;
  external Document get ownerDocument;
  external Element? get ownerElement;
  external String? get prefix;
  external bool get specified;
  external String get value;
  external set value(String value);
  external factory Attr({
    String localName,
    String name,
    String? namespaceURI,
    Document ownerDocument,
    Element? ownerElement,
    String? prefix,
    bool specified,
    String value,
  });
}

@JS(r'Attr')
external IAttr JAttr;

@JS()
@anonymous
class AudioBuffer {
  external num get duration;
  external num get length;
  external num get numberOfChannels;
  external num get sampleRate;
  external void copyFromChannel(Float32List destination, num channelNumber, num bufferOffset);
  external void copyToChannel(Float32List source, num channelNumber, num bufferOffset);
  external Float32List getChannelData(num channel);
  external factory AudioBuffer({
    num duration,
    num length,
    num numberOfChannels,
    num sampleRate,
  });
}

@JS(r'AudioBuffer')
external IAudioBuffer JAudioBuffer;

@JS()
@anonymous
class AudioBufferSourceNode extends AudioScheduledSourceNode {
  external AudioBuffer? get buffer;
  external set buffer(AudioBuffer? value);
  external AudioParam get detune;
  external bool get loop;
  external set loop(bool value);
  external num get loopEnd;
  external set loopEnd(num value);
  external num get loopStart;
  external set loopStart(num value);
  external AudioParam get playbackRate;
  external void start(num when, num offset, num duration);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory AudioBufferSourceNode({
    AudioBuffer? buffer,
    AudioParam detune,
    bool loop,
    num loopEnd,
    num loopStart,
    AudioParam playbackRate,
  });
}

@JS(r'AudioBufferSourceNode')
external IAudioBufferSourceNode JAudioBufferSourceNode;

@JS()
@anonymous
class AudioContext extends BaseAudioContext {
  external num get baseLatency;
  external Promise<void> close();
  external MediaElementAudioSourceNode createMediaElementSource(MediaElement mediaElement);
  external MediaStreamAudioDestinationNode createMediaStreamDestination();
  external MediaStreamAudioSourceNode createMediaStreamSource(MediaStream mediaStream);
  external AudioTimestamp getOutputTimestamp();
  external Promise<void> resume();
  external Promise<void> suspend();
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory AudioContext({
    num baseLatency,
  });
}

@JS(r'AudioContext')
external IAudioContext JAudioContext;

@JS()
@anonymous
class AudioDestinationNode extends AudioNode {
  external num get maxChannelCount;
  external factory AudioDestinationNode({
    num maxChannelCount,
  });
}

@JS(r'AudioDestinationNode')
external IAudioDestinationNode JAudioDestinationNode;

@JS()
@anonymous
class AudioListener {
  external AudioParam get forwardX;
  external AudioParam get forwardY;
  external AudioParam get forwardZ;
  external AudioParam get positionX;
  external AudioParam get positionY;
  external AudioParam get positionZ;
  external AudioParam get upX;
  external AudioParam get upY;
  external AudioParam get upZ;
  external void setOrientation(num x, num y, num z, num xUp, num yUp, num zUp);
  external void setPosition(num x, num y, num z);
  external factory AudioListener({
    AudioParam forwardX,
    AudioParam forwardY,
    AudioParam forwardZ,
    AudioParam positionX,
    AudioParam positionY,
    AudioParam positionZ,
    AudioParam upX,
    AudioParam upY,
    AudioParam upZ,
  });
}

@JS(r'AudioListener')
external IAudioListener JAudioListener;

@JS()
@anonymous
class AudioNode extends EventTarget {
  external num get channelCount;
  external set channelCount(num value);
  external ChannelCountMode get channelCountMode;
  external set channelCountMode(ChannelCountMode value);
  external ChannelInterpretation get channelInterpretation;
  external set channelInterpretation(ChannelInterpretation value);
  external BaseAudioContext get context;
  external num get numberOfInputs;
  external num get numberOfOutputs;
  external AudioNode connect(AudioNode destinationNode, num output, num input);
  external void disconnect();
  external factory AudioNode({
    num channelCount,
    ChannelCountMode channelCountMode,
    ChannelInterpretation channelInterpretation,
    BaseAudioContext context,
    num numberOfInputs,
    num numberOfOutputs,
  });
}

@JS(r'AudioNode')
external IAudioNode JAudioNode;

@JS()
@anonymous
class AudioParam {
  external AutomationRate get automationRate;
  external set automationRate(AutomationRate value);
  external num get defaultValue;
  external num get maxValue;
  external num get minValue;
  external num get value;
  external set value(num value);
  external AudioParam cancelAndHoldAtTime(num cancelTime);
  external AudioParam cancelScheduledValues(num cancelTime);
  external AudioParam exponentialRampToValueAtTime(num value, num endTime);
  external AudioParam linearRampToValueAtTime(num value, num endTime);
  external AudioParam setTargetAtTime(num target, num startTime, num timeConstant);
  external AudioParam setValueAtTime(num value, num startTime);
  external AudioParam setValueCurveAtTime(dynamic values, num startTime, num duration);
  external factory AudioParam({
    AutomationRate automationRate,
    num defaultValue,
    num maxValue,
    num minValue,
    num value,
  });
}

@JS(r'AudioParam')
external IAudioParam JAudioParam;

@JS()
@anonymous
class AudioParamMap {
  external void forEach(void Function(AudioParam value, String key, AudioParamMap parent) callbackfn, dynamic thisArg);
  external factory AudioParamMap();
}

@JS(r'AudioParamMap')
external IAudioParamMap JAudioParamMap;

@JS()
@anonymous
class AudioProcessingEvent extends Event {
  external AudioBuffer get inputBuffer;
  external AudioBuffer get outputBuffer;
  external num get playbackTime;
  external factory AudioProcessingEvent({
    AudioBuffer inputBuffer,
    AudioBuffer outputBuffer,
    num playbackTime,
  });
}

@JS(r'AudioProcessingEvent')
external IAudioProcessingEvent JAudioProcessingEvent;

@JS()
@anonymous
class AudioScheduledSourceNodeEventMap {
  external Event get ended;
  external set ended(Event value);
  external factory AudioScheduledSourceNodeEventMap({
    Event ended,
  });
}

@JS()
@anonymous
class AudioScheduledSourceNode extends AudioNode {
  external dynamic Function(Event ev)? get onended;
  external set onended(dynamic Function(Event ev)? value);
  external void start(num when);
  external void stop(num when);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory AudioScheduledSourceNode({
    dynamic Function(Event ev)? onended,
  });
}

@JS(r'AudioScheduledSourceNode')
external IAudioScheduledSourceNode JAudioScheduledSourceNode;

@JS()
@anonymous
class AudioWorklet extends Worklet {
  external factory AudioWorklet();
}

@JS(r'AudioWorklet')
external IAudioWorklet JAudioWorklet;

@JS()
@anonymous
class AudioWorkletNodeEventMap {
  external Event get processorerror;
  external set processorerror(Event value);
  external factory AudioWorkletNodeEventMap({
    Event processorerror,
  });
}

@JS()
@anonymous
class AudioWorkletNode extends AudioNode {
  external dynamic Function(Event ev)? get onprocessorerror;
  external set onprocessorerror(dynamic Function(Event ev)? value);
  external AudioParamMap get parameters;
  external MessagePort get port;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory AudioWorkletNode({
    dynamic Function(Event ev)? onprocessorerror,
    AudioParamMap parameters,
    MessagePort port,
  });
}

@JS(r'AudioWorkletNode')
external IAudioWorkletNode JAudioWorkletNode;

@JS()
@anonymous
class AuthenticatorAssertionResponse extends AuthenticatorResponse {
  external ByteBuffer get authenticatorData;
  external ByteBuffer get signature;
  external ByteBuffer? get userHandle;
  external factory AuthenticatorAssertionResponse({
    ByteBuffer authenticatorData,
    ByteBuffer signature,
    ByteBuffer? userHandle,
  });
}

@JS(r'AuthenticatorAssertionResponse')
external IAuthenticatorAssertionResponse JAuthenticatorAssertionResponse;

@JS()
@anonymous
class AuthenticatorAttestationResponse extends AuthenticatorResponse {
  external ByteBuffer get attestationObject;
  external factory AuthenticatorAttestationResponse({
    ByteBuffer attestationObject,
  });
}

@JS(r'AuthenticatorAttestationResponse')
external IAuthenticatorAttestationResponse JAuthenticatorAttestationResponse;

@JS()
@anonymous
class AuthenticatorResponse {
  external ByteBuffer get clientDataJSON;
  external factory AuthenticatorResponse({
    ByteBuffer clientDataJSON,
  });
}

@JS(r'AuthenticatorResponse')
external IAuthenticatorResponse JAuthenticatorResponse;

@JS()
@anonymous
class BarProp {
  external bool get visible;
  external factory BarProp({
    bool visible,
  });
}

@JS(r'BarProp')
external IBarProp JBarProp;

@JS()
@anonymous
class BaseAudioContextEventMap {
  external Event get statechange;
  external set statechange(Event value);
  external factory BaseAudioContextEventMap({
    Event statechange,
  });
}

@JS()
@anonymous
class BaseAudioContext extends EventTarget {
  external AudioWorklet get audioWorklet;
  external num get currentTime;
  external AudioDestinationNode get destination;
  external AudioListener get listener;
  external dynamic Function(Event ev)? get onstatechange;
  external set onstatechange(dynamic Function(Event ev)? value);
  external num get sampleRate;
  external AudioContextState get state;
  external AnalyserNode createAnalyser();
  external BiquadFilterNode createBiquadFilter();
  external AudioBuffer createBuffer(num numberOfChannels, num length, num sampleRate);
  external AudioBufferSourceNode createBufferSource();
  external ChannelMergerNode createChannelMerger(num numberOfInputs);
  external ChannelSplitterNode createChannelSplitter(num numberOfOutputs);
  external ConstantSourceNode createConstantSource();
  external ConvolverNode createConvolver();
  external DelayNode createDelay(num maxDelayTime);
  external DynamicsCompressorNode createDynamicsCompressor();
  external GainNode createGain();
  external IIRFilterNode createIIRFilter(List<num> feedforward, List<num> feedback);
  external OscillatorNode createOscillator();
  external PannerNode createPanner();
  external PeriodicWave createPeriodicWave(dynamic real, dynamic imag, PeriodicWaveConstraints constraints);
  external ScriptProcessorNode createScriptProcessor(
      num bufferSize, num numberOfInputChannels, num numberOfOutputChannels);
  external StereoPannerNode createStereoPanner();
  external WaveShaperNode createWaveShaper();
  external Promise<AudioBuffer> decodeAudioData(
      ByteBuffer audioData, DecodeSuccessCallback? successCallback, DecodeErrorCallback? errorCallback);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory BaseAudioContext({
    AudioWorklet audioWorklet,
    num currentTime,
    AudioDestinationNode destination,
    AudioListener listener,
    dynamic Function(Event ev)? onstatechange,
    num sampleRate,
    AudioContextState state,
  });
}

@JS(r'BaseAudioContext')
external IBaseAudioContext JBaseAudioContext;

@JS()
@anonymous
class BeforeUnloadEvent extends Event {
  external dynamic get returnValue;
  external set returnValue(dynamic value);
  external factory BeforeUnloadEvent({
    dynamic returnValue,
  });
}

@JS(r'BeforeUnloadEvent')
external IBeforeUnloadEvent JBeforeUnloadEvent;

@JS()
@anonymous
class BiquadFilterNode extends AudioNode {
  external AudioParam get Q;
  external AudioParam get detune;
  external AudioParam get frequency;
  external AudioParam get gain;
  external BiquadFilterType get type;
  external set type(BiquadFilterType value);
  external void getFrequencyResponse(Float32List frequencyHz, Float32List magResponse, Float32List phaseResponse);
  external factory BiquadFilterNode({
    AudioParam Q,
    AudioParam detune,
    AudioParam frequency,
    AudioParam gain,
    BiquadFilterType type,
  });
}

@JS(r'BiquadFilterNode')
external IBiquadFilterNode JBiquadFilterNode;

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
class BlobEvent extends Event {
  external Blob get data;
  external DOMHighResTimeStamp get timecode;
  external factory BlobEvent({
    Blob data,
    DOMHighResTimeStamp timecode,
  });
}

@JS(r'BlobEvent')
external IBlobEvent JBlobEvent;

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
  external MessageEvent get message;
  external set message(MessageEvent value);
  external MessageEvent get messageerror;
  external set messageerror(MessageEvent value);
  external factory BroadcastChannelEventMap({
    MessageEvent message,
    MessageEvent messageerror,
  });
}

@JS()
@anonymous
class BroadcastChannel extends EventTarget {
  external String get name;
  external dynamic Function(MessageEvent ev)? get onmessage;
  external set onmessage(dynamic Function(MessageEvent ev)? value);
  external dynamic Function(MessageEvent ev)? get onmessageerror;
  external set onmessageerror(dynamic Function(MessageEvent ev)? value);
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
class CDATASection extends Text {
  external factory CDATASection();
}

@JS(r'CDATASection')
external ICDATASection JCDATASection;

@JS()
@anonymous
class CSSAnimation extends Animation {
  external String get animationName;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory CSSAnimation({
    String animationName,
  });
}

@JS(r'CSSAnimation')
external ICSSAnimation JCSSAnimation;

@JS()
@anonymous
class CSSConditionRule extends CSSGroupingRule {
  external String get conditionText;
  external set conditionText(String value);
  external factory CSSConditionRule({
    String conditionText,
  });
}

@JS(r'CSSConditionRule')
external ICSSConditionRule JCSSConditionRule;

@JS()
@anonymous
class CSSCounterStyleRule extends CssRule {
  external String get additiveSymbols;
  external set additiveSymbols(String value);
  external String get fallback;
  external set fallback(String value);
  external String get name;
  external set name(String value);
  external String get negative;
  external set negative(String value);
  external String get pad;
  external set pad(String value);
  external String get prefix;
  external set prefix(String value);
  external String get range;
  external set range(String value);
  external String get speakAs;
  external set speakAs(String value);
  external String get suffix;
  external set suffix(String value);
  external String get symbols;
  external set symbols(String value);
  external String get system;
  external set system(String value);
  external factory CSSCounterStyleRule({
    String additiveSymbols,
    String fallback,
    String name,
    String negative,
    String pad,
    String prefix,
    String range,
    String speakAs,
    String suffix,
    String symbols,
    String system,
  });
}

@JS(r'CSSCounterStyleRule')
external ICSSCounterStyleRule JCSSCounterStyleRule;

@JS()
@anonymous
class CSSFontFaceRule extends CssRule {
  external CssStyleDeclaration get style;
  external factory CSSFontFaceRule({
    CssStyleDeclaration style,
  });
}

@JS(r'CSSFontFaceRule')
external ICSSFontFaceRule JCSSFontFaceRule;

@JS()
@anonymous
class CSSGroupingRule extends CssRule {
  external CSSRuleList get cssRules;
  external void deleteRule(num index);
  external num insertRule(String rule, num index);
  external factory CSSGroupingRule({
    CSSRuleList cssRules,
  });
}

@JS(r'CSSGroupingRule')
external ICSSGroupingRule JCSSGroupingRule;

@JS()
@anonymous
class CSSImportRule extends CssRule {
  external String get href;
  external MediaList get media;
  external CssStyleSheet get styleSheet;
  external factory CSSImportRule({
    String href,
    MediaList media,
    CssStyleSheet styleSheet,
  });
}

@JS(r'CSSImportRule')
external ICSSImportRule JCSSImportRule;

@JS()
@anonymous
class CSSKeyframeRule extends CssRule {
  external String get keyText;
  external set keyText(String value);
  external CssStyleDeclaration get style;
  external factory CSSKeyframeRule({
    String keyText,
    CssStyleDeclaration style,
  });
}

@JS(r'CSSKeyframeRule')
external ICSSKeyframeRule JCSSKeyframeRule;

@JS()
@anonymous
class CSSKeyframesRule extends CssRule {
  external CSSRuleList get cssRules;
  external String get name;
  external set name(String value);
  external void appendRule(String rule);
  external void deleteRule(String select);
  external CssKeyframeRule? findRule(String select);
  external factory CSSKeyframesRule({
    CSSRuleList cssRules,
    String name,
  });
}

@JS(r'CSSKeyframesRule')
external ICSSKeyframesRule JCSSKeyframesRule;

@JS()
@anonymous
class CSSMediaRule extends CSSConditionRule {
  external MediaList get media;
  external factory CSSMediaRule({
    MediaList media,
  });
}

@JS(r'CSSMediaRule')
external ICSSMediaRule JCSSMediaRule;

@JS()
@anonymous
class CSSNamespaceRule extends CssRule {
  external String get namespaceURI;
  external String get prefix;
  external factory CSSNamespaceRule({
    String namespaceURI,
    String prefix,
  });
}

@JS(r'CSSNamespaceRule')
external ICSSNamespaceRule JCSSNamespaceRule;

@JS()
@anonymous
class CSSPageRule extends CSSGroupingRule {
  external String get selectorText;
  external set selectorText(String value);
  external CssStyleDeclaration get style;
  external factory CSSPageRule({
    String selectorText,
    CssStyleDeclaration style,
  });
}

@JS(r'CSSPageRule')
external ICSSPageRule JCSSPageRule;

@JS()
@anonymous
class CSSRule {
  external String get cssText;
  external set cssText(String value);
  external CssRule? get parentRule;
  external CssStyleSheet? get parentStyleSheet;
  external num get type;
  external num get CHARSET_RULE;
  external num get FONT_FACE_RULE;
  external num get IMPORT_RULE;
  external num get KEYFRAMES_RULE;
  external num get KEYFRAME_RULE;
  external num get MEDIA_RULE;
  external num get NAMESPACE_RULE;
  external num get PAGE_RULE;
  external num get STYLE_RULE;
  external num get SUPPORTS_RULE;
  external factory CSSRule({
    String cssText,
    CssRule? parentRule,
    CssStyleSheet? parentStyleSheet,
    num type,
    num CHARSET_RULE,
    num FONT_FACE_RULE,
    num IMPORT_RULE,
    num KEYFRAMES_RULE,
    num KEYFRAME_RULE,
    num MEDIA_RULE,
    num NAMESPACE_RULE,
    num PAGE_RULE,
    num STYLE_RULE,
    num SUPPORTS_RULE,
  });
}

@JS(r'CSSRule')
external ICSSRule JCSSRule;

@JS()
@anonymous
class CSSRuleList {
  external num get length;
  external CssRule? item(num index);
  external factory CSSRuleList({
    num length,
  });
}

@JS(r'CSSRuleList')
external ICSSRuleList JCSSRuleList;

@JS()
@anonymous
class CSSStyleDeclaration {
  external String get alignContent;
  external set alignContent(String value);
  external String get alignItems;
  external set alignItems(String value);
  external String get alignSelf;
  external set alignSelf(String value);
  external String get alignmentBaseline;
  external set alignmentBaseline(String value);
  external String get all;
  external set all(String value);
  external String get animation;
  external set animation(String value);
  external String get animationDelay;
  external set animationDelay(String value);
  external String get animationDirection;
  external set animationDirection(String value);
  external String get animationDuration;
  external set animationDuration(String value);
  external String get animationFillMode;
  external set animationFillMode(String value);
  external String get animationIterationCount;
  external set animationIterationCount(String value);
  external String get animationName;
  external set animationName(String value);
  external String get animationPlayState;
  external set animationPlayState(String value);
  external String get animationTimingFunction;
  external set animationTimingFunction(String value);
  external String get appearance;
  external set appearance(String value);
  external String get aspectRatio;
  external set aspectRatio(String value);
  external String get backfaceVisibility;
  external set backfaceVisibility(String value);
  external String get background;
  external set background(String value);
  external String get backgroundAttachment;
  external set backgroundAttachment(String value);
  external String get backgroundBlendMode;
  external set backgroundBlendMode(String value);
  external String get backgroundClip;
  external set backgroundClip(String value);
  external String get backgroundColor;
  external set backgroundColor(String value);
  external String get backgroundImage;
  external set backgroundImage(String value);
  external String get backgroundOrigin;
  external set backgroundOrigin(String value);
  external String get backgroundPosition;
  external set backgroundPosition(String value);
  external String get backgroundPositionX;
  external set backgroundPositionX(String value);
  external String get backgroundPositionY;
  external set backgroundPositionY(String value);
  external String get backgroundRepeat;
  external set backgroundRepeat(String value);
  external String get backgroundSize;
  external set backgroundSize(String value);
  external String get baselineShift;
  external set baselineShift(String value);
  external String get blockSize;
  external set blockSize(String value);
  external String get border;
  external set border(String value);
  external String get borderBlock;
  external set borderBlock(String value);
  external String get borderBlockColor;
  external set borderBlockColor(String value);
  external String get borderBlockEnd;
  external set borderBlockEnd(String value);
  external String get borderBlockEndColor;
  external set borderBlockEndColor(String value);
  external String get borderBlockEndStyle;
  external set borderBlockEndStyle(String value);
  external String get borderBlockEndWidth;
  external set borderBlockEndWidth(String value);
  external String get borderBlockStart;
  external set borderBlockStart(String value);
  external String get borderBlockStartColor;
  external set borderBlockStartColor(String value);
  external String get borderBlockStartStyle;
  external set borderBlockStartStyle(String value);
  external String get borderBlockStartWidth;
  external set borderBlockStartWidth(String value);
  external String get borderBlockStyle;
  external set borderBlockStyle(String value);
  external String get borderBlockWidth;
  external set borderBlockWidth(String value);
  external String get borderBottom;
  external set borderBottom(String value);
  external String get borderBottomColor;
  external set borderBottomColor(String value);
  external String get borderBottomLeftRadius;
  external set borderBottomLeftRadius(String value);
  external String get borderBottomRightRadius;
  external set borderBottomRightRadius(String value);
  external String get borderBottomStyle;
  external set borderBottomStyle(String value);
  external String get borderBottomWidth;
  external set borderBottomWidth(String value);
  external String get borderCollapse;
  external set borderCollapse(String value);
  external String get borderColor;
  external set borderColor(String value);
  external String get borderEndEndRadius;
  external set borderEndEndRadius(String value);
  external String get borderEndStartRadius;
  external set borderEndStartRadius(String value);
  external String get borderImage;
  external set borderImage(String value);
  external String get borderImageOutset;
  external set borderImageOutset(String value);
  external String get borderImageRepeat;
  external set borderImageRepeat(String value);
  external String get borderImageSlice;
  external set borderImageSlice(String value);
  external String get borderImageSource;
  external set borderImageSource(String value);
  external String get borderImageWidth;
  external set borderImageWidth(String value);
  external String get borderInline;
  external set borderInline(String value);
  external String get borderInlineColor;
  external set borderInlineColor(String value);
  external String get borderInlineEnd;
  external set borderInlineEnd(String value);
  external String get borderInlineEndColor;
  external set borderInlineEndColor(String value);
  external String get borderInlineEndStyle;
  external set borderInlineEndStyle(String value);
  external String get borderInlineEndWidth;
  external set borderInlineEndWidth(String value);
  external String get borderInlineStart;
  external set borderInlineStart(String value);
  external String get borderInlineStartColor;
  external set borderInlineStartColor(String value);
  external String get borderInlineStartStyle;
  external set borderInlineStartStyle(String value);
  external String get borderInlineStartWidth;
  external set borderInlineStartWidth(String value);
  external String get borderInlineStyle;
  external set borderInlineStyle(String value);
  external String get borderInlineWidth;
  external set borderInlineWidth(String value);
  external String get borderLeft;
  external set borderLeft(String value);
  external String get borderLeftColor;
  external set borderLeftColor(String value);
  external String get borderLeftStyle;
  external set borderLeftStyle(String value);
  external String get borderLeftWidth;
  external set borderLeftWidth(String value);
  external String get borderRadius;
  external set borderRadius(String value);
  external String get borderRight;
  external set borderRight(String value);
  external String get borderRightColor;
  external set borderRightColor(String value);
  external String get borderRightStyle;
  external set borderRightStyle(String value);
  external String get borderRightWidth;
  external set borderRightWidth(String value);
  external String get borderSpacing;
  external set borderSpacing(String value);
  external String get borderStartEndRadius;
  external set borderStartEndRadius(String value);
  external String get borderStartStartRadius;
  external set borderStartStartRadius(String value);
  external String get borderStyle;
  external set borderStyle(String value);
  external String get borderTop;
  external set borderTop(String value);
  external String get borderTopColor;
  external set borderTopColor(String value);
  external String get borderTopLeftRadius;
  external set borderTopLeftRadius(String value);
  external String get borderTopRightRadius;
  external set borderTopRightRadius(String value);
  external String get borderTopStyle;
  external set borderTopStyle(String value);
  external String get borderTopWidth;
  external set borderTopWidth(String value);
  external String get borderWidth;
  external set borderWidth(String value);
  external String get bottom;
  external set bottom(String value);
  external String get boxShadow;
  external set boxShadow(String value);
  external String get boxSizing;
  external set boxSizing(String value);
  external String get breakAfter;
  external set breakAfter(String value);
  external String get breakBefore;
  external set breakBefore(String value);
  external String get breakInside;
  external set breakInside(String value);
  external String get captionSide;
  external set captionSide(String value);
  external String get caretColor;
  external set caretColor(String value);
  external String get clear;
  external set clear(String value);
  external String get clip;
  external set clip(String value);
  external String get clipPath;
  external set clipPath(String value);
  external String get clipRule;
  external set clipRule(String value);
  external String get color;
  external set color(String value);
  external String get colorInterpolation;
  external set colorInterpolation(String value);
  external String get colorInterpolationFilters;
  external set colorInterpolationFilters(String value);
  external String get colorScheme;
  external set colorScheme(String value);
  external String get columnCount;
  external set columnCount(String value);
  external String get columnFill;
  external set columnFill(String value);
  external String get columnGap;
  external set columnGap(String value);
  external String get columnRule;
  external set columnRule(String value);
  external String get columnRuleColor;
  external set columnRuleColor(String value);
  external String get columnRuleStyle;
  external set columnRuleStyle(String value);
  external String get columnRuleWidth;
  external set columnRuleWidth(String value);
  external String get columnSpan;
  external set columnSpan(String value);
  external String get columnWidth;
  external set columnWidth(String value);
  external String get columns;
  external set columns(String value);
  external String get contain;
  external set contain(String value);
  external String get content;
  external set content(String value);
  external String get counterIncrement;
  external set counterIncrement(String value);
  external String get counterReset;
  external set counterReset(String value);
  external String get counterSet;
  external set counterSet(String value);
  external String get cssFloat;
  external set cssFloat(String value);
  external String get cssText;
  external set cssText(String value);
  external String get cursor;
  external set cursor(String value);
  external String get direction;
  external set direction(String value);
  external String get display;
  external set display(String value);
  external String get dominantBaseline;
  external set dominantBaseline(String value);
  external String get emptyCells;
  external set emptyCells(String value);
  external String get fill;
  external set fill(String value);
  external String get fillOpacity;
  external set fillOpacity(String value);
  external String get fillRule;
  external set fillRule(String value);
  external String get filter;
  external set filter(String value);
  external String get flex;
  external set flex(String value);
  external String get flexBasis;
  external set flexBasis(String value);
  external String get flexDirection;
  external set flexDirection(String value);
  external String get flexFlow;
  external set flexFlow(String value);
  external String get flexGrow;
  external set flexGrow(String value);
  external String get flexShrink;
  external set flexShrink(String value);
  external String get flexWrap;
  external set flexWrap(String value);
  external String get float;
  external set float(String value);
  external String get floodColor;
  external set floodColor(String value);
  external String get floodOpacity;
  external set floodOpacity(String value);
  external String get font;
  external set font(String value);
  external String get fontFamily;
  external set fontFamily(String value);
  external String get fontFeatureSettings;
  external set fontFeatureSettings(String value);
  external String get fontKerning;
  external set fontKerning(String value);
  external String get fontOpticalSizing;
  external set fontOpticalSizing(String value);
  external String get fontSize;
  external set fontSize(String value);
  external String get fontSizeAdjust;
  external set fontSizeAdjust(String value);
  external String get fontStretch;
  external set fontStretch(String value);
  external String get fontStyle;
  external set fontStyle(String value);
  external String get fontSynthesis;
  external set fontSynthesis(String value);
  external String get fontVariant;
  external set fontVariant(String value);
  external String get fontVariantAlternates;
  external set fontVariantAlternates(String value);
  external String get fontVariantCaps;
  external set fontVariantCaps(String value);
  external String get fontVariantEastAsian;
  external set fontVariantEastAsian(String value);
  external String get fontVariantLigatures;
  external set fontVariantLigatures(String value);
  external String get fontVariantNumeric;
  external set fontVariantNumeric(String value);
  external String get fontVariantPosition;
  external set fontVariantPosition(String value);
  external String get fontVariationSettings;
  external set fontVariationSettings(String value);
  external String get fontWeight;
  external set fontWeight(String value);
  external String get gap;
  external set gap(String value);
  external String get grid;
  external set grid(String value);
  external String get gridArea;
  external set gridArea(String value);
  external String get gridAutoColumns;
  external set gridAutoColumns(String value);
  external String get gridAutoFlow;
  external set gridAutoFlow(String value);
  external String get gridAutoRows;
  external set gridAutoRows(String value);
  external String get gridColumn;
  external set gridColumn(String value);
  external String get gridColumnEnd;
  external set gridColumnEnd(String value);
  external String get gridColumnGap;
  external set gridColumnGap(String value);
  external String get gridColumnStart;
  external set gridColumnStart(String value);
  external String get gridGap;
  external set gridGap(String value);
  external String get gridRow;
  external set gridRow(String value);
  external String get gridRowEnd;
  external set gridRowEnd(String value);
  external String get gridRowGap;
  external set gridRowGap(String value);
  external String get gridRowStart;
  external set gridRowStart(String value);
  external String get gridTemplate;
  external set gridTemplate(String value);
  external String get gridTemplateAreas;
  external set gridTemplateAreas(String value);
  external String get gridTemplateColumns;
  external set gridTemplateColumns(String value);
  external String get gridTemplateRows;
  external set gridTemplateRows(String value);
  external String get height;
  external set height(String value);
  external String get hyphens;
  external set hyphens(String value);
  external String get imageOrientation;
  external set imageOrientation(String value);
  external String get imageRendering;
  external set imageRendering(String value);
  external String get inlineSize;
  external set inlineSize(String value);
  external String get inset;
  external set inset(String value);
  external String get insetBlock;
  external set insetBlock(String value);
  external String get insetBlockEnd;
  external set insetBlockEnd(String value);
  external String get insetBlockStart;
  external set insetBlockStart(String value);
  external String get insetInline;
  external set insetInline(String value);
  external String get insetInlineEnd;
  external set insetInlineEnd(String value);
  external String get insetInlineStart;
  external set insetInlineStart(String value);
  external String get isolation;
  external set isolation(String value);
  external String get justifyContent;
  external set justifyContent(String value);
  external String get justifyItems;
  external set justifyItems(String value);
  external String get justifySelf;
  external set justifySelf(String value);
  external String get left;
  external set left(String value);
  external num get length;
  external String get letterSpacing;
  external set letterSpacing(String value);
  external String get lightingColor;
  external set lightingColor(String value);
  external String get lineBreak;
  external set lineBreak(String value);
  external String get lineHeight;
  external set lineHeight(String value);
  external String get listStyle;
  external set listStyle(String value);
  external String get listStyleImage;
  external set listStyleImage(String value);
  external String get listStylePosition;
  external set listStylePosition(String value);
  external String get listStyleType;
  external set listStyleType(String value);
  external String get margin;
  external set margin(String value);
  external String get marginBlock;
  external set marginBlock(String value);
  external String get marginBlockEnd;
  external set marginBlockEnd(String value);
  external String get marginBlockStart;
  external set marginBlockStart(String value);
  external String get marginBottom;
  external set marginBottom(String value);
  external String get marginInline;
  external set marginInline(String value);
  external String get marginInlineEnd;
  external set marginInlineEnd(String value);
  external String get marginInlineStart;
  external set marginInlineStart(String value);
  external String get marginLeft;
  external set marginLeft(String value);
  external String get marginRight;
  external set marginRight(String value);
  external String get marginTop;
  external set marginTop(String value);
  external String get marker;
  external set marker(String value);
  external String get markerEnd;
  external set markerEnd(String value);
  external String get markerMid;
  external set markerMid(String value);
  external String get markerStart;
  external set markerStart(String value);
  external String get mask;
  external set mask(String value);
  external String get maskType;
  external set maskType(String value);
  external String get maxBlockSize;
  external set maxBlockSize(String value);
  external String get maxHeight;
  external set maxHeight(String value);
  external String get maxInlineSize;
  external set maxInlineSize(String value);
  external String get maxWidth;
  external set maxWidth(String value);
  external String get minBlockSize;
  external set minBlockSize(String value);
  external String get minHeight;
  external set minHeight(String value);
  external String get minInlineSize;
  external set minInlineSize(String value);
  external String get minWidth;
  external set minWidth(String value);
  external String get mixBlendMode;
  external set mixBlendMode(String value);
  external String get objectFit;
  external set objectFit(String value);
  external String get objectPosition;
  external set objectPosition(String value);
  external String get offset;
  external set offset(String value);
  external String get offsetAnchor;
  external set offsetAnchor(String value);
  external String get offsetDistance;
  external set offsetDistance(String value);
  external String get offsetPath;
  external set offsetPath(String value);
  external String get offsetRotate;
  external set offsetRotate(String value);
  external String get opacity;
  external set opacity(String value);
  external String get order;
  external set order(String value);
  external String get orphans;
  external set orphans(String value);
  external String get outline;
  external set outline(String value);
  external String get outlineColor;
  external set outlineColor(String value);
  external String get outlineOffset;
  external set outlineOffset(String value);
  external String get outlineStyle;
  external set outlineStyle(String value);
  external String get outlineWidth;
  external set outlineWidth(String value);
  external String get overflow;
  external set overflow(String value);
  external String get overflowAnchor;
  external set overflowAnchor(String value);
  external String get overflowWrap;
  external set overflowWrap(String value);
  external String get overflowX;
  external set overflowX(String value);
  external String get overflowY;
  external set overflowY(String value);
  external String get overscrollBehavior;
  external set overscrollBehavior(String value);
  external String get overscrollBehaviorBlock;
  external set overscrollBehaviorBlock(String value);
  external String get overscrollBehaviorInline;
  external set overscrollBehaviorInline(String value);
  external String get overscrollBehaviorX;
  external set overscrollBehaviorX(String value);
  external String get overscrollBehaviorY;
  external set overscrollBehaviorY(String value);
  external String get padding;
  external set padding(String value);
  external String get paddingBlock;
  external set paddingBlock(String value);
  external String get paddingBlockEnd;
  external set paddingBlockEnd(String value);
  external String get paddingBlockStart;
  external set paddingBlockStart(String value);
  external String get paddingBottom;
  external set paddingBottom(String value);
  external String get paddingInline;
  external set paddingInline(String value);
  external String get paddingInlineEnd;
  external set paddingInlineEnd(String value);
  external String get paddingInlineStart;
  external set paddingInlineStart(String value);
  external String get paddingLeft;
  external set paddingLeft(String value);
  external String get paddingRight;
  external set paddingRight(String value);
  external String get paddingTop;
  external set paddingTop(String value);
  external String get pageBreakAfter;
  external set pageBreakAfter(String value);
  external String get pageBreakBefore;
  external set pageBreakBefore(String value);
  external String get pageBreakInside;
  external set pageBreakInside(String value);
  external String get paintOrder;
  external set paintOrder(String value);
  external CssRule? get parentRule;
  external String get perspective;
  external set perspective(String value);
  external String get perspectiveOrigin;
  external set perspectiveOrigin(String value);
  external String get placeContent;
  external set placeContent(String value);
  external String get placeItems;
  external set placeItems(String value);
  external String get placeSelf;
  external set placeSelf(String value);
  external String get pointerEvents;
  external set pointerEvents(String value);
  external String get position;
  external set position(String value);
  external String get quotes;
  external set quotes(String value);
  external String get resize;
  external set resize(String value);
  external String get right;
  external set right(String value);
  external String get rotate;
  external set rotate(String value);
  external String get rowGap;
  external set rowGap(String value);
  external String get rubyPosition;
  external set rubyPosition(String value);
  external String get scale;
  external set scale(String value);
  external String get scrollBehavior;
  external set scrollBehavior(String value);
  external String get scrollMargin;
  external set scrollMargin(String value);
  external String get scrollMarginBlock;
  external set scrollMarginBlock(String value);
  external String get scrollMarginBlockEnd;
  external set scrollMarginBlockEnd(String value);
  external String get scrollMarginBlockStart;
  external set scrollMarginBlockStart(String value);
  external String get scrollMarginBottom;
  external set scrollMarginBottom(String value);
  external String get scrollMarginInline;
  external set scrollMarginInline(String value);
  external String get scrollMarginInlineEnd;
  external set scrollMarginInlineEnd(String value);
  external String get scrollMarginInlineStart;
  external set scrollMarginInlineStart(String value);
  external String get scrollMarginLeft;
  external set scrollMarginLeft(String value);
  external String get scrollMarginRight;
  external set scrollMarginRight(String value);
  external String get scrollMarginTop;
  external set scrollMarginTop(String value);
  external String get scrollPadding;
  external set scrollPadding(String value);
  external String get scrollPaddingBlock;
  external set scrollPaddingBlock(String value);
  external String get scrollPaddingBlockEnd;
  external set scrollPaddingBlockEnd(String value);
  external String get scrollPaddingBlockStart;
  external set scrollPaddingBlockStart(String value);
  external String get scrollPaddingBottom;
  external set scrollPaddingBottom(String value);
  external String get scrollPaddingInline;
  external set scrollPaddingInline(String value);
  external String get scrollPaddingInlineEnd;
  external set scrollPaddingInlineEnd(String value);
  external String get scrollPaddingInlineStart;
  external set scrollPaddingInlineStart(String value);
  external String get scrollPaddingLeft;
  external set scrollPaddingLeft(String value);
  external String get scrollPaddingRight;
  external set scrollPaddingRight(String value);
  external String get scrollPaddingTop;
  external set scrollPaddingTop(String value);
  external String get scrollSnapAlign;
  external set scrollSnapAlign(String value);
  external String get scrollSnapType;
  external set scrollSnapType(String value);
  external String get shapeImageThreshold;
  external set shapeImageThreshold(String value);
  external String get shapeMargin;
  external set shapeMargin(String value);
  external String get shapeOutside;
  external set shapeOutside(String value);
  external String get shapeRendering;
  external set shapeRendering(String value);
  external String get stopColor;
  external set stopColor(String value);
  external String get stopOpacity;
  external set stopOpacity(String value);
  external String get stroke;
  external set stroke(String value);
  external String get strokeDasharray;
  external set strokeDasharray(String value);
  external String get strokeDashoffset;
  external set strokeDashoffset(String value);
  external String get strokeLinecap;
  external set strokeLinecap(String value);
  external String get strokeLinejoin;
  external set strokeLinejoin(String value);
  external String get strokeMiterlimit;
  external set strokeMiterlimit(String value);
  external String get strokeOpacity;
  external set strokeOpacity(String value);
  external String get strokeWidth;
  external set strokeWidth(String value);
  external String get tabSize;
  external set tabSize(String value);
  external String get tableLayout;
  external set tableLayout(String value);
  external String get textAlign;
  external set textAlign(String value);
  external String get textAlignLast;
  external set textAlignLast(String value);
  external String get textAnchor;
  external set textAnchor(String value);
  external String get textCombineUpright;
  external set textCombineUpright(String value);
  external String get textDecoration;
  external set textDecoration(String value);
  external String get textDecorationColor;
  external set textDecorationColor(String value);
  external String get textDecorationLine;
  external set textDecorationLine(String value);
  external String get textDecorationSkipInk;
  external set textDecorationSkipInk(String value);
  external String get textDecorationStyle;
  external set textDecorationStyle(String value);
  external String get textDecorationThickness;
  external set textDecorationThickness(String value);
  external String get textEmphasis;
  external set textEmphasis(String value);
  external String get textEmphasisColor;
  external set textEmphasisColor(String value);
  external String get textEmphasisPosition;
  external set textEmphasisPosition(String value);
  external String get textEmphasisStyle;
  external set textEmphasisStyle(String value);
  external String get textIndent;
  external set textIndent(String value);
  external String get textOrientation;
  external set textOrientation(String value);
  external String get textOverflow;
  external set textOverflow(String value);
  external String get textRendering;
  external set textRendering(String value);
  external String get textShadow;
  external set textShadow(String value);
  external String get textTransform;
  external set textTransform(String value);
  external String get textUnderlineOffset;
  external set textUnderlineOffset(String value);
  external String get textUnderlinePosition;
  external set textUnderlinePosition(String value);
  external String get top;
  external set top(String value);
  external String get touchAction;
  external set touchAction(String value);
  external String get transform;
  external set transform(String value);
  external String get transformBox;
  external set transformBox(String value);
  external String get transformOrigin;
  external set transformOrigin(String value);
  external String get transformStyle;
  external set transformStyle(String value);
  external String get transition;
  external set transition(String value);
  external String get transitionDelay;
  external set transitionDelay(String value);
  external String get transitionDuration;
  external set transitionDuration(String value);
  external String get transitionProperty;
  external set transitionProperty(String value);
  external String get transitionTimingFunction;
  external set transitionTimingFunction(String value);
  external String get translate;
  external set translate(String value);
  external String get unicodeBidi;
  external set unicodeBidi(String value);
  external String get userSelect;
  external set userSelect(String value);
  external String get verticalAlign;
  external set verticalAlign(String value);
  external String get visibility;
  external set visibility(String value);
  external String get webkitAlignContent;
  external set webkitAlignContent(String value);
  external String get webkitAlignItems;
  external set webkitAlignItems(String value);
  external String get webkitAlignSelf;
  external set webkitAlignSelf(String value);
  external String get webkitAnimation;
  external set webkitAnimation(String value);
  external String get webkitAnimationDelay;
  external set webkitAnimationDelay(String value);
  external String get webkitAnimationDirection;
  external set webkitAnimationDirection(String value);
  external String get webkitAnimationDuration;
  external set webkitAnimationDuration(String value);
  external String get webkitAnimationFillMode;
  external set webkitAnimationFillMode(String value);
  external String get webkitAnimationIterationCount;
  external set webkitAnimationIterationCount(String value);
  external String get webkitAnimationName;
  external set webkitAnimationName(String value);
  external String get webkitAnimationPlayState;
  external set webkitAnimationPlayState(String value);
  external String get webkitAnimationTimingFunction;
  external set webkitAnimationTimingFunction(String value);
  external String get webkitAppearance;
  external set webkitAppearance(String value);
  external String get webkitBackfaceVisibility;
  external set webkitBackfaceVisibility(String value);
  external String get webkitBackgroundClip;
  external set webkitBackgroundClip(String value);
  external String get webkitBackgroundOrigin;
  external set webkitBackgroundOrigin(String value);
  external String get webkitBackgroundSize;
  external set webkitBackgroundSize(String value);
  external String get webkitBorderBottomLeftRadius;
  external set webkitBorderBottomLeftRadius(String value);
  external String get webkitBorderBottomRightRadius;
  external set webkitBorderBottomRightRadius(String value);
  external String get webkitBorderRadius;
  external set webkitBorderRadius(String value);
  external String get webkitBorderTopLeftRadius;
  external set webkitBorderTopLeftRadius(String value);
  external String get webkitBorderTopRightRadius;
  external set webkitBorderTopRightRadius(String value);
  external String get webkitBoxAlign;
  external set webkitBoxAlign(String value);
  external String get webkitBoxFlex;
  external set webkitBoxFlex(String value);
  external String get webkitBoxOrdinalGroup;
  external set webkitBoxOrdinalGroup(String value);
  external String get webkitBoxOrient;
  external set webkitBoxOrient(String value);
  external String get webkitBoxPack;
  external set webkitBoxPack(String value);
  external String get webkitBoxShadow;
  external set webkitBoxShadow(String value);
  external String get webkitBoxSizing;
  external set webkitBoxSizing(String value);
  external String get webkitFilter;
  external set webkitFilter(String value);
  external String get webkitFlex;
  external set webkitFlex(String value);
  external String get webkitFlexBasis;
  external set webkitFlexBasis(String value);
  external String get webkitFlexDirection;
  external set webkitFlexDirection(String value);
  external String get webkitFlexFlow;
  external set webkitFlexFlow(String value);
  external String get webkitFlexGrow;
  external set webkitFlexGrow(String value);
  external String get webkitFlexShrink;
  external set webkitFlexShrink(String value);
  external String get webkitFlexWrap;
  external set webkitFlexWrap(String value);
  external String get webkitJustifyContent;
  external set webkitJustifyContent(String value);
  external String get webkitLineClamp;
  external set webkitLineClamp(String value);
  external String get webkitMask;
  external set webkitMask(String value);
  external String get webkitMaskBoxImage;
  external set webkitMaskBoxImage(String value);
  external String get webkitMaskBoxImageOutset;
  external set webkitMaskBoxImageOutset(String value);
  external String get webkitMaskBoxImageRepeat;
  external set webkitMaskBoxImageRepeat(String value);
  external String get webkitMaskBoxImageSlice;
  external set webkitMaskBoxImageSlice(String value);
  external String get webkitMaskBoxImageSource;
  external set webkitMaskBoxImageSource(String value);
  external String get webkitMaskBoxImageWidth;
  external set webkitMaskBoxImageWidth(String value);
  external String get webkitMaskClip;
  external set webkitMaskClip(String value);
  external String get webkitMaskComposite;
  external set webkitMaskComposite(String value);
  external String get webkitMaskImage;
  external set webkitMaskImage(String value);
  external String get webkitMaskOrigin;
  external set webkitMaskOrigin(String value);
  external String get webkitMaskPosition;
  external set webkitMaskPosition(String value);
  external String get webkitMaskRepeat;
  external set webkitMaskRepeat(String value);
  external String get webkitMaskSize;
  external set webkitMaskSize(String value);
  external String get webkitOrder;
  external set webkitOrder(String value);
  external String get webkitPerspective;
  external set webkitPerspective(String value);
  external String get webkitPerspectiveOrigin;
  external set webkitPerspectiveOrigin(String value);
  external String get webkitTextFillColor;
  external set webkitTextFillColor(String value);
  external String get webkitTextSizeAdjust;
  external set webkitTextSizeAdjust(String value);
  external String get webkitTextStroke;
  external set webkitTextStroke(String value);
  external String get webkitTextStrokeColor;
  external set webkitTextStrokeColor(String value);
  external String get webkitTextStrokeWidth;
  external set webkitTextStrokeWidth(String value);
  external String get webkitTransform;
  external set webkitTransform(String value);
  external String get webkitTransformOrigin;
  external set webkitTransformOrigin(String value);
  external String get webkitTransformStyle;
  external set webkitTransformStyle(String value);
  external String get webkitTransition;
  external set webkitTransition(String value);
  external String get webkitTransitionDelay;
  external set webkitTransitionDelay(String value);
  external String get webkitTransitionDuration;
  external set webkitTransitionDuration(String value);
  external String get webkitTransitionProperty;
  external set webkitTransitionProperty(String value);
  external String get webkitTransitionTimingFunction;
  external set webkitTransitionTimingFunction(String value);
  external String get webkitUserSelect;
  external set webkitUserSelect(String value);
  external String get whiteSpace;
  external set whiteSpace(String value);
  external String get widows;
  external set widows(String value);
  external String get width;
  external set width(String value);
  external String get willChange;
  external set willChange(String value);
  external String get wordBreak;
  external set wordBreak(String value);
  external String get wordSpacing;
  external set wordSpacing(String value);
  external String get wordWrap;
  external set wordWrap(String value);
  external String get writingMode;
  external set writingMode(String value);
  external String get zIndex;
  external set zIndex(String value);
  external String getPropertyPriority(String property);
  external String getPropertyValue(String property);
  external String item(num index);
  external String removeProperty(String property);
  external void setProperty(String property, String? value, String priority);
  external factory CSSStyleDeclaration({
    String alignContent,
    String alignItems,
    String alignSelf,
    String alignmentBaseline,
    String all,
    String animation,
    String animationDelay,
    String animationDirection,
    String animationDuration,
    String animationFillMode,
    String animationIterationCount,
    String animationName,
    String animationPlayState,
    String animationTimingFunction,
    String appearance,
    String aspectRatio,
    String backfaceVisibility,
    String background,
    String backgroundAttachment,
    String backgroundBlendMode,
    String backgroundClip,
    String backgroundColor,
    String backgroundImage,
    String backgroundOrigin,
    String backgroundPosition,
    String backgroundPositionX,
    String backgroundPositionY,
    String backgroundRepeat,
    String backgroundSize,
    String baselineShift,
    String blockSize,
    String border,
    String borderBlock,
    String borderBlockColor,
    String borderBlockEnd,
    String borderBlockEndColor,
    String borderBlockEndStyle,
    String borderBlockEndWidth,
    String borderBlockStart,
    String borderBlockStartColor,
    String borderBlockStartStyle,
    String borderBlockStartWidth,
    String borderBlockStyle,
    String borderBlockWidth,
    String borderBottom,
    String borderBottomColor,
    String borderBottomLeftRadius,
    String borderBottomRightRadius,
    String borderBottomStyle,
    String borderBottomWidth,
    String borderCollapse,
    String borderColor,
    String borderEndEndRadius,
    String borderEndStartRadius,
    String borderImage,
    String borderImageOutset,
    String borderImageRepeat,
    String borderImageSlice,
    String borderImageSource,
    String borderImageWidth,
    String borderInline,
    String borderInlineColor,
    String borderInlineEnd,
    String borderInlineEndColor,
    String borderInlineEndStyle,
    String borderInlineEndWidth,
    String borderInlineStart,
    String borderInlineStartColor,
    String borderInlineStartStyle,
    String borderInlineStartWidth,
    String borderInlineStyle,
    String borderInlineWidth,
    String borderLeft,
    String borderLeftColor,
    String borderLeftStyle,
    String borderLeftWidth,
    String borderRadius,
    String borderRight,
    String borderRightColor,
    String borderRightStyle,
    String borderRightWidth,
    String borderSpacing,
    String borderStartEndRadius,
    String borderStartStartRadius,
    String borderStyle,
    String borderTop,
    String borderTopColor,
    String borderTopLeftRadius,
    String borderTopRightRadius,
    String borderTopStyle,
    String borderTopWidth,
    String borderWidth,
    String bottom,
    String boxShadow,
    String boxSizing,
    String breakAfter,
    String breakBefore,
    String breakInside,
    String captionSide,
    String caretColor,
    String clear,
    String clip,
    String clipPath,
    String clipRule,
    String color,
    String colorInterpolation,
    String colorInterpolationFilters,
    String colorScheme,
    String columnCount,
    String columnFill,
    String columnGap,
    String columnRule,
    String columnRuleColor,
    String columnRuleStyle,
    String columnRuleWidth,
    String columnSpan,
    String columnWidth,
    String columns,
    String contain,
    String content,
    String counterIncrement,
    String counterReset,
    String counterSet,
    String cssFloat,
    String cssText,
    String cursor,
    String direction,
    String display,
    String dominantBaseline,
    String emptyCells,
    String fill,
    String fillOpacity,
    String fillRule,
    String filter,
    String flex,
    String flexBasis,
    String flexDirection,
    String flexFlow,
    String flexGrow,
    String flexShrink,
    String flexWrap,
    String float,
    String floodColor,
    String floodOpacity,
    String font,
    String fontFamily,
    String fontFeatureSettings,
    String fontKerning,
    String fontOpticalSizing,
    String fontSize,
    String fontSizeAdjust,
    String fontStretch,
    String fontStyle,
    String fontSynthesis,
    String fontVariant,
    String fontVariantAlternates,
    String fontVariantCaps,
    String fontVariantEastAsian,
    String fontVariantLigatures,
    String fontVariantNumeric,
    String fontVariantPosition,
    String fontVariationSettings,
    String fontWeight,
    String gap,
    String grid,
    String gridArea,
    String gridAutoColumns,
    String gridAutoFlow,
    String gridAutoRows,
    String gridColumn,
    String gridColumnEnd,
    String gridColumnGap,
    String gridColumnStart,
    String gridGap,
    String gridRow,
    String gridRowEnd,
    String gridRowGap,
    String gridRowStart,
    String gridTemplate,
    String gridTemplateAreas,
    String gridTemplateColumns,
    String gridTemplateRows,
    String height,
    String hyphens,
    String imageOrientation,
    String imageRendering,
    String inlineSize,
    String inset,
    String insetBlock,
    String insetBlockEnd,
    String insetBlockStart,
    String insetInline,
    String insetInlineEnd,
    String insetInlineStart,
    String isolation,
    String justifyContent,
    String justifyItems,
    String justifySelf,
    String left,
    num length,
    String letterSpacing,
    String lightingColor,
    String lineBreak,
    String lineHeight,
    String listStyle,
    String listStyleImage,
    String listStylePosition,
    String listStyleType,
    String margin,
    String marginBlock,
    String marginBlockEnd,
    String marginBlockStart,
    String marginBottom,
    String marginInline,
    String marginInlineEnd,
    String marginInlineStart,
    String marginLeft,
    String marginRight,
    String marginTop,
    String marker,
    String markerEnd,
    String markerMid,
    String markerStart,
    String mask,
    String maskType,
    String maxBlockSize,
    String maxHeight,
    String maxInlineSize,
    String maxWidth,
    String minBlockSize,
    String minHeight,
    String minInlineSize,
    String minWidth,
    String mixBlendMode,
    String objectFit,
    String objectPosition,
    String offset,
    String offsetAnchor,
    String offsetDistance,
    String offsetPath,
    String offsetRotate,
    String opacity,
    String order,
    String orphans,
    String outline,
    String outlineColor,
    String outlineOffset,
    String outlineStyle,
    String outlineWidth,
    String overflow,
    String overflowAnchor,
    String overflowWrap,
    String overflowX,
    String overflowY,
    String overscrollBehavior,
    String overscrollBehaviorBlock,
    String overscrollBehaviorInline,
    String overscrollBehaviorX,
    String overscrollBehaviorY,
    String padding,
    String paddingBlock,
    String paddingBlockEnd,
    String paddingBlockStart,
    String paddingBottom,
    String paddingInline,
    String paddingInlineEnd,
    String paddingInlineStart,
    String paddingLeft,
    String paddingRight,
    String paddingTop,
    String pageBreakAfter,
    String pageBreakBefore,
    String pageBreakInside,
    String paintOrder,
    CssRule? parentRule,
    String perspective,
    String perspectiveOrigin,
    String placeContent,
    String placeItems,
    String placeSelf,
    String pointerEvents,
    String position,
    String quotes,
    String resize,
    String right,
    String rotate,
    String rowGap,
    String rubyPosition,
    String scale,
    String scrollBehavior,
    String scrollMargin,
    String scrollMarginBlock,
    String scrollMarginBlockEnd,
    String scrollMarginBlockStart,
    String scrollMarginBottom,
    String scrollMarginInline,
    String scrollMarginInlineEnd,
    String scrollMarginInlineStart,
    String scrollMarginLeft,
    String scrollMarginRight,
    String scrollMarginTop,
    String scrollPadding,
    String scrollPaddingBlock,
    String scrollPaddingBlockEnd,
    String scrollPaddingBlockStart,
    String scrollPaddingBottom,
    String scrollPaddingInline,
    String scrollPaddingInlineEnd,
    String scrollPaddingInlineStart,
    String scrollPaddingLeft,
    String scrollPaddingRight,
    String scrollPaddingTop,
    String scrollSnapAlign,
    String scrollSnapType,
    String shapeImageThreshold,
    String shapeMargin,
    String shapeOutside,
    String shapeRendering,
    String stopColor,
    String stopOpacity,
    String stroke,
    String strokeDasharray,
    String strokeDashoffset,
    String strokeLinecap,
    String strokeLinejoin,
    String strokeMiterlimit,
    String strokeOpacity,
    String strokeWidth,
    String tabSize,
    String tableLayout,
    String textAlign,
    String textAlignLast,
    String textAnchor,
    String textCombineUpright,
    String textDecoration,
    String textDecorationColor,
    String textDecorationLine,
    String textDecorationSkipInk,
    String textDecorationStyle,
    String textDecorationThickness,
    String textEmphasis,
    String textEmphasisColor,
    String textEmphasisPosition,
    String textEmphasisStyle,
    String textIndent,
    String textOrientation,
    String textOverflow,
    String textRendering,
    String textShadow,
    String textTransform,
    String textUnderlineOffset,
    String textUnderlinePosition,
    String top,
    String touchAction,
    String transform,
    String transformBox,
    String transformOrigin,
    String transformStyle,
    String transition,
    String transitionDelay,
    String transitionDuration,
    String transitionProperty,
    String transitionTimingFunction,
    String translate,
    String unicodeBidi,
    String userSelect,
    String verticalAlign,
    String visibility,
    String webkitAlignContent,
    String webkitAlignItems,
    String webkitAlignSelf,
    String webkitAnimation,
    String webkitAnimationDelay,
    String webkitAnimationDirection,
    String webkitAnimationDuration,
    String webkitAnimationFillMode,
    String webkitAnimationIterationCount,
    String webkitAnimationName,
    String webkitAnimationPlayState,
    String webkitAnimationTimingFunction,
    String webkitAppearance,
    String webkitBackfaceVisibility,
    String webkitBackgroundClip,
    String webkitBackgroundOrigin,
    String webkitBackgroundSize,
    String webkitBorderBottomLeftRadius,
    String webkitBorderBottomRightRadius,
    String webkitBorderRadius,
    String webkitBorderTopLeftRadius,
    String webkitBorderTopRightRadius,
    String webkitBoxAlign,
    String webkitBoxFlex,
    String webkitBoxOrdinalGroup,
    String webkitBoxOrient,
    String webkitBoxPack,
    String webkitBoxShadow,
    String webkitBoxSizing,
    String webkitFilter,
    String webkitFlex,
    String webkitFlexBasis,
    String webkitFlexDirection,
    String webkitFlexFlow,
    String webkitFlexGrow,
    String webkitFlexShrink,
    String webkitFlexWrap,
    String webkitJustifyContent,
    String webkitLineClamp,
    String webkitMask,
    String webkitMaskBoxImage,
    String webkitMaskBoxImageOutset,
    String webkitMaskBoxImageRepeat,
    String webkitMaskBoxImageSlice,
    String webkitMaskBoxImageSource,
    String webkitMaskBoxImageWidth,
    String webkitMaskClip,
    String webkitMaskComposite,
    String webkitMaskImage,
    String webkitMaskOrigin,
    String webkitMaskPosition,
    String webkitMaskRepeat,
    String webkitMaskSize,
    String webkitOrder,
    String webkitPerspective,
    String webkitPerspectiveOrigin,
    String webkitTextFillColor,
    String webkitTextSizeAdjust,
    String webkitTextStroke,
    String webkitTextStrokeColor,
    String webkitTextStrokeWidth,
    String webkitTransform,
    String webkitTransformOrigin,
    String webkitTransformStyle,
    String webkitTransition,
    String webkitTransitionDelay,
    String webkitTransitionDuration,
    String webkitTransitionProperty,
    String webkitTransitionTimingFunction,
    String webkitUserSelect,
    String whiteSpace,
    String widows,
    String width,
    String willChange,
    String wordBreak,
    String wordSpacing,
    String wordWrap,
    String writingMode,
    String zIndex,
  });
}

@JS(r'CSSStyleDeclaration')
external ICSSStyleDeclaration JCSSStyleDeclaration;

@JS()
@anonymous
class CSSStyleRule extends CssRule {
  external String get selectorText;
  external set selectorText(String value);
  external CssStyleDeclaration get style;
  external factory CSSStyleRule({
    String selectorText,
    CssStyleDeclaration style,
  });
}

@JS(r'CSSStyleRule')
external ICSSStyleRule JCSSStyleRule;

@JS()
@anonymous
class CSSStyleSheet extends StyleSheet {
  external CSSRuleList get cssRules;
  external CssRule? get ownerRule;
  external CSSRuleList get rules;
  external num addRule(String selector, String style, num index);
  external void deleteRule(num index);
  external num insertRule(String rule, num index);
  external void removeRule(num index);
  external factory CSSStyleSheet({
    CSSRuleList cssRules,
    CssRule? ownerRule,
    CSSRuleList rules,
  });
}

@JS(r'CSSStyleSheet')
external ICSSStyleSheet JCSSStyleSheet;

@JS()
@anonymous
class CSSSupportsRule extends CSSConditionRule {
  external factory CSSSupportsRule();
}

@JS(r'CSSSupportsRule')
external ICSSSupportsRule JCSSSupportsRule;

@JS()
@anonymous
class CSSTransition extends Animation {
  external String get transitionProperty;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory CSSTransition({
    String transitionProperty,
  });
}

@JS(r'CSSTransition')
external ICSSTransition JCSSTransition;

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
  external num get globalAlpha;
  external set globalAlpha(num value);
  external String get globalCompositeOperation;
  external set globalCompositeOperation(String value);
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
  external dynamic get fillStyle;
  external set fillStyle(dynamic value);
  external dynamic get strokeStyle;
  external set strokeStyle(dynamic value);
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
  external String get filter;
  external set filter(String value);
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
  external ImageData createImageData(num sw, num sh, ImageDataSettings settings);
  external ImageData getImageData(num sx, num sy, num sw, num sh, ImageDataSettings settings);
  external void putImageData(ImageData imagedata, num dx, num dy);
  external factory CanvasImageData();
}

@JS()
@anonymous
class CanvasImageSmoothing {
  external bool get imageSmoothingEnabled;
  external set imageSmoothingEnabled(bool value);
  external ImageSmoothingQuality get imageSmoothingQuality;
  external set imageSmoothingQuality(ImageSmoothingQuality value);
  external factory CanvasImageSmoothing({
    bool imageSmoothingEnabled,
    ImageSmoothingQuality imageSmoothingQuality,
  });
}

@JS()
@anonymous
class CanvasPath {
  external void arc(num x, num y, num radius, num startAngle, num endAngle, bool counterclockwise);
  external void arcTo(num x1, num y1, num x2, num y2, num radius);
  external void bezierCurveTo(num cp1x, num cp1y, num cp2x, num cp2y, num x, num y);
  external void closePath();
  external void ellipse(
      num x, num y, num radiusX, num radiusY, num rotation, num startAngle, num endAngle, bool counterclockwise);
  external void lineTo(num x, num y);
  external void moveTo(num x, num y);
  external void quadraticCurveTo(num cpx, num cpy, num x, num y);
  external void rect(num x, num y, num w, num h);
  external factory CanvasPath();
}

@JS()
@anonymous
class CanvasPathDrawingStyles {
  external CanvasLineCap get lineCap;
  external set lineCap(CanvasLineCap value);
  external num get lineDashOffset;
  external set lineDashOffset(num value);
  external CanvasLineJoin get lineJoin;
  external set lineJoin(CanvasLineJoin value);
  external num get lineWidth;
  external set lineWidth(num value);
  external num get miterLimit;
  external set miterLimit(num value);
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
class CanvasRenderingContext2D extends CanvasCompositing {
  external CanvasElement get canvas;
  external factory CanvasRenderingContext2D({
    CanvasElement canvas,
  });
}

@JS(r'CanvasRenderingContext2D')
external ICanvasRenderingContext2D JCanvasRenderingContext2D;

@JS()
@anonymous
class CanvasShadowStyles {
  external num get shadowBlur;
  external set shadowBlur(num value);
  external String get shadowColor;
  external set shadowColor(String value);
  external num get shadowOffsetX;
  external set shadowOffsetX(num value);
  external num get shadowOffsetY;
  external set shadowOffsetY(num value);
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
  external CanvasDirection get direction;
  external set direction(CanvasDirection value);
  external String get font;
  external set font(String value);
  external CanvasTextAlign get textAlign;
  external set textAlign(CanvasTextAlign value);
  external CanvasTextBaseline get textBaseline;
  external set textBaseline(CanvasTextBaseline value);
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
class CanvasUserInterface {
  external void drawFocusIfNeeded(Element element);
  external factory CanvasUserInterface();
}

@JS()
@anonymous
class ChannelMergerNode extends AudioNode {
  external factory ChannelMergerNode();
}

@JS(r'ChannelMergerNode')
external IChannelMergerNode JChannelMergerNode;

@JS()
@anonymous
class ChannelSplitterNode extends AudioNode {
  external factory ChannelSplitterNode();
}

@JS(r'ChannelSplitterNode')
external IChannelSplitterNode JChannelSplitterNode;

@JS()
@anonymous
class CharacterData extends Node {
  external String get data;
  external set data(String value);
  external num get length;
  external Document get ownerDocument;
  external void appendData(String data);
  external void deleteData(num offset, num count);
  external void insertData(num offset, String data);
  external void replaceData(num offset, num count, String data);
  external String substringData(num offset, num count);
  external factory CharacterData({
    String data,
    num length,
    Document ownerDocument,
  });
}

@JS(r'CharacterData')
external ICharacterData JCharacterData;

@JS()
@anonymous
class ChildNode {
  external void after([
    dynamic nodes1,
    dynamic nodes2,
    dynamic nodes3,
    dynamic nodes4,
    dynamic nodes5,
    dynamic nodes6,
    dynamic nodes7,
    dynamic nodes8,
    dynamic nodes9,
  ]);
  external void before([
    dynamic nodes1,
    dynamic nodes2,
    dynamic nodes3,
    dynamic nodes4,
    dynamic nodes5,
    dynamic nodes6,
    dynamic nodes7,
    dynamic nodes8,
    dynamic nodes9,
  ]);
  external void remove();
  external void replaceWith([
    dynamic nodes1,
    dynamic nodes2,
    dynamic nodes3,
    dynamic nodes4,
    dynamic nodes5,
    dynamic nodes6,
    dynamic nodes7,
    dynamic nodes8,
    dynamic nodes9,
  ]);
  external factory ChildNode();
}

@JS()
@anonymous
class ClientRect {
  external num get bottom;
  external set bottom(num value);
  external num get height;
  external num get left;
  external set left(num value);
  external num get right;
  external set right(num value);
  external num get top;
  external set top(num value);
  external num get width;
  external factory ClientRect({
    num bottom,
    num height,
    num left,
    num right,
    num top,
    num width,
  });
}

@JS(r'ClientRect')
external IClientRect JClientRect;

@JS()
@anonymous
class Clipboard extends EventTarget {
  external Promise<ClipboardItems> read();
  external Promise<String> readText();
  external Promise<void> write(ClipboardItems data);
  external Promise<void> writeText(String data);
  external factory Clipboard();
}

@JS(r'Clipboard')
external IClipboard JClipboard;

@JS()
@anonymous
class ClipboardEvent extends Event {
  external DataTransfer? get clipboardData;
  external factory ClipboardEvent({
    DataTransfer? clipboardData,
  });
}

@JS(r'ClipboardEvent')
external IClipboardEvent JClipboardEvent;

@JS()
@anonymous
class ClipboardItem {
  external List<String> get types;
  external Promise<Blob> getType(String type);
  external factory ClipboardItem({
    List<String> types,
  });
}

@JS(r'ClipboardItem')
external IClipboardItem JClipboardItem;

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
class Comment extends CharacterData {
  external factory Comment();
}

@JS(r'Comment')
external IComment JComment;

@JS()
@anonymous
class CompositionEvent extends UIEvent {
  external String get data;
  external void initCompositionEvent(
      String typeArg, bool bubblesArg, bool cancelableArg, WindowProxy? viewArg, String dataArg);
  external factory CompositionEvent({
    String data,
  });
}

@JS(r'CompositionEvent')
external ICompositionEvent JCompositionEvent;

@JS()
@anonymous
class ConstantSourceNode extends AudioScheduledSourceNode {
  external AudioParam get offset;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory ConstantSourceNode({
    AudioParam offset,
  });
}

@JS(r'ConstantSourceNode')
external IConstantSourceNode JConstantSourceNode;

@JS()
@anonymous
class ConvolverNode extends AudioNode {
  external AudioBuffer? get buffer;
  external set buffer(AudioBuffer? value);
  external bool get normalize;
  external set normalize(bool value);
  external factory ConvolverNode({
    AudioBuffer? buffer,
    bool normalize,
  });
}

@JS(r'ConvolverNode')
external IConvolverNode JConvolverNode;

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
class Credential {
  external String get id;
  external String get type;
  external factory Credential({
    String id,
    String type,
  });
}

@JS(r'Credential')
external ICredential JCredential;

@JS()
@anonymous
class CredentialsContainer {
  external Promise<Credential?> create(CredentialCreationOptions options);
  external Promise<Credential?> get(CredentialRequestOptions options);
  external Promise<void> preventSilentAccess();
  external Promise<Credential> store(Credential credential);
  external factory CredentialsContainer();
}

@JS(r'CredentialsContainer')
external ICredentialsContainer JCredentialsContainer;

@JS()
@anonymous
class Crypto {
  external SubtleCrypto get subtle;
  external T getRandomValues<T extends TypedData?>(T array);
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
class CustomElementRegistry {
  external void define(String name, CustomElementConstructor constructor, ElementDefinitionOptions options);
  external CustomElementConstructor? get(String name);
  external void upgrade(Node root);
  external Promise<CustomElementConstructor> whenDefined(String name);
  external factory CustomElementRegistry();
}

@JS(r'CustomElementRegistry')
external ICustomElementRegistry JCustomElementRegistry;

@JS()
@anonymous
class CustomEvent<T> extends Event {
  external T get detail;
  external void initCustomEvent(String type, bool bubbles, bool cancelable, T detail);
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
class DOMImplementation {
  external XmlDocument createDocument(String? namespace, String? qualifiedName, DocumentType? doctype);
  external DocumentType createDocumentType(String qualifiedName, String publicId, String systemId);
  external Document createHTMLDocument(String title);
  external bool hasFeature([
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
  external factory DOMImplementation();
}

@JS(r'DOMImplementation')
external IDOMImplementation JDOMImplementation;

@JS()
@anonymous
class DOMMatrix extends DomMatrixReadOnly {
  external DomMatrix invertSelf();
  external DomMatrix multiplySelf(DOMMatrixInit other);
  external DomMatrix preMultiplySelf(DOMMatrixInit other);
  external DomMatrix rotateAxisAngleSelf(num x, num y, num z, num angle);
  external DomMatrix rotateFromVectorSelf(num x, num y);
  external DomMatrix rotateSelf(num rotX, num rotY, num rotZ);
  external DomMatrix scale3dSelf(num scale, num originX, num originY, num originZ);
  external DomMatrix scaleSelf(num scaleX, num scaleY, num scaleZ, num originX, num originY, num originZ);
  external DomMatrix setMatrixValue(String transformList);
  external DomMatrix skewXSelf(num sx);
  external DomMatrix skewYSelf(num sy);
  external DomMatrix translateSelf(num tx, num ty, num tz);
  external factory DOMMatrix();
}

@JS(r'DOMMatrix')
external IDOMMatrix JDOMMatrix;
typedef SVGMatrix = DomMatrix;
@JS(r'SVGMatrix')
external dynamic JSVGMatrix;
typedef WebKitCSSMatrix = DomMatrix;
@JS(r'WebKitCSSMatrix')
external dynamic JWebKitCSSMatrix;

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
  @override
  external String toString();
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
class DOMParser {
  external Document parseFromString(String string, DOMParserSupportedType type);
  external factory DOMParser();
}

@JS(r'DOMParser')
external IDOMParser JDOMParser;

@JS()
@anonymous
class DOMPoint extends DomPointReadOnly {
  external factory DOMPoint();
}

@JS(r'DOMPoint')
external IDOMPoint JDOMPoint;
typedef SVGPoint = DomPoint;
@JS(r'SVGPoint')
external dynamic JSVGPoint;

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
  external factory DOMRect();
}

@JS(r'DOMRect')
external IDOMRect JDOMRect;
typedef SVGRect = DOMRect;
@JS(r'SVGRect')
external dynamic JSVGRect;

@JS()
@anonymous
class DOMRectList {
  external num get length;
  external DOMRect? item(num index);
  external factory DOMRectList({
    num length,
  });
}

@JS(r'DOMRectList')
external IDOMRectList JDOMRectList;

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
class DOMStringMap {
  external factory DOMStringMap();
}

@JS(r'DOMStringMap')
external IDOMStringMap JDOMStringMap;

@JS()
@anonymous
class DOMTokenList {
  external num get length;
  external String get value;
  external set value(String value);
  @override
  external String toString();
  external void add([
    String? tokens1,
    String? tokens2,
    String? tokens3,
    String? tokens4,
    String? tokens5,
    String? tokens6,
    String? tokens7,
    String? tokens8,
    String? tokens9,
  ]);
  external bool contains(String token);
  external String? item(num index);
  external void remove([
    String? tokens1,
    String? tokens2,
    String? tokens3,
    String? tokens4,
    String? tokens5,
    String? tokens6,
    String? tokens7,
    String? tokens8,
    String? tokens9,
  ]);
  external bool replace(String token, String newToken);
  external bool supports(String token);
  external bool toggle(String token, bool force);
  external void forEach(void Function(String value, num key, DomTokenList parent) callbackfn, dynamic thisArg);
  external factory DOMTokenList({
    num length,
    String value,
  });
}

@JS(r'DOMTokenList')
external IDOMTokenList JDOMTokenList;

@JS()
@anonymous
class DataTransfer {
  external String get dropEffect;
  external set dropEffect(String value);
  external String get effectAllowed;
  external set effectAllowed(String value);
  external FileList get files;
  external DataTransferItemList get items;
  external List<String> get types;
  external void clearData(String format);
  external String getData(String format);
  external void setData(String format, String data);
  external void setDragImage(Element image, num x, num y);
  external factory DataTransfer({
    String dropEffect,
    String effectAllowed,
    FileList files,
    DataTransferItemList items,
    List<String> types,
  });
}

@JS(r'DataTransfer')
external IDataTransfer JDataTransfer;

@JS()
@anonymous
class DataTransferItem {
  external String get kind;
  external String get type;
  external File? getAsFile();
  external void getAsString(FunctionStringCallback? callback);
  external FileSystemEntry? webkitGetAsEntry();
  external factory DataTransferItem({
    String kind,
    String type,
  });
}

@JS(r'DataTransferItem')
external IDataTransferItem JDataTransferItem;

@JS()
@anonymous
class DataTransferItemList {
  external num get length;
  external DataTransferItem? add(String data, String type);
  external void clear();
  external void remove(num index);
  external factory DataTransferItemList({
    num length,
  });
}

@JS(r'DataTransferItemList')
external IDataTransferItemList JDataTransferItemList;

@JS()
@anonymous
class DelayNode extends AudioNode {
  external AudioParam get delayTime;
  external factory DelayNode({
    AudioParam delayTime,
  });
}

@JS(r'DelayNode')
external IDelayNode JDelayNode;

@JS()
@anonymous
class DeviceMotionEvent extends Event {
  external DeviceMotionEventAcceleration? get acceleration;
  external DeviceMotionEventAcceleration? get accelerationIncludingGravity;
  external num get interval;
  external DeviceMotionEventRotationRate? get rotationRate;
  external factory DeviceMotionEvent({
    DeviceMotionEventAcceleration? acceleration,
    DeviceMotionEventAcceleration? accelerationIncludingGravity,
    num interval,
    DeviceMotionEventRotationRate? rotationRate,
  });
}

@JS(r'DeviceMotionEvent')
external IDeviceMotionEvent JDeviceMotionEvent;

@JS()
@anonymous
class DeviceMotionEventAcceleration {
  external num? get x;
  external num? get y;
  external num? get z;
  external factory DeviceMotionEventAcceleration({
    num? x,
    num? y,
    num? z,
  });
}

@JS()
@anonymous
class DeviceMotionEventRotationRate {
  external num? get alpha;
  external num? get beta;
  external num? get gamma;
  external factory DeviceMotionEventRotationRate({
    num? alpha,
    num? beta,
    num? gamma,
  });
}

@JS()
@anonymous
class DeviceOrientationEvent extends Event {
  external bool get absolute;
  external num? get alpha;
  external num? get beta;
  external num? get gamma;
  external factory DeviceOrientationEvent({
    bool absolute,
    num? alpha,
    num? beta,
    num? gamma,
  });
}

@JS(r'DeviceOrientationEvent')
external IDeviceOrientationEvent JDeviceOrientationEvent;

@JS()
@anonymous
class DocumentEventMap extends DocumentAndElementEventHandlersEventMap {
  external Event get fullscreenchange;
  external set fullscreenchange(Event value);
  external Event get fullscreenerror;
  external set fullscreenerror(Event value);
  external Event get pointerlockchange;
  external set pointerlockchange(Event value);
  external Event get pointerlockerror;
  external set pointerlockerror(Event value);
  external Event get readystatechange;
  external set readystatechange(Event value);
  external Event get visibilitychange;
  external set visibilitychange(Event value);
  external factory DocumentEventMap({
    Event fullscreenchange,
    Event fullscreenerror,
    Event pointerlockchange,
    Event pointerlockerror,
    Event readystatechange,
    Event visibilitychange,
  });
}

@JS()
@anonymous
class Document extends Node {
  external String get URL;
  external String get alinkColor;
  external set alinkColor(String value);
  external HTMLAllCollection get all;
  external HTMLCollectionOf<AnchorElement> get anchors;
  external HtmlCollection get applets;
  external String get bgColor;
  external set bgColor(String value);
  external HtmlElement get body;
  external set body(HtmlElement value);
  external String get characterSet;
  external String get charset;
  external String get compatMode;
  external String get contentType;
  external String get cookie;
  external set cookie(String value);
  external HTMLOrSVGScriptElement? get currentScript;
  external dynamic get defaultView;
  external String get designMode;
  external set designMode(String value);
  external String get dir;
  external set dir(String value);
  external DocumentType? get doctype;
  external HtmlElement get documentElement;
  external String get documentURI;
  external String get domain;
  external set domain(String value);
  external HTMLCollectionOf<EmbedElement> get embeds;
  external String get fgColor;
  external set fgColor(String value);
  external HTMLCollectionOf<FormElement> get forms;
  external bool get fullscreen;
  external bool get fullscreenEnabled;
  external HeadElement get head;
  external bool get hidden;
  external HTMLCollectionOf<ImageElement> get images;
  external DomImplementation get implementation;
  external String get inputEncoding;
  external String get lastModified;
  external String get linkColor;
  external set linkColor(String value);
  external HTMLCollectionOf<dynamic> get links;
  external Location get location;
  external dynamic Function(Event ev)? get onfullscreenchange;
  external set onfullscreenchange(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onfullscreenerror;
  external set onfullscreenerror(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onpointerlockchange;
  external set onpointerlockchange(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onpointerlockerror;
  external set onpointerlockerror(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onreadystatechange;
  external set onreadystatechange(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onvisibilitychange;
  external set onvisibilitychange(dynamic Function(Event ev)? value);
  external dynamic get ownerDocument;
  external bool get pictureInPictureEnabled;
  external HTMLCollectionOf<EmbedElement> get plugins;
  external DocumentReadyState get readyState;
  external String get referrer;
  external HTMLCollectionOf<ScriptElement> get scripts;
  external Element? get scrollingElement;
  external DocumentTimeline get timeline;
  external String get title;
  external set title(String value);
  external VisibilityState get visibilityState;
  external String get vlinkColor;
  external set vlinkColor(String value);
  external T adoptNode<T extends Node>(T node);
  external void captureEvents();
  external void clear();
  external void close();
  external Attr createAttribute(String localName);
  external Attr createAttributeNS(String? namespace, String qualifiedName);
  external CDataSection createCDATASection(String data);
  external Comment createComment(String data);
  external DocumentFragment createDocumentFragment();
  external dynamic createElement<K extends String>(K tagName, ElementCreationOptions options);
  external HtmlElement createElementNS(String namespaceURI, String qualifiedName);
  external AnimationEvent createEvent(String eventInterface);
  external NodeIterator createNodeIterator(Node root, num whatToShow, NodeFilter? filter);
  external ProcessingInstruction createProcessingInstruction(String target, String data);
  external Range createRange();
  external Text createTextNode(String data);
  external TreeWalker createTreeWalker(Node root, num whatToShow, NodeFilter? filter);
  external Element? elementFromPoint(num x, num y);
  external List<Element> elementsFromPoint(num x, num y);
  external bool execCommand(String commandId, bool showUI, String value);
  external Promise<void> exitFullscreen();
  external Promise<void> exitPictureInPicture();
  external void exitPointerLock();
  external HtmlElement? getElementById(String elementId);
  external HTMLCollectionOf<Element> getElementsByClassName(String classNames);
  external NodeListOf<HtmlElement> getElementsByName(String elementName);
  external HTMLCollectionOf<dynamic> getElementsByTagName<K extends String>(K qualifiedName);
  external HTMLCollectionOf<HtmlElement> getElementsByTagNameNS(String namespaceURI, String localName);
  external Selection? getSelection();
  external bool hasFocus();
  external Promise<bool> hasStorageAccess();
  external T importNode<T extends Node>(T node, bool deep);
  external Document open(String unused1, String unused2);
  external bool queryCommandEnabled(String commandId);
  external bool queryCommandIndeterm(String commandId);
  external bool queryCommandState(String commandId);
  external bool queryCommandSupported(String commandId);
  external String queryCommandValue(String commandId);
  external void releaseEvents();
  external Promise<void> requestStorageAccess();
  external void write([
    String? text1,
    String? text2,
    String? text3,
    String? text4,
    String? text5,
    String? text6,
    String? text7,
    String? text8,
    String? text9,
  ]);
  external void writeln([
    String? text1,
    String? text2,
    String? text3,
    String? text4,
    String? text5,
    String? text6,
    String? text7,
    String? text8,
    String? text9,
  ]);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory Document({
    String URL,
    String alinkColor,
    HTMLAllCollection all,
    HTMLCollectionOf<AnchorElement> anchors,
    HtmlCollection applets,
    String bgColor,
    HtmlElement body,
    String characterSet,
    String charset,
    String compatMode,
    String contentType,
    String cookie,
    HTMLOrSVGScriptElement? currentScript,
    dynamic defaultView,
    String designMode,
    String dir,
    DocumentType? doctype,
    HtmlElement documentElement,
    String documentURI,
    String domain,
    HTMLCollectionOf<EmbedElement> embeds,
    String fgColor,
    HTMLCollectionOf<FormElement> forms,
    bool fullscreen,
    bool fullscreenEnabled,
    HeadElement head,
    bool hidden,
    HTMLCollectionOf<ImageElement> images,
    DomImplementation implementation,
    String inputEncoding,
    String lastModified,
    String linkColor,
    HTMLCollectionOf<dynamic> links,
    dynamic Function(Event ev)? onfullscreenchange,
    dynamic Function(Event ev)? onfullscreenerror,
    dynamic Function(Event ev)? onpointerlockchange,
    dynamic Function(Event ev)? onpointerlockerror,
    dynamic Function(Event ev)? onreadystatechange,
    dynamic Function(Event ev)? onvisibilitychange,
    dynamic ownerDocument,
    bool pictureInPictureEnabled,
    HTMLCollectionOf<EmbedElement> plugins,
    DocumentReadyState readyState,
    String referrer,
    HTMLCollectionOf<ScriptElement> scripts,
    Element? scrollingElement,
    DocumentTimeline timeline,
    String title,
    VisibilityState visibilityState,
    String vlinkColor,
  });
}

@JS(r'Document')
external IDocument JDocument;

@JS()
@anonymous
class DocumentAndElementEventHandlersEventMap {
  external ClipboardEvent get copy;
  external set copy(ClipboardEvent value);
  external ClipboardEvent get cut;
  external set cut(ClipboardEvent value);
  external ClipboardEvent get paste;
  external set paste(ClipboardEvent value);
  external factory DocumentAndElementEventHandlersEventMap({
    ClipboardEvent copy,
    ClipboardEvent cut,
    ClipboardEvent paste,
  });
}

@JS()
@anonymous
class DocumentAndElementEventHandlers {
  external dynamic Function(ClipboardEvent ev)? get oncopy;
  external set oncopy(dynamic Function(ClipboardEvent ev)? value);
  external dynamic Function(ClipboardEvent ev)? get oncut;
  external set oncut(dynamic Function(ClipboardEvent ev)? value);
  external dynamic Function(ClipboardEvent ev)? get onpaste;
  external set onpaste(dynamic Function(ClipboardEvent ev)? value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory DocumentAndElementEventHandlers({
    dynamic Function(ClipboardEvent ev)? oncopy,
    dynamic Function(ClipboardEvent ev)? oncut,
    dynamic Function(ClipboardEvent ev)? onpaste,
  });
}

@JS()
@anonymous
class DocumentFragment extends Node {
  external factory DocumentFragment();
}

@JS(r'DocumentFragment')
external IDocumentFragment JDocumentFragment;

@JS()
@anonymous
class DocumentOrShadowRoot {
  external Element? get activeElement;
  external Element? get fullscreenElement;
  external Element? get pictureInPictureElement;
  external Element? get pointerLockElement;
  external StyleSheetList get styleSheets;
  external List<Animation> getAnimations();
  external factory DocumentOrShadowRoot({
    Element? activeElement,
    Element? fullscreenElement,
    Element? pictureInPictureElement,
    Element? pointerLockElement,
    StyleSheetList styleSheets,
  });
}

@JS()
@anonymous
class DocumentTimeline extends AnimationTimeline {
  external factory DocumentTimeline();
}

@JS(r'DocumentTimeline')
external IDocumentTimeline JDocumentTimeline;

@JS()
@anonymous
class DocumentType extends Node {
  external String get name;
  external Document get ownerDocument;
  external String get publicId;
  external String get systemId;
  external factory DocumentType({
    String name,
    Document ownerDocument,
    String publicId,
    String systemId,
  });
}

@JS(r'DocumentType')
external IDocumentType JDocumentType;

@JS()
@anonymous
class DragEvent extends MouseEvent {
  external DataTransfer? get dataTransfer;
  external factory DragEvent({
    DataTransfer? dataTransfer,
  });
}

@JS(r'DragEvent')
external IDragEvent JDragEvent;

@JS()
@anonymous
class DynamicsCompressorNode extends AudioNode {
  external AudioParam get attack;
  external AudioParam get knee;
  external AudioParam get ratio;
  external num get reduction;
  external AudioParam get release;
  external AudioParam get threshold;
  external factory DynamicsCompressorNode({
    AudioParam attack,
    AudioParam knee,
    AudioParam ratio,
    num reduction,
    AudioParam release,
    AudioParam threshold,
  });
}

@JS(r'DynamicsCompressorNode')
external IDynamicsCompressorNode JDynamicsCompressorNode;

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
class EXT_color_buffer_float {
  external factory EXT_color_buffer_float();
}

@JS()
@anonymous
class EXT_color_buffer_half_float {
  external GLenum get FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE_EXT;
  external GLenum get RGB16F_EXT;
  external GLenum get RGBA16F_EXT;
  external GLenum get UNSIGNED_NORMALIZED_EXT;
  external factory EXT_color_buffer_half_float({
    GLenum FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE_EXT,
    GLenum RGB16F_EXT,
    GLenum RGBA16F_EXT,
    GLenum UNSIGNED_NORMALIZED_EXT,
  });
}

@JS()
@anonymous
class EXT_float_blend {
  external factory EXT_float_blend();
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
class EXT_texture_compression_rgtc {
  external GLenum get COMPRESSED_RED_GREEN_RGTC2_EXT;
  external GLenum get COMPRESSED_RED_RGTC1_EXT;
  external GLenum get COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT;
  external GLenum get COMPRESSED_SIGNED_RED_RGTC1_EXT;
  external factory EXT_texture_compression_rgtc({
    GLenum COMPRESSED_RED_GREEN_RGTC2_EXT,
    GLenum COMPRESSED_RED_RGTC1_EXT,
    GLenum COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT,
    GLenum COMPRESSED_SIGNED_RED_RGTC1_EXT,
  });
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
class ElementEventMap {
  external Event get fullscreenchange;
  external set fullscreenchange(Event value);
  external Event get fullscreenerror;
  external set fullscreenerror(Event value);
  external factory ElementEventMap({
    Event fullscreenchange,
    Event fullscreenerror,
  });
}

@JS()
@anonymous
class Element extends Node {
  external NamedNodeMap get attributes;
  external DomTokenList get classList;
  external String get className;
  external set className(String value);
  external num get clientHeight;
  external num get clientLeft;
  external num get clientTop;
  external num get clientWidth;
  external String get id;
  external set id(String value);
  external String get localName;
  external String? get namespaceURI;
  external dynamic Function(Event ev)? get onfullscreenchange;
  external set onfullscreenchange(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onfullscreenerror;
  external set onfullscreenerror(dynamic Function(Event ev)? value);
  external String get outerHTML;
  external set outerHTML(String value);
  external Document get ownerDocument;
  external DomTokenList get part;
  external String? get prefix;
  external num get scrollHeight;
  external num get scrollLeft;
  external set scrollLeft(num value);
  external num get scrollTop;
  external set scrollTop(num value);
  external num get scrollWidth;
  external ShadowRoot? get shadowRoot;
  external String get slot;
  external set slot(String value);
  external String get tagName;
  external ShadowRoot attachShadow(ShadowRootInit init);
  external dynamic closest<K extends String>(K selector);
  external String? getAttribute(String qualifiedName);
  external String? getAttributeNS(String? namespace, String localName);
  external List<String> getAttributeNames();
  external Attr? getAttributeNode(String qualifiedName);
  external Attr? getAttributeNodeNS(String? namespace, String localName);
  external DOMRect getBoundingClientRect();
  external DOMRectList getClientRects();
  external HTMLCollectionOf<Element> getElementsByClassName(String classNames);
  external HTMLCollectionOf<dynamic> getElementsByTagName<K extends String>(K qualifiedName);
  external HTMLCollectionOf<HtmlElement> getElementsByTagNameNS(String namespaceURI, String localName);
  external bool hasAttribute(String qualifiedName);
  external bool hasAttributeNS(String? namespace, String localName);
  external bool hasAttributes();
  external bool hasPointerCapture(num pointerId);
  external Element? insertAdjacentElement(InsertPosition where, Element element);
  external void insertAdjacentHTML(InsertPosition position, String text);
  external void insertAdjacentText(InsertPosition where, String data);
  external bool matches(String selectors);
  external void releasePointerCapture(num pointerId);
  external void removeAttribute(String qualifiedName);
  external void removeAttributeNS(String? namespace, String localName);
  external Attr removeAttributeNode(Attr attr);
  external Promise<void> requestFullscreen(FullscreenOptions options);
  external void requestPointerLock();
  external void scroll(ScrollToOptions options);
  external void scrollBy(ScrollToOptions options);
  external void scrollIntoView(dynamic arg);
  external void scrollTo(ScrollToOptions options);
  external void setAttribute(String qualifiedName, String value);
  external void setAttributeNS(String? namespace, String qualifiedName, String value);
  external Attr? setAttributeNode(Attr attr);
  external Attr? setAttributeNodeNS(Attr attr);
  external void setPointerCapture(num pointerId);
  external bool toggleAttribute(String qualifiedName, bool force);
  external bool webkitMatchesSelector(String selectors);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory Element({
    NamedNodeMap attributes,
    DomTokenList classList,
    String className,
    num clientHeight,
    num clientLeft,
    num clientTop,
    num clientWidth,
    String id,
    String localName,
    String? namespaceURI,
    dynamic Function(Event ev)? onfullscreenchange,
    dynamic Function(Event ev)? onfullscreenerror,
    String outerHTML,
    Document ownerDocument,
    DomTokenList part,
    String? prefix,
    num scrollHeight,
    num scrollLeft,
    num scrollTop,
    num scrollWidth,
    ShadowRoot? shadowRoot,
    String slot,
    String tagName,
  });
}

@JS(r'Element')
external IElement JElement;

@JS()
@anonymous
class ElementCSSInlineStyle {
  external CssStyleDeclaration get style;
  external factory ElementCSSInlineStyle({
    CssStyleDeclaration style,
  });
}

@JS()
@anonymous
class ElementContentEditable {
  external String get contentEditable;
  external set contentEditable(String value);
  external String get enterKeyHint;
  external set enterKeyHint(String value);
  external String get inputMode;
  external set inputMode(String value);
  external bool get isContentEditable;
  external factory ElementContentEditable({
    String contentEditable,
    String enterKeyHint,
    String inputMode,
    bool isContentEditable,
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
  external bool get cancelBubble;
  external set cancelBubble(bool value);
  external bool get cancelable;
  external bool get composed;
  external EventTarget? get currentTarget;
  external bool get defaultPrevented;
  external num get eventPhase;
  external bool get isTrusted;
  external bool get returnValue;
  external set returnValue(bool value);
  external EventTarget? get srcElement;
  external EventTarget? get target;
  external DOMHighResTimeStamp get timeStamp;
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
    DOMHighResTimeStamp timeStamp,
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
class EventListener {
  external factory EventListener();
}

@JS()
@anonymous
class EventListenerObject {
  external void handleEvent(Event object);
  external factory EventListenerObject();
}

@JS()
@anonymous
class EventSourceEventMap {
  external Event get error;
  external set error(Event value);
  external MessageEvent get message;
  external set message(MessageEvent value);
  external Event get open;
  external set open(Event value);
  external factory EventSourceEventMap({
    Event error,
    MessageEvent message,
    Event open,
  });
}

@JS()
@anonymous
class EventSource extends EventTarget {
  external dynamic Function(Event ev)? get onerror;
  external set onerror(dynamic Function(Event ev)? value);
  external dynamic Function(MessageEvent ev)? get onmessage;
  external set onmessage(dynamic Function(MessageEvent ev)? value);
  external dynamic Function(Event ev)? get onopen;
  external set onopen(dynamic Function(Event ev)? value);
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
  external void addEventListener(String type, EventListenerOrEventListenerObject? callback, dynamic options);
  external bool dispatchEvent(Event event);
  external void removeEventListener(String type, EventListenerOrEventListenerObject? callback, dynamic options);
  external factory EventTarget();
}

@JS(r'EventTarget')
external IEventTarget JEventTarget;

@JS()
@anonymous
class External {
  external void AddSearchProvider();
  external void IsSearchProviderInstalled();
  external factory External();
}

@JS(r'External')
external IExternal JExternal;

@JS()
@anonymous
class File extends Blob {
  external num get lastModified;
  external String get name;
  external String get webkitRelativePath;
  external factory File({
    num lastModified,
    String name,
    String webkitRelativePath,
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
  external ProgressEvent<FileReader> get abort;
  external set abort(ProgressEvent<FileReader> value);
  external ProgressEvent<FileReader> get error;
  external set error(ProgressEvent<FileReader> value);
  external ProgressEvent<FileReader> get load;
  external set load(ProgressEvent<FileReader> value);
  external ProgressEvent<FileReader> get loadend;
  external set loadend(ProgressEvent<FileReader> value);
  external ProgressEvent<FileReader> get loadstart;
  external set loadstart(ProgressEvent<FileReader> value);
  external ProgressEvent<FileReader> get progress;
  external set progress(ProgressEvent<FileReader> value);
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
  external dynamic Function(ProgressEvent<FileReader> ev)? get onabort;
  external set onabort(dynamic Function(ProgressEvent<FileReader> ev)? value);
  external dynamic Function(ProgressEvent<FileReader> ev)? get onerror;
  external set onerror(dynamic Function(ProgressEvent<FileReader> ev)? value);
  external dynamic Function(ProgressEvent<FileReader> ev)? get onload;
  external set onload(dynamic Function(ProgressEvent<FileReader> ev)? value);
  external dynamic Function(ProgressEvent<FileReader> ev)? get onloadend;
  external set onloadend(dynamic Function(ProgressEvent<FileReader> ev)? value);
  external dynamic Function(ProgressEvent<FileReader> ev)? get onloadstart;
  external set onloadstart(dynamic Function(ProgressEvent<FileReader> ev)? value);
  external dynamic Function(ProgressEvent<FileReader> ev)? get onprogress;
  external set onprogress(dynamic Function(ProgressEvent<FileReader> ev)? value);
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
class FileSystem {
  external String get name;
  external FileSystemDirectoryEntry get root;
  external factory FileSystem({
    String name,
    FileSystemDirectoryEntry root,
  });
}

@JS(r'FileSystem')
external IFileSystem JFileSystem;

@JS()
@anonymous
class FileSystemDirectoryEntry extends FileSystemEntry {
  external FileSystemDirectoryReader createReader();
  external void getDirectory(
      String? path, FileSystemFlags options, FileSystemEntryCallback successCallback, ErrorCallback errorCallback);
  external void getFile(
      String? path, FileSystemFlags options, FileSystemEntryCallback successCallback, ErrorCallback errorCallback);
  external factory FileSystemDirectoryEntry();
}

@JS(r'FileSystemDirectoryEntry')
external IFileSystemDirectoryEntry JFileSystemDirectoryEntry;

@JS()
@anonymous
class FileSystemDirectoryReader {
  external void readEntries(FileSystemEntriesCallback successCallback, ErrorCallback errorCallback);
  external factory FileSystemDirectoryReader();
}

@JS(r'FileSystemDirectoryReader')
external IFileSystemDirectoryReader JFileSystemDirectoryReader;

@JS()
@anonymous
class FileSystemEntry {
  external FileSystem get filesystem;
  external String get fullPath;
  external bool get isDirectory;
  external bool get isFile;
  external String get name;
  external void getParent(FileSystemEntryCallback successCallback, ErrorCallback errorCallback);
  external factory FileSystemEntry({
    FileSystem filesystem,
    String fullPath,
    bool isDirectory,
    bool isFile,
    String name,
  });
}

@JS(r'FileSystemEntry')
external IFileSystemEntry JFileSystemEntry;

@JS()
@anonymous
class FileSystemFileEntry extends FileSystemEntry {
  external void file(FileCallback successCallback, ErrorCallback errorCallback);
  external factory FileSystemFileEntry();
}

@JS(r'FileSystemFileEntry')
external IFileSystemFileEntry JFileSystemFileEntry;

@JS()
@anonymous
class FocusEvent extends UIEvent {
  external EventTarget? get relatedTarget;
  external factory FocusEvent({
    EventTarget? relatedTarget,
  });
}

@JS(r'FocusEvent')
external IFocusEvent JFocusEvent;

@JS()
@anonymous
class FontFace {
  external String get ascentOverride;
  external set ascentOverride(String value);
  external String get descentOverride;
  external set descentOverride(String value);
  external String get display;
  external set display(String value);
  external String get family;
  external set family(String value);
  external String get featureSettings;
  external set featureSettings(String value);
  external String get lineGapOverride;
  external set lineGapOverride(String value);
  external Promise<FontFace> get loaded;
  external FontFaceLoadStatus get status;
  external String get stretch;
  external set stretch(String value);
  external String get style;
  external set style(String value);
  external String get unicodeRange;
  external set unicodeRange(String value);
  external String get variant;
  external set variant(String value);
  external String get variationSettings;
  external set variationSettings(String value);
  external String get weight;
  external set weight(String value);
  external Promise<FontFace> load();
  external factory FontFace({
    String ascentOverride,
    String descentOverride,
    String display,
    String family,
    String featureSettings,
    String lineGapOverride,
    Promise<FontFace> loaded,
    FontFaceLoadStatus status,
    String stretch,
    String style,
    String unicodeRange,
    String variant,
    String variationSettings,
    String weight,
  });
}

@JS(r'FontFace')
external IFontFace JFontFace;

@JS()
@anonymous
class FontFaceSetEventMap {
  external Event get loading;
  external set loading(Event value);
  external Event get loadingdone;
  external set loadingdone(Event value);
  external Event get loadingerror;
  external set loadingerror(Event value);
  external factory FontFaceSetEventMap({
    Event loading,
    Event loadingdone,
    Event loadingerror,
  });
}

@JS()
@anonymous
class FontFaceSet extends EventTarget {
  external dynamic Function(Event ev)? get onloading;
  external set onloading(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onloadingdone;
  external set onloadingdone(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onloadingerror;
  external set onloadingerror(dynamic Function(Event ev)? value);
  external Promise<FontFaceSet> get ready;
  external FontFaceSetLoadStatus get status;
  external bool check(String font, String text);
  external Promise<List<FontFace>> load(String font, String text);
  external void forEach(void Function(FontFace value, FontFace key, FontFaceSet parent) callbackfn, dynamic thisArg);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory FontFaceSet({
    dynamic Function(Event ev)? onloading,
    dynamic Function(Event ev)? onloadingdone,
    dynamic Function(Event ev)? onloadingerror,
    Promise<FontFaceSet> ready,
    FontFaceSetLoadStatus status,
  });
}

@JS(r'FontFaceSet')
external IFontFaceSet JFontFaceSet;

@JS()
@anonymous
class FontFaceSetLoadEvent extends Event {
  external List<FontFace> get fontfaces;
  external factory FontFaceSetLoadEvent({
    List<FontFace> fontfaces,
  });
}

@JS(r'FontFaceSetLoadEvent')
external IFontFaceSetLoadEvent JFontFaceSetLoadEvent;

@JS()
@anonymous
class FontFaceSource {
  external FontFaceSet get fonts;
  external factory FontFaceSource({
    FontFaceSet fonts,
  });
}

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
class FormDataEvent extends Event {
  external FormData get formData;
  external factory FormDataEvent({
    FormData formData,
  });
}

@JS(r'FormDataEvent')
external IFormDataEvent JFormDataEvent;

@JS()
@anonymous
class GainNode extends AudioNode {
  external AudioParam get gain;
  external factory GainNode({
    AudioParam gain,
  });
}

@JS(r'GainNode')
external IGainNode JGainNode;

@JS()
@anonymous
class Gamepad {
  external List<num> get axes;
  external List<GamepadButton> get buttons;
  external bool get connected;
  external List<GamepadHapticActuator> get hapticActuators;
  external String get id;
  external num get index;
  external GamepadMappingType get mapping;
  external DOMHighResTimeStamp get timestamp;
  external factory Gamepad({
    List<num> axes,
    List<GamepadButton> buttons,
    bool connected,
    List<GamepadHapticActuator> hapticActuators,
    String id,
    num index,
    GamepadMappingType mapping,
    DOMHighResTimeStamp timestamp,
  });
}

@JS(r'Gamepad')
external IGamepad JGamepad;

@JS()
@anonymous
class GamepadButton {
  external bool get pressed;
  external bool get touched;
  external num get value;
  external factory GamepadButton({
    bool pressed,
    bool touched,
    num value,
  });
}

@JS(r'GamepadButton')
external IGamepadButton JGamepadButton;

@JS()
@anonymous
class GamepadEvent extends Event {
  external Gamepad get gamepad;
  external factory GamepadEvent({
    Gamepad gamepad,
  });
}

@JS(r'GamepadEvent')
external IGamepadEvent JGamepadEvent;

@JS()
@anonymous
class GamepadHapticActuator {
  external GamepadHapticActuatorType get type;
  external factory GamepadHapticActuator({
    GamepadHapticActuatorType type,
  });
}

@JS(r'GamepadHapticActuator')
external IGamepadHapticActuator JGamepadHapticActuator;

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
class Geolocation {
  external void clearWatch(num watchId);
  external void getCurrentPosition(
      PositionCallback successCallback, PositionErrorCallback? errorCallback, PositionOptions options);
  external num watchPosition(
      PositionCallback successCallback, PositionErrorCallback? errorCallback, PositionOptions options);
  external factory Geolocation();
}

@JS(r'Geolocation')
external IGeolocation JGeolocation;

@JS()
@anonymous
class GeolocationCoordinates {
  external num get accuracy;
  external num? get altitude;
  external num? get altitudeAccuracy;
  external num? get heading;
  external num get latitude;
  external num get longitude;
  external num? get speed;
  external factory GeolocationCoordinates({
    num accuracy,
    num? altitude,
    num? altitudeAccuracy,
    num? heading,
    num latitude,
    num longitude,
    num? speed,
  });
}

@JS(r'GeolocationCoordinates')
external IGeolocationCoordinates JGeolocationCoordinates;

@JS()
@anonymous
class GeolocationPosition {
  external GeolocationCoordinates get coords;
  external DOMTimeStamp get timestamp;
  external factory GeolocationPosition({
    GeolocationCoordinates coords,
    DOMTimeStamp timestamp,
  });
}

@JS(r'GeolocationPosition')
external IGeolocationPosition JGeolocationPosition;

@JS()
@anonymous
class GeolocationPositionError {
  external num get code;
  external String get message;
  external num get PERMISSION_DENIED;
  external num get POSITION_UNAVAILABLE;
  external num get TIMEOUT;
  external factory GeolocationPositionError({
    num code,
    String message,
    num PERMISSION_DENIED,
    num POSITION_UNAVAILABLE,
    num TIMEOUT,
  });
}

@JS(r'GeolocationPositionError')
external IGeolocationPositionError JGeolocationPositionError;

@JS()
@anonymous
class GlobalEventHandlersEventMap {
  external UIEvent get abort;
  external set abort(UIEvent value);
  external AnimationEvent get animationcancel;
  external set animationcancel(AnimationEvent value);
  external AnimationEvent get animationend;
  external set animationend(AnimationEvent value);
  external AnimationEvent get animationiteration;
  external set animationiteration(AnimationEvent value);
  external AnimationEvent get animationstart;
  external set animationstart(AnimationEvent value);
  external MouseEvent get auxclick;
  external set auxclick(MouseEvent value);
  external InputEvent get beforeinput;
  external set beforeinput(InputEvent value);
  external FocusEvent get blur;
  external set blur(FocusEvent value);
  external Event get canplay;
  external set canplay(Event value);
  external Event get canplaythrough;
  external set canplaythrough(Event value);
  external Event get change;
  external set change(Event value);
  external MouseEvent get click;
  external set click(MouseEvent value);
  external Event get close;
  external set close(Event value);
  external CompositionEvent get compositionend;
  external set compositionend(CompositionEvent value);
  external CompositionEvent get compositionstart;
  external set compositionstart(CompositionEvent value);
  external CompositionEvent get compositionupdate;
  external set compositionupdate(CompositionEvent value);
  external MouseEvent get contextmenu;
  external set contextmenu(MouseEvent value);
  external Event get cuechange;
  external set cuechange(Event value);
  external MouseEvent get dblclick;
  external set dblclick(MouseEvent value);
  external DragEvent get drag;
  external set drag(DragEvent value);
  external DragEvent get dragend;
  external set dragend(DragEvent value);
  external DragEvent get dragenter;
  external set dragenter(DragEvent value);
  external DragEvent get dragleave;
  external set dragleave(DragEvent value);
  external DragEvent get dragover;
  external set dragover(DragEvent value);
  external DragEvent get dragstart;
  external set dragstart(DragEvent value);
  external DragEvent get drop;
  external set drop(DragEvent value);
  external Event get durationchange;
  external set durationchange(Event value);
  external Event get emptied;
  external set emptied(Event value);
  external Event get ended;
  external set ended(Event value);
  external ErrorEvent get error;
  external set error(ErrorEvent value);
  external FocusEvent get focus;
  external set focus(FocusEvent value);
  external FocusEvent get focusin;
  external set focusin(FocusEvent value);
  external FocusEvent get focusout;
  external set focusout(FocusEvent value);
  external FormDataEvent get formdata;
  external set formdata(FormDataEvent value);
  external PointerEvent get gotpointercapture;
  external set gotpointercapture(PointerEvent value);
  external Event get input;
  external set input(Event value);
  external Event get invalid;
  external set invalid(Event value);
  external KeyboardEvent get keydown;
  external set keydown(KeyboardEvent value);
  external KeyboardEvent get keypress;
  external set keypress(KeyboardEvent value);
  external KeyboardEvent get keyup;
  external set keyup(KeyboardEvent value);
  external Event get load;
  external set load(Event value);
  external Event get loadeddata;
  external set loadeddata(Event value);
  external Event get loadedmetadata;
  external set loadedmetadata(Event value);
  external Event get loadstart;
  external set loadstart(Event value);
  external PointerEvent get lostpointercapture;
  external set lostpointercapture(PointerEvent value);
  external MouseEvent get mousedown;
  external set mousedown(MouseEvent value);
  external MouseEvent get mouseenter;
  external set mouseenter(MouseEvent value);
  external MouseEvent get mouseleave;
  external set mouseleave(MouseEvent value);
  external MouseEvent get mousemove;
  external set mousemove(MouseEvent value);
  external MouseEvent get mouseout;
  external set mouseout(MouseEvent value);
  external MouseEvent get mouseover;
  external set mouseover(MouseEvent value);
  external MouseEvent get mouseup;
  external set mouseup(MouseEvent value);
  external Event get pause;
  external set pause(Event value);
  external Event get play;
  external set play(Event value);
  external Event get playing;
  external set playing(Event value);
  external PointerEvent get pointercancel;
  external set pointercancel(PointerEvent value);
  external PointerEvent get pointerdown;
  external set pointerdown(PointerEvent value);
  external PointerEvent get pointerenter;
  external set pointerenter(PointerEvent value);
  external PointerEvent get pointerleave;
  external set pointerleave(PointerEvent value);
  external PointerEvent get pointermove;
  external set pointermove(PointerEvent value);
  external PointerEvent get pointerout;
  external set pointerout(PointerEvent value);
  external PointerEvent get pointerover;
  external set pointerover(PointerEvent value);
  external PointerEvent get pointerup;
  external set pointerup(PointerEvent value);
  external ProgressEvent get progress;
  external set progress(ProgressEvent value);
  external Event get ratechange;
  external set ratechange(Event value);
  external Event get reset;
  external set reset(Event value);
  external UIEvent get resize;
  external set resize(UIEvent value);
  external Event get scroll;
  external set scroll(Event value);
  external SecurityPolicyViolationEvent get securitypolicyviolation;
  external set securitypolicyviolation(SecurityPolicyViolationEvent value);
  external Event get seeked;
  external set seeked(Event value);
  external Event get seeking;
  external set seeking(Event value);
  external Event get select;
  external set select(Event value);
  external Event get selectionchange;
  external set selectionchange(Event value);
  external Event get selectstart;
  external set selectstart(Event value);
  external Event get stalled;
  external set stalled(Event value);
  external Event get submit;
  external set submit(Event value);
  external Event get suspend;
  external set suspend(Event value);
  external Event get timeupdate;
  external set timeupdate(Event value);
  external Event get toggle;
  external set toggle(Event value);
  external TouchEvent get touchcancel;
  external set touchcancel(TouchEvent value);
  external TouchEvent get touchend;
  external set touchend(TouchEvent value);
  external TouchEvent get touchmove;
  external set touchmove(TouchEvent value);
  external TouchEvent get touchstart;
  external set touchstart(TouchEvent value);
  external TransitionEvent get transitioncancel;
  external set transitioncancel(TransitionEvent value);
  external TransitionEvent get transitionend;
  external set transitionend(TransitionEvent value);
  external TransitionEvent get transitionrun;
  external set transitionrun(TransitionEvent value);
  external TransitionEvent get transitionstart;
  external set transitionstart(TransitionEvent value);
  external Event get volumechange;
  external set volumechange(Event value);
  external Event get waiting;
  external set waiting(Event value);
  external Event get webkitanimationend;
  external set webkitanimationend(Event value);
  external Event get webkitanimationiteration;
  external set webkitanimationiteration(Event value);
  external Event get webkitanimationstart;
  external set webkitanimationstart(Event value);
  external Event get webkittransitionend;
  external set webkittransitionend(Event value);
  external WheelEvent get wheel;
  external set wheel(WheelEvent value);
  external factory GlobalEventHandlersEventMap({
    UIEvent abort,
    AnimationEvent animationcancel,
    AnimationEvent animationend,
    AnimationEvent animationiteration,
    AnimationEvent animationstart,
    MouseEvent auxclick,
    InputEvent beforeinput,
    FocusEvent blur,
    Event canplay,
    Event canplaythrough,
    Event change,
    MouseEvent click,
    Event close,
    CompositionEvent compositionend,
    CompositionEvent compositionstart,
    CompositionEvent compositionupdate,
    MouseEvent contextmenu,
    Event cuechange,
    MouseEvent dblclick,
    DragEvent drag,
    DragEvent dragend,
    DragEvent dragenter,
    DragEvent dragleave,
    DragEvent dragover,
    DragEvent dragstart,
    DragEvent drop,
    Event durationchange,
    Event emptied,
    Event ended,
    ErrorEvent error,
    FocusEvent focus,
    FocusEvent focusin,
    FocusEvent focusout,
    FormDataEvent formdata,
    PointerEvent gotpointercapture,
    Event input,
    Event invalid,
    KeyboardEvent keydown,
    KeyboardEvent keypress,
    KeyboardEvent keyup,
    Event load,
    Event loadeddata,
    Event loadedmetadata,
    Event loadstart,
    PointerEvent lostpointercapture,
    MouseEvent mousedown,
    MouseEvent mouseenter,
    MouseEvent mouseleave,
    MouseEvent mousemove,
    MouseEvent mouseout,
    MouseEvent mouseover,
    MouseEvent mouseup,
    Event pause,
    Event play,
    Event playing,
    PointerEvent pointercancel,
    PointerEvent pointerdown,
    PointerEvent pointerenter,
    PointerEvent pointerleave,
    PointerEvent pointermove,
    PointerEvent pointerout,
    PointerEvent pointerover,
    PointerEvent pointerup,
    ProgressEvent progress,
    Event ratechange,
    Event reset,
    UIEvent resize,
    Event scroll,
    SecurityPolicyViolationEvent securitypolicyviolation,
    Event seeked,
    Event seeking,
    Event select,
    Event selectionchange,
    Event selectstart,
    Event stalled,
    Event submit,
    Event suspend,
    Event timeupdate,
    Event toggle,
    TouchEvent touchcancel,
    TouchEvent touchend,
    TouchEvent touchmove,
    TouchEvent touchstart,
    TransitionEvent transitioncancel,
    TransitionEvent transitionend,
    TransitionEvent transitionrun,
    TransitionEvent transitionstart,
    Event volumechange,
    Event waiting,
    Event webkitanimationend,
    Event webkitanimationiteration,
    Event webkitanimationstart,
    Event webkittransitionend,
    WheelEvent wheel,
  });
}

@JS()
@anonymous
class GlobalEventHandlers {
  external dynamic Function(UIEvent ev)? get onabort;
  external set onabort(dynamic Function(UIEvent ev)? value);
  external dynamic Function(AnimationEvent ev)? get onanimationcancel;
  external set onanimationcancel(dynamic Function(AnimationEvent ev)? value);
  external dynamic Function(AnimationEvent ev)? get onanimationend;
  external set onanimationend(dynamic Function(AnimationEvent ev)? value);
  external dynamic Function(AnimationEvent ev)? get onanimationiteration;
  external set onanimationiteration(dynamic Function(AnimationEvent ev)? value);
  external dynamic Function(AnimationEvent ev)? get onanimationstart;
  external set onanimationstart(dynamic Function(AnimationEvent ev)? value);
  external dynamic Function(MouseEvent ev)? get onauxclick;
  external set onauxclick(dynamic Function(MouseEvent ev)? value);
  external dynamic Function(FocusEvent ev)? get onblur;
  external set onblur(dynamic Function(FocusEvent ev)? value);
  external dynamic Function(Event ev)? get oncanplay;
  external set oncanplay(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get oncanplaythrough;
  external set oncanplaythrough(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onchange;
  external set onchange(dynamic Function(Event ev)? value);
  external dynamic Function(MouseEvent ev)? get onclick;
  external set onclick(dynamic Function(MouseEvent ev)? value);
  external dynamic Function(Event ev)? get onclose;
  external set onclose(dynamic Function(Event ev)? value);
  external dynamic Function(MouseEvent ev)? get oncontextmenu;
  external set oncontextmenu(dynamic Function(MouseEvent ev)? value);
  external dynamic Function(Event ev)? get oncuechange;
  external set oncuechange(dynamic Function(Event ev)? value);
  external dynamic Function(MouseEvent ev)? get ondblclick;
  external set ondblclick(dynamic Function(MouseEvent ev)? value);
  external dynamic Function(DragEvent ev)? get ondrag;
  external set ondrag(dynamic Function(DragEvent ev)? value);
  external dynamic Function(DragEvent ev)? get ondragend;
  external set ondragend(dynamic Function(DragEvent ev)? value);
  external dynamic Function(DragEvent ev)? get ondragenter;
  external set ondragenter(dynamic Function(DragEvent ev)? value);
  external dynamic Function(DragEvent ev)? get ondragleave;
  external set ondragleave(dynamic Function(DragEvent ev)? value);
  external dynamic Function(DragEvent ev)? get ondragover;
  external set ondragover(dynamic Function(DragEvent ev)? value);
  external dynamic Function(DragEvent ev)? get ondragstart;
  external set ondragstart(dynamic Function(DragEvent ev)? value);
  external dynamic Function(DragEvent ev)? get ondrop;
  external set ondrop(dynamic Function(DragEvent ev)? value);
  external dynamic Function(Event ev)? get ondurationchange;
  external set ondurationchange(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onemptied;
  external set onemptied(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onended;
  external set onended(dynamic Function(Event ev)? value);
  external OnErrorEventHandler get onerror;
  external set onerror(OnErrorEventHandler value);
  external dynamic Function(FocusEvent ev)? get onfocus;
  external set onfocus(dynamic Function(FocusEvent ev)? value);
  external dynamic Function(FormDataEvent ev)? get onformdata;
  external set onformdata(dynamic Function(FormDataEvent ev)? value);
  external dynamic Function(PointerEvent ev)? get ongotpointercapture;
  external set ongotpointercapture(dynamic Function(PointerEvent ev)? value);
  external dynamic Function(Event ev)? get oninput;
  external set oninput(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get oninvalid;
  external set oninvalid(dynamic Function(Event ev)? value);
  external dynamic Function(KeyboardEvent ev)? get onkeydown;
  external set onkeydown(dynamic Function(KeyboardEvent ev)? value);
  external dynamic Function(KeyboardEvent ev)? get onkeypress;
  external set onkeypress(dynamic Function(KeyboardEvent ev)? value);
  external dynamic Function(KeyboardEvent ev)? get onkeyup;
  external set onkeyup(dynamic Function(KeyboardEvent ev)? value);
  external dynamic Function(Event ev)? get onload;
  external set onload(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onloadeddata;
  external set onloadeddata(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onloadedmetadata;
  external set onloadedmetadata(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onloadstart;
  external set onloadstart(dynamic Function(Event ev)? value);
  external dynamic Function(PointerEvent ev)? get onlostpointercapture;
  external set onlostpointercapture(dynamic Function(PointerEvent ev)? value);
  external dynamic Function(MouseEvent ev)? get onmousedown;
  external set onmousedown(dynamic Function(MouseEvent ev)? value);
  external dynamic Function(MouseEvent ev)? get onmouseenter;
  external set onmouseenter(dynamic Function(MouseEvent ev)? value);
  external dynamic Function(MouseEvent ev)? get onmouseleave;
  external set onmouseleave(dynamic Function(MouseEvent ev)? value);
  external dynamic Function(MouseEvent ev)? get onmousemove;
  external set onmousemove(dynamic Function(MouseEvent ev)? value);
  external dynamic Function(MouseEvent ev)? get onmouseout;
  external set onmouseout(dynamic Function(MouseEvent ev)? value);
  external dynamic Function(MouseEvent ev)? get onmouseover;
  external set onmouseover(dynamic Function(MouseEvent ev)? value);
  external dynamic Function(MouseEvent ev)? get onmouseup;
  external set onmouseup(dynamic Function(MouseEvent ev)? value);
  external dynamic Function(Event ev)? get onpause;
  external set onpause(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onplay;
  external set onplay(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onplaying;
  external set onplaying(dynamic Function(Event ev)? value);
  external dynamic Function(PointerEvent ev)? get onpointercancel;
  external set onpointercancel(dynamic Function(PointerEvent ev)? value);
  external dynamic Function(PointerEvent ev)? get onpointerdown;
  external set onpointerdown(dynamic Function(PointerEvent ev)? value);
  external dynamic Function(PointerEvent ev)? get onpointerenter;
  external set onpointerenter(dynamic Function(PointerEvent ev)? value);
  external dynamic Function(PointerEvent ev)? get onpointerleave;
  external set onpointerleave(dynamic Function(PointerEvent ev)? value);
  external dynamic Function(PointerEvent ev)? get onpointermove;
  external set onpointermove(dynamic Function(PointerEvent ev)? value);
  external dynamic Function(PointerEvent ev)? get onpointerout;
  external set onpointerout(dynamic Function(PointerEvent ev)? value);
  external dynamic Function(PointerEvent ev)? get onpointerover;
  external set onpointerover(dynamic Function(PointerEvent ev)? value);
  external dynamic Function(PointerEvent ev)? get onpointerup;
  external set onpointerup(dynamic Function(PointerEvent ev)? value);
  external dynamic Function(ProgressEvent ev)? get onprogress;
  external set onprogress(dynamic Function(ProgressEvent ev)? value);
  external dynamic Function(Event ev)? get onratechange;
  external set onratechange(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onreset;
  external set onreset(dynamic Function(Event ev)? value);
  external dynamic Function(UIEvent ev)? get onresize;
  external set onresize(dynamic Function(UIEvent ev)? value);
  external dynamic Function(Event ev)? get onscroll;
  external set onscroll(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onseeked;
  external set onseeked(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onseeking;
  external set onseeking(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onselect;
  external set onselect(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onselectionchange;
  external set onselectionchange(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onselectstart;
  external set onselectstart(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onstalled;
  external set onstalled(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onsubmit;
  external set onsubmit(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onsuspend;
  external set onsuspend(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get ontimeupdate;
  external set ontimeupdate(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get ontoggle;
  external set ontoggle(dynamic Function(Event ev)? value);
  external dynamic Function(TouchEvent ev)? get ontouchcancel;
  external set ontouchcancel(dynamic Function(TouchEvent ev)? value);
  external dynamic Function(TouchEvent ev)? get ontouchend;
  external set ontouchend(dynamic Function(TouchEvent ev)? value);
  external dynamic Function(TouchEvent ev)? get ontouchmove;
  external set ontouchmove(dynamic Function(TouchEvent ev)? value);
  external dynamic Function(TouchEvent ev)? get ontouchstart;
  external set ontouchstart(dynamic Function(TouchEvent ev)? value);
  external dynamic Function(TransitionEvent ev)? get ontransitioncancel;
  external set ontransitioncancel(dynamic Function(TransitionEvent ev)? value);
  external dynamic Function(TransitionEvent ev)? get ontransitionend;
  external set ontransitionend(dynamic Function(TransitionEvent ev)? value);
  external dynamic Function(TransitionEvent ev)? get ontransitionrun;
  external set ontransitionrun(dynamic Function(TransitionEvent ev)? value);
  external dynamic Function(TransitionEvent ev)? get ontransitionstart;
  external set ontransitionstart(dynamic Function(TransitionEvent ev)? value);
  external dynamic Function(Event ev)? get onvolumechange;
  external set onvolumechange(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onwaiting;
  external set onwaiting(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onwebkitanimationend;
  external set onwebkitanimationend(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onwebkitanimationiteration;
  external set onwebkitanimationiteration(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onwebkitanimationstart;
  external set onwebkitanimationstart(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onwebkittransitionend;
  external set onwebkittransitionend(dynamic Function(Event ev)? value);
  external dynamic Function(WheelEvent ev)? get onwheel;
  external set onwheel(dynamic Function(WheelEvent ev)? value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory GlobalEventHandlers({
    dynamic Function(UIEvent ev)? onabort,
    dynamic Function(AnimationEvent ev)? onanimationcancel,
    dynamic Function(AnimationEvent ev)? onanimationend,
    dynamic Function(AnimationEvent ev)? onanimationiteration,
    dynamic Function(AnimationEvent ev)? onanimationstart,
    dynamic Function(MouseEvent ev)? onauxclick,
    dynamic Function(FocusEvent ev)? onblur,
    dynamic Function(Event ev)? oncanplay,
    dynamic Function(Event ev)? oncanplaythrough,
    dynamic Function(Event ev)? onchange,
    dynamic Function(MouseEvent ev)? onclick,
    dynamic Function(Event ev)? onclose,
    dynamic Function(MouseEvent ev)? oncontextmenu,
    dynamic Function(Event ev)? oncuechange,
    dynamic Function(MouseEvent ev)? ondblclick,
    dynamic Function(DragEvent ev)? ondrag,
    dynamic Function(DragEvent ev)? ondragend,
    dynamic Function(DragEvent ev)? ondragenter,
    dynamic Function(DragEvent ev)? ondragleave,
    dynamic Function(DragEvent ev)? ondragover,
    dynamic Function(DragEvent ev)? ondragstart,
    dynamic Function(DragEvent ev)? ondrop,
    dynamic Function(Event ev)? ondurationchange,
    dynamic Function(Event ev)? onemptied,
    dynamic Function(Event ev)? onended,
    OnErrorEventHandler onerror,
    dynamic Function(FocusEvent ev)? onfocus,
    dynamic Function(FormDataEvent ev)? onformdata,
    dynamic Function(PointerEvent ev)? ongotpointercapture,
    dynamic Function(Event ev)? oninput,
    dynamic Function(Event ev)? oninvalid,
    dynamic Function(KeyboardEvent ev)? onkeydown,
    dynamic Function(KeyboardEvent ev)? onkeypress,
    dynamic Function(KeyboardEvent ev)? onkeyup,
    dynamic Function(Event ev)? onload,
    dynamic Function(Event ev)? onloadeddata,
    dynamic Function(Event ev)? onloadedmetadata,
    dynamic Function(Event ev)? onloadstart,
    dynamic Function(PointerEvent ev)? onlostpointercapture,
    dynamic Function(MouseEvent ev)? onmousedown,
    dynamic Function(MouseEvent ev)? onmouseenter,
    dynamic Function(MouseEvent ev)? onmouseleave,
    dynamic Function(MouseEvent ev)? onmousemove,
    dynamic Function(MouseEvent ev)? onmouseout,
    dynamic Function(MouseEvent ev)? onmouseover,
    dynamic Function(MouseEvent ev)? onmouseup,
    dynamic Function(Event ev)? onpause,
    dynamic Function(Event ev)? onplay,
    dynamic Function(Event ev)? onplaying,
    dynamic Function(PointerEvent ev)? onpointercancel,
    dynamic Function(PointerEvent ev)? onpointerdown,
    dynamic Function(PointerEvent ev)? onpointerenter,
    dynamic Function(PointerEvent ev)? onpointerleave,
    dynamic Function(PointerEvent ev)? onpointermove,
    dynamic Function(PointerEvent ev)? onpointerout,
    dynamic Function(PointerEvent ev)? onpointerover,
    dynamic Function(PointerEvent ev)? onpointerup,
    dynamic Function(ProgressEvent ev)? onprogress,
    dynamic Function(Event ev)? onratechange,
    dynamic Function(Event ev)? onreset,
    dynamic Function(UIEvent ev)? onresize,
    dynamic Function(Event ev)? onscroll,
    dynamic Function(Event ev)? onseeked,
    dynamic Function(Event ev)? onseeking,
    dynamic Function(Event ev)? onselect,
    dynamic Function(Event ev)? onselectionchange,
    dynamic Function(Event ev)? onselectstart,
    dynamic Function(Event ev)? onstalled,
    dynamic Function(Event ev)? onsubmit,
    dynamic Function(Event ev)? onsuspend,
    dynamic Function(Event ev)? ontimeupdate,
    dynamic Function(Event ev)? ontoggle,
    dynamic Function(TouchEvent ev)? ontouchcancel,
    dynamic Function(TouchEvent ev)? ontouchend,
    dynamic Function(TouchEvent ev)? ontouchmove,
    dynamic Function(TouchEvent ev)? ontouchstart,
    dynamic Function(TransitionEvent ev)? ontransitioncancel,
    dynamic Function(TransitionEvent ev)? ontransitionend,
    dynamic Function(TransitionEvent ev)? ontransitionrun,
    dynamic Function(TransitionEvent ev)? ontransitionstart,
    dynamic Function(Event ev)? onvolumechange,
    dynamic Function(Event ev)? onwaiting,
    dynamic Function(Event ev)? onwebkitanimationend,
    dynamic Function(Event ev)? onwebkitanimationiteration,
    dynamic Function(Event ev)? onwebkitanimationstart,
    dynamic Function(Event ev)? onwebkittransitionend,
    dynamic Function(WheelEvent ev)? onwheel,
  });
}

@JS()
@anonymous
class HTMLAllCollection {
  external num get length;
  external dynamic item(String nameOrIndex);
  external dynamic namedItem(String name);
  external factory HTMLAllCollection({
    num length,
  });
}

@JS(r'HTMLAllCollection')
external IHTMLAllCollection JHTMLAllCollection;

@JS()
@anonymous
class HTMLAnchorElement extends HtmlElement {
  external String get charset;
  external set charset(String value);
  external String get coords;
  external set coords(String value);
  external String get download;
  external set download(String value);
  external String get hreflang;
  external set hreflang(String value);
  external String get name;
  external set name(String value);
  external String get ping;
  external set ping(String value);
  external String get referrerPolicy;
  external set referrerPolicy(String value);
  external String get rel;
  external set rel(String value);
  external DomTokenList get relList;
  external String get rev;
  external set rev(String value);
  external String get shape;
  external set shape(String value);
  external String get target;
  external set target(String value);
  external String get text;
  external set text(String value);
  external String get type;
  external set type(String value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLAnchorElement({
    String charset,
    String coords,
    String download,
    String hreflang,
    String name,
    String ping,
    String referrerPolicy,
    String rel,
    DomTokenList relList,
    String rev,
    String shape,
    String target,
    String text,
    String type,
  });
}

@JS(r'HTMLAnchorElement')
external IHTMLAnchorElement JHTMLAnchorElement;

@JS()
@anonymous
class HTMLAreaElement extends HtmlElement {
  external String get alt;
  external set alt(String value);
  external String get coords;
  external set coords(String value);
  external String get download;
  external set download(String value);
  external bool get noHref;
  external set noHref(bool value);
  external String get ping;
  external set ping(String value);
  external String get referrerPolicy;
  external set referrerPolicy(String value);
  external String get rel;
  external set rel(String value);
  external DomTokenList get relList;
  external String get shape;
  external set shape(String value);
  external String get target;
  external set target(String value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLAreaElement({
    String alt,
    String coords,
    String download,
    bool noHref,
    String ping,
    String referrerPolicy,
    String rel,
    DomTokenList relList,
    String shape,
    String target,
  });
}

@JS(r'HTMLAreaElement')
external IHTMLAreaElement JHTMLAreaElement;

@JS()
@anonymous
class HTMLAudioElement extends MediaElement {
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLAudioElement();
}

@JS(r'HTMLAudioElement')
external IHTMLAudioElement JHTMLAudioElement;

@JS()
@anonymous
class HTMLBRElement extends HtmlElement {
  external String get clear;
  external set clear(String value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLBRElement({
    String clear,
  });
}

@JS(r'HTMLBRElement')
external IHTMLBRElement JHTMLBRElement;

@JS()
@anonymous
class HTMLBaseElement extends HtmlElement {
  external String get href;
  external set href(String value);
  external String get target;
  external set target(String value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLBaseElement({
    String href,
    String target,
  });
}

@JS(r'HTMLBaseElement')
external IHTMLBaseElement JHTMLBaseElement;

@JS()
@anonymous
class HTMLBodyElementEventMap extends HTMLElementEventMap {
  external Event get orientationchange;
  external set orientationchange(Event value);
  external factory HTMLBodyElementEventMap({
    Event orientationchange,
  });
}

@JS()
@anonymous
class HTMLBodyElement extends HtmlElement {
  external String get aLink;
  external set aLink(String value);
  external String get background;
  external set background(String value);
  external String get bgColor;
  external set bgColor(String value);
  external String get link;
  external set link(String value);
  external dynamic Function(Event ev)? get onorientationchange;
  external set onorientationchange(dynamic Function(Event ev)? value);
  external String get text;
  external set text(String value);
  external String get vLink;
  external set vLink(String value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLBodyElement({
    String aLink,
    String background,
    String bgColor,
    String link,
    dynamic Function(Event ev)? onorientationchange,
    String text,
    String vLink,
  });
}

@JS(r'HTMLBodyElement')
external IHTMLBodyElement JHTMLBodyElement;

@JS()
@anonymous
class HTMLButtonElement extends HtmlElement {
  external bool get disabled;
  external set disabled(bool value);
  external FormElement? get form;
  external String get formAction;
  external set formAction(String value);
  external String get formEnctype;
  external set formEnctype(String value);
  external String get formMethod;
  external set formMethod(String value);
  external bool get formNoValidate;
  external set formNoValidate(bool value);
  external String get formTarget;
  external set formTarget(String value);
  external NodeListOf<LabelElement> get labels;
  external String get name;
  external set name(String value);
  external String get type;
  external set type(String value);
  external String get validationMessage;
  external ValidityState get validity;
  external String get value;
  external set value(String value);
  external bool get willValidate;
  external bool checkValidity();
  external bool reportValidity();
  external void setCustomValidity(String error);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLButtonElement({
    bool disabled,
    FormElement? form,
    String formAction,
    String formEnctype,
    String formMethod,
    bool formNoValidate,
    String formTarget,
    NodeListOf<LabelElement> labels,
    String name,
    String type,
    String validationMessage,
    ValidityState validity,
    String value,
    bool willValidate,
  });
}

@JS(r'HTMLButtonElement')
external IHTMLButtonElement JHTMLButtonElement;

@JS()
@anonymous
class HTMLCanvasElement extends HtmlElement {
  external num get height;
  external set height(num value);
  external num get width;
  external set width(num value);
  external MediaStream captureStream(num frameRequestRate);
  external CanvasRenderingContext2D? getContext(String contextId, CanvasRenderingContext2DSettings options);
  external void toBlob(BlobCallback callback, String type, dynamic quality);
  external String toDataURL(String type, dynamic quality);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLCanvasElement({
    num height,
    num width,
  });
}

@JS(r'HTMLCanvasElement')
external IHTMLCanvasElement JHTMLCanvasElement;

@JS()
@anonymous
class HTMLCollectionBase {
  external num get length;
  external Element? item(num index);
  external factory HTMLCollectionBase({
    num length,
  });
}

@JS()
@anonymous
class HTMLCollection extends HTMLCollectionBase {
  external Element? namedItem(String name);
  external factory HTMLCollection();
}

@JS(r'HTMLCollection')
external IHTMLCollection JHTMLCollection;

@JS()
@anonymous
class HTMLCollectionOf<T extends Element> extends HTMLCollectionBase {
  external T? item(num index);
  external T? namedItem(String name);
  external factory HTMLCollectionOf();
}

@JS()
@anonymous
class HTMLDListElement extends HtmlElement {
  external bool get compact;
  external set compact(bool value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLDListElement({
    bool compact,
  });
}

@JS(r'HTMLDListElement')
external IHTMLDListElement JHTMLDListElement;

@JS()
@anonymous
class HTMLDataElement extends HtmlElement {
  external String get value;
  external set value(String value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLDataElement({
    String value,
  });
}

@JS(r'HTMLDataElement')
external IHTMLDataElement JHTMLDataElement;

@JS()
@anonymous
class HTMLDataListElement extends HtmlElement {
  external HTMLCollectionOf<OptionElement> get options;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLDataListElement({
    HTMLCollectionOf<OptionElement> options,
  });
}

@JS(r'HTMLDataListElement')
external IHTMLDataListElement JHTMLDataListElement;

@JS()
@anonymous
class HTMLDetailsElement extends HtmlElement {
  external bool get open;
  external set open(bool value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLDetailsElement({
    bool open,
  });
}

@JS(r'HTMLDetailsElement')
external IHTMLDetailsElement JHTMLDetailsElement;

@JS()
@anonymous
class HTMLDialogElement extends HtmlElement {
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLDialogElement();
}

@JS()
@anonymous
class HTMLDirectoryElement extends HtmlElement {
  external bool get compact;
  external set compact(bool value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLDirectoryElement({
    bool compact,
  });
}

@JS(r'HTMLDirectoryElement')
external IHTMLDirectoryElement JHTMLDirectoryElement;

@JS()
@anonymous
class HTMLDivElement extends HtmlElement {
  external String get align;
  external set align(String value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLDivElement({
    String align,
  });
}

@JS(r'HTMLDivElement')
external IHTMLDivElement JHTMLDivElement;

@JS()
@anonymous
class HTMLDocument extends Document {
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLDocument();
}

@JS()
@anonymous
class HTMLElementEventMap extends ElementEventMap {
  external factory HTMLElementEventMap();
}

@JS()
@anonymous
class HTMLElement extends Element {
  external String get accessKey;
  external set accessKey(String value);
  external String get accessKeyLabel;
  external String get autocapitalize;
  external set autocapitalize(String value);
  external String get dir;
  external set dir(String value);
  external bool get draggable;
  external set draggable(bool value);
  external bool get hidden;
  external set hidden(bool value);
  external String get innerText;
  external set innerText(String value);
  external String get lang;
  external set lang(String value);
  external num get offsetHeight;
  external num get offsetLeft;
  external Element? get offsetParent;
  external num get offsetTop;
  external num get offsetWidth;
  external String get outerText;
  external set outerText(String value);
  external bool get spellcheck;
  external set spellcheck(bool value);
  external String get title;
  external set title(String value);
  external bool get translate;
  external set translate(bool value);
  external void click();
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLElement({
    String accessKey,
    String accessKeyLabel,
    String autocapitalize,
    String dir,
    bool draggable,
    bool hidden,
    String innerText,
    String lang,
    num offsetHeight,
    num offsetLeft,
    Element? offsetParent,
    num offsetTop,
    num offsetWidth,
    String outerText,
    bool spellcheck,
    String title,
    bool translate,
  });
}

@JS(r'HTMLElement')
external IHTMLElement JHTMLElement;

@JS()
@anonymous
class HTMLEmbedElement extends HtmlElement {
  external String get align;
  external set align(String value);
  external String get height;
  external set height(String value);
  external String get name;
  external set name(String value);
  external String get src;
  external set src(String value);
  external String get type;
  external set type(String value);
  external String get width;
  external set width(String value);
  external Document? getSVGDocument();
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLEmbedElement({
    String align,
    String height,
    String name,
    String src,
    String type,
    String width,
  });
}

@JS(r'HTMLEmbedElement')
external IHTMLEmbedElement JHTMLEmbedElement;

@JS()
@anonymous
class HTMLFieldSetElement extends HtmlElement {
  external bool get disabled;
  external set disabled(bool value);
  external HtmlCollection get elements;
  external FormElement? get form;
  external String get name;
  external set name(String value);
  external String get type;
  external String get validationMessage;
  external ValidityState get validity;
  external bool get willValidate;
  external bool checkValidity();
  external bool reportValidity();
  external void setCustomValidity(String error);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLFieldSetElement({
    bool disabled,
    HtmlCollection elements,
    FormElement? form,
    String name,
    String type,
    String validationMessage,
    ValidityState validity,
    bool willValidate,
  });
}

@JS(r'HTMLFieldSetElement')
external IHTMLFieldSetElement JHTMLFieldSetElement;

@JS()
@anonymous
class HTMLFontElement extends HtmlElement {
  external String get color;
  external set color(String value);
  external String get face;
  external set face(String value);
  external String get size;
  external set size(String value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLFontElement({
    String color,
    String face,
    String size,
  });
}

@JS(r'HTMLFontElement')
external IHTMLFontElement JHTMLFontElement;

@JS()
@anonymous
class HTMLFormControlsCollection extends HTMLCollectionBase {
  external dynamic namedItem(String name);
  external factory HTMLFormControlsCollection();
}

@JS(r'HTMLFormControlsCollection')
external IHTMLFormControlsCollection JHTMLFormControlsCollection;

@JS()
@anonymous
class HTMLFormElement extends HtmlElement {
  external String get acceptCharset;
  external set acceptCharset(String value);
  external String get action;
  external set action(String value);
  external String get autocomplete;
  external set autocomplete(String value);
  external HtmlFormControlsCollection get elements;
  external String get encoding;
  external set encoding(String value);
  external String get enctype;
  external set enctype(String value);
  external num get length;
  external String get method;
  external set method(String value);
  external String get name;
  external set name(String value);
  external bool get noValidate;
  external set noValidate(bool value);
  external String get target;
  external set target(String value);
  external bool checkValidity();
  external bool reportValidity();
  external void requestSubmit(HtmlElement? submitter);
  external void reset();
  external void submit();
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLFormElement({
    String acceptCharset,
    String action,
    String autocomplete,
    HtmlFormControlsCollection elements,
    String encoding,
    String enctype,
    num length,
    String method,
    String name,
    bool noValidate,
    String target,
  });
}

@JS(r'HTMLFormElement')
external IHTMLFormElement JHTMLFormElement;

@JS()
@anonymous
class HTMLFrameElement extends HtmlElement {
  external Document? get contentDocument;
  external WindowProxy? get contentWindow;
  external String get frameBorder;
  external set frameBorder(String value);
  external String get longDesc;
  external set longDesc(String value);
  external String get marginHeight;
  external set marginHeight(String value);
  external String get marginWidth;
  external set marginWidth(String value);
  external String get name;
  external set name(String value);
  external bool get noResize;
  external set noResize(bool value);
  external String get scrolling;
  external set scrolling(String value);
  external String get src;
  external set src(String value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLFrameElement({
    Document? contentDocument,
    WindowProxy? contentWindow,
    String frameBorder,
    String longDesc,
    String marginHeight,
    String marginWidth,
    String name,
    bool noResize,
    String scrolling,
    String src,
  });
}

@JS(r'HTMLFrameElement')
external IHTMLFrameElement JHTMLFrameElement;

@JS()
@anonymous
class HTMLFrameSetElementEventMap extends HTMLElementEventMap {
  external factory HTMLFrameSetElementEventMap();
}

@JS()
@anonymous
class HTMLFrameSetElement extends HtmlElement {
  external String get cols;
  external set cols(String value);
  external String get rows;
  external set rows(String value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLFrameSetElement({
    String cols,
    String rows,
  });
}

@JS(r'HTMLFrameSetElement')
external IHTMLFrameSetElement JHTMLFrameSetElement;

@JS()
@anonymous
class HTMLHRElement extends HtmlElement {
  external String get align;
  external set align(String value);
  external String get color;
  external set color(String value);
  external bool get noShade;
  external set noShade(bool value);
  external String get size;
  external set size(String value);
  external String get width;
  external set width(String value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLHRElement({
    String align,
    String color,
    bool noShade,
    String size,
    String width,
  });
}

@JS(r'HTMLHRElement')
external IHTMLHRElement JHTMLHRElement;

@JS()
@anonymous
class HTMLHeadElement extends HtmlElement {
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLHeadElement();
}

@JS(r'HTMLHeadElement')
external IHTMLHeadElement JHTMLHeadElement;

@JS()
@anonymous
class HTMLHeadingElement extends HtmlElement {
  external String get align;
  external set align(String value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLHeadingElement({
    String align,
  });
}

@JS(r'HTMLHeadingElement')
external IHTMLHeadingElement JHTMLHeadingElement;

@JS()
@anonymous
class HTMLHtmlElement extends HtmlElement {
  external String get version;
  external set version(String value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLHtmlElement({
    String version,
  });
}

@JS(r'HTMLHtmlElement')
external IHTMLHtmlElement JHTMLHtmlElement;

@JS()
@anonymous
class HTMLHyperlinkElementUtils {
  external String get hash;
  external set hash(String value);
  external String get host;
  external set host(String value);
  external String get hostname;
  external set hostname(String value);
  external String get href;
  external set href(String value);
  @override
  external String toString();
  external String get origin;
  external String get password;
  external set password(String value);
  external String get pathname;
  external set pathname(String value);
  external String get port;
  external set port(String value);
  external String get protocol;
  external set protocol(String value);
  external String get search;
  external set search(String value);
  external String get username;
  external set username(String value);
  external factory HTMLHyperlinkElementUtils({
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
    String username,
  });
}

@JS()
@anonymous
class HTMLIFrameElement extends HtmlElement {
  external String get align;
  external set align(String value);
  external String get allow;
  external set allow(String value);
  external bool get allowFullscreen;
  external set allowFullscreen(bool value);
  external Document? get contentDocument;
  external WindowProxy? get contentWindow;
  external String get frameBorder;
  external set frameBorder(String value);
  external String get height;
  external set height(String value);
  external String get longDesc;
  external set longDesc(String value);
  external String get marginHeight;
  external set marginHeight(String value);
  external String get marginWidth;
  external set marginWidth(String value);
  external String get name;
  external set name(String value);
  external ReferrerPolicy get referrerPolicy;
  external set referrerPolicy(ReferrerPolicy value);
  external DomTokenList get sandbox;
  external String get scrolling;
  external set scrolling(String value);
  external String get src;
  external set src(String value);
  external String get srcdoc;
  external set srcdoc(String value);
  external String get width;
  external set width(String value);
  external Document? getSVGDocument();
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLIFrameElement({
    String align,
    String allow,
    bool allowFullscreen,
    Document? contentDocument,
    WindowProxy? contentWindow,
    String frameBorder,
    String height,
    String longDesc,
    String marginHeight,
    String marginWidth,
    String name,
    ReferrerPolicy referrerPolicy,
    DomTokenList sandbox,
    String scrolling,
    String src,
    String srcdoc,
    String width,
  });
}

@JS(r'HTMLIFrameElement')
external IHTMLIFrameElement JHTMLIFrameElement;

@JS()
@anonymous
class HTMLImageElement extends HtmlElement {
  external String get align;
  external set align(String value);
  external String get alt;
  external set alt(String value);
  external String get border;
  external set border(String value);
  external bool get complete;
  external String? get crossOrigin;
  external set crossOrigin(String? value);
  external String get currentSrc;
  external String get decoding;
  external set decoding(String value);
  external num get height;
  external set height(num value);
  external num get hspace;
  external set hspace(num value);
  external bool get isMap;
  external set isMap(bool value);
  external String get loading;
  external set loading(String value);
  external String get longDesc;
  external set longDesc(String value);
  external String get lowsrc;
  external set lowsrc(String value);
  external String get name;
  external set name(String value);
  external num get naturalHeight;
  external num get naturalWidth;
  external String get referrerPolicy;
  external set referrerPolicy(String value);
  external String get sizes;
  external set sizes(String value);
  external String get src;
  external set src(String value);
  external String get srcset;
  external set srcset(String value);
  external String get useMap;
  external set useMap(String value);
  external num get vspace;
  external set vspace(num value);
  external num get width;
  external set width(num value);
  external num get x;
  external num get y;
  external Promise<void> decode();
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLImageElement({
    String align,
    String alt,
    String border,
    bool complete,
    String? crossOrigin,
    String currentSrc,
    String decoding,
    num height,
    num hspace,
    bool isMap,
    String loading,
    String longDesc,
    String lowsrc,
    String name,
    num naturalHeight,
    num naturalWidth,
    String referrerPolicy,
    String sizes,
    String src,
    String srcset,
    String useMap,
    num vspace,
    num width,
    num x,
    num y,
  });
}

@JS(r'HTMLImageElement')
external IHTMLImageElement JHTMLImageElement;

@JS()
@anonymous
class HTMLInputElement extends HtmlElement {
  external String get accept;
  external set accept(String value);
  external String get align;
  external set align(String value);
  external String get alt;
  external set alt(String value);
  external String get autocomplete;
  external set autocomplete(String value);
  external String get capture;
  external set capture(String value);
  external bool get checked;
  external set checked(bool value);
  external bool get defaultChecked;
  external set defaultChecked(bool value);
  external String get defaultValue;
  external set defaultValue(String value);
  external String get dirName;
  external set dirName(String value);
  external bool get disabled;
  external set disabled(bool value);
  external FileList? get files;
  external set files(FileList? value);
  external FormElement? get form;
  external String get formAction;
  external set formAction(String value);
  external String get formEnctype;
  external set formEnctype(String value);
  external String get formMethod;
  external set formMethod(String value);
  external bool get formNoValidate;
  external set formNoValidate(bool value);
  external String get formTarget;
  external set formTarget(String value);
  external num get height;
  external set height(num value);
  external bool get indeterminate;
  external set indeterminate(bool value);
  external NodeListOf<LabelElement>? get labels;
  external HtmlElement? get list;
  external String get max;
  external set max(String value);
  external num get maxLength;
  external set maxLength(num value);
  external String get min;
  external set min(String value);
  external num get minLength;
  external set minLength(num value);
  external bool get multiple;
  external set multiple(bool value);
  external String get name;
  external set name(String value);
  external String get pattern;
  external set pattern(String value);
  external String get placeholder;
  external set placeholder(String value);
  external bool get readOnly;
  external set readOnly(bool value);
  external bool get required;
  external set required(bool value);
  external String? get selectionDirection;
  external set selectionDirection(String? value);
  external num? get selectionEnd;
  external set selectionEnd(num? value);
  external num? get selectionStart;
  external set selectionStart(num? value);
  external num get size;
  external set size(num value);
  external String get src;
  external set src(String value);
  external String get step;
  external set step(String value);
  external String get type;
  external set type(String value);
  external String get useMap;
  external set useMap(String value);
  external String get validationMessage;
  external ValidityState get validity;
  external String get value;
  external set value(String value);
  external DateTime? get valueAsDate;
  external set valueAsDate(DateTime? value);
  external num get valueAsNumber;
  external set valueAsNumber(num value);
  external List<FileSystemEntry> get webkitEntries;
  external bool get webkitdirectory;
  external set webkitdirectory(bool value);
  external num get width;
  external set width(num value);
  external bool get willValidate;
  external bool checkValidity();
  external bool reportValidity();
  external void select();
  external void setCustomValidity(String error);
  external void setRangeText(String replacement);
  external void setSelectionRange(num? start, num? end, String direction);
  external void stepDown(num n);
  external void stepUp(num n);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLInputElement({
    String accept,
    String align,
    String alt,
    String autocomplete,
    String capture,
    bool checked,
    bool defaultChecked,
    String defaultValue,
    String dirName,
    bool disabled,
    FileList? files,
    FormElement? form,
    String formAction,
    String formEnctype,
    String formMethod,
    bool formNoValidate,
    String formTarget,
    num height,
    bool indeterminate,
    NodeListOf<LabelElement>? labels,
    HtmlElement? list,
    String max,
    num maxLength,
    String min,
    num minLength,
    bool multiple,
    String name,
    String pattern,
    String placeholder,
    bool readOnly,
    bool required,
    String? selectionDirection,
    num? selectionEnd,
    num? selectionStart,
    num size,
    String src,
    String step,
    String type,
    String useMap,
    String validationMessage,
    ValidityState validity,
    String value,
    DateTime? valueAsDate,
    num valueAsNumber,
    List<FileSystemEntry> webkitEntries,
    bool webkitdirectory,
    num width,
    bool willValidate,
  });
}

@JS(r'HTMLInputElement')
external IHTMLInputElement JHTMLInputElement;

@JS()
@anonymous
class HTMLLIElement extends HtmlElement {
  external String get type;
  external set type(String value);
  external num get value;
  external set value(num value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLLIElement({
    String type,
    num value,
  });
}

@JS(r'HTMLLIElement')
external IHTMLLIElement JHTMLLIElement;

@JS()
@anonymous
class HTMLLabelElement extends HtmlElement {
  external HtmlElement? get control;
  external FormElement? get form;
  external String get htmlFor;
  external set htmlFor(String value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLLabelElement({
    HtmlElement? control,
    FormElement? form,
    String htmlFor,
  });
}

@JS(r'HTMLLabelElement')
external IHTMLLabelElement JHTMLLabelElement;

@JS()
@anonymous
class HTMLLegendElement extends HtmlElement {
  external String get align;
  external set align(String value);
  external FormElement? get form;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLLegendElement({
    String align,
    FormElement? form,
  });
}

@JS(r'HTMLLegendElement')
external IHTMLLegendElement JHTMLLegendElement;

@JS()
@anonymous
class HTMLLinkElement extends HtmlElement {
  external String get as;
  external set as(String value);
  external String get charset;
  external set charset(String value);
  external String? get crossOrigin;
  external set crossOrigin(String? value);
  external bool get disabled;
  external set disabled(bool value);
  external String get href;
  external set href(String value);
  external String get hreflang;
  external set hreflang(String value);
  external String get imageSizes;
  external set imageSizes(String value);
  external String get imageSrcset;
  external set imageSrcset(String value);
  external String get integrity;
  external set integrity(String value);
  external String get media;
  external set media(String value);
  external String get referrerPolicy;
  external set referrerPolicy(String value);
  external String get rel;
  external set rel(String value);
  external DomTokenList get relList;
  external String get rev;
  external set rev(String value);
  external DomTokenList get sizes;
  external String get target;
  external set target(String value);
  external String get type;
  external set type(String value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLLinkElement({
    String as,
    String charset,
    String? crossOrigin,
    bool disabled,
    String href,
    String hreflang,
    String imageSizes,
    String imageSrcset,
    String integrity,
    String media,
    String referrerPolicy,
    String rel,
    DomTokenList relList,
    String rev,
    DomTokenList sizes,
    String target,
    String type,
  });
}

@JS(r'HTMLLinkElement')
external IHTMLLinkElement JHTMLLinkElement;

@JS()
@anonymous
class HTMLMapElement extends HtmlElement {
  external HtmlCollection get areas;
  external String get name;
  external set name(String value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLMapElement({
    HtmlCollection areas,
    String name,
  });
}

@JS(r'HTMLMapElement')
external IHTMLMapElement JHTMLMapElement;

@JS()
@anonymous
class HTMLMarqueeElement extends HtmlElement {
  external String get behavior;
  external set behavior(String value);
  external String get bgColor;
  external set bgColor(String value);
  external String get direction;
  external set direction(String value);
  external String get height;
  external set height(String value);
  external num get hspace;
  external set hspace(num value);
  external num get loop;
  external set loop(num value);
  external num get scrollAmount;
  external set scrollAmount(num value);
  external num get scrollDelay;
  external set scrollDelay(num value);
  external bool get trueSpeed;
  external set trueSpeed(bool value);
  external num get vspace;
  external set vspace(num value);
  external String get width;
  external set width(String value);
  external void start();
  external void stop();
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLMarqueeElement({
    String behavior,
    String bgColor,
    String direction,
    String height,
    num hspace,
    num loop,
    num scrollAmount,
    num scrollDelay,
    bool trueSpeed,
    num vspace,
    String width,
  });
}

@JS(r'HTMLMarqueeElement')
external IHTMLMarqueeElement JHTMLMarqueeElement;

@JS()
@anonymous
class HTMLMediaElementEventMap extends HTMLElementEventMap {
  external MediaEncryptedEvent get encrypted;
  external set encrypted(MediaEncryptedEvent value);
  external Event get waitingforkey;
  external set waitingforkey(Event value);
  external factory HTMLMediaElementEventMap({
    MediaEncryptedEvent encrypted,
    Event waitingforkey,
  });
}

@JS()
@anonymous
class HTMLMediaElement extends HtmlElement {
  external bool get autoplay;
  external set autoplay(bool value);
  external TimeRanges get buffered;
  external bool get controls;
  external set controls(bool value);
  external String? get crossOrigin;
  external set crossOrigin(String? value);
  external String get currentSrc;
  external num get currentTime;
  external set currentTime(num value);
  external bool get defaultMuted;
  external set defaultMuted(bool value);
  external num get defaultPlaybackRate;
  external set defaultPlaybackRate(num value);
  external bool get disableRemotePlayback;
  external set disableRemotePlayback(bool value);
  external num get duration;
  external bool get ended;
  external MediaError? get error;
  external bool get loop;
  external set loop(bool value);
  external MediaKeys? get mediaKeys;
  external bool get muted;
  external set muted(bool value);
  external num get networkState;
  external dynamic Function(MediaEncryptedEvent ev)? get onencrypted;
  external set onencrypted(dynamic Function(MediaEncryptedEvent ev)? value);
  external dynamic Function(Event ev)? get onwaitingforkey;
  external set onwaitingforkey(dynamic Function(Event ev)? value);
  external bool get paused;
  external num get playbackRate;
  external set playbackRate(num value);
  external TimeRanges get played;
  external String get preload;
  external set preload(String value);
  external num get readyState;
  external RemotePlayback get remote;
  external TimeRanges get seekable;
  external bool get seeking;
  external String get src;
  external set src(String value);
  external MediaProvider? get srcObject;
  external set srcObject(MediaProvider? value);
  external TextTrackList get textTracks;
  external num get volume;
  external set volume(num value);
  external TextTrack addTextTrack(TextTrackKind kind, String label, String language);
  external CanPlayTypeResult canPlayType(String type);
  external void fastSeek(num time);
  external void load();
  external void pause();
  external Promise<void> play();
  external Promise<void> setMediaKeys(MediaKeys? mediaKeys);
  external num get HAVE_CURRENT_DATA;
  external num get HAVE_ENOUGH_DATA;
  external num get HAVE_FUTURE_DATA;
  external num get HAVE_METADATA;
  external num get HAVE_NOTHING;
  external num get NETWORK_EMPTY;
  external num get NETWORK_IDLE;
  external num get NETWORK_LOADING;
  external num get NETWORK_NO_SOURCE;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLMediaElement({
    bool autoplay,
    TimeRanges buffered,
    bool controls,
    String? crossOrigin,
    String currentSrc,
    num currentTime,
    bool defaultMuted,
    num defaultPlaybackRate,
    bool disableRemotePlayback,
    num duration,
    bool ended,
    MediaError? error,
    bool loop,
    MediaKeys? mediaKeys,
    bool muted,
    num networkState,
    dynamic Function(MediaEncryptedEvent ev)? onencrypted,
    dynamic Function(Event ev)? onwaitingforkey,
    bool paused,
    num playbackRate,
    TimeRanges played,
    String preload,
    num readyState,
    RemotePlayback remote,
    TimeRanges seekable,
    bool seeking,
    String src,
    MediaProvider? srcObject,
    TextTrackList textTracks,
    num volume,
    num HAVE_CURRENT_DATA,
    num HAVE_ENOUGH_DATA,
    num HAVE_FUTURE_DATA,
    num HAVE_METADATA,
    num HAVE_NOTHING,
    num NETWORK_EMPTY,
    num NETWORK_IDLE,
    num NETWORK_LOADING,
    num NETWORK_NO_SOURCE,
  });
}

@JS(r'HTMLMediaElement')
external IHTMLMediaElement JHTMLMediaElement;

@JS()
@anonymous
class HTMLMenuElement extends HtmlElement {
  external bool get compact;
  external set compact(bool value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLMenuElement({
    bool compact,
  });
}

@JS(r'HTMLMenuElement')
external IHTMLMenuElement JHTMLMenuElement;

@JS()
@anonymous
class HTMLMetaElement extends HtmlElement {
  external String get content;
  external set content(String value);
  external String get httpEquiv;
  external set httpEquiv(String value);
  external String get name;
  external set name(String value);
  external String get scheme;
  external set scheme(String value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLMetaElement({
    String content,
    String httpEquiv,
    String name,
    String scheme,
  });
}

@JS(r'HTMLMetaElement')
external IHTMLMetaElement JHTMLMetaElement;

@JS()
@anonymous
class HTMLMeterElement extends HtmlElement {
  external num get high;
  external set high(num value);
  external NodeListOf<LabelElement> get labels;
  external num get low;
  external set low(num value);
  external num get max;
  external set max(num value);
  external num get min;
  external set min(num value);
  external num get optimum;
  external set optimum(num value);
  external num get value;
  external set value(num value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLMeterElement({
    num high,
    NodeListOf<LabelElement> labels,
    num low,
    num max,
    num min,
    num optimum,
    num value,
  });
}

@JS(r'HTMLMeterElement')
external IHTMLMeterElement JHTMLMeterElement;

@JS()
@anonymous
class HTMLModElement extends HtmlElement {
  external String get cite;
  external set cite(String value);
  external String get dateTime;
  external set dateTime(String value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLModElement({
    String cite,
    String dateTime,
  });
}

@JS(r'HTMLModElement')
external IHTMLModElement JHTMLModElement;

@JS()
@anonymous
class HTMLOListElement extends HtmlElement {
  external bool get compact;
  external set compact(bool value);
  external bool get reversed;
  external set reversed(bool value);
  external num get start;
  external set start(num value);
  external String get type;
  external set type(String value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLOListElement({
    bool compact,
    bool reversed,
    num start,
    String type,
  });
}

@JS(r'HTMLOListElement')
external IHTMLOListElement JHTMLOListElement;

@JS()
@anonymous
class HTMLObjectElement extends HtmlElement {
  external String get align;
  external set align(String value);
  external String get archive;
  external set archive(String value);
  external String get border;
  external set border(String value);
  external String get code;
  external set code(String value);
  external String get codeBase;
  external set codeBase(String value);
  external String get codeType;
  external set codeType(String value);
  external Document? get contentDocument;
  external WindowProxy? get contentWindow;
  external String get data;
  external set data(String value);
  external bool get declare;
  external set declare(bool value);
  external FormElement? get form;
  external String get height;
  external set height(String value);
  external num get hspace;
  external set hspace(num value);
  external String get name;
  external set name(String value);
  external String get standby;
  external set standby(String value);
  external String get type;
  external set type(String value);
  external String get useMap;
  external set useMap(String value);
  external String get validationMessage;
  external ValidityState get validity;
  external num get vspace;
  external set vspace(num value);
  external String get width;
  external set width(String value);
  external bool get willValidate;
  external bool checkValidity();
  external Document? getSVGDocument();
  external bool reportValidity();
  external void setCustomValidity(String error);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLObjectElement({
    String align,
    String archive,
    String border,
    String code,
    String codeBase,
    String codeType,
    Document? contentDocument,
    WindowProxy? contentWindow,
    String data,
    bool declare,
    FormElement? form,
    String height,
    num hspace,
    String name,
    String standby,
    String type,
    String useMap,
    String validationMessage,
    ValidityState validity,
    num vspace,
    String width,
    bool willValidate,
  });
}

@JS(r'HTMLObjectElement')
external IHTMLObjectElement JHTMLObjectElement;

@JS()
@anonymous
class HTMLOptGroupElement extends HtmlElement {
  external bool get disabled;
  external set disabled(bool value);
  external String get label;
  external set label(String value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLOptGroupElement({
    bool disabled,
    String label,
  });
}

@JS(r'HTMLOptGroupElement')
external IHTMLOptGroupElement JHTMLOptGroupElement;

@JS()
@anonymous
class HTMLOptionElement extends HtmlElement {
  external bool get defaultSelected;
  external set defaultSelected(bool value);
  external bool get disabled;
  external set disabled(bool value);
  external FormElement? get form;
  external num get index;
  external String get label;
  external set label(String value);
  external bool get selected;
  external set selected(bool value);
  external String get text;
  external set text(String value);
  external String get value;
  external set value(String value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLOptionElement({
    bool defaultSelected,
    bool disabled,
    FormElement? form,
    num index,
    String label,
    bool selected,
    String text,
    String value,
  });
}

@JS(r'HTMLOptionElement')
external IHTMLOptionElement JHTMLOptionElement;

@JS()
@anonymous
class HTMLOptionsCollection extends HTMLCollectionOf<OptionElement> {
  external num get length;
  external set length(num value);
  external num get selectedIndex;
  external set selectedIndex(num value);
  external void add(dynamic element, dynamic before);
  external void remove(num index);
  external factory HTMLOptionsCollection({
    num length,
    num selectedIndex,
  });
}

@JS(r'HTMLOptionsCollection')
external IHTMLOptionsCollection JHTMLOptionsCollection;

@JS()
@anonymous
class HTMLOrSVGElement {
  external DomStringMap get dataset;
  external String? get nonce;
  external set nonce(String? value);
  external num get tabIndex;
  external set tabIndex(num value);
  external void blur();
  external void focus(FocusOptions options);
  external factory HTMLOrSVGElement({
    DomStringMap dataset,
    String? nonce,
    num tabIndex,
  });
}

@JS()
@anonymous
class HTMLOutputElement extends HtmlElement {
  external String get defaultValue;
  external set defaultValue(String value);
  external FormElement? get form;
  external DomTokenList get htmlFor;
  external NodeListOf<LabelElement> get labels;
  external String get name;
  external set name(String value);
  external String get type;
  external String get validationMessage;
  external ValidityState get validity;
  external String get value;
  external set value(String value);
  external bool get willValidate;
  external bool checkValidity();
  external bool reportValidity();
  external void setCustomValidity(String error);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLOutputElement({
    String defaultValue,
    FormElement? form,
    DomTokenList htmlFor,
    NodeListOf<LabelElement> labels,
    String name,
    String type,
    String validationMessage,
    ValidityState validity,
    String value,
    bool willValidate,
  });
}

@JS(r'HTMLOutputElement')
external IHTMLOutputElement JHTMLOutputElement;

@JS()
@anonymous
class HTMLParagraphElement extends HtmlElement {
  external String get align;
  external set align(String value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLParagraphElement({
    String align,
  });
}

@JS(r'HTMLParagraphElement')
external IHTMLParagraphElement JHTMLParagraphElement;

@JS()
@anonymous
class HTMLParamElement extends HtmlElement {
  external String get name;
  external set name(String value);
  external String get type;
  external set type(String value);
  external String get value;
  external set value(String value);
  external String get valueType;
  external set valueType(String value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLParamElement({
    String name,
    String type,
    String value,
    String valueType,
  });
}

@JS(r'HTMLParamElement')
external IHTMLParamElement JHTMLParamElement;

@JS()
@anonymous
class HTMLPictureElement extends HtmlElement {
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLPictureElement();
}

@JS(r'HTMLPictureElement')
external IHTMLPictureElement JHTMLPictureElement;

@JS()
@anonymous
class HTMLPreElement extends HtmlElement {
  external num get width;
  external set width(num value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLPreElement({
    num width,
  });
}

@JS(r'HTMLPreElement')
external IHTMLPreElement JHTMLPreElement;

@JS()
@anonymous
class HTMLProgressElement extends HtmlElement {
  external NodeListOf<LabelElement> get labels;
  external num get max;
  external set max(num value);
  external num get position;
  external num get value;
  external set value(num value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLProgressElement({
    NodeListOf<LabelElement> labels,
    num max,
    num position,
    num value,
  });
}

@JS(r'HTMLProgressElement')
external IHTMLProgressElement JHTMLProgressElement;

@JS()
@anonymous
class HTMLQuoteElement extends HtmlElement {
  external String get cite;
  external set cite(String value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLQuoteElement({
    String cite,
  });
}

@JS(r'HTMLQuoteElement')
external IHTMLQuoteElement JHTMLQuoteElement;

@JS()
@anonymous
class HTMLScriptElement extends HtmlElement {
  external bool get async;
  external set async(bool value);
  external String get charset;
  external set charset(String value);
  external String? get crossOrigin;
  external set crossOrigin(String? value);
  external bool get defer;
  external set defer(bool value);
  external String get event;
  external set event(String value);
  external String get htmlFor;
  external set htmlFor(String value);
  external String get integrity;
  external set integrity(String value);
  external bool get noModule;
  external set noModule(bool value);
  external String get referrerPolicy;
  external set referrerPolicy(String value);
  external String get src;
  external set src(String value);
  external String get text;
  external set text(String value);
  external String get type;
  external set type(String value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLScriptElement({
    bool async,
    String charset,
    String? crossOrigin,
    bool defer,
    String event,
    String htmlFor,
    String integrity,
    bool noModule,
    String referrerPolicy,
    String src,
    String text,
    String type,
  });
}

@JS(r'HTMLScriptElement')
external IHTMLScriptElement JHTMLScriptElement;

@JS()
@anonymous
class HTMLSelectElement extends HtmlElement {
  external String get autocomplete;
  external set autocomplete(String value);
  external bool get disabled;
  external set disabled(bool value);
  external FormElement? get form;
  external NodeListOf<LabelElement> get labels;
  external num get length;
  external set length(num value);
  external bool get multiple;
  external set multiple(bool value);
  external String get name;
  external set name(String value);
  external HtmlOptionsCollection get options;
  external bool get required;
  external set required(bool value);
  external num get selectedIndex;
  external set selectedIndex(num value);
  external HTMLCollectionOf<OptionElement> get selectedOptions;
  external num get size;
  external set size(num value);
  external String get type;
  external String get validationMessage;
  external ValidityState get validity;
  external String get value;
  external set value(String value);
  external bool get willValidate;
  external void add(dynamic element, dynamic before);
  external bool checkValidity();
  external Element? item(num index);
  external OptionElement? namedItem(String name);
  external void remove();
  external bool reportValidity();
  external void setCustomValidity(String error);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLSelectElement({
    String autocomplete,
    bool disabled,
    FormElement? form,
    NodeListOf<LabelElement> labels,
    num length,
    bool multiple,
    String name,
    HtmlOptionsCollection options,
    bool required,
    num selectedIndex,
    HTMLCollectionOf<OptionElement> selectedOptions,
    num size,
    String type,
    String validationMessage,
    ValidityState validity,
    String value,
    bool willValidate,
  });
}

@JS(r'HTMLSelectElement')
external IHTMLSelectElement JHTMLSelectElement;

@JS()
@anonymous
class HTMLSlotElement extends HtmlElement {
  external String get name;
  external set name(String value);
  external List<Element> assignedElements(AssignedNodesOptions options);
  external List<Node> assignedNodes(AssignedNodesOptions options);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLSlotElement({
    String name,
  });
}

@JS(r'HTMLSlotElement')
external IHTMLSlotElement JHTMLSlotElement;

@JS()
@anonymous
class HTMLSourceElement extends HtmlElement {
  external String get media;
  external set media(String value);
  external String get sizes;
  external set sizes(String value);
  external String get src;
  external set src(String value);
  external String get srcset;
  external set srcset(String value);
  external String get type;
  external set type(String value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLSourceElement({
    String media,
    String sizes,
    String src,
    String srcset,
    String type,
  });
}

@JS(r'HTMLSourceElement')
external IHTMLSourceElement JHTMLSourceElement;

@JS()
@anonymous
class HTMLSpanElement extends HtmlElement {
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLSpanElement();
}

@JS(r'HTMLSpanElement')
external IHTMLSpanElement JHTMLSpanElement;

@JS()
@anonymous
class HTMLStyleElement extends HtmlElement {
  external String get media;
  external set media(String value);
  external String get type;
  external set type(String value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLStyleElement({
    String media,
    String type,
  });
}

@JS(r'HTMLStyleElement')
external IHTMLStyleElement JHTMLStyleElement;

@JS()
@anonymous
class HTMLTableCaptionElement extends HtmlElement {
  external String get align;
  external set align(String value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLTableCaptionElement({
    String align,
  });
}

@JS(r'HTMLTableCaptionElement')
external IHTMLTableCaptionElement JHTMLTableCaptionElement;

@JS()
@anonymous
class HTMLTableCellElement extends HtmlElement {
  external String get abbr;
  external set abbr(String value);
  external String get align;
  external set align(String value);
  external String get axis;
  external set axis(String value);
  external String get bgColor;
  external set bgColor(String value);
  external num get cellIndex;
  external String get ch;
  external set ch(String value);
  external String get chOff;
  external set chOff(String value);
  external num get colSpan;
  external set colSpan(num value);
  external String get headers;
  external set headers(String value);
  external String get height;
  external set height(String value);
  external bool get noWrap;
  external set noWrap(bool value);
  external num get rowSpan;
  external set rowSpan(num value);
  external String get scope;
  external set scope(String value);
  external String get vAlign;
  external set vAlign(String value);
  external String get width;
  external set width(String value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLTableCellElement({
    String abbr,
    String align,
    String axis,
    String bgColor,
    num cellIndex,
    String ch,
    String chOff,
    num colSpan,
    String headers,
    String height,
    bool noWrap,
    num rowSpan,
    String scope,
    String vAlign,
    String width,
  });
}

@JS(r'HTMLTableCellElement')
external IHTMLTableCellElement JHTMLTableCellElement;

@JS()
@anonymous
class HTMLTableColElement extends HtmlElement {
  external String get align;
  external set align(String value);
  external String get ch;
  external set ch(String value);
  external String get chOff;
  external set chOff(String value);
  external num get span;
  external set span(num value);
  external String get vAlign;
  external set vAlign(String value);
  external String get width;
  external set width(String value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLTableColElement({
    String align,
    String ch,
    String chOff,
    num span,
    String vAlign,
    String width,
  });
}

@JS(r'HTMLTableColElement')
external IHTMLTableColElement JHTMLTableColElement;

@JS()
@anonymous
class HTMLTableDataCellElement extends TableCellElement {
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLTableDataCellElement();
}

@JS()
@anonymous
class HTMLTableElement extends HtmlElement {
  external String get align;
  external set align(String value);
  external String get bgColor;
  external set bgColor(String value);
  external String get border;
  external set border(String value);
  external TableCaptionElement? get caption;
  external set caption(TableCaptionElement? value);
  external String get cellPadding;
  external set cellPadding(String value);
  external String get cellSpacing;
  external set cellSpacing(String value);
  external String get frame;
  external set frame(String value);
  external HTMLCollectionOf<TableRowElement> get rows;
  external String get rules;
  external set rules(String value);
  external String get summary;
  external set summary(String value);
  external HTMLCollectionOf<TableSectionElement> get tBodies;
  external TableSectionElement? get tFoot;
  external set tFoot(TableSectionElement? value);
  external TableSectionElement? get tHead;
  external set tHead(TableSectionElement? value);
  external String get width;
  external set width(String value);
  external TableCaptionElement createCaption();
  external TableSectionElement createTBody();
  external TableSectionElement createTFoot();
  external TableSectionElement createTHead();
  external void deleteCaption();
  external void deleteRow(num index);
  external void deleteTFoot();
  external void deleteTHead();
  external TableRowElement insertRow(num index);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLTableElement({
    String align,
    String bgColor,
    String border,
    TableCaptionElement? caption,
    String cellPadding,
    String cellSpacing,
    String frame,
    HTMLCollectionOf<TableRowElement> rows,
    String rules,
    String summary,
    HTMLCollectionOf<TableSectionElement> tBodies,
    TableSectionElement? tFoot,
    TableSectionElement? tHead,
    String width,
  });
}

@JS(r'HTMLTableElement')
external IHTMLTableElement JHTMLTableElement;

@JS()
@anonymous
class HTMLTableHeaderCellElement extends TableCellElement {
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLTableHeaderCellElement();
}

@JS()
@anonymous
class HTMLTableRowElement extends HtmlElement {
  external String get align;
  external set align(String value);
  external String get bgColor;
  external set bgColor(String value);
  external HTMLCollectionOf<TableCellElement> get cells;
  external String get ch;
  external set ch(String value);
  external String get chOff;
  external set chOff(String value);
  external num get rowIndex;
  external num get sectionRowIndex;
  external String get vAlign;
  external set vAlign(String value);
  external void deleteCell(num index);
  external TableCellElement insertCell(num index);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLTableRowElement({
    String align,
    String bgColor,
    HTMLCollectionOf<TableCellElement> cells,
    String ch,
    String chOff,
    num rowIndex,
    num sectionRowIndex,
    String vAlign,
  });
}

@JS(r'HTMLTableRowElement')
external IHTMLTableRowElement JHTMLTableRowElement;

@JS()
@anonymous
class HTMLTableSectionElement extends HtmlElement {
  external String get align;
  external set align(String value);
  external String get ch;
  external set ch(String value);
  external String get chOff;
  external set chOff(String value);
  external HTMLCollectionOf<TableRowElement> get rows;
  external String get vAlign;
  external set vAlign(String value);
  external void deleteRow(num index);
  external TableRowElement insertRow(num index);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLTableSectionElement({
    String align,
    String ch,
    String chOff,
    HTMLCollectionOf<TableRowElement> rows,
    String vAlign,
  });
}

@JS(r'HTMLTableSectionElement')
external IHTMLTableSectionElement JHTMLTableSectionElement;

@JS()
@anonymous
class HTMLTemplateElement extends HtmlElement {
  external DocumentFragment get content;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLTemplateElement({
    DocumentFragment content,
  });
}

@JS(r'HTMLTemplateElement')
external IHTMLTemplateElement JHTMLTemplateElement;

@JS()
@anonymous
class HTMLTextAreaElement extends HtmlElement {
  external String get autocomplete;
  external set autocomplete(String value);
  external num get cols;
  external set cols(num value);
  external String get defaultValue;
  external set defaultValue(String value);
  external String get dirName;
  external set dirName(String value);
  external bool get disabled;
  external set disabled(bool value);
  external FormElement? get form;
  external NodeListOf<LabelElement> get labels;
  external num get maxLength;
  external set maxLength(num value);
  external num get minLength;
  external set minLength(num value);
  external String get name;
  external set name(String value);
  external String get placeholder;
  external set placeholder(String value);
  external bool get readOnly;
  external set readOnly(bool value);
  external bool get required;
  external set required(bool value);
  external num get rows;
  external set rows(num value);
  external String get selectionDirection;
  external set selectionDirection(String value);
  external num get selectionEnd;
  external set selectionEnd(num value);
  external num get selectionStart;
  external set selectionStart(num value);
  external num get textLength;
  external String get type;
  external String get validationMessage;
  external ValidityState get validity;
  external String get value;
  external set value(String value);
  external bool get willValidate;
  external String get wrap;
  external set wrap(String value);
  external bool checkValidity();
  external bool reportValidity();
  external void select();
  external void setCustomValidity(String error);
  external void setRangeText(String replacement);
  external void setSelectionRange(num? start, num? end, String direction);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLTextAreaElement({
    String autocomplete,
    num cols,
    String defaultValue,
    String dirName,
    bool disabled,
    FormElement? form,
    NodeListOf<LabelElement> labels,
    num maxLength,
    num minLength,
    String name,
    String placeholder,
    bool readOnly,
    bool required,
    num rows,
    String selectionDirection,
    num selectionEnd,
    num selectionStart,
    num textLength,
    String type,
    String validationMessage,
    ValidityState validity,
    String value,
    bool willValidate,
    String wrap,
  });
}

@JS(r'HTMLTextAreaElement')
external IHTMLTextAreaElement JHTMLTextAreaElement;

@JS()
@anonymous
class HTMLTimeElement extends HtmlElement {
  external String get dateTime;
  external set dateTime(String value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLTimeElement({
    String dateTime,
  });
}

@JS(r'HTMLTimeElement')
external IHTMLTimeElement JHTMLTimeElement;

@JS()
@anonymous
class HTMLTitleElement extends HtmlElement {
  external String get text;
  external set text(String value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLTitleElement({
    String text,
  });
}

@JS(r'HTMLTitleElement')
external IHTMLTitleElement JHTMLTitleElement;

@JS()
@anonymous
class HTMLTrackElement extends HtmlElement {
  external String get kind;
  external set kind(String value);
  external String get label;
  external set label(String value);
  external num get readyState;
  external String get src;
  external set src(String value);
  external String get srclang;
  external set srclang(String value);
  external TextTrack get track;
  external num get ERROR;
  external num get LOADED;
  external num get LOADING;
  external num get NONE;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLTrackElement({
    String kind,
    String label,
    num readyState,
    String src,
    String srclang,
    TextTrack track,
    num ERROR,
    num LOADED,
    num LOADING,
    num NONE,
  });
}

@JS(r'HTMLTrackElement')
external IHTMLTrackElement JHTMLTrackElement;

@JS()
@anonymous
class HTMLUListElement extends HtmlElement {
  external bool get compact;
  external set compact(bool value);
  external String get type;
  external set type(String value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLUListElement({
    bool compact,
    String type,
  });
}

@JS(r'HTMLUListElement')
external IHTMLUListElement JHTMLUListElement;

@JS()
@anonymous
class HTMLUnknownElement extends HtmlElement {
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLUnknownElement();
}

@JS(r'HTMLUnknownElement')
external IHTMLUnknownElement JHTMLUnknownElement;

@JS()
@anonymous
class HTMLVideoElementEventMap extends HTMLMediaElementEventMap {
  external Event get enterpictureinpicture;
  external set enterpictureinpicture(Event value);
  external Event get leavepictureinpicture;
  external set leavepictureinpicture(Event value);
  external factory HTMLVideoElementEventMap({
    Event enterpictureinpicture,
    Event leavepictureinpicture,
  });
}

@JS()
@anonymous
class HTMLVideoElement extends MediaElement {
  external bool get disablePictureInPicture;
  external set disablePictureInPicture(bool value);
  external num get height;
  external set height(num value);
  external dynamic Function(Event ev)? get onenterpictureinpicture;
  external set onenterpictureinpicture(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onleavepictureinpicture;
  external set onleavepictureinpicture(dynamic Function(Event ev)? value);
  external bool get playsInline;
  external set playsInline(bool value);
  external String get poster;
  external set poster(String value);
  external num get videoHeight;
  external num get videoWidth;
  external num get width;
  external set width(num value);
  external VideoPlaybackQuality getVideoPlaybackQuality();
  external Promise<PictureInPictureWindow> requestPictureInPicture();
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory HTMLVideoElement({
    bool disablePictureInPicture,
    num height,
    dynamic Function(Event ev)? onenterpictureinpicture,
    dynamic Function(Event ev)? onleavepictureinpicture,
    bool playsInline,
    String poster,
    num videoHeight,
    num videoWidth,
    num width,
  });
}

@JS(r'HTMLVideoElement')
external IHTMLVideoElement JHTMLVideoElement;

@JS()
@anonymous
class HashChangeEvent extends Event {
  external String get newURL;
  external String get oldURL;
  external factory HashChangeEvent({
    String newURL,
    String oldURL,
  });
}

@JS(r'HashChangeEvent')
external IHashChangeEvent JHashChangeEvent;

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
class History {
  external num get length;
  external ScrollRestoration get scrollRestoration;
  external set scrollRestoration(ScrollRestoration value);
  external dynamic get state;
  external void back();
  external void forward();
  external void go(num delta);
  external void pushState(dynamic data, String unused, dynamic url);
  external void replaceState(dynamic data, String unused, dynamic url);
  external factory History({
    num length,
    ScrollRestoration scrollRestoration,
    dynamic state,
  });
}

@JS(r'History')
external IHistory JHistory;

@JS()
@anonymous
class IDBCursor {
  external IDBCursorDirection get direction;
  external IDBValidKey get key;
  external IDBValidKey get primaryKey;
  external Request get request;
  external dynamic get source;
  external void advance(num count);
  external void continuePrimaryKey(IDBValidKey key, IDBValidKey primaryKey);
  external Request<dynamic> delete();
  external Request<IDBValidKey> update(dynamic value);
  external factory IDBCursor({
    IDBCursorDirection direction,
    IDBValidKey key,
    IDBValidKey primaryKey,
    Request request,
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
  external Event get abort;
  external set abort(Event value);
  external Event get close;
  external set close(Event value);
  external Event get error;
  external set error(Event value);
  external VersionChangeEvent get versionchange;
  external set versionchange(VersionChangeEvent value);
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
  external dynamic Function(Event ev)? get onabort;
  external set onabort(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onclose;
  external set onclose(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onerror;
  external set onerror(dynamic Function(Event ev)? value);
  external dynamic Function(VersionChangeEvent ev)? get onversionchange;
  external set onversionchange(dynamic Function(VersionChangeEvent ev)? value);
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
  external Promise<List<IDBDatabaseInfo>> databases();
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
  external String get name;
  external set name(String value);
  external ObjectStore get objectStore;
  external bool get unique;
  external Request<num> count(dynamic query);
  external Request<dynamic> get(dynamic query);
  external Request<List<dynamic>> getAll(dynamic query, num count);
  external Request<List<IDBValidKey>> getAllKeys(dynamic query, num count);
  external Request<IDBValidKey?> getKey(dynamic query);
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
  external String get name;
  external set name(String value);
  external Transaction get transaction;
  external Request<IDBValidKey> add(dynamic value, IDBValidKey key);
  external Request<dynamic> clear();
  external Request<num> count(dynamic query);
  external Index createIndex(String name, dynamic keyPath, IDBIndexParameters options);
  external Request<dynamic> delete(dynamic query);
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
  external Event get blocked;
  external set blocked(Event value);
  external VersionChangeEvent get upgradeneeded;
  external set upgradeneeded(VersionChangeEvent value);
  external factory IDBOpenDBRequestEventMap({
    Event blocked,
    VersionChangeEvent upgradeneeded,
  });
}

@JS()
@anonymous
class IDBOpenDBRequest extends Request<Database> {
  external dynamic Function(Event ev)? get onblocked;
  external set onblocked(dynamic Function(Event ev)? value);
  external dynamic Function(VersionChangeEvent ev)? get onupgradeneeded;
  external set onupgradeneeded(dynamic Function(VersionChangeEvent ev)? value);
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
  external Event get error;
  external set error(Event value);
  external Event get success;
  external set success(Event value);
  external factory IDBRequestEventMap({
    Event error,
    Event success,
  });
}

@JS()
@anonymous
class IDBRequest<T> extends EventTarget {
  external DomException? get error;
  external dynamic Function(Event ev)? get onerror;
  external set onerror(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onsuccess;
  external set onsuccess(dynamic Function(Event ev)? value);
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
  external Event get abort;
  external set abort(Event value);
  external Event get complete;
  external set complete(Event value);
  external Event get error;
  external set error(Event value);
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
  external DomException? get error;
  external IDBTransactionMode get mode;
  external DomStringList get objectStoreNames;
  external dynamic Function(Event ev)? get onabort;
  external set onabort(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get oncomplete;
  external set oncomplete(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onerror;
  external set onerror(dynamic Function(Event ev)? value);
  external void abort();
  external void commit();
  external ObjectStore objectStore(String name);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory IDBTransaction({
    Database db,
    DomException? error,
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
class IIRFilterNode extends AudioNode {
  external void getFrequencyResponse(Float32List frequencyHz, Float32List magResponse, Float32List phaseResponse);
  external factory IIRFilterNode();
}

@JS(r'IIRFilterNode')
external IIIRFilterNode JIIRFilterNode;

@JS()
@anonymous
class IdleDeadline {
  external bool get didTimeout;
  external DOMHighResTimeStamp timeRemaining();
  external factory IdleDeadline({
    bool didTimeout,
  });
}

@JS(r'IdleDeadline')
external IIdleDeadline JIdleDeadline;

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
  external dynamic get canvas;
  external void transferFromImageBitmap(ImageBitmap? bitmap);
  external factory ImageBitmapRenderingContext({
    dynamic canvas,
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
class InnerHTML {
  external String get innerHTML;
  external set innerHTML(String value);
  external factory InnerHTML({
    String innerHTML,
  });
}

@JS()
@anonymous
class InputEvent extends UIEvent {
  external String? get data;
  external DataTransfer? get dataTransfer;
  external String get inputType;
  external bool get isComposing;
  external List<StaticRange> getTargetRanges();
  external factory InputEvent({
    String? data,
    DataTransfer? dataTransfer,
    String inputType,
    bool isComposing,
  });
}

@JS(r'InputEvent')
external IInputEvent JInputEvent;

@JS()
@anonymous
class IntersectionObserver {
  external dynamic get root;
  external String get rootMargin;
  external List<num> get thresholds;
  external void disconnect();
  external void observe(Element target);
  external List<IntersectionObserverEntry> takeRecords();
  external void unobserve(Element target);
  external factory IntersectionObserver({
    dynamic root,
    String rootMargin,
    List<num> thresholds,
  });
}

@JS(r'IntersectionObserver')
external IIntersectionObserver JIntersectionObserver;

@JS()
@anonymous
class IntersectionObserverEntry {
  external DomRectReadOnly get boundingClientRect;
  external num get intersectionRatio;
  external DomRectReadOnly get intersectionRect;
  external bool get isIntersecting;
  external DomRectReadOnly? get rootBounds;
  external Element get target;
  external DOMHighResTimeStamp get time;
  external factory IntersectionObserverEntry({
    DomRectReadOnly boundingClientRect,
    num intersectionRatio,
    DomRectReadOnly intersectionRect,
    bool isIntersecting,
    DomRectReadOnly? rootBounds,
    Element target,
    DOMHighResTimeStamp time,
  });
}

@JS(r'IntersectionObserverEntry')
external IIntersectionObserverEntry JIntersectionObserverEntry;

@JS()
@anonymous
class KHR_parallel_shader_compile {
  external GLenum get COMPLETION_STATUS_KHR;
  external factory KHR_parallel_shader_compile({
    GLenum COMPLETION_STATUS_KHR,
  });
}

@JS()
@anonymous
class KeyboardEvent extends UIEvent {
  external bool get altKey;
  external num get charCode;
  external String get code;
  external bool get ctrlKey;
  external bool get isComposing;
  external String get key;
  external num get keyCode;
  external num get location;
  external bool get metaKey;
  external bool get repeat;
  external bool get shiftKey;
  external bool getModifierState(String keyArg);
  external num get DOM_KEY_LOCATION_LEFT;
  external num get DOM_KEY_LOCATION_NUMPAD;
  external num get DOM_KEY_LOCATION_RIGHT;
  external num get DOM_KEY_LOCATION_STANDARD;
  external factory KeyboardEvent({
    bool altKey,
    num charCode,
    String code,
    bool ctrlKey,
    bool isComposing,
    String key,
    num keyCode,
    num location,
    bool metaKey,
    bool repeat,
    bool shiftKey,
    num DOM_KEY_LOCATION_LEFT,
    num DOM_KEY_LOCATION_NUMPAD,
    num DOM_KEY_LOCATION_RIGHT,
    num DOM_KEY_LOCATION_STANDARD,
  });
}

@JS(r'KeyboardEvent')
external IKeyboardEvent JKeyboardEvent;

@JS()
@anonymous
class KeyframeEffect extends AnimationEffect {
  external CompositeOperation get composite;
  external set composite(CompositeOperation value);
  external IterationCompositeOperation get iterationComposite;
  external set iterationComposite(IterationCompositeOperation value);
  external String? get pseudoElement;
  external set pseudoElement(String? value);
  external Element? get target;
  external set target(Element? value);
  external List<ComputedKeyframe> getKeyframes();
  external void setKeyframes(dynamic keyframes);
  external factory KeyframeEffect({
    CompositeOperation composite,
    IterationCompositeOperation iterationComposite,
    String? pseudoElement,
    Element? target,
  });
}

@JS(r'KeyframeEffect')
external IKeyframeEffect JKeyframeEffect;

@JS()
@anonymous
class LinkStyle {
  external CssStyleSheet? get sheet;
  external factory LinkStyle({
    CssStyleSheet? sheet,
  });
}

@JS()
@anonymous
class Location {
  external DomStringList get ancestorOrigins;
  external String get hash;
  external set hash(String value);
  external String get host;
  external set host(String value);
  external String get hostname;
  external set hostname(String value);
  external String get href;
  external set href(String value);
  @override
  external String toString();
  external String get origin;
  external String get pathname;
  external set pathname(String value);
  external String get port;
  external set port(String value);
  external String get protocol;
  external set protocol(String value);
  external String get search;
  external set search(String value);
  external void assign(dynamic url);
  external void reload();
  external void replace(dynamic url);
  external factory Location({
    DomStringList ancestorOrigins,
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

@JS(r'Location')
external ILocation JLocation;

@JS()
@anonymous
class MathMLElementEventMap extends ElementEventMap {
  external factory MathMLElementEventMap();
}

@JS()
@anonymous
class MathMLElement extends Element {
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory MathMLElement();
}

@JS(r'MathMLElement')
external IMathMLElement JMathMLElement;

@JS()
@anonymous
class MediaCapabilities {
  external Promise<MediaCapabilitiesDecodingInfo> decodingInfo(MediaDecodingConfiguration configuration);
  external Promise<MediaCapabilitiesEncodingInfo> encodingInfo(MediaEncodingConfiguration configuration);
  external factory MediaCapabilities();
}

@JS(r'MediaCapabilities')
external IMediaCapabilities JMediaCapabilities;

@JS()
@anonymous
class MediaDeviceInfo {
  external String get deviceId;
  external String get groupId;
  external MediaDeviceKind get kind;
  external String get label;
  external dynamic toJSON();
  external factory MediaDeviceInfo({
    String deviceId,
    String groupId,
    MediaDeviceKind kind,
    String label,
  });
}

@JS(r'MediaDeviceInfo')
external IMediaDeviceInfo JMediaDeviceInfo;

@JS()
@anonymous
class MediaDevicesEventMap {
  external Event get devicechange;
  external set devicechange(Event value);
  external factory MediaDevicesEventMap({
    Event devicechange,
  });
}

@JS()
@anonymous
class MediaDevices extends EventTarget {
  external dynamic Function(Event ev)? get ondevicechange;
  external set ondevicechange(dynamic Function(Event ev)? value);
  external Promise<List<MediaDeviceInfo>> enumerateDevices();
  external Promise<MediaStream> getDisplayMedia(DisplayMediaStreamConstraints constraints);
  external MediaTrackSupportedConstraints getSupportedConstraints();
  external Promise<MediaStream> getUserMedia(MediaStreamConstraints constraints);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory MediaDevices({
    dynamic Function(Event ev)? ondevicechange,
  });
}

@JS(r'MediaDevices')
external IMediaDevices JMediaDevices;

@JS()
@anonymous
class MediaElementAudioSourceNode extends AudioNode {
  external MediaElement get mediaElement;
  external factory MediaElementAudioSourceNode({
    MediaElement mediaElement,
  });
}

@JS(r'MediaElementAudioSourceNode')
external IMediaElementAudioSourceNode JMediaElementAudioSourceNode;

@JS()
@anonymous
class MediaEncryptedEvent extends Event {
  external ByteBuffer? get initData;
  external String get initDataType;
  external factory MediaEncryptedEvent({
    ByteBuffer? initData,
    String initDataType,
  });
}

@JS(r'MediaEncryptedEvent')
external IMediaEncryptedEvent JMediaEncryptedEvent;

@JS()
@anonymous
class MediaError {
  external num get code;
  external String get message;
  external num get MEDIA_ERR_ABORTED;
  external num get MEDIA_ERR_DECODE;
  external num get MEDIA_ERR_NETWORK;
  external num get MEDIA_ERR_SRC_NOT_SUPPORTED;
  external factory MediaError({
    num code,
    String message,
    num MEDIA_ERR_ABORTED,
    num MEDIA_ERR_DECODE,
    num MEDIA_ERR_NETWORK,
    num MEDIA_ERR_SRC_NOT_SUPPORTED,
  });
}

@JS(r'MediaError')
external IMediaError JMediaError;

@JS()
@anonymous
class MediaKeyMessageEvent extends Event {
  external ByteBuffer get message;
  external MediaKeyMessageType get messageType;
  external factory MediaKeyMessageEvent({
    ByteBuffer message,
    MediaKeyMessageType messageType,
  });
}

@JS(r'MediaKeyMessageEvent')
external IMediaKeyMessageEvent JMediaKeyMessageEvent;

@JS()
@anonymous
class MediaKeySessionEventMap {
  external Event get keystatuseschange;
  external set keystatuseschange(Event value);
  external MediaKeyMessageEvent get message;
  external set message(MediaKeyMessageEvent value);
  external factory MediaKeySessionEventMap({
    Event keystatuseschange,
    MediaKeyMessageEvent message,
  });
}

@JS()
@anonymous
class MediaKeySession extends EventTarget {
  external Promise<dynamic> get closed;
  external num get expiration;
  external MediaKeyStatusMap get keyStatuses;
  external dynamic Function(Event ev)? get onkeystatuseschange;
  external set onkeystatuseschange(dynamic Function(Event ev)? value);
  external dynamic Function(MediaKeyMessageEvent ev)? get onmessage;
  external set onmessage(dynamic Function(MediaKeyMessageEvent ev)? value);
  external String get sessionId;
  external Promise<void> close();
  external Promise<void> generateRequest(String initDataType, BufferSource initData);
  external Promise<bool> load(String sessionId);
  external Promise<void> remove();
  external Promise<void> update(BufferSource response);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory MediaKeySession({
    Promise<dynamic> closed,
    num expiration,
    MediaKeyStatusMap keyStatuses,
    dynamic Function(Event ev)? onkeystatuseschange,
    dynamic Function(MediaKeyMessageEvent ev)? onmessage,
    String sessionId,
  });
}

@JS(r'MediaKeySession')
external IMediaKeySession JMediaKeySession;

@JS()
@anonymous
class MediaKeyStatusMap {
  external num get size;
  external MediaKeyStatus? get(BufferSource keyId);
  external bool has(BufferSource keyId);
  external void forEach(
      void Function(MediaKeyStatus value, BufferSource key, MediaKeyStatusMap parent) callbackfn, dynamic thisArg);
  external factory MediaKeyStatusMap({
    num size,
  });
}

@JS(r'MediaKeyStatusMap')
external IMediaKeyStatusMap JMediaKeyStatusMap;

@JS()
@anonymous
class MediaKeySystemAccess {
  external String get keySystem;
  external Promise<MediaKeys> createMediaKeys();
  external MediaKeySystemConfiguration getConfiguration();
  external factory MediaKeySystemAccess({
    String keySystem,
  });
}

@JS(r'MediaKeySystemAccess')
external IMediaKeySystemAccess JMediaKeySystemAccess;

@JS()
@anonymous
class MediaKeys {
  external MediaKeySession createSession(MediaKeySessionType sessionType);
  external Promise<bool> setServerCertificate(BufferSource serverCertificate);
  external factory MediaKeys();
}

@JS(r'MediaKeys')
external IMediaKeys JMediaKeys;

@JS()
@anonymous
class MediaList {
  external num get length;
  external String get mediaText;
  external set mediaText(String value);
  @override
  external String toString();
  external void appendMedium(String medium);
  external void deleteMedium(String medium);
  external String? item(num index);
  external factory MediaList({
    num length,
    String mediaText,
  });
}

@JS(r'MediaList')
external IMediaList JMediaList;

@JS()
@anonymous
class MediaMetadata {
  external String get album;
  external set album(String value);
  external String get artist;
  external set artist(String value);
  external List<MediaImage> get artwork;
  external set artwork(List<MediaImage> value);
  external String get title;
  external set title(String value);
  external factory MediaMetadata({
    String album,
    String artist,
    List<MediaImage> artwork,
    String title,
  });
}

@JS(r'MediaMetadata')
external IMediaMetadata JMediaMetadata;

@JS()
@anonymous
class MediaQueryListEventMap {
  external MediaQueryListEvent get change;
  external set change(MediaQueryListEvent value);
  external factory MediaQueryListEventMap({
    MediaQueryListEvent change,
  });
}

@JS()
@anonymous
class MediaQueryList extends EventTarget {
  external bool get matches;
  external String get media;
  external dynamic Function(MediaQueryListEvent ev)? get onchange;
  external set onchange(dynamic Function(MediaQueryListEvent ev)? value);
  external void addListener(dynamic Function(MediaQueryListEvent ev)? callback);
  external void removeListener(dynamic Function(MediaQueryListEvent ev)? callback);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory MediaQueryList({
    bool matches,
    String media,
    dynamic Function(MediaQueryListEvent ev)? onchange,
  });
}

@JS(r'MediaQueryList')
external IMediaQueryList JMediaQueryList;

@JS()
@anonymous
class MediaQueryListEvent extends Event {
  external bool get matches;
  external String get media;
  external factory MediaQueryListEvent({
    bool matches,
    String media,
  });
}

@JS(r'MediaQueryListEvent')
external IMediaQueryListEvent JMediaQueryListEvent;

@JS()
@anonymous
class MediaRecorderEventMap {
  external BlobEvent get dataavailable;
  external set dataavailable(BlobEvent value);
  external Event get error;
  external set error(Event value);
  external Event get pause;
  external set pause(Event value);
  external Event get resume;
  external set resume(Event value);
  external Event get start;
  external set start(Event value);
  external Event get stop;
  external set stop(Event value);
  external factory MediaRecorderEventMap({
    BlobEvent dataavailable,
    Event error,
    Event pause,
    Event resume,
    Event start,
    Event stop,
  });
}

@JS()
@anonymous
class MediaRecorder extends EventTarget {
  external num get audioBitsPerSecond;
  external String get mimeType;
  external dynamic Function(BlobEvent ev)? get ondataavailable;
  external set ondataavailable(dynamic Function(BlobEvent ev)? value);
  external dynamic Function(Event ev)? get onerror;
  external set onerror(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onpause;
  external set onpause(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onresume;
  external set onresume(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onstart;
  external set onstart(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onstop;
  external set onstop(dynamic Function(Event ev)? value);
  external RecordingState get state;
  external MediaStream get stream;
  external num get videoBitsPerSecond;
  external void pause();
  external void requestData();
  external void resume();
  external void start(num timeslice);
  external void stop();
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory MediaRecorder({
    num audioBitsPerSecond,
    String mimeType,
    dynamic Function(BlobEvent ev)? ondataavailable,
    dynamic Function(Event ev)? onerror,
    dynamic Function(Event ev)? onpause,
    dynamic Function(Event ev)? onresume,
    dynamic Function(Event ev)? onstart,
    dynamic Function(Event ev)? onstop,
    RecordingState state,
    MediaStream stream,
    num videoBitsPerSecond,
  });
}

@JS(r'MediaRecorder')
external IMediaRecorder JMediaRecorder;

@JS()
@anonymous
class MediaRecorderErrorEvent extends Event {
  external DomException get error;
  external factory MediaRecorderErrorEvent({
    DomException error,
  });
}

@JS(r'MediaRecorderErrorEvent')
external IMediaRecorderErrorEvent JMediaRecorderErrorEvent;

@JS()
@anonymous
class MediaSession {
  external MediaMetadata? get metadata;
  external set metadata(MediaMetadata? value);
  external MediaSessionPlaybackState get playbackState;
  external set playbackState(MediaSessionPlaybackState value);
  external void setActionHandler(MediaSessionAction action, MediaSessionActionHandler? handler);
  external void setPositionState(MediaPositionState state);
  external factory MediaSession({
    MediaMetadata? metadata,
    MediaSessionPlaybackState playbackState,
  });
}

@JS(r'MediaSession')
external IMediaSession JMediaSession;

@JS()
@anonymous
class MediaSourceEventMap {
  external Event get sourceclose;
  external set sourceclose(Event value);
  external Event get sourceended;
  external set sourceended(Event value);
  external Event get sourceopen;
  external set sourceopen(Event value);
  external factory MediaSourceEventMap({
    Event sourceclose,
    Event sourceended,
    Event sourceopen,
  });
}

@JS()
@anonymous
class MediaSource extends EventTarget {
  external SourceBufferList get activeSourceBuffers;
  external num get duration;
  external set duration(num value);
  external dynamic Function(Event ev)? get onsourceclose;
  external set onsourceclose(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onsourceended;
  external set onsourceended(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onsourceopen;
  external set onsourceopen(dynamic Function(Event ev)? value);
  external ReadyState get readyState;
  external SourceBufferList get sourceBuffers;
  external SourceBuffer addSourceBuffer(String type);
  external void clearLiveSeekableRange();
  external void endOfStream(EndOfStreamError error);
  external void removeSourceBuffer(SourceBuffer sourceBuffer);
  external void setLiveSeekableRange(num start, num end);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory MediaSource({
    SourceBufferList activeSourceBuffers,
    num duration,
    dynamic Function(Event ev)? onsourceclose,
    dynamic Function(Event ev)? onsourceended,
    dynamic Function(Event ev)? onsourceopen,
    ReadyState readyState,
    SourceBufferList sourceBuffers,
  });
}

@JS(r'MediaSource')
external IMediaSource JMediaSource;

@JS()
@anonymous
class MediaStreamEventMap {
  external MediaStreamTrackEvent get addtrack;
  external set addtrack(MediaStreamTrackEvent value);
  external MediaStreamTrackEvent get removetrack;
  external set removetrack(MediaStreamTrackEvent value);
  external factory MediaStreamEventMap({
    MediaStreamTrackEvent addtrack,
    MediaStreamTrackEvent removetrack,
  });
}

@JS()
@anonymous
class MediaStream extends EventTarget {
  external bool get active;
  external String get id;
  external dynamic Function(MediaStreamTrackEvent ev)? get onaddtrack;
  external set onaddtrack(dynamic Function(MediaStreamTrackEvent ev)? value);
  external dynamic Function(MediaStreamTrackEvent ev)? get onremovetrack;
  external set onremovetrack(dynamic Function(MediaStreamTrackEvent ev)? value);
  external void addTrack(MediaStreamTrack track);
  external MediaStream clone();
  external List<MediaStreamTrack> getAudioTracks();
  external MediaStreamTrack? getTrackById(String trackId);
  external List<MediaStreamTrack> getTracks();
  external List<MediaStreamTrack> getVideoTracks();
  external void removeTrack(MediaStreamTrack track);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory MediaStream({
    bool active,
    String id,
    dynamic Function(MediaStreamTrackEvent ev)? onaddtrack,
    dynamic Function(MediaStreamTrackEvent ev)? onremovetrack,
  });
}

@JS(r'MediaStream')
external IMediaStream JMediaStream;

@JS()
@anonymous
class MediaStreamAudioDestinationNode extends AudioNode {
  external MediaStream get stream;
  external factory MediaStreamAudioDestinationNode({
    MediaStream stream,
  });
}

@JS(r'MediaStreamAudioDestinationNode')
external IMediaStreamAudioDestinationNode JMediaStreamAudioDestinationNode;

@JS()
@anonymous
class MediaStreamAudioSourceNode extends AudioNode {
  external MediaStream get mediaStream;
  external factory MediaStreamAudioSourceNode({
    MediaStream mediaStream,
  });
}

@JS(r'MediaStreamAudioSourceNode')
external IMediaStreamAudioSourceNode JMediaStreamAudioSourceNode;

@JS()
@anonymous
class MediaStreamTrackEventMap {
  external Event get ended;
  external set ended(Event value);
  external Event get mute;
  external set mute(Event value);
  external Event get unmute;
  external set unmute(Event value);
  external factory MediaStreamTrackEventMap({
    Event ended,
    Event mute,
    Event unmute,
  });
}

@JS()
@anonymous
class MediaStreamTrack extends EventTarget {
  external String get contentHint;
  external set contentHint(String value);
  external bool get enabled;
  external set enabled(bool value);
  external String get id;
  external String get kind;
  external String get label;
  external bool get muted;
  external dynamic Function(Event ev)? get onended;
  external set onended(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onmute;
  external set onmute(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onunmute;
  external set onunmute(dynamic Function(Event ev)? value);
  external MediaStreamTrackState get readyState;
  external Promise<void> applyConstraints(MediaTrackConstraints constraints);
  external MediaStreamTrack clone();
  external MediaTrackCapabilities getCapabilities();
  external MediaTrackConstraints getConstraints();
  external MediaTrackSettings getSettings();
  external void stop();
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory MediaStreamTrack({
    String contentHint,
    bool enabled,
    String id,
    String kind,
    String label,
    bool muted,
    dynamic Function(Event ev)? onended,
    dynamic Function(Event ev)? onmute,
    dynamic Function(Event ev)? onunmute,
    MediaStreamTrackState readyState,
  });
}

@JS(r'MediaStreamTrack')
external IMediaStreamTrack JMediaStreamTrack;

@JS()
@anonymous
class MediaStreamTrackEvent extends Event {
  external MediaStreamTrack get track;
  external factory MediaStreamTrackEvent({
    MediaStreamTrack track,
  });
}

@JS(r'MediaStreamTrackEvent')
external IMediaStreamTrackEvent JMediaStreamTrackEvent;

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
  external void initMessageEvent(String type, bool bubbles, bool cancelable, dynamic data, String origin,
      String lastEventId, MessageEventSource? source, List<MessagePort> ports);
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
  external MessageEvent get message;
  external set message(MessageEvent value);
  external MessageEvent get messageerror;
  external set messageerror(MessageEvent value);
  external factory MessagePortEventMap({
    MessageEvent message,
    MessageEvent messageerror,
  });
}

@JS()
@anonymous
class MessagePort extends EventTarget {
  external dynamic Function(MessageEvent ev)? get onmessage;
  external set onmessage(dynamic Function(MessageEvent ev)? value);
  external dynamic Function(MessageEvent ev)? get onmessageerror;
  external set onmessageerror(dynamic Function(MessageEvent ev)? value);
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
class MimeType {
  external dynamic get description;
  external dynamic get enabledPlugin;
  external dynamic get suffixes;
  external dynamic get type;
  external factory MimeType({
    dynamic description,
    dynamic enabledPlugin,
    dynamic suffixes,
    dynamic type,
  });
}

@JS(r'MimeType')
external IMimeType JMimeType;

@JS()
@anonymous
class MimeTypeArray {
  external num get length;
  external dynamic item(num index);
  external dynamic namedItem(String name);
  external factory MimeTypeArray({
    num length,
  });
}

@JS(r'MimeTypeArray')
external IMimeTypeArray JMimeTypeArray;

@JS()
@anonymous
class MouseEvent extends UIEvent {
  external bool get altKey;
  external num get button;
  external num get buttons;
  external num get clientX;
  external num get clientY;
  external bool get ctrlKey;
  external bool get metaKey;
  external num get movementX;
  external num get movementY;
  external num get offsetX;
  external num get offsetY;
  external num get pageX;
  external num get pageY;
  external EventTarget? get relatedTarget;
  external num get screenX;
  external num get screenY;
  external bool get shiftKey;
  external num get x;
  external num get y;
  external bool getModifierState(String keyArg);
  external void initMouseEvent(
      String typeArg,
      bool canBubbleArg,
      bool cancelableArg,
      Window viewArg,
      num detailArg,
      num screenXArg,
      num screenYArg,
      num clientXArg,
      num clientYArg,
      bool ctrlKeyArg,
      bool altKeyArg,
      bool shiftKeyArg,
      bool metaKeyArg,
      num buttonArg,
      EventTarget? relatedTargetArg);
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
    num offsetX,
    num offsetY,
    num pageX,
    num pageY,
    EventTarget? relatedTarget,
    num screenX,
    num screenY,
    bool shiftKey,
    num x,
    num y,
  });
}

@JS(r'MouseEvent')
external IMouseEvent JMouseEvent;

@JS()
@anonymous
class MutationEvent extends Event {
  external num get attrChange;
  external String get attrName;
  external String get newValue;
  external String get prevValue;
  external Node? get relatedNode;
  external void initMutationEvent(String typeArg, bool bubblesArg, bool cancelableArg, Node? relatedNodeArg,
      String prevValueArg, String newValueArg, String attrNameArg, num attrChangeArg);
  external num get ADDITION;
  external num get MODIFICATION;
  external num get REMOVAL;
  external factory MutationEvent({
    num attrChange,
    String attrName,
    String newValue,
    String prevValue,
    Node? relatedNode,
    num ADDITION,
    num MODIFICATION,
    num REMOVAL,
  });
}

@JS(r'MutationEvent')
external IMutationEvent JMutationEvent;

@JS()
@anonymous
class MutationObserver {
  external void disconnect();
  external void observe(Node target, MutationObserverInit options);
  external List<MutationRecord> takeRecords();
  external factory MutationObserver();
}

@JS(r'MutationObserver')
external IMutationObserver JMutationObserver;

@JS()
@anonymous
class MutationRecord {
  external NodeList get addedNodes;
  external String? get attributeName;
  external String? get attributeNamespace;
  external Node? get nextSibling;
  external String? get oldValue;
  external Node? get previousSibling;
  external NodeList get removedNodes;
  external Node get target;
  external MutationRecordType get type;
  external factory MutationRecord({
    NodeList addedNodes,
    String? attributeName,
    String? attributeNamespace,
    Node? nextSibling,
    String? oldValue,
    Node? previousSibling,
    NodeList removedNodes,
    Node target,
    MutationRecordType type,
  });
}

@JS(r'MutationRecord')
external IMutationRecord JMutationRecord;

@JS()
@anonymous
class NamedNodeMap {
  external num get length;
  external Attr? getNamedItem(String qualifiedName);
  external Attr? getNamedItemNS(String? namespace, String localName);
  external Attr? item(num index);
  external Attr removeNamedItem(String qualifiedName);
  external Attr removeNamedItemNS(String? namespace, String localName);
  external Attr? setNamedItem(Attr attr);
  external Attr? setNamedItemNS(Attr attr);
  external factory NamedNodeMap({
    num length,
  });
}

@JS(r'NamedNodeMap')
external INamedNodeMap JNamedNodeMap;

@JS()
@anonymous
class Navigator extends NavigatorAutomationInformation {
  external Clipboard get clipboard;
  external CredentialsContainer get credentials;
  external String? get doNotTrack;
  external Geolocation get geolocation;
  external num get maxTouchPoints;
  external MediaCapabilities get mediaCapabilities;
  external MediaDevices get mediaDevices;
  external MediaSession get mediaSession;
  external Permissions get permissions;
  external bool get pointerEnabled;
  external ServiceWorkerContainer get serviceWorker;
  external List<Gamepad?> getGamepads();
  external Promise<MediaKeySystemAccess> requestMediaKeySystemAccess(
      String keySystem, List<MediaKeySystemConfiguration> supportedConfigurations);
  external bool sendBeacon(dynamic url, BodyInit? data);
  external Promise<void> share(ShareData data);
  external bool vibrate(VibratePattern pattern);
  external factory Navigator({
    Clipboard clipboard,
    CredentialsContainer credentials,
    String? doNotTrack,
    Geolocation geolocation,
    num maxTouchPoints,
    MediaCapabilities mediaCapabilities,
    MediaDevices mediaDevices,
    MediaSession mediaSession,
    Permissions permissions,
    bool pointerEnabled,
    ServiceWorkerContainer serviceWorker,
  });
}

@JS(r'Navigator')
external INavigator JNavigator;

@JS()
@anonymous
class NavigatorAutomationInformation {
  external bool get webdriver;
  external factory NavigatorAutomationInformation({
    bool webdriver,
  });
}

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
class NavigatorContentUtils {
  external void registerProtocolHandler(String scheme, dynamic url);
  external factory NavigatorContentUtils();
}

@JS()
@anonymous
class NavigatorCookies {
  external bool get cookieEnabled;
  external factory NavigatorCookies({
    bool cookieEnabled,
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
  external String get productSub;
  external String get userAgent;
  external String get vendor;
  external String get vendorSub;
  external factory NavigatorID({
    String appCodeName,
    String appName,
    String appVersion,
    String platform,
    String product,
    String productSub,
    String userAgent,
    String vendor,
    String vendorSub,
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
class NavigatorNetworkInformation {
  external NetworkInformation get connection;
  external factory NavigatorNetworkInformation({
    NetworkInformation connection,
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
class NavigatorPlugins {
  external MimeTypeArray get mimeTypes;
  external PluginArray get plugins;
  external bool javaEnabled();
  external factory NavigatorPlugins({
    MimeTypeArray mimeTypes,
    PluginArray plugins,
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
class NetworkInformation extends EventTarget {
  external ConnectionType get type;
  external factory NetworkInformation({
    ConnectionType type,
  });
}

@JS(r'NetworkInformation')
external INetworkInformation JNetworkInformation;

@JS()
@anonymous
class Node extends EventTarget {
  external String get baseURI;
  external NodeListOf<dynamic> get childNodes;
  external dynamic get firstChild;
  external bool get isConnected;
  external dynamic get lastChild;
  external dynamic get nextSibling;
  external String get nodeName;
  external num get nodeType;
  external String? get nodeValue;
  external set nodeValue(String? value);
  external Document? get ownerDocument;
  external HtmlElement? get parentElement;
  external dynamic get parentNode;
  external dynamic get previousSibling;
  external String? get textContent;
  external set textContent(String? value);
  external T appendChild<T extends Node>(T node);
  external Node cloneNode(bool deep);
  external num compareDocumentPosition(Node other);
  external bool contains(Node? other);
  external Node getRootNode(GetRootNodeOptions options);
  external bool hasChildNodes();
  external T insertBefore<T extends Node>(T node, Node? child);
  external bool isDefaultNamespace(String? namespace);
  external bool isEqualNode(Node? otherNode);
  external bool isSameNode(Node? otherNode);
  external String? lookupNamespaceURI(String? prefix);
  external String? lookupPrefix(String? namespace);
  external void normalize();
  external T removeChild<T extends Node>(T child);
  external T replaceChild<T extends Node>(Node node, T child);
  external num get ATTRIBUTE_NODE;
  external num get CDATA_SECTION_NODE;
  external num get COMMENT_NODE;
  external num get DOCUMENT_FRAGMENT_NODE;
  external num get DOCUMENT_NODE;
  external num get DOCUMENT_POSITION_CONTAINED_BY;
  external num get DOCUMENT_POSITION_CONTAINS;
  external num get DOCUMENT_POSITION_DISCONNECTED;
  external num get DOCUMENT_POSITION_FOLLOWING;
  external num get DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC;
  external num get DOCUMENT_POSITION_PRECEDING;
  external num get DOCUMENT_TYPE_NODE;
  external num get ELEMENT_NODE;
  external num get ENTITY_NODE;
  external num get ENTITY_REFERENCE_NODE;
  external num get NOTATION_NODE;
  external num get PROCESSING_INSTRUCTION_NODE;
  external num get TEXT_NODE;
  external factory Node({
    String baseURI,
    NodeListOf<dynamic> childNodes,
    dynamic firstChild,
    bool isConnected,
    dynamic lastChild,
    dynamic nextSibling,
    String nodeName,
    num nodeType,
    String? nodeValue,
    Document? ownerDocument,
    HtmlElement? parentElement,
    dynamic parentNode,
    dynamic previousSibling,
    String? textContent,
    num ATTRIBUTE_NODE,
    num CDATA_SECTION_NODE,
    num COMMENT_NODE,
    num DOCUMENT_FRAGMENT_NODE,
    num DOCUMENT_NODE,
    num DOCUMENT_POSITION_CONTAINED_BY,
    num DOCUMENT_POSITION_CONTAINS,
    num DOCUMENT_POSITION_DISCONNECTED,
    num DOCUMENT_POSITION_FOLLOWING,
    num DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC,
    num DOCUMENT_POSITION_PRECEDING,
    num DOCUMENT_TYPE_NODE,
    num ELEMENT_NODE,
    num ENTITY_NODE,
    num ENTITY_REFERENCE_NODE,
    num NOTATION_NODE,
    num PROCESSING_INSTRUCTION_NODE,
    num TEXT_NODE,
  });
}

@JS(r'Node')
external INode JNode;

@JS()
@anonymous
class NodeIterator {
  external NodeFilter? get filter;
  external bool get pointerBeforeReferenceNode;
  external Node get referenceNode;
  external Node get root;
  external num get whatToShow;
  external void detach();
  external Node? nextNode();
  external Node? previousNode();
  external factory NodeIterator({
    NodeFilter? filter,
    bool pointerBeforeReferenceNode,
    Node referenceNode,
    Node root,
    num whatToShow,
  });
}

@JS(r'NodeIterator')
external INodeIterator JNodeIterator;

@JS()
@anonymous
class NodeList {
  external num get length;
  external Node? item(num index);
  external void forEach(void Function(Node value, num key, NodeList parent) callbackfn, dynamic thisArg);
  external factory NodeList({
    num length,
  });
}

@JS(r'NodeList')
external INodeList JNodeList;

@JS()
@anonymous
class NodeListOf<TNode extends Node> extends NodeList {
  external TNode item(num index);
  external void forEach(void Function(TNode value, num key, NodeListOf<TNode> parent) callbackfn, dynamic thisArg);
  external factory NodeListOf();
}

@JS()
@anonymous
class NonDocumentTypeChildNode {
  external Element? get nextElementSibling;
  external Element? get previousElementSibling;
  external factory NonDocumentTypeChildNode({
    Element? nextElementSibling,
    Element? previousElementSibling,
  });
}

@JS()
@anonymous
class NonElementParentNode {
  external Element? getElementById(String elementId);
  external factory NonElementParentNode();
}

@JS()
@anonymous
class NotificationEventMap {
  external Event get click;
  external set click(Event value);
  external Event get close;
  external set close(Event value);
  external Event get error;
  external set error(Event value);
  external Event get show;
  external set show(Event value);
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
  external String get body;
  external dynamic get data;
  external NotificationDirection get dir;
  external String get icon;
  external String get lang;
  external dynamic Function(Event ev)? get onclick;
  external set onclick(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onclose;
  external set onclose(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onerror;
  external set onerror(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onshow;
  external set onshow(dynamic Function(Event ev)? value);
  external String get tag;
  external String get title;
  external void close();
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory Notification({
    String body,
    dynamic data,
    NotificationDirection dir,
    String icon,
    String lang,
    dynamic Function(Event ev)? onclick,
    dynamic Function(Event ev)? onclose,
    dynamic Function(Event ev)? onerror,
    dynamic Function(Event ev)? onshow,
    String tag,
    String title,
  });
}

@JS(r'Notification')
external INotification JNotification;

@JS()
@anonymous
class OES_element_index_uint {
  external factory OES_element_index_uint();
}

@JS()
@anonymous
class OES_fbo_render_mipmap {
  external factory OES_fbo_render_mipmap();
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
class OVR_multiview2 {
  external void framebufferTextureMultiviewOVR(
      GLenum target, GLenum attachment, Texture? texture, GLint level, GLint baseViewIndex, GLsizei numViews);
  external GLenum get FRAMEBUFFER_ATTACHMENT_TEXTURE_BASE_VIEW_INDEX_OVR;
  external GLenum get FRAMEBUFFER_ATTACHMENT_TEXTURE_NUM_VIEWS_OVR;
  external GLenum get FRAMEBUFFER_INCOMPLETE_VIEW_TARGETS_OVR;
  external GLenum get MAX_VIEWS_OVR;
  external factory OVR_multiview2({
    GLenum FRAMEBUFFER_ATTACHMENT_TEXTURE_BASE_VIEW_INDEX_OVR,
    GLenum FRAMEBUFFER_ATTACHMENT_TEXTURE_NUM_VIEWS_OVR,
    GLenum FRAMEBUFFER_INCOMPLETE_VIEW_TARGETS_OVR,
    GLenum MAX_VIEWS_OVR,
  });
}

@JS()
@anonymous
class OfflineAudioCompletionEvent extends Event {
  external AudioBuffer get renderedBuffer;
  external factory OfflineAudioCompletionEvent({
    AudioBuffer renderedBuffer,
  });
}

@JS(r'OfflineAudioCompletionEvent')
external IOfflineAudioCompletionEvent JOfflineAudioCompletionEvent;

@JS()
@anonymous
class OfflineAudioContextEventMap extends BaseAudioContextEventMap {
  external OfflineAudioCompletionEvent get complete;
  external set complete(OfflineAudioCompletionEvent value);
  external factory OfflineAudioContextEventMap({
    OfflineAudioCompletionEvent complete,
  });
}

@JS()
@anonymous
class OfflineAudioContext extends BaseAudioContext {
  external num get length;
  external dynamic Function(OfflineAudioCompletionEvent ev)? get oncomplete;
  external set oncomplete(dynamic Function(OfflineAudioCompletionEvent ev)? value);
  external Promise<void> resume();
  external Promise<AudioBuffer> startRendering();
  external Promise<void> suspend(num suspendTime);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory OfflineAudioContext({
    num length,
    dynamic Function(OfflineAudioCompletionEvent ev)? oncomplete,
  });
}

@JS(r'OfflineAudioContext')
external IOfflineAudioContext JOfflineAudioContext;

@JS()
@anonymous
class OffscreenCanvas extends EventTarget {
  external factory OffscreenCanvas();
}

@JS()
@anonymous
class OscillatorNode extends AudioScheduledSourceNode {
  external AudioParam get detune;
  external AudioParam get frequency;
  external OscillatorType get type;
  external set type(OscillatorType value);
  external void setPeriodicWave(PeriodicWave periodicWave);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory OscillatorNode({
    AudioParam detune,
    AudioParam frequency,
    OscillatorType type,
  });
}

@JS(r'OscillatorNode')
external IOscillatorNode JOscillatorNode;

@JS()
@anonymous
class OverconstrainedError extends Error {
  external String get constraint;
  external factory OverconstrainedError({
    String constraint,
  });
}

@JS(r'OverconstrainedError')
external IOverconstrainedError JOverconstrainedError;

@JS()
@anonymous
class PageTransitionEvent extends Event {
  external bool get persisted;
  external factory PageTransitionEvent({
    bool persisted,
  });
}

@JS(r'PageTransitionEvent')
external IPageTransitionEvent JPageTransitionEvent;

@JS()
@anonymous
class PannerNode extends AudioNode {
  external num get coneInnerAngle;
  external set coneInnerAngle(num value);
  external num get coneOuterAngle;
  external set coneOuterAngle(num value);
  external num get coneOuterGain;
  external set coneOuterGain(num value);
  external DistanceModelType get distanceModel;
  external set distanceModel(DistanceModelType value);
  external num get maxDistance;
  external set maxDistance(num value);
  external AudioParam get orientationX;
  external AudioParam get orientationY;
  external AudioParam get orientationZ;
  external PanningModelType get panningModel;
  external set panningModel(PanningModelType value);
  external AudioParam get positionX;
  external AudioParam get positionY;
  external AudioParam get positionZ;
  external num get refDistance;
  external set refDistance(num value);
  external num get rolloffFactor;
  external set rolloffFactor(num value);
  external void setOrientation(num x, num y, num z);
  external void setPosition(num x, num y, num z);
  external factory PannerNode({
    num coneInnerAngle,
    num coneOuterAngle,
    num coneOuterGain,
    DistanceModelType distanceModel,
    num maxDistance,
    AudioParam orientationX,
    AudioParam orientationY,
    AudioParam orientationZ,
    PanningModelType panningModel,
    AudioParam positionX,
    AudioParam positionY,
    AudioParam positionZ,
    num refDistance,
    num rolloffFactor,
  });
}

@JS(r'PannerNode')
external IPannerNode JPannerNode;

@JS()
@anonymous
class ParentNode {
  external num get childElementCount;
  external HtmlCollection get children;
  external Element? get firstElementChild;
  external Element? get lastElementChild;
  external void append([
    dynamic nodes1,
    dynamic nodes2,
    dynamic nodes3,
    dynamic nodes4,
    dynamic nodes5,
    dynamic nodes6,
    dynamic nodes7,
    dynamic nodes8,
    dynamic nodes9,
  ]);
  external void prepend([
    dynamic nodes1,
    dynamic nodes2,
    dynamic nodes3,
    dynamic nodes4,
    dynamic nodes5,
    dynamic nodes6,
    dynamic nodes7,
    dynamic nodes8,
    dynamic nodes9,
  ]);
  external dynamic querySelector<K extends String>(K selectors);
  external NodeListOf<dynamic> querySelectorAll<K extends String>(K selectors);
  external void replaceChildren([
    dynamic nodes1,
    dynamic nodes2,
    dynamic nodes3,
    dynamic nodes4,
    dynamic nodes5,
    dynamic nodes6,
    dynamic nodes7,
    dynamic nodes8,
    dynamic nodes9,
  ]);
  external factory ParentNode({
    num childElementCount,
    HtmlCollection children,
    Element? firstElementChild,
    Element? lastElementChild,
  });
}

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
class PaymentAddress {
  external List<String> get addressLine;
  external String get city;
  external String get country;
  external String get dependentLocality;
  external String get organization;
  external String get phone;
  external String get postalCode;
  external String get recipient;
  external String get region;
  external String get sortingCode;
  external dynamic toJSON();
  external factory PaymentAddress({
    List<String> addressLine,
    String city,
    String country,
    String dependentLocality,
    String organization,
    String phone,
    String postalCode,
    String recipient,
    String region,
    String sortingCode,
  });
}

@JS(r'PaymentAddress')
external IPaymentAddress JPaymentAddress;

@JS()
@anonymous
class PaymentMethodChangeEvent extends PaymentRequestUpdateEvent {
  external dynamic get methodDetails;
  external String get methodName;
  external factory PaymentMethodChangeEvent({
    dynamic methodDetails,
    String methodName,
  });
}

@JS(r'PaymentMethodChangeEvent')
external IPaymentMethodChangeEvent JPaymentMethodChangeEvent;

@JS()
@anonymous
class PaymentRequestEventMap {
  external Event get paymentmethodchange;
  external set paymentmethodchange(Event value);
  external factory PaymentRequestEventMap({
    Event paymentmethodchange,
  });
}

@JS()
@anonymous
class PaymentRequest extends EventTarget {
  external String get id;
  external dynamic Function(Event ev)? get onpaymentmethodchange;
  external set onpaymentmethodchange(dynamic Function(Event ev)? value);
  external Promise<void> abort();
  external Promise<bool> canMakePayment();
  external Promise<PaymentResponse> show(dynamic detailsPromise);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory PaymentRequest({
    String id,
    dynamic Function(Event ev)? onpaymentmethodchange,
  });
}

@JS(r'PaymentRequest')
external IPaymentRequest JPaymentRequest;

@JS()
@anonymous
class PaymentRequestUpdateEvent extends Event {
  external void updateWith(dynamic detailsPromise);
  external factory PaymentRequestUpdateEvent();
}

@JS(r'PaymentRequestUpdateEvent')
external IPaymentRequestUpdateEvent JPaymentRequestUpdateEvent;

@JS()
@anonymous
class PaymentResponse extends EventTarget {
  external dynamic get details;
  external String get methodName;
  external String get requestId;
  external Promise<void> complete(PaymentComplete result);
  external Promise<void> retry(PaymentValidationErrors errorFields);
  external dynamic toJSON();
  external factory PaymentResponse({
    dynamic details,
    String methodName,
    String requestId,
  });
}

@JS(r'PaymentResponse')
external IPaymentResponse JPaymentResponse;

@JS()
@anonymous
class PerformanceEventMap {
  external Event get resourcetimingbufferfull;
  external set resourcetimingbufferfull(Event value);
  external factory PerformanceEventMap({
    Event resourcetimingbufferfull,
  });
}

@JS()
@anonymous
class Performance extends EventTarget {
  external PerformanceNavigation get navigation;
  external dynamic Function(Event ev)? get onresourcetimingbufferfull;
  external set onresourcetimingbufferfull(dynamic Function(Event ev)? value);
  external DOMHighResTimeStamp get timeOrigin;
  external PerformanceTiming get timing;
  external void clearMarks(String markName);
  external void clearMeasures(String measureName);
  external void clearResourceTimings();
  external PerformanceEntryList getEntries();
  external PerformanceEntryList getEntriesByName(String name, String type);
  external PerformanceEntryList getEntriesByType(String type);
  external PerformanceMark mark(String markName, PerformanceMarkOptions markOptions);
  external PerformanceMeasure measure(String measureName, dynamic startOrMeasureOptions, String endMark);
  external DOMHighResTimeStamp now();
  external void setResourceTimingBufferSize(num maxSize);
  external dynamic toJSON();
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory Performance({
    PerformanceNavigation navigation,
    dynamic Function(Event ev)? onresourcetimingbufferfull,
    DOMHighResTimeStamp timeOrigin,
    PerformanceTiming timing,
  });
}

@JS(r'Performance')
external IPerformance JPerformance;

@JS()
@anonymous
class PerformanceEntry {
  external DOMHighResTimeStamp get duration;
  external String get entryType;
  external String get name;
  external DOMHighResTimeStamp get startTime;
  external dynamic toJSON();
  external factory PerformanceEntry({
    DOMHighResTimeStamp duration,
    String entryType,
    String name,
    DOMHighResTimeStamp startTime,
  });
}

@JS(r'PerformanceEntry')
external IPerformanceEntry JPerformanceEntry;

@JS()
@anonymous
class PerformanceEventTiming extends PerformanceEntry {
  external bool get cancelable;
  external DOMHighResTimeStamp get processingEnd;
  external DOMHighResTimeStamp get processingStart;
  external Node? get target;
  external factory PerformanceEventTiming({
    bool cancelable,
    DOMHighResTimeStamp processingEnd,
    DOMHighResTimeStamp processingStart,
    Node? target,
  });
}

@JS(r'PerformanceEventTiming')
external IPerformanceEventTiming JPerformanceEventTiming;

@JS()
@anonymous
class PerformanceMark extends PerformanceEntry {
  external dynamic get detail;
  external factory PerformanceMark({
    dynamic detail,
  });
}

@JS(r'PerformanceMark')
external IPerformanceMark JPerformanceMark;

@JS()
@anonymous
class PerformanceMeasure extends PerformanceEntry {
  external dynamic get detail;
  external factory PerformanceMeasure({
    dynamic detail,
  });
}

@JS(r'PerformanceMeasure')
external IPerformanceMeasure JPerformanceMeasure;

@JS()
@anonymous
class PerformanceNavigation {
  external num get redirectCount;
  external num get type;
  external dynamic toJSON();
  external num get TYPE_BACK_FORWARD;
  external num get TYPE_NAVIGATE;
  external num get TYPE_RELOAD;
  external num get TYPE_RESERVED;
  external factory PerformanceNavigation({
    num redirectCount,
    num type,
    num TYPE_BACK_FORWARD,
    num TYPE_NAVIGATE,
    num TYPE_RELOAD,
    num TYPE_RESERVED,
  });
}

@JS(r'PerformanceNavigation')
external IPerformanceNavigation JPerformanceNavigation;

@JS()
@anonymous
class PerformanceNavigationTiming extends PerformanceResourceTiming {
  external DOMHighResTimeStamp get domComplete;
  external DOMHighResTimeStamp get domContentLoadedEventEnd;
  external DOMHighResTimeStamp get domContentLoadedEventStart;
  external DOMHighResTimeStamp get domInteractive;
  external DOMHighResTimeStamp get loadEventEnd;
  external DOMHighResTimeStamp get loadEventStart;
  external num get redirectCount;
  external NavigationType get type;
  external DOMHighResTimeStamp get unloadEventEnd;
  external DOMHighResTimeStamp get unloadEventStart;
  external dynamic toJSON();
  external factory PerformanceNavigationTiming({
    DOMHighResTimeStamp domComplete,
    DOMHighResTimeStamp domContentLoadedEventEnd,
    DOMHighResTimeStamp domContentLoadedEventStart,
    DOMHighResTimeStamp domInteractive,
    DOMHighResTimeStamp loadEventEnd,
    DOMHighResTimeStamp loadEventStart,
    num redirectCount,
    NavigationType type,
    DOMHighResTimeStamp unloadEventEnd,
    DOMHighResTimeStamp unloadEventStart,
  });
}

@JS(r'PerformanceNavigationTiming')
external IPerformanceNavigationTiming JPerformanceNavigationTiming;

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
class PerformancePaintTiming extends PerformanceEntry {
  external factory PerformancePaintTiming();
}

@JS(r'PerformancePaintTiming')
external IPerformancePaintTiming JPerformancePaintTiming;

@JS()
@anonymous
class PerformanceResourceTiming extends PerformanceEntry {
  external DOMHighResTimeStamp get connectEnd;
  external DOMHighResTimeStamp get connectStart;
  external num get decodedBodySize;
  external DOMHighResTimeStamp get domainLookupEnd;
  external DOMHighResTimeStamp get domainLookupStart;
  external num get encodedBodySize;
  external DOMHighResTimeStamp get fetchStart;
  external String get initiatorType;
  external String get nextHopProtocol;
  external DOMHighResTimeStamp get redirectEnd;
  external DOMHighResTimeStamp get redirectStart;
  external DOMHighResTimeStamp get requestStart;
  external DOMHighResTimeStamp get responseEnd;
  external DOMHighResTimeStamp get responseStart;
  external DOMHighResTimeStamp get secureConnectionStart;
  external List<PerformanceServerTiming> get serverTiming;
  external num get transferSize;
  external DOMHighResTimeStamp get workerStart;
  external dynamic toJSON();
  external factory PerformanceResourceTiming({
    DOMHighResTimeStamp connectEnd,
    DOMHighResTimeStamp connectStart,
    num decodedBodySize,
    DOMHighResTimeStamp domainLookupEnd,
    DOMHighResTimeStamp domainLookupStart,
    num encodedBodySize,
    DOMHighResTimeStamp fetchStart,
    String initiatorType,
    String nextHopProtocol,
    DOMHighResTimeStamp redirectEnd,
    DOMHighResTimeStamp redirectStart,
    DOMHighResTimeStamp requestStart,
    DOMHighResTimeStamp responseEnd,
    DOMHighResTimeStamp responseStart,
    DOMHighResTimeStamp secureConnectionStart,
    List<PerformanceServerTiming> serverTiming,
    num transferSize,
    DOMHighResTimeStamp workerStart,
  });
}

@JS(r'PerformanceResourceTiming')
external IPerformanceResourceTiming JPerformanceResourceTiming;

@JS()
@anonymous
class PerformanceServerTiming {
  external String get description;
  external DOMHighResTimeStamp get duration;
  external String get name;
  external dynamic toJSON();
  external factory PerformanceServerTiming({
    String description,
    DOMHighResTimeStamp duration,
    String name,
  });
}

@JS(r'PerformanceServerTiming')
external IPerformanceServerTiming JPerformanceServerTiming;

@JS()
@anonymous
class PerformanceTiming {
  external num get connectEnd;
  external num get connectStart;
  external num get domComplete;
  external num get domContentLoadedEventEnd;
  external num get domContentLoadedEventStart;
  external num get domInteractive;
  external num get domLoading;
  external num get domainLookupEnd;
  external num get domainLookupStart;
  external num get fetchStart;
  external num get loadEventEnd;
  external num get loadEventStart;
  external num get navigationStart;
  external num get redirectEnd;
  external num get redirectStart;
  external num get requestStart;
  external num get responseEnd;
  external num get responseStart;
  external num get secureConnectionStart;
  external num get unloadEventEnd;
  external num get unloadEventStart;
  external dynamic toJSON();
  external factory PerformanceTiming({
    num connectEnd,
    num connectStart,
    num domComplete,
    num domContentLoadedEventEnd,
    num domContentLoadedEventStart,
    num domInteractive,
    num domLoading,
    num domainLookupEnd,
    num domainLookupStart,
    num fetchStart,
    num loadEventEnd,
    num loadEventStart,
    num navigationStart,
    num redirectEnd,
    num redirectStart,
    num requestStart,
    num responseEnd,
    num responseStart,
    num secureConnectionStart,
    num unloadEventEnd,
    num unloadEventStart,
  });
}

@JS(r'PerformanceTiming')
external IPerformanceTiming JPerformanceTiming;

@JS()
@anonymous
class PeriodicWave {
  external factory PeriodicWave();
}

@JS(r'PeriodicWave')
external IPeriodicWave JPeriodicWave;

@JS()
@anonymous
class PermissionStatusEventMap {
  external Event get change;
  external set change(Event value);
  external factory PermissionStatusEventMap({
    Event change,
  });
}

@JS()
@anonymous
class PermissionStatus extends EventTarget {
  external dynamic Function(Event ev)? get onchange;
  external set onchange(dynamic Function(Event ev)? value);
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
  external Promise<PermissionStatus> query(PermissionDescriptor permissionDesc);
  external factory Permissions();
}

@JS(r'Permissions')
external IPermissions JPermissions;

@JS()
@anonymous
class PictureInPictureWindowEventMap {
  external Event get resize;
  external set resize(Event value);
  external factory PictureInPictureWindowEventMap({
    Event resize,
  });
}

@JS()
@anonymous
class PictureInPictureWindow extends EventTarget {
  external num get height;
  external dynamic Function(Event ev)? get onresize;
  external set onresize(dynamic Function(Event ev)? value);
  external num get width;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory PictureInPictureWindow({
    num height,
    dynamic Function(Event ev)? onresize,
    num width,
  });
}

@JS(r'PictureInPictureWindow')
external IPictureInPictureWindow JPictureInPictureWindow;

@JS()
@anonymous
class Plugin {
  external dynamic get description;
  external dynamic get filename;
  external dynamic get length;
  external dynamic get name;
  external void item(num index);
  external void namedItem(String name);
  external factory Plugin({
    dynamic description,
    dynamic filename,
    dynamic length,
    dynamic name,
  });
}

@JS(r'Plugin')
external IPlugin JPlugin;

@JS()
@anonymous
class PluginArray {
  external num get length;
  external dynamic item(num index);
  external dynamic namedItem(String name);
  external void refresh();
  external factory PluginArray({
    num length,
  });
}

@JS(r'PluginArray')
external IPluginArray JPluginArray;

@JS()
@anonymous
class PointerEvent extends MouseEvent {
  external num get height;
  external bool get isPrimary;
  external num get pointerId;
  external String get pointerType;
  external num get pressure;
  external num get tangentialPressure;
  external num get tiltX;
  external num get tiltY;
  external num get twist;
  external num get width;
  external List<PointerEvent> getCoalescedEvents();
  external factory PointerEvent({
    num height,
    bool isPrimary,
    num pointerId,
    String pointerType,
    num pressure,
    num tangentialPressure,
    num tiltX,
    num tiltY,
    num twist,
    num width,
  });
}

@JS(r'PointerEvent')
external IPointerEvent JPointerEvent;

@JS()
@anonymous
class PopStateEvent extends Event {
  external dynamic get state;
  external factory PopStateEvent({
    dynamic state,
  });
}

@JS(r'PopStateEvent')
external IPopStateEvent JPopStateEvent;

@JS()
@anonymous
class ProcessingInstruction extends CharacterData {
  external Document get ownerDocument;
  external String get target;
  external factory ProcessingInstruction({
    Document ownerDocument,
    String target,
  });
}

@JS(r'ProcessingInstruction')
external IProcessingInstruction JProcessingInstruction;

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
class PublicKeyCredential extends Credential {
  external ByteBuffer get rawId;
  external AuthenticatorResponse get response;
  external AuthenticationExtensionsClientOutputs getClientExtensionResults();
  external factory PublicKeyCredential({
    ByteBuffer rawId,
    AuthenticatorResponse response,
  });
}

@JS(r'PublicKeyCredential')
external IPublicKeyCredential JPublicKeyCredential;

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
class PushSubscription {
  external String get endpoint;
  external PushSubscriptionOptions get options;
  external ByteBuffer? getKey(PushEncryptionKeyName name);
  external PushSubscriptionJSON toJSON();
  external Promise<bool> unsubscribe();
  external factory PushSubscription({
    String endpoint,
    PushSubscriptionOptions options,
  });
}

@JS(r'PushSubscription')
external IPushSubscription JPushSubscription;

@JS()
@anonymous
class PushSubscriptionOptions {
  external ByteBuffer? get applicationServerKey;
  external factory PushSubscriptionOptions({
    ByteBuffer? applicationServerKey,
  });
}

@JS(r'PushSubscriptionOptions')
external IPushSubscriptionOptions JPushSubscriptionOptions;

@JS()
@anonymous
class RTCCertificate {
  external DOMTimeStamp get expires;
  external List<RTCDtlsFingerprint> getFingerprints();
  external factory RTCCertificate({
    DOMTimeStamp expires,
  });
}

@JS(r'RTCCertificate')
external IRTCCertificate JRTCCertificate;

@JS()
@anonymous
class RTCDTMFSenderEventMap {
  external RtcDtmfToneChangeEvent get tonechange;
  external set tonechange(RtcDtmfToneChangeEvent value);
  external factory RTCDTMFSenderEventMap({
    RtcDtmfToneChangeEvent tonechange,
  });
}

@JS()
@anonymous
class RTCDTMFSender extends EventTarget {
  external bool get canInsertDTMF;
  external dynamic Function(RtcDtmfToneChangeEvent ev)? get ontonechange;
  external set ontonechange(dynamic Function(RtcDtmfToneChangeEvent ev)? value);
  external String get toneBuffer;
  external void insertDTMF(String tones, num duration, num interToneGap);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory RTCDTMFSender({
    bool canInsertDTMF,
    dynamic Function(RtcDtmfToneChangeEvent ev)? ontonechange,
    String toneBuffer,
  });
}

@JS(r'RTCDTMFSender')
external IRTCDTMFSender JRTCDTMFSender;

@JS()
@anonymous
class RTCDTMFToneChangeEvent extends Event {
  external String get tone;
  external factory RTCDTMFToneChangeEvent({
    String tone,
  });
}

@JS(r'RTCDTMFToneChangeEvent')
external IRTCDTMFToneChangeEvent JRTCDTMFToneChangeEvent;

@JS()
@anonymous
class RTCDataChannelEventMap {
  external Event get bufferedamountlow;
  external set bufferedamountlow(Event value);
  external Event get close;
  external set close(Event value);
  external Event get error;
  external set error(Event value);
  external MessageEvent get message;
  external set message(MessageEvent value);
  external Event get open;
  external set open(Event value);
  external factory RTCDataChannelEventMap({
    Event bufferedamountlow,
    Event close,
    Event error,
    MessageEvent message,
    Event open,
  });
}

@JS()
@anonymous
class RTCDataChannel extends EventTarget {
  external BinaryType get binaryType;
  external set binaryType(BinaryType value);
  external num get bufferedAmount;
  external num get bufferedAmountLowThreshold;
  external set bufferedAmountLowThreshold(num value);
  external num? get id;
  external String get label;
  external num? get maxPacketLifeTime;
  external num? get maxRetransmits;
  external bool get negotiated;
  external dynamic Function(Event ev)? get onbufferedamountlow;
  external set onbufferedamountlow(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onclose;
  external set onclose(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onerror;
  external set onerror(dynamic Function(Event ev)? value);
  external dynamic Function(MessageEvent ev)? get onmessage;
  external set onmessage(dynamic Function(MessageEvent ev)? value);
  external dynamic Function(Event ev)? get onopen;
  external set onopen(dynamic Function(Event ev)? value);
  external bool get ordered;
  external String get protocol;
  external RTCDataChannelState get readyState;
  external void close();
  external void send(String data);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory RTCDataChannel({
    BinaryType binaryType,
    num bufferedAmount,
    num bufferedAmountLowThreshold,
    num? id,
    String label,
    num? maxPacketLifeTime,
    num? maxRetransmits,
    bool negotiated,
    dynamic Function(Event ev)? onbufferedamountlow,
    dynamic Function(Event ev)? onclose,
    dynamic Function(Event ev)? onerror,
    dynamic Function(MessageEvent ev)? onmessage,
    dynamic Function(Event ev)? onopen,
    bool ordered,
    String protocol,
    RTCDataChannelState readyState,
  });
}

@JS(r'RTCDataChannel')
external IRTCDataChannel JRTCDataChannel;

@JS()
@anonymous
class RTCDataChannelEvent extends Event {
  external RtcDataChannel get channel;
  external factory RTCDataChannelEvent({
    RtcDataChannel channel,
  });
}

@JS(r'RTCDataChannelEvent')
external IRTCDataChannelEvent JRTCDataChannelEvent;

@JS()
@anonymous
class RTCDtlsTransportEventMap {
  external Event get statechange;
  external set statechange(Event value);
  external factory RTCDtlsTransportEventMap({
    Event statechange,
  });
}

@JS()
@anonymous
class RTCDtlsTransport extends EventTarget {
  external dynamic Function(Event ev)? get onstatechange;
  external set onstatechange(dynamic Function(Event ev)? value);
  external RTCDtlsTransportState get state;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory RTCDtlsTransport({
    dynamic Function(Event ev)? onstatechange,
    RTCDtlsTransportState state,
  });
}

@JS(r'RTCDtlsTransport')
external IRTCDtlsTransport JRTCDtlsTransport;

@JS()
@anonymous
class RTCIceCandidate {
  external String? get address;
  external String get candidate;
  external RTCIceComponent? get component;
  external String? get foundation;
  external num? get port;
  external num? get priority;
  external RTCIceProtocol? get protocol;
  external String? get relatedAddress;
  external num? get relatedPort;
  external num? get sdpMLineIndex;
  external String? get sdpMid;
  external RTCIceTcpCandidateType? get tcpType;
  external RTCIceCandidateType? get type;
  external String? get usernameFragment;
  external RTCIceCandidateInit toJSON();
  external factory RTCIceCandidate({
    String? address,
    String candidate,
    RTCIceComponent? component,
    String? foundation,
    num? port,
    num? priority,
    RTCIceProtocol? protocol,
    String? relatedAddress,
    num? relatedPort,
    num? sdpMLineIndex,
    String? sdpMid,
    RTCIceTcpCandidateType? tcpType,
    RTCIceCandidateType? type,
    String? usernameFragment,
  });
}

@JS(r'RTCIceCandidate')
external IRTCIceCandidate JRTCIceCandidate;

@JS()
@anonymous
class RTCIceTransport extends EventTarget {
  external RTCIceGathererState get gatheringState;
  external RTCIceTransportState get state;
  external factory RTCIceTransport({
    RTCIceGathererState gatheringState,
    RTCIceTransportState state,
  });
}

@JS(r'RTCIceTransport')
external IRTCIceTransport JRTCIceTransport;

@JS()
@anonymous
class RTCPeerConnectionEventMap {
  external Event get connectionstatechange;
  external set connectionstatechange(Event value);
  external RtcDataChannelEvent get datachannel;
  external set datachannel(RtcDataChannelEvent value);
  external RTCPeerConnectionIceEvent get icecandidate;
  external set icecandidate(RTCPeerConnectionIceEvent value);
  external Event get iceconnectionstatechange;
  external set iceconnectionstatechange(Event value);
  external Event get icegatheringstatechange;
  external set icegatheringstatechange(Event value);
  external Event get negotiationneeded;
  external set negotiationneeded(Event value);
  external Event get signalingstatechange;
  external set signalingstatechange(Event value);
  external RTCTrackEvent get track;
  external set track(RTCTrackEvent value);
  external factory RTCPeerConnectionEventMap({
    Event connectionstatechange,
    RtcDataChannelEvent datachannel,
    RTCPeerConnectionIceEvent icecandidate,
    Event iceconnectionstatechange,
    Event icegatheringstatechange,
    Event negotiationneeded,
    Event signalingstatechange,
    RTCTrackEvent track,
  });
}

@JS()
@anonymous
class RTCPeerConnection extends EventTarget {
  external bool? get canTrickleIceCandidates;
  external RTCPeerConnectionState get connectionState;
  external RtcSessionDescription? get currentLocalDescription;
  external RtcSessionDescription? get currentRemoteDescription;
  external RTCIceConnectionState get iceConnectionState;
  external RTCIceGatheringState get iceGatheringState;
  external RtcSessionDescription? get localDescription;
  external dynamic Function(Event ev)? get onconnectionstatechange;
  external set onconnectionstatechange(dynamic Function(Event ev)? value);
  external dynamic Function(RtcDataChannelEvent ev)? get ondatachannel;
  external set ondatachannel(dynamic Function(RtcDataChannelEvent ev)? value);
  external dynamic Function(RTCPeerConnectionIceEvent ev)? get onicecandidate;
  external set onicecandidate(dynamic Function(RTCPeerConnectionIceEvent ev)? value);
  external dynamic Function(Event ev)? get oniceconnectionstatechange;
  external set oniceconnectionstatechange(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onicegatheringstatechange;
  external set onicegatheringstatechange(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onnegotiationneeded;
  external set onnegotiationneeded(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onsignalingstatechange;
  external set onsignalingstatechange(dynamic Function(Event ev)? value);
  external dynamic Function(RTCTrackEvent ev)? get ontrack;
  external set ontrack(dynamic Function(RTCTrackEvent ev)? value);
  external RtcSessionDescription? get pendingLocalDescription;
  external RtcSessionDescription? get pendingRemoteDescription;
  external RtcSessionDescription? get remoteDescription;
  external RTCSignalingState get signalingState;
  external Promise<void> addIceCandidate(RTCIceCandidateInit candidate);
  external RTCRtpSender addTrack(
    MediaStreamTrack track, [
    MediaStream? streams1,
    MediaStream? streams2,
    MediaStream? streams3,
    MediaStream? streams4,
    MediaStream? streams5,
    MediaStream? streams6,
    MediaStream? streams7,
    MediaStream? streams8,
    MediaStream? streams9,
  ]);
  external RTCRtpTransceiver addTransceiver(dynamic trackOrKind, RTCRtpTransceiverInit init);
  external void close();
  external Promise<RTCSessionDescriptionInit> createAnswer(RTCAnswerOptions options);
  external RtcDataChannel createDataChannel(String label, RTCDataChannelInit dataChannelDict);
  external Promise<RTCSessionDescriptionInit> createOffer(RTCOfferOptions options);
  external RTCConfiguration getConfiguration();
  external List<RTCRtpReceiver> getReceivers();
  external List<RTCRtpSender> getSenders();
  external Promise<RtcStatsReport> getStats(MediaStreamTrack? selector);
  external List<RTCRtpTransceiver> getTransceivers();
  external void removeTrack(RTCRtpSender sender);
  external void restartIce();
  external void setConfiguration(RTCConfiguration configuration);
  external Promise<void> setLocalDescription(RTCLocalSessionDescriptionInit description);
  external Promise<void> setRemoteDescription(RTCSessionDescriptionInit description);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory RTCPeerConnection({
    bool? canTrickleIceCandidates,
    RTCPeerConnectionState connectionState,
    RtcSessionDescription? currentLocalDescription,
    RtcSessionDescription? currentRemoteDescription,
    RTCIceConnectionState iceConnectionState,
    RTCIceGatheringState iceGatheringState,
    RtcSessionDescription? localDescription,
    dynamic Function(Event ev)? onconnectionstatechange,
    dynamic Function(RtcDataChannelEvent ev)? ondatachannel,
    dynamic Function(RTCPeerConnectionIceEvent ev)? onicecandidate,
    dynamic Function(Event ev)? oniceconnectionstatechange,
    dynamic Function(Event ev)? onicegatheringstatechange,
    dynamic Function(Event ev)? onnegotiationneeded,
    dynamic Function(Event ev)? onsignalingstatechange,
    dynamic Function(RTCTrackEvent ev)? ontrack,
    RtcSessionDescription? pendingLocalDescription,
    RtcSessionDescription? pendingRemoteDescription,
    RtcSessionDescription? remoteDescription,
    RTCSignalingState signalingState,
  });
}

@JS(r'RTCPeerConnection')
external IRTCPeerConnection JRTCPeerConnection;

@JS()
@anonymous
class RTCPeerConnectionIceErrorEvent extends Event {
  external num get errorCode;
  external String get errorText;
  external String get url;
  external factory RTCPeerConnectionIceErrorEvent({
    num errorCode,
    String errorText,
    String url,
  });
}

@JS(r'RTCPeerConnectionIceErrorEvent')
external IRTCPeerConnectionIceErrorEvent JRTCPeerConnectionIceErrorEvent;

@JS()
@anonymous
class RTCPeerConnectionIceEvent extends Event {
  external RtcIceCandidate? get candidate;
  external factory RTCPeerConnectionIceEvent({
    RtcIceCandidate? candidate,
  });
}

@JS(r'RTCPeerConnectionIceEvent')
external IRTCPeerConnectionIceEvent JRTCPeerConnectionIceEvent;

@JS()
@anonymous
class RTCRtpReceiver {
  external MediaStreamTrack get track;
  external RTCDtlsTransport? get transport;
  external List<RTCRtpContributingSource> getContributingSources();
  external RTCRtpReceiveParameters getParameters();
  external Promise<RtcStatsReport> getStats();
  external List<RTCRtpSynchronizationSource> getSynchronizationSources();
  external factory RTCRtpReceiver({
    MediaStreamTrack track,
    RTCDtlsTransport? transport,
  });
}

@JS(r'RTCRtpReceiver')
external IRTCRtpReceiver JRTCRtpReceiver;

@JS()
@anonymous
class RTCRtpSender {
  external RtcDtmfSender? get dtmf;
  external MediaStreamTrack? get track;
  external RTCDtlsTransport? get transport;
  external RTCRtpSendParameters getParameters();
  external Promise<RtcStatsReport> getStats();
  external Promise<void> replaceTrack(MediaStreamTrack? withTrack);
  external Promise<void> setParameters(RTCRtpSendParameters parameters);
  external void setStreams([
    MediaStream? streams1,
    MediaStream? streams2,
    MediaStream? streams3,
    MediaStream? streams4,
    MediaStream? streams5,
    MediaStream? streams6,
    MediaStream? streams7,
    MediaStream? streams8,
    MediaStream? streams9,
  ]);
  external factory RTCRtpSender({
    RtcDtmfSender? dtmf,
    MediaStreamTrack? track,
    RTCDtlsTransport? transport,
  });
}

@JS(r'RTCRtpSender')
external IRTCRtpSender JRTCRtpSender;

@JS()
@anonymous
class RTCRtpTransceiver {
  external RTCRtpTransceiverDirection? get currentDirection;
  external RTCRtpTransceiverDirection get direction;
  external set direction(RTCRtpTransceiverDirection value);
  external String? get mid;
  external RTCRtpReceiver get receiver;
  external RTCRtpSender get sender;
  external void stop();
  external factory RTCRtpTransceiver({
    RTCRtpTransceiverDirection? currentDirection,
    RTCRtpTransceiverDirection direction,
    String? mid,
    RTCRtpReceiver receiver,
    RTCRtpSender sender,
  });
}

@JS(r'RTCRtpTransceiver')
external IRTCRtpTransceiver JRTCRtpTransceiver;

@JS()
@anonymous
class RTCSessionDescription {
  external String get sdp;
  external RTCSdpType get type;
  external dynamic toJSON();
  external factory RTCSessionDescription({
    String sdp,
    RTCSdpType type,
  });
}

@JS(r'RTCSessionDescription')
external IRTCSessionDescription JRTCSessionDescription;

@JS()
@anonymous
class RTCStatsReport {
  external void forEach(void Function(dynamic value, String key, RtcStatsReport parent) callbackfn, dynamic thisArg);
  external factory RTCStatsReport();
}

@JS(r'RTCStatsReport')
external IRTCStatsReport JRTCStatsReport;

@JS()
@anonymous
class RTCTrackEvent extends Event {
  external RTCRtpReceiver get receiver;
  external List<MediaStream> get streams;
  external MediaStreamTrack get track;
  external RTCRtpTransceiver get transceiver;
  external factory RTCTrackEvent({
    RTCRtpReceiver receiver,
    List<MediaStream> streams,
    MediaStreamTrack track,
    RTCRtpTransceiver transceiver,
  });
}

@JS(r'RTCTrackEvent')
external IRTCTrackEvent JRTCTrackEvent;

@JS()
@anonymous
class RadioNodeList extends NodeList {
  external String get value;
  external set value(String value);
  external factory RadioNodeList({
    String value,
  });
}

@JS(r'RadioNodeList')
external IRadioNodeList JRadioNodeList;

@JS()
@anonymous
class Range extends AbstractRange {
  external Node get commonAncestorContainer;
  external DocumentFragment cloneContents();
  external Range cloneRange();
  external void collapse(bool toStart);
  external num compareBoundaryPoints(num how, Range sourceRange);
  external num comparePoint(Node node, num offset);
  external DocumentFragment createContextualFragment(String fragment);
  external void deleteContents();
  external void detach();
  external DocumentFragment extractContents();
  external DOMRect getBoundingClientRect();
  external DOMRectList getClientRects();
  external void insertNode(Node node);
  external bool intersectsNode(Node node);
  external bool isPointInRange(Node node, num offset);
  external void selectNode(Node node);
  external void selectNodeContents(Node node);
  external void setEnd(Node node, num offset);
  external void setEndAfter(Node node);
  external void setEndBefore(Node node);
  external void setStart(Node node, num offset);
  external void setStartAfter(Node node);
  external void setStartBefore(Node node);
  external void surroundContents(Node newParent);
  @override
  external String toString();
  external num get END_TO_END;
  external num get END_TO_START;
  external num get START_TO_END;
  external num get START_TO_START;
  external factory Range({
    Node commonAncestorContainer,
    num END_TO_END,
    num END_TO_START,
    num START_TO_END,
    num START_TO_START,
  });
}

@JS(r'Range')
external IRange JRange;

@JS()
@anonymous
class ReadableStream<R> {
  external bool get locked;
  external Promise<void> cancel(dynamic reason);
  external ReadableStreamDefaultReader<R> getReader();
  external ReadableStream<T> pipeThrough<T>(ReadableWritablePair<T, R> transform, StreamPipeOptions options);
  external Promise<void> pipeTo(WritableStream<R> destination, StreamPipeOptions options);
  external List<dynamic> tee();
  external void forEach(void Function(dynamic value, num key, ReadableStream<R> parent) callbackfn, dynamic thisArg);
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
class RemotePlaybackEventMap {
  external Event get connect;
  external set connect(Event value);
  external Event get connecting;
  external set connecting(Event value);
  external Event get disconnect;
  external set disconnect(Event value);
  external factory RemotePlaybackEventMap({
    Event connect,
    Event connecting,
    Event disconnect,
  });
}

@JS()
@anonymous
class RemotePlayback extends EventTarget {
  external dynamic Function(Event ev)? get onconnect;
  external set onconnect(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onconnecting;
  external set onconnecting(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get ondisconnect;
  external set ondisconnect(dynamic Function(Event ev)? value);
  external RemotePlaybackState get state;
  external Promise<void> cancelWatchAvailability(num id);
  external Promise<void> prompt();
  external Promise<num> watchAvailability(RemotePlaybackAvailabilityCallback callback);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory RemotePlayback({
    dynamic Function(Event ev)? onconnect,
    dynamic Function(Event ev)? onconnecting,
    dynamic Function(Event ev)? ondisconnect,
    RemotePlaybackState state,
  });
}

@JS(r'RemotePlayback')
external IRemotePlayback JRemotePlayback;

@JS()
@anonymous
class Request extends Body {
  external RequestCache get cache;
  external RequestCredentials get credentials;
  external RequestDestination get destination;
  external Headers get headers;
  external String get integrity;
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
class ResizeObserver {
  external void disconnect();
  external void observe(Element target, ResizeObserverOptions options);
  external void unobserve(Element target);
  external factory ResizeObserver();
}

@JS(r'ResizeObserver')
external IResizeObserver JResizeObserver;

@JS()
@anonymous
class ResizeObserverEntry {
  external List<ResizeObserverSize> get borderBoxSize;
  external List<ResizeObserverSize> get contentBoxSize;
  external DomRectReadOnly get contentRect;
  external Element get target;
  external factory ResizeObserverEntry({
    List<ResizeObserverSize> borderBoxSize,
    List<ResizeObserverSize> contentBoxSize,
    DomRectReadOnly contentRect,
    Element target,
  });
}

@JS(r'ResizeObserverEntry')
external IResizeObserverEntry JResizeObserverEntry;

@JS()
@anonymous
class ResizeObserverSize {
  external num get blockSize;
  external num get inlineSize;
  external factory ResizeObserverSize({
    num blockSize,
    num inlineSize,
  });
}

@JS(r'ResizeObserverSize')
external IResizeObserverSize JResizeObserverSize;

@JS()
@anonymous
class Response extends Body {
  external Headers get headers;
  external bool get ok;
  external bool get redirected;
  external num get status;
  external String get statusText;
  external ResponseType get type;
  external String get url;
  external Response clone();
  external factory Response({
    Headers headers,
    bool ok,
    bool redirected,
    num status,
    String statusText,
    ResponseType type,
    String url,
  });
}

@JS(r'Response')
external IResponse JResponse;

@JS()
@anonymous
class SVGAElement extends GraphicsElement {
  external String get rel;
  external set rel(String value);
  external DomTokenList get relList;
  external AnimatedString get target;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGAElement({
    String rel,
    DomTokenList relList,
    AnimatedString target,
  });
}

@JS(r'SVGAElement')
external ISVGAElement JSVGAElement;

@JS()
@anonymous
class SVGAngle {
  external num get unitType;
  external num get value;
  external set value(num value);
  external String get valueAsString;
  external set valueAsString(String value);
  external num get valueInSpecifiedUnits;
  external set valueInSpecifiedUnits(num value);
  external void convertToSpecifiedUnits(num unitType);
  external void newValueSpecifiedUnits(num unitType, num valueInSpecifiedUnits);
  external num get SVG_ANGLETYPE_DEG;
  external num get SVG_ANGLETYPE_GRAD;
  external num get SVG_ANGLETYPE_RAD;
  external num get SVG_ANGLETYPE_UNKNOWN;
  external num get SVG_ANGLETYPE_UNSPECIFIED;
  external factory SVGAngle({
    num unitType,
    num value,
    String valueAsString,
    num valueInSpecifiedUnits,
    num SVG_ANGLETYPE_DEG,
    num SVG_ANGLETYPE_GRAD,
    num SVG_ANGLETYPE_RAD,
    num SVG_ANGLETYPE_UNKNOWN,
    num SVG_ANGLETYPE_UNSPECIFIED,
  });
}

@JS(r'SVGAngle')
external ISVGAngle JSVGAngle;

@JS()
@anonymous
class SVGAnimateElement extends AnimationElement {
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGAnimateElement();
}

@JS(r'SVGAnimateElement')
external ISVGAnimateElement JSVGAnimateElement;

@JS()
@anonymous
class SVGAnimateMotionElement extends AnimationElement {
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGAnimateMotionElement();
}

@JS(r'SVGAnimateMotionElement')
external ISVGAnimateMotionElement JSVGAnimateMotionElement;

@JS()
@anonymous
class SVGAnimateTransformElement extends AnimationElement {
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGAnimateTransformElement();
}

@JS(r'SVGAnimateTransformElement')
external ISVGAnimateTransformElement JSVGAnimateTransformElement;

@JS()
@anonymous
class SVGAnimatedAngle {
  external Angle get animVal;
  external Angle get baseVal;
  external factory SVGAnimatedAngle({
    Angle animVal,
    Angle baseVal,
  });
}

@JS(r'SVGAnimatedAngle')
external ISVGAnimatedAngle JSVGAnimatedAngle;

@JS()
@anonymous
class SVGAnimatedBoolean {
  external bool get animVal;
  external bool get baseVal;
  external set baseVal(bool value);
  external factory SVGAnimatedBoolean({
    bool animVal,
    bool baseVal,
  });
}

@JS(r'SVGAnimatedBoolean')
external ISVGAnimatedBoolean JSVGAnimatedBoolean;

@JS()
@anonymous
class SVGAnimatedEnumeration {
  external num get animVal;
  external num get baseVal;
  external set baseVal(num value);
  external factory SVGAnimatedEnumeration({
    num animVal,
    num baseVal,
  });
}

@JS(r'SVGAnimatedEnumeration')
external ISVGAnimatedEnumeration JSVGAnimatedEnumeration;

@JS()
@anonymous
class SVGAnimatedInteger {
  external num get animVal;
  external num get baseVal;
  external set baseVal(num value);
  external factory SVGAnimatedInteger({
    num animVal,
    num baseVal,
  });
}

@JS(r'SVGAnimatedInteger')
external ISVGAnimatedInteger JSVGAnimatedInteger;

@JS()
@anonymous
class SVGAnimatedLength {
  external Length get animVal;
  external Length get baseVal;
  external factory SVGAnimatedLength({
    Length animVal,
    Length baseVal,
  });
}

@JS(r'SVGAnimatedLength')
external ISVGAnimatedLength JSVGAnimatedLength;

@JS()
@anonymous
class SVGAnimatedLengthList {
  external LengthList get animVal;
  external LengthList get baseVal;
  external factory SVGAnimatedLengthList({
    LengthList animVal,
    LengthList baseVal,
  });
}

@JS(r'SVGAnimatedLengthList')
external ISVGAnimatedLengthList JSVGAnimatedLengthList;

@JS()
@anonymous
class SVGAnimatedNumber {
  external num get animVal;
  external num get baseVal;
  external set baseVal(num value);
  external factory SVGAnimatedNumber({
    num animVal,
    num baseVal,
  });
}

@JS(r'SVGAnimatedNumber')
external ISVGAnimatedNumber JSVGAnimatedNumber;

@JS()
@anonymous
class SVGAnimatedNumberList {
  external NumberList get animVal;
  external NumberList get baseVal;
  external factory SVGAnimatedNumberList({
    NumberList animVal,
    NumberList baseVal,
  });
}

@JS(r'SVGAnimatedNumberList')
external ISVGAnimatedNumberList JSVGAnimatedNumberList;

@JS()
@anonymous
class SVGAnimatedPoints {
  external PointList get animatedPoints;
  external PointList get points;
  external factory SVGAnimatedPoints({
    PointList animatedPoints,
    PointList points,
  });
}

@JS()
@anonymous
class SVGAnimatedPreserveAspectRatio {
  external PreserveAspectRatio get animVal;
  external PreserveAspectRatio get baseVal;
  external factory SVGAnimatedPreserveAspectRatio({
    PreserveAspectRatio animVal,
    PreserveAspectRatio baseVal,
  });
}

@JS(r'SVGAnimatedPreserveAspectRatio')
external ISVGAnimatedPreserveAspectRatio JSVGAnimatedPreserveAspectRatio;

@JS()
@anonymous
class SVGAnimatedRect {
  external DomRectReadOnly get animVal;
  external DOMRect get baseVal;
  external factory SVGAnimatedRect({
    DomRectReadOnly animVal,
    DOMRect baseVal,
  });
}

@JS(r'SVGAnimatedRect')
external ISVGAnimatedRect JSVGAnimatedRect;

@JS()
@anonymous
class SVGAnimatedString {
  external String get animVal;
  external String get baseVal;
  external set baseVal(String value);
  external factory SVGAnimatedString({
    String animVal,
    String baseVal,
  });
}

@JS(r'SVGAnimatedString')
external ISVGAnimatedString JSVGAnimatedString;

@JS()
@anonymous
class SVGAnimatedTransformList {
  external TransformList get animVal;
  external TransformList get baseVal;
  external factory SVGAnimatedTransformList({
    TransformList animVal,
    TransformList baseVal,
  });
}

@JS(r'SVGAnimatedTransformList')
external ISVGAnimatedTransformList JSVGAnimatedTransformList;

@JS()
@anonymous
class SVGAnimationElement extends SvgElement {
  external SvgElement? get targetElement;
  external void beginElement();
  external void beginElementAt(num offset);
  external void endElement();
  external void endElementAt(num offset);
  external num getCurrentTime();
  external num getSimpleDuration();
  external num getStartTime();
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGAnimationElement({
    SvgElement? targetElement,
  });
}

@JS(r'SVGAnimationElement')
external ISVGAnimationElement JSVGAnimationElement;

@JS()
@anonymous
class SVGCircleElement extends GeometryElement {
  external AnimatedLength get cx;
  external AnimatedLength get cy;
  external AnimatedLength get r;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGCircleElement({
    AnimatedLength cx,
    AnimatedLength cy,
    AnimatedLength r,
  });
}

@JS(r'SVGCircleElement')
external ISVGCircleElement JSVGCircleElement;

@JS()
@anonymous
class SVGClipPathElement extends SvgElement {
  external AnimatedEnumeration get clipPathUnits;
  external AnimatedTransformList get transform;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGClipPathElement({
    AnimatedEnumeration clipPathUnits,
    AnimatedTransformList transform,
  });
}

@JS(r'SVGClipPathElement')
external ISVGClipPathElement JSVGClipPathElement;

@JS()
@anonymous
class SVGComponentTransferFunctionElement extends SvgElement {
  external AnimatedNumber get amplitude;
  external AnimatedNumber get exponent;
  external AnimatedNumber get intercept;
  external AnimatedNumber get offset;
  external AnimatedNumber get slope;
  external AnimatedNumberList get tableValues;
  external AnimatedEnumeration get type;
  external num get SVG_FECOMPONENTTRANSFER_TYPE_DISCRETE;
  external num get SVG_FECOMPONENTTRANSFER_TYPE_GAMMA;
  external num get SVG_FECOMPONENTTRANSFER_TYPE_IDENTITY;
  external num get SVG_FECOMPONENTTRANSFER_TYPE_LINEAR;
  external num get SVG_FECOMPONENTTRANSFER_TYPE_TABLE;
  external num get SVG_FECOMPONENTTRANSFER_TYPE_UNKNOWN;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGComponentTransferFunctionElement({
    AnimatedNumber amplitude,
    AnimatedNumber exponent,
    AnimatedNumber intercept,
    AnimatedNumber offset,
    AnimatedNumber slope,
    AnimatedNumberList tableValues,
    AnimatedEnumeration type,
    num SVG_FECOMPONENTTRANSFER_TYPE_DISCRETE,
    num SVG_FECOMPONENTTRANSFER_TYPE_GAMMA,
    num SVG_FECOMPONENTTRANSFER_TYPE_IDENTITY,
    num SVG_FECOMPONENTTRANSFER_TYPE_LINEAR,
    num SVG_FECOMPONENTTRANSFER_TYPE_TABLE,
    num SVG_FECOMPONENTTRANSFER_TYPE_UNKNOWN,
  });
}

@JS(r'SVGComponentTransferFunctionElement')
external ISVGComponentTransferFunctionElement JSVGComponentTransferFunctionElement;

@JS()
@anonymous
class SVGCursorElement extends SvgElement {
  external AnimatedLength get x;
  external AnimatedLength get y;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGCursorElement({
    AnimatedLength x,
    AnimatedLength y,
  });
}

@JS(r'SVGCursorElement')
external ISVGCursorElement JSVGCursorElement;

@JS()
@anonymous
class SVGDefsElement extends GraphicsElement {
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGDefsElement();
}

@JS(r'SVGDefsElement')
external ISVGDefsElement JSVGDefsElement;

@JS()
@anonymous
class SVGDescElement extends SvgElement {
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGDescElement();
}

@JS(r'SVGDescElement')
external ISVGDescElement JSVGDescElement;

@JS()
@anonymous
class SVGElementEventMap extends ElementEventMap {
  external factory SVGElementEventMap();
}

@JS()
@anonymous
class SVGElement extends Element {
  external dynamic get className;
  external SvgSvgElement? get ownerSVGElement;
  external SvgElement? get viewportElement;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGElement({
    dynamic className,
    SvgSvgElement? ownerSVGElement,
    SvgElement? viewportElement,
  });
}

@JS(r'SVGElement')
external ISVGElement JSVGElement;

@JS()
@anonymous
class SVGEllipseElement extends GeometryElement {
  external AnimatedLength get cx;
  external AnimatedLength get cy;
  external AnimatedLength get rx;
  external AnimatedLength get ry;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGEllipseElement({
    AnimatedLength cx,
    AnimatedLength cy,
    AnimatedLength rx,
    AnimatedLength ry,
  });
}

@JS(r'SVGEllipseElement')
external ISVGEllipseElement JSVGEllipseElement;

@JS()
@anonymous
class SVGFEBlendElement extends SvgElement {
  external AnimatedString get in1;
  external AnimatedString get in2;
  external AnimatedEnumeration get mode;
  external num get SVG_FEBLEND_MODE_COLOR;
  external num get SVG_FEBLEND_MODE_COLOR_BURN;
  external num get SVG_FEBLEND_MODE_COLOR_DODGE;
  external num get SVG_FEBLEND_MODE_DARKEN;
  external num get SVG_FEBLEND_MODE_DIFFERENCE;
  external num get SVG_FEBLEND_MODE_EXCLUSION;
  external num get SVG_FEBLEND_MODE_HARD_LIGHT;
  external num get SVG_FEBLEND_MODE_HUE;
  external num get SVG_FEBLEND_MODE_LIGHTEN;
  external num get SVG_FEBLEND_MODE_LUMINOSITY;
  external num get SVG_FEBLEND_MODE_MULTIPLY;
  external num get SVG_FEBLEND_MODE_NORMAL;
  external num get SVG_FEBLEND_MODE_OVERLAY;
  external num get SVG_FEBLEND_MODE_SATURATION;
  external num get SVG_FEBLEND_MODE_SCREEN;
  external num get SVG_FEBLEND_MODE_SOFT_LIGHT;
  external num get SVG_FEBLEND_MODE_UNKNOWN;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGFEBlendElement({
    AnimatedString in1,
    AnimatedString in2,
    AnimatedEnumeration mode,
    num SVG_FEBLEND_MODE_COLOR,
    num SVG_FEBLEND_MODE_COLOR_BURN,
    num SVG_FEBLEND_MODE_COLOR_DODGE,
    num SVG_FEBLEND_MODE_DARKEN,
    num SVG_FEBLEND_MODE_DIFFERENCE,
    num SVG_FEBLEND_MODE_EXCLUSION,
    num SVG_FEBLEND_MODE_HARD_LIGHT,
    num SVG_FEBLEND_MODE_HUE,
    num SVG_FEBLEND_MODE_LIGHTEN,
    num SVG_FEBLEND_MODE_LUMINOSITY,
    num SVG_FEBLEND_MODE_MULTIPLY,
    num SVG_FEBLEND_MODE_NORMAL,
    num SVG_FEBLEND_MODE_OVERLAY,
    num SVG_FEBLEND_MODE_SATURATION,
    num SVG_FEBLEND_MODE_SCREEN,
    num SVG_FEBLEND_MODE_SOFT_LIGHT,
    num SVG_FEBLEND_MODE_UNKNOWN,
  });
}

@JS(r'SVGFEBlendElement')
external ISVGFEBlendElement JSVGFEBlendElement;

@JS()
@anonymous
class SVGFEColorMatrixElement extends SvgElement {
  external AnimatedString get in1;
  external AnimatedEnumeration get type;
  external AnimatedNumberList get values;
  external num get SVG_FECOLORMATRIX_TYPE_HUEROTATE;
  external num get SVG_FECOLORMATRIX_TYPE_LUMINANCETOALPHA;
  external num get SVG_FECOLORMATRIX_TYPE_MATRIX;
  external num get SVG_FECOLORMATRIX_TYPE_SATURATE;
  external num get SVG_FECOLORMATRIX_TYPE_UNKNOWN;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGFEColorMatrixElement({
    AnimatedString in1,
    AnimatedEnumeration type,
    AnimatedNumberList values,
    num SVG_FECOLORMATRIX_TYPE_HUEROTATE,
    num SVG_FECOLORMATRIX_TYPE_LUMINANCETOALPHA,
    num SVG_FECOLORMATRIX_TYPE_MATRIX,
    num SVG_FECOLORMATRIX_TYPE_SATURATE,
    num SVG_FECOLORMATRIX_TYPE_UNKNOWN,
  });
}

@JS(r'SVGFEColorMatrixElement')
external ISVGFEColorMatrixElement JSVGFEColorMatrixElement;

@JS()
@anonymous
class SVGFEComponentTransferElement extends SvgElement {
  external AnimatedString get in1;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGFEComponentTransferElement({
    AnimatedString in1,
  });
}

@JS(r'SVGFEComponentTransferElement')
external ISVGFEComponentTransferElement JSVGFEComponentTransferElement;

@JS()
@anonymous
class SVGFECompositeElement extends SvgElement {
  external AnimatedString get in1;
  external AnimatedString get in2;
  external AnimatedNumber get k1;
  external AnimatedNumber get k2;
  external AnimatedNumber get k3;
  external AnimatedNumber get k4;
  external AnimatedEnumeration get operator;
  external num get SVG_FECOMPOSITE_OPERATOR_ARITHMETIC;
  external num get SVG_FECOMPOSITE_OPERATOR_ATOP;
  external num get SVG_FECOMPOSITE_OPERATOR_IN;
  external num get SVG_FECOMPOSITE_OPERATOR_OUT;
  external num get SVG_FECOMPOSITE_OPERATOR_OVER;
  external num get SVG_FECOMPOSITE_OPERATOR_UNKNOWN;
  external num get SVG_FECOMPOSITE_OPERATOR_XOR;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGFECompositeElement({
    AnimatedString in1,
    AnimatedString in2,
    AnimatedNumber k1,
    AnimatedNumber k2,
    AnimatedNumber k3,
    AnimatedNumber k4,
    AnimatedEnumeration operator,
    num SVG_FECOMPOSITE_OPERATOR_ARITHMETIC,
    num SVG_FECOMPOSITE_OPERATOR_ATOP,
    num SVG_FECOMPOSITE_OPERATOR_IN,
    num SVG_FECOMPOSITE_OPERATOR_OUT,
    num SVG_FECOMPOSITE_OPERATOR_OVER,
    num SVG_FECOMPOSITE_OPERATOR_UNKNOWN,
    num SVG_FECOMPOSITE_OPERATOR_XOR,
  });
}

@JS(r'SVGFECompositeElement')
external ISVGFECompositeElement JSVGFECompositeElement;

@JS()
@anonymous
class SVGFEConvolveMatrixElement extends SvgElement {
  external AnimatedNumber get bias;
  external AnimatedNumber get divisor;
  external AnimatedEnumeration get edgeMode;
  external AnimatedString get in1;
  external AnimatedNumberList get kernelMatrix;
  external AnimatedNumber get kernelUnitLengthX;
  external AnimatedNumber get kernelUnitLengthY;
  external AnimatedInteger get orderX;
  external AnimatedInteger get orderY;
  external AnimatedBoolean get preserveAlpha;
  external AnimatedInteger get targetX;
  external AnimatedInteger get targetY;
  external num get SVG_EDGEMODE_DUPLICATE;
  external num get SVG_EDGEMODE_NONE;
  external num get SVG_EDGEMODE_UNKNOWN;
  external num get SVG_EDGEMODE_WRAP;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGFEConvolveMatrixElement({
    AnimatedNumber bias,
    AnimatedNumber divisor,
    AnimatedEnumeration edgeMode,
    AnimatedString in1,
    AnimatedNumberList kernelMatrix,
    AnimatedNumber kernelUnitLengthX,
    AnimatedNumber kernelUnitLengthY,
    AnimatedInteger orderX,
    AnimatedInteger orderY,
    AnimatedBoolean preserveAlpha,
    AnimatedInteger targetX,
    AnimatedInteger targetY,
    num SVG_EDGEMODE_DUPLICATE,
    num SVG_EDGEMODE_NONE,
    num SVG_EDGEMODE_UNKNOWN,
    num SVG_EDGEMODE_WRAP,
  });
}

@JS(r'SVGFEConvolveMatrixElement')
external ISVGFEConvolveMatrixElement JSVGFEConvolveMatrixElement;

@JS()
@anonymous
class SVGFEDiffuseLightingElement extends SvgElement {
  external AnimatedNumber get diffuseConstant;
  external AnimatedString get in1;
  external AnimatedNumber get kernelUnitLengthX;
  external AnimatedNumber get kernelUnitLengthY;
  external AnimatedNumber get surfaceScale;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGFEDiffuseLightingElement({
    AnimatedNumber diffuseConstant,
    AnimatedString in1,
    AnimatedNumber kernelUnitLengthX,
    AnimatedNumber kernelUnitLengthY,
    AnimatedNumber surfaceScale,
  });
}

@JS(r'SVGFEDiffuseLightingElement')
external ISVGFEDiffuseLightingElement JSVGFEDiffuseLightingElement;

@JS()
@anonymous
class SVGFEDisplacementMapElement extends SvgElement {
  external AnimatedString get in1;
  external AnimatedString get in2;
  external AnimatedNumber get scale;
  external AnimatedEnumeration get xChannelSelector;
  external AnimatedEnumeration get yChannelSelector;
  external num get SVG_CHANNEL_A;
  external num get SVG_CHANNEL_B;
  external num get SVG_CHANNEL_G;
  external num get SVG_CHANNEL_R;
  external num get SVG_CHANNEL_UNKNOWN;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGFEDisplacementMapElement({
    AnimatedString in1,
    AnimatedString in2,
    AnimatedNumber scale,
    AnimatedEnumeration xChannelSelector,
    AnimatedEnumeration yChannelSelector,
    num SVG_CHANNEL_A,
    num SVG_CHANNEL_B,
    num SVG_CHANNEL_G,
    num SVG_CHANNEL_R,
    num SVG_CHANNEL_UNKNOWN,
  });
}

@JS(r'SVGFEDisplacementMapElement')
external ISVGFEDisplacementMapElement JSVGFEDisplacementMapElement;

@JS()
@anonymous
class SVGFEDistantLightElement extends SvgElement {
  external AnimatedNumber get azimuth;
  external AnimatedNumber get elevation;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGFEDistantLightElement({
    AnimatedNumber azimuth,
    AnimatedNumber elevation,
  });
}

@JS(r'SVGFEDistantLightElement')
external ISVGFEDistantLightElement JSVGFEDistantLightElement;

@JS()
@anonymous
class SVGFEDropShadowElement extends SvgElement {
  external AnimatedNumber get dx;
  external AnimatedNumber get dy;
  external AnimatedString get in1;
  external AnimatedNumber get stdDeviationX;
  external AnimatedNumber get stdDeviationY;
  external void setStdDeviation(num stdDeviationX, num stdDeviationY);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGFEDropShadowElement({
    AnimatedNumber dx,
    AnimatedNumber dy,
    AnimatedString in1,
    AnimatedNumber stdDeviationX,
    AnimatedNumber stdDeviationY,
  });
}

@JS(r'SVGFEDropShadowElement')
external ISVGFEDropShadowElement JSVGFEDropShadowElement;

@JS()
@anonymous
class SVGFEFloodElement extends SvgElement {
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGFEFloodElement();
}

@JS(r'SVGFEFloodElement')
external ISVGFEFloodElement JSVGFEFloodElement;

@JS()
@anonymous
class SVGFEFuncAElement extends SVGComponentTransferFunctionElement {
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGFEFuncAElement();
}

@JS(r'SVGFEFuncAElement')
external ISVGFEFuncAElement JSVGFEFuncAElement;

@JS()
@anonymous
class SVGFEFuncBElement extends SVGComponentTransferFunctionElement {
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGFEFuncBElement();
}

@JS(r'SVGFEFuncBElement')
external ISVGFEFuncBElement JSVGFEFuncBElement;

@JS()
@anonymous
class SVGFEFuncGElement extends SVGComponentTransferFunctionElement {
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGFEFuncGElement();
}

@JS(r'SVGFEFuncGElement')
external ISVGFEFuncGElement JSVGFEFuncGElement;

@JS()
@anonymous
class SVGFEFuncRElement extends SVGComponentTransferFunctionElement {
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGFEFuncRElement();
}

@JS(r'SVGFEFuncRElement')
external ISVGFEFuncRElement JSVGFEFuncRElement;

@JS()
@anonymous
class SVGFEGaussianBlurElement extends SvgElement {
  external AnimatedString get in1;
  external AnimatedNumber get stdDeviationX;
  external AnimatedNumber get stdDeviationY;
  external void setStdDeviation(num stdDeviationX, num stdDeviationY);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGFEGaussianBlurElement({
    AnimatedString in1,
    AnimatedNumber stdDeviationX,
    AnimatedNumber stdDeviationY,
  });
}

@JS(r'SVGFEGaussianBlurElement')
external ISVGFEGaussianBlurElement JSVGFEGaussianBlurElement;

@JS()
@anonymous
class SVGFEImageElement extends SvgElement {
  external AnimatedPreserveAspectRatio get preserveAspectRatio;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGFEImageElement({
    AnimatedPreserveAspectRatio preserveAspectRatio,
  });
}

@JS(r'SVGFEImageElement')
external ISVGFEImageElement JSVGFEImageElement;

@JS()
@anonymous
class SVGFEMergeElement extends SvgElement {
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGFEMergeElement();
}

@JS(r'SVGFEMergeElement')
external ISVGFEMergeElement JSVGFEMergeElement;

@JS()
@anonymous
class SVGFEMergeNodeElement extends SvgElement {
  external AnimatedString get in1;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGFEMergeNodeElement({
    AnimatedString in1,
  });
}

@JS(r'SVGFEMergeNodeElement')
external ISVGFEMergeNodeElement JSVGFEMergeNodeElement;

@JS()
@anonymous
class SVGFEMorphologyElement extends SvgElement {
  external AnimatedString get in1;
  external AnimatedEnumeration get operator;
  external AnimatedNumber get radiusX;
  external AnimatedNumber get radiusY;
  external num get SVG_MORPHOLOGY_OPERATOR_DILATE;
  external num get SVG_MORPHOLOGY_OPERATOR_ERODE;
  external num get SVG_MORPHOLOGY_OPERATOR_UNKNOWN;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGFEMorphologyElement({
    AnimatedString in1,
    AnimatedEnumeration operator,
    AnimatedNumber radiusX,
    AnimatedNumber radiusY,
    num SVG_MORPHOLOGY_OPERATOR_DILATE,
    num SVG_MORPHOLOGY_OPERATOR_ERODE,
    num SVG_MORPHOLOGY_OPERATOR_UNKNOWN,
  });
}

@JS(r'SVGFEMorphologyElement')
external ISVGFEMorphologyElement JSVGFEMorphologyElement;

@JS()
@anonymous
class SVGFEOffsetElement extends SvgElement {
  external AnimatedNumber get dx;
  external AnimatedNumber get dy;
  external AnimatedString get in1;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGFEOffsetElement({
    AnimatedNumber dx,
    AnimatedNumber dy,
    AnimatedString in1,
  });
}

@JS(r'SVGFEOffsetElement')
external ISVGFEOffsetElement JSVGFEOffsetElement;

@JS()
@anonymous
class SVGFEPointLightElement extends SvgElement {
  external AnimatedNumber get x;
  external AnimatedNumber get y;
  external AnimatedNumber get z;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGFEPointLightElement({
    AnimatedNumber x,
    AnimatedNumber y,
    AnimatedNumber z,
  });
}

@JS(r'SVGFEPointLightElement')
external ISVGFEPointLightElement JSVGFEPointLightElement;

@JS()
@anonymous
class SVGFESpecularLightingElement extends SvgElement {
  external AnimatedString get in1;
  external AnimatedNumber get kernelUnitLengthX;
  external AnimatedNumber get kernelUnitLengthY;
  external AnimatedNumber get specularConstant;
  external AnimatedNumber get specularExponent;
  external AnimatedNumber get surfaceScale;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGFESpecularLightingElement({
    AnimatedString in1,
    AnimatedNumber kernelUnitLengthX,
    AnimatedNumber kernelUnitLengthY,
    AnimatedNumber specularConstant,
    AnimatedNumber specularExponent,
    AnimatedNumber surfaceScale,
  });
}

@JS(r'SVGFESpecularLightingElement')
external ISVGFESpecularLightingElement JSVGFESpecularLightingElement;

@JS()
@anonymous
class SVGFESpotLightElement extends SvgElement {
  external AnimatedNumber get limitingConeAngle;
  external AnimatedNumber get pointsAtX;
  external AnimatedNumber get pointsAtY;
  external AnimatedNumber get pointsAtZ;
  external AnimatedNumber get specularExponent;
  external AnimatedNumber get x;
  external AnimatedNumber get y;
  external AnimatedNumber get z;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGFESpotLightElement({
    AnimatedNumber limitingConeAngle,
    AnimatedNumber pointsAtX,
    AnimatedNumber pointsAtY,
    AnimatedNumber pointsAtZ,
    AnimatedNumber specularExponent,
    AnimatedNumber x,
    AnimatedNumber y,
    AnimatedNumber z,
  });
}

@JS(r'SVGFESpotLightElement')
external ISVGFESpotLightElement JSVGFESpotLightElement;

@JS()
@anonymous
class SVGFETileElement extends SvgElement {
  external AnimatedString get in1;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGFETileElement({
    AnimatedString in1,
  });
}

@JS(r'SVGFETileElement')
external ISVGFETileElement JSVGFETileElement;

@JS()
@anonymous
class SVGFETurbulenceElement extends SvgElement {
  external AnimatedNumber get baseFrequencyX;
  external AnimatedNumber get baseFrequencyY;
  external AnimatedInteger get numOctaves;
  external AnimatedNumber get seed;
  external AnimatedEnumeration get stitchTiles;
  external AnimatedEnumeration get type;
  external num get SVG_STITCHTYPE_NOSTITCH;
  external num get SVG_STITCHTYPE_STITCH;
  external num get SVG_STITCHTYPE_UNKNOWN;
  external num get SVG_TURBULENCE_TYPE_FRACTALNOISE;
  external num get SVG_TURBULENCE_TYPE_TURBULENCE;
  external num get SVG_TURBULENCE_TYPE_UNKNOWN;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGFETurbulenceElement({
    AnimatedNumber baseFrequencyX,
    AnimatedNumber baseFrequencyY,
    AnimatedInteger numOctaves,
    AnimatedNumber seed,
    AnimatedEnumeration stitchTiles,
    AnimatedEnumeration type,
    num SVG_STITCHTYPE_NOSTITCH,
    num SVG_STITCHTYPE_STITCH,
    num SVG_STITCHTYPE_UNKNOWN,
    num SVG_TURBULENCE_TYPE_FRACTALNOISE,
    num SVG_TURBULENCE_TYPE_TURBULENCE,
    num SVG_TURBULENCE_TYPE_UNKNOWN,
  });
}

@JS(r'SVGFETurbulenceElement')
external ISVGFETurbulenceElement JSVGFETurbulenceElement;

@JS()
@anonymous
class SVGFilterElement extends SvgElement {
  external AnimatedEnumeration get filterUnits;
  external AnimatedLength get height;
  external AnimatedEnumeration get primitiveUnits;
  external AnimatedLength get width;
  external AnimatedLength get x;
  external AnimatedLength get y;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGFilterElement({
    AnimatedEnumeration filterUnits,
    AnimatedLength height,
    AnimatedEnumeration primitiveUnits,
    AnimatedLength width,
    AnimatedLength x,
    AnimatedLength y,
  });
}

@JS(r'SVGFilterElement')
external ISVGFilterElement JSVGFilterElement;

@JS()
@anonymous
class SVGFilterPrimitiveStandardAttributes {
  external AnimatedLength get height;
  external AnimatedString get result;
  external AnimatedLength get width;
  external AnimatedLength get x;
  external AnimatedLength get y;
  external factory SVGFilterPrimitiveStandardAttributes({
    AnimatedLength height,
    AnimatedString result,
    AnimatedLength width,
    AnimatedLength x,
    AnimatedLength y,
  });
}

@JS()
@anonymous
class SVGFitToViewBox {
  external AnimatedPreserveAspectRatio get preserveAspectRatio;
  external AnimatedRect get viewBox;
  external factory SVGFitToViewBox({
    AnimatedPreserveAspectRatio preserveAspectRatio,
    AnimatedRect viewBox,
  });
}

@JS()
@anonymous
class SVGForeignObjectElement extends GraphicsElement {
  external AnimatedLength get height;
  external AnimatedLength get width;
  external AnimatedLength get x;
  external AnimatedLength get y;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGForeignObjectElement({
    AnimatedLength height,
    AnimatedLength width,
    AnimatedLength x,
    AnimatedLength y,
  });
}

@JS(r'SVGForeignObjectElement')
external ISVGForeignObjectElement JSVGForeignObjectElement;

@JS()
@anonymous
class SVGGElement extends GraphicsElement {
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGGElement();
}

@JS(r'SVGGElement')
external ISVGGElement JSVGGElement;

@JS()
@anonymous
class SVGGeometryElement extends GraphicsElement {
  external AnimatedNumber get pathLength;
  external DomPoint getPointAtLength(num distance);
  external num getTotalLength();
  external bool isPointInFill(DOMPointInit point);
  external bool isPointInStroke(DOMPointInit point);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGGeometryElement({
    AnimatedNumber pathLength,
  });
}

@JS(r'SVGGeometryElement')
external ISVGGeometryElement JSVGGeometryElement;

@JS()
@anonymous
class SVGGradientElement extends SvgElement {
  external AnimatedTransformList get gradientTransform;
  external AnimatedEnumeration get gradientUnits;
  external AnimatedEnumeration get spreadMethod;
  external num get SVG_SPREADMETHOD_PAD;
  external num get SVG_SPREADMETHOD_REFLECT;
  external num get SVG_SPREADMETHOD_REPEAT;
  external num get SVG_SPREADMETHOD_UNKNOWN;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGGradientElement({
    AnimatedTransformList gradientTransform,
    AnimatedEnumeration gradientUnits,
    AnimatedEnumeration spreadMethod,
    num SVG_SPREADMETHOD_PAD,
    num SVG_SPREADMETHOD_REFLECT,
    num SVG_SPREADMETHOD_REPEAT,
    num SVG_SPREADMETHOD_UNKNOWN,
  });
}

@JS(r'SVGGradientElement')
external ISVGGradientElement JSVGGradientElement;

@JS()
@anonymous
class SVGGraphicsElement extends SvgElement {
  external AnimatedTransformList get transform;
  external DOMRect getBBox(SVGBoundingBoxOptions options);
  external DomMatrix? getCTM();
  external DomMatrix? getScreenCTM();
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGGraphicsElement({
    AnimatedTransformList transform,
  });
}

@JS(r'SVGGraphicsElement')
external ISVGGraphicsElement JSVGGraphicsElement;

@JS()
@anonymous
class SVGImageElement extends GraphicsElement {
  external AnimatedLength get height;
  external AnimatedPreserveAspectRatio get preserveAspectRatio;
  external AnimatedLength get width;
  external AnimatedLength get x;
  external AnimatedLength get y;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGImageElement({
    AnimatedLength height,
    AnimatedPreserveAspectRatio preserveAspectRatio,
    AnimatedLength width,
    AnimatedLength x,
    AnimatedLength y,
  });
}

@JS(r'SVGImageElement')
external ISVGImageElement JSVGImageElement;

@JS()
@anonymous
class SVGLength {
  external num get unitType;
  external num get value;
  external set value(num value);
  external String get valueAsString;
  external set valueAsString(String value);
  external num get valueInSpecifiedUnits;
  external set valueInSpecifiedUnits(num value);
  external void convertToSpecifiedUnits(num unitType);
  external void newValueSpecifiedUnits(num unitType, num valueInSpecifiedUnits);
  external num get SVG_LENGTHTYPE_CM;
  external num get SVG_LENGTHTYPE_EMS;
  external num get SVG_LENGTHTYPE_EXS;
  external num get SVG_LENGTHTYPE_IN;
  external num get SVG_LENGTHTYPE_MM;
  external num get SVG_LENGTHTYPE_NUMBER;
  external num get SVG_LENGTHTYPE_PC;
  external num get SVG_LENGTHTYPE_PERCENTAGE;
  external num get SVG_LENGTHTYPE_PT;
  external num get SVG_LENGTHTYPE_PX;
  external num get SVG_LENGTHTYPE_UNKNOWN;
  external factory SVGLength({
    num unitType,
    num value,
    String valueAsString,
    num valueInSpecifiedUnits,
    num SVG_LENGTHTYPE_CM,
    num SVG_LENGTHTYPE_EMS,
    num SVG_LENGTHTYPE_EXS,
    num SVG_LENGTHTYPE_IN,
    num SVG_LENGTHTYPE_MM,
    num SVG_LENGTHTYPE_NUMBER,
    num SVG_LENGTHTYPE_PC,
    num SVG_LENGTHTYPE_PERCENTAGE,
    num SVG_LENGTHTYPE_PT,
    num SVG_LENGTHTYPE_PX,
    num SVG_LENGTHTYPE_UNKNOWN,
  });
}

@JS(r'SVGLength')
external ISVGLength JSVGLength;

@JS()
@anonymous
class SVGLengthList {
  external num get length;
  external num get numberOfItems;
  external Length appendItem(Length newItem);
  external void clear();
  external Length getItem(num index);
  external Length initialize(Length newItem);
  external Length insertItemBefore(Length newItem, num index);
  external Length removeItem(num index);
  external Length replaceItem(Length newItem, num index);
  external factory SVGLengthList({
    num length,
    num numberOfItems,
  });
}

@JS(r'SVGLengthList')
external ISVGLengthList JSVGLengthList;

@JS()
@anonymous
class SVGLineElement extends GeometryElement {
  external AnimatedLength get x1;
  external AnimatedLength get x2;
  external AnimatedLength get y1;
  external AnimatedLength get y2;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGLineElement({
    AnimatedLength x1,
    AnimatedLength x2,
    AnimatedLength y1,
    AnimatedLength y2,
  });
}

@JS(r'SVGLineElement')
external ISVGLineElement JSVGLineElement;

@JS()
@anonymous
class SVGLinearGradientElement extends SVGGradientElement {
  external AnimatedLength get x1;
  external AnimatedLength get x2;
  external AnimatedLength get y1;
  external AnimatedLength get y2;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGLinearGradientElement({
    AnimatedLength x1,
    AnimatedLength x2,
    AnimatedLength y1,
    AnimatedLength y2,
  });
}

@JS(r'SVGLinearGradientElement')
external ISVGLinearGradientElement JSVGLinearGradientElement;

@JS()
@anonymous
class SVGMPathElement extends SvgElement {
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGMPathElement();
}

@JS(r'SVGMPathElement')
external ISVGMPathElement JSVGMPathElement;

@JS()
@anonymous
class SVGMarkerElement extends SvgElement {
  external AnimatedLength get markerHeight;
  external AnimatedEnumeration get markerUnits;
  external AnimatedLength get markerWidth;
  external AnimatedAngle get orientAngle;
  external AnimatedEnumeration get orientType;
  external AnimatedLength get refX;
  external AnimatedLength get refY;
  external void setOrientToAngle(Angle angle);
  external void setOrientToAuto();
  external num get SVG_MARKERUNITS_STROKEWIDTH;
  external num get SVG_MARKERUNITS_UNKNOWN;
  external num get SVG_MARKERUNITS_USERSPACEONUSE;
  external num get SVG_MARKER_ORIENT_ANGLE;
  external num get SVG_MARKER_ORIENT_AUTO;
  external num get SVG_MARKER_ORIENT_UNKNOWN;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGMarkerElement({
    AnimatedLength markerHeight,
    AnimatedEnumeration markerUnits,
    AnimatedLength markerWidth,
    AnimatedAngle orientAngle,
    AnimatedEnumeration orientType,
    AnimatedLength refX,
    AnimatedLength refY,
    num SVG_MARKERUNITS_STROKEWIDTH,
    num SVG_MARKERUNITS_UNKNOWN,
    num SVG_MARKERUNITS_USERSPACEONUSE,
    num SVG_MARKER_ORIENT_ANGLE,
    num SVG_MARKER_ORIENT_AUTO,
    num SVG_MARKER_ORIENT_UNKNOWN,
  });
}

@JS(r'SVGMarkerElement')
external ISVGMarkerElement JSVGMarkerElement;

@JS()
@anonymous
class SVGMaskElement extends SvgElement {
  external AnimatedLength get height;
  external AnimatedEnumeration get maskContentUnits;
  external AnimatedEnumeration get maskUnits;
  external AnimatedLength get width;
  external AnimatedLength get x;
  external AnimatedLength get y;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGMaskElement({
    AnimatedLength height,
    AnimatedEnumeration maskContentUnits,
    AnimatedEnumeration maskUnits,
    AnimatedLength width,
    AnimatedLength x,
    AnimatedLength y,
  });
}

@JS(r'SVGMaskElement')
external ISVGMaskElement JSVGMaskElement;

@JS()
@anonymous
class SVGMetadataElement extends SvgElement {
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGMetadataElement();
}

@JS(r'SVGMetadataElement')
external ISVGMetadataElement JSVGMetadataElement;

@JS()
@anonymous
class SVGNumber {
  external num get value;
  external set value(num value);
  external factory SVGNumber({
    num value,
  });
}

@JS(r'SVGNumber')
external ISVGNumber JSVGNumber;

@JS()
@anonymous
class SVGNumberList {
  external num get length;
  external num get numberOfItems;
  external Number appendItem(Number newItem);
  external void clear();
  external Number getItem(num index);
  external Number initialize(Number newItem);
  external Number insertItemBefore(Number newItem, num index);
  external Number removeItem(num index);
  external Number replaceItem(Number newItem, num index);
  external factory SVGNumberList({
    num length,
    num numberOfItems,
  });
}

@JS(r'SVGNumberList')
external ISVGNumberList JSVGNumberList;

@JS()
@anonymous
class SVGPathElement extends GeometryElement {
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGPathElement();
}

@JS(r'SVGPathElement')
external ISVGPathElement JSVGPathElement;

@JS()
@anonymous
class SVGPatternElement extends SvgElement {
  external AnimatedLength get height;
  external AnimatedEnumeration get patternContentUnits;
  external AnimatedTransformList get patternTransform;
  external AnimatedEnumeration get patternUnits;
  external AnimatedLength get width;
  external AnimatedLength get x;
  external AnimatedLength get y;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGPatternElement({
    AnimatedLength height,
    AnimatedEnumeration patternContentUnits,
    AnimatedTransformList patternTransform,
    AnimatedEnumeration patternUnits,
    AnimatedLength width,
    AnimatedLength x,
    AnimatedLength y,
  });
}

@JS(r'SVGPatternElement')
external ISVGPatternElement JSVGPatternElement;

@JS()
@anonymous
class SVGPointList {
  external num get length;
  external num get numberOfItems;
  external DomPoint appendItem(DomPoint newItem);
  external void clear();
  external DomPoint getItem(num index);
  external DomPoint initialize(DomPoint newItem);
  external DomPoint insertItemBefore(DomPoint newItem, num index);
  external DomPoint removeItem(num index);
  external DomPoint replaceItem(DomPoint newItem, num index);
  external factory SVGPointList({
    num length,
    num numberOfItems,
  });
}

@JS(r'SVGPointList')
external ISVGPointList JSVGPointList;

@JS()
@anonymous
class SVGPolygonElement extends GeometryElement {
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGPolygonElement();
}

@JS(r'SVGPolygonElement')
external ISVGPolygonElement JSVGPolygonElement;

@JS()
@anonymous
class SVGPolylineElement extends GeometryElement {
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGPolylineElement();
}

@JS(r'SVGPolylineElement')
external ISVGPolylineElement JSVGPolylineElement;

@JS()
@anonymous
class SVGPreserveAspectRatio {
  external num get align;
  external set align(num value);
  external num get meetOrSlice;
  external set meetOrSlice(num value);
  external num get SVG_MEETORSLICE_MEET;
  external num get SVG_MEETORSLICE_SLICE;
  external num get SVG_MEETORSLICE_UNKNOWN;
  external num get SVG_PRESERVEASPECTRATIO_NONE;
  external num get SVG_PRESERVEASPECTRATIO_UNKNOWN;
  external num get SVG_PRESERVEASPECTRATIO_XMAXYMAX;
  external num get SVG_PRESERVEASPECTRATIO_XMAXYMID;
  external num get SVG_PRESERVEASPECTRATIO_XMAXYMIN;
  external num get SVG_PRESERVEASPECTRATIO_XMIDYMAX;
  external num get SVG_PRESERVEASPECTRATIO_XMIDYMID;
  external num get SVG_PRESERVEASPECTRATIO_XMIDYMIN;
  external num get SVG_PRESERVEASPECTRATIO_XMINYMAX;
  external num get SVG_PRESERVEASPECTRATIO_XMINYMID;
  external num get SVG_PRESERVEASPECTRATIO_XMINYMIN;
  external factory SVGPreserveAspectRatio({
    num align,
    num meetOrSlice,
    num SVG_MEETORSLICE_MEET,
    num SVG_MEETORSLICE_SLICE,
    num SVG_MEETORSLICE_UNKNOWN,
    num SVG_PRESERVEASPECTRATIO_NONE,
    num SVG_PRESERVEASPECTRATIO_UNKNOWN,
    num SVG_PRESERVEASPECTRATIO_XMAXYMAX,
    num SVG_PRESERVEASPECTRATIO_XMAXYMID,
    num SVG_PRESERVEASPECTRATIO_XMAXYMIN,
    num SVG_PRESERVEASPECTRATIO_XMIDYMAX,
    num SVG_PRESERVEASPECTRATIO_XMIDYMID,
    num SVG_PRESERVEASPECTRATIO_XMIDYMIN,
    num SVG_PRESERVEASPECTRATIO_XMINYMAX,
    num SVG_PRESERVEASPECTRATIO_XMINYMID,
    num SVG_PRESERVEASPECTRATIO_XMINYMIN,
  });
}

@JS(r'SVGPreserveAspectRatio')
external ISVGPreserveAspectRatio JSVGPreserveAspectRatio;

@JS()
@anonymous
class SVGRadialGradientElement extends SVGGradientElement {
  external AnimatedLength get cx;
  external AnimatedLength get cy;
  external AnimatedLength get fr;
  external AnimatedLength get fx;
  external AnimatedLength get fy;
  external AnimatedLength get r;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGRadialGradientElement({
    AnimatedLength cx,
    AnimatedLength cy,
    AnimatedLength fr,
    AnimatedLength fx,
    AnimatedLength fy,
    AnimatedLength r,
  });
}

@JS(r'SVGRadialGradientElement')
external ISVGRadialGradientElement JSVGRadialGradientElement;

@JS()
@anonymous
class SVGRectElement extends GeometryElement {
  external AnimatedLength get height;
  external AnimatedLength get rx;
  external AnimatedLength get ry;
  external AnimatedLength get width;
  external AnimatedLength get x;
  external AnimatedLength get y;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGRectElement({
    AnimatedLength height,
    AnimatedLength rx,
    AnimatedLength ry,
    AnimatedLength width,
    AnimatedLength x,
    AnimatedLength y,
  });
}

@JS(r'SVGRectElement')
external ISVGRectElement JSVGRectElement;

@JS()
@anonymous
class SVGSVGElementEventMap extends SVGElementEventMap {
  external factory SVGSVGElementEventMap();
}

@JS()
@anonymous
class SVGSVGElement extends GraphicsElement {
  external num get currentScale;
  external set currentScale(num value);
  external DomPointReadOnly get currentTranslate;
  external AnimatedLength get height;
  external AnimatedLength get width;
  external AnimatedLength get x;
  external AnimatedLength get y;
  external bool animationsPaused();
  external bool checkEnclosure(SvgElement element, DomRectReadOnly rect);
  external bool checkIntersection(SvgElement element, DomRectReadOnly rect);
  external Angle createSVGAngle();
  external Length createSVGLength();
  external DomMatrix createSVGMatrix();
  external Number createSVGNumber();
  external DomPoint createSVGPoint();
  external DOMRect createSVGRect();
  external Transform createSVGTransform();
  external Transform createSVGTransformFromMatrix(DOMMatrix2DInit matrix);
  external void deselectAll();
  external void forceRedraw();
  external num getCurrentTime();
  external Element getElementById(String elementId);
  external NodeListOf<dynamic> getEnclosureList(DomRectReadOnly rect, SvgElement? referenceElement);
  external NodeListOf<dynamic> getIntersectionList(DomRectReadOnly rect, SvgElement? referenceElement);
  external void pauseAnimations();
  external void setCurrentTime(num seconds);
  external num suspendRedraw(num maxWaitMilliseconds);
  external void unpauseAnimations();
  external void unsuspendRedraw(num suspendHandleID);
  external void unsuspendRedrawAll();
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGSVGElement({
    num currentScale,
    DomPointReadOnly currentTranslate,
    AnimatedLength height,
    AnimatedLength width,
    AnimatedLength x,
    AnimatedLength y,
  });
}

@JS(r'SVGSVGElement')
external ISVGSVGElement JSVGSVGElement;

@JS()
@anonymous
class SVGScriptElement extends SvgElement {
  external String get type;
  external set type(String value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGScriptElement({
    String type,
  });
}

@JS(r'SVGScriptElement')
external ISVGScriptElement JSVGScriptElement;

@JS()
@anonymous
class SVGSetElement extends AnimationElement {
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGSetElement();
}

@JS(r'SVGSetElement')
external ISVGSetElement JSVGSetElement;

@JS()
@anonymous
class SVGStopElement extends SvgElement {
  external AnimatedNumber get offset;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGStopElement({
    AnimatedNumber offset,
  });
}

@JS(r'SVGStopElement')
external ISVGStopElement JSVGStopElement;

@JS()
@anonymous
class SVGStringList {
  external num get length;
  external num get numberOfItems;
  external String appendItem(String newItem);
  external void clear();
  external String getItem(num index);
  external String initialize(String newItem);
  external String insertItemBefore(String newItem, num index);
  external String removeItem(num index);
  external String replaceItem(String newItem, num index);
  external factory SVGStringList({
    num length,
    num numberOfItems,
  });
}

@JS(r'SVGStringList')
external ISVGStringList JSVGStringList;

@JS()
@anonymous
class SVGStyleElement extends SvgElement {
  external bool get disabled;
  external set disabled(bool value);
  external String get media;
  external set media(String value);
  external String get title;
  external set title(String value);
  external String get type;
  external set type(String value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGStyleElement({
    bool disabled,
    String media,
    String title,
    String type,
  });
}

@JS(r'SVGStyleElement')
external ISVGStyleElement JSVGStyleElement;

@JS()
@anonymous
class SVGSwitchElement extends GraphicsElement {
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGSwitchElement();
}

@JS(r'SVGSwitchElement')
external ISVGSwitchElement JSVGSwitchElement;

@JS()
@anonymous
class SVGSymbolElement extends SvgElement {
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGSymbolElement();
}

@JS(r'SVGSymbolElement')
external ISVGSymbolElement JSVGSymbolElement;

@JS()
@anonymous
class SVGTSpanElement extends TextPositioningElement {
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGTSpanElement();
}

@JS(r'SVGTSpanElement')
external ISVGTSpanElement JSVGTSpanElement;

@JS()
@anonymous
class SVGTests {
  external StringList get requiredExtensions;
  external StringList get systemLanguage;
  external factory SVGTests({
    StringList requiredExtensions,
    StringList systemLanguage,
  });
}

@JS()
@anonymous
class SVGTextContentElement extends GraphicsElement {
  external AnimatedEnumeration get lengthAdjust;
  external AnimatedLength get textLength;
  external num getCharNumAtPosition(DOMPointInit point);
  external num getComputedTextLength();
  external DomPoint getEndPositionOfChar(num charnum);
  external DOMRect getExtentOfChar(num charnum);
  external num getNumberOfChars();
  external num getRotationOfChar(num charnum);
  external DomPoint getStartPositionOfChar(num charnum);
  external num getSubStringLength(num charnum, num nchars);
  external void selectSubString(num charnum, num nchars);
  external num get LENGTHADJUST_SPACING;
  external num get LENGTHADJUST_SPACINGANDGLYPHS;
  external num get LENGTHADJUST_UNKNOWN;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGTextContentElement({
    AnimatedEnumeration lengthAdjust,
    AnimatedLength textLength,
    num LENGTHADJUST_SPACING,
    num LENGTHADJUST_SPACINGANDGLYPHS,
    num LENGTHADJUST_UNKNOWN,
  });
}

@JS(r'SVGTextContentElement')
external ISVGTextContentElement JSVGTextContentElement;

@JS()
@anonymous
class SVGTextElement extends TextPositioningElement {
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGTextElement();
}

@JS(r'SVGTextElement')
external ISVGTextElement JSVGTextElement;

@JS()
@anonymous
class SVGTextPathElement extends TextContentElement {
  external AnimatedEnumeration get method;
  external AnimatedEnumeration get spacing;
  external AnimatedLength get startOffset;
  external num get TEXTPATH_METHODTYPE_ALIGN;
  external num get TEXTPATH_METHODTYPE_STRETCH;
  external num get TEXTPATH_METHODTYPE_UNKNOWN;
  external num get TEXTPATH_SPACINGTYPE_AUTO;
  external num get TEXTPATH_SPACINGTYPE_EXACT;
  external num get TEXTPATH_SPACINGTYPE_UNKNOWN;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGTextPathElement({
    AnimatedEnumeration method,
    AnimatedEnumeration spacing,
    AnimatedLength startOffset,
    num TEXTPATH_METHODTYPE_ALIGN,
    num TEXTPATH_METHODTYPE_STRETCH,
    num TEXTPATH_METHODTYPE_UNKNOWN,
    num TEXTPATH_SPACINGTYPE_AUTO,
    num TEXTPATH_SPACINGTYPE_EXACT,
    num TEXTPATH_SPACINGTYPE_UNKNOWN,
  });
}

@JS(r'SVGTextPathElement')
external ISVGTextPathElement JSVGTextPathElement;

@JS()
@anonymous
class SVGTextPositioningElement extends TextContentElement {
  external AnimatedLengthList get dx;
  external AnimatedLengthList get dy;
  external AnimatedNumberList get rotate;
  external AnimatedLengthList get x;
  external AnimatedLengthList get y;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGTextPositioningElement({
    AnimatedLengthList dx,
    AnimatedLengthList dy,
    AnimatedNumberList rotate,
    AnimatedLengthList x,
    AnimatedLengthList y,
  });
}

@JS(r'SVGTextPositioningElement')
external ISVGTextPositioningElement JSVGTextPositioningElement;

@JS()
@anonymous
class SVGTitleElement extends SvgElement {
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGTitleElement();
}

@JS(r'SVGTitleElement')
external ISVGTitleElement JSVGTitleElement;

@JS()
@anonymous
class SVGTransform {
  external num get angle;
  external DomMatrix get matrix;
  external num get type;
  external void setMatrix(DOMMatrix2DInit matrix);
  external void setRotate(num angle, num cx, num cy);
  external void setScale(num sx, num sy);
  external void setSkewX(num angle);
  external void setSkewY(num angle);
  external void setTranslate(num tx, num ty);
  external num get SVG_TRANSFORM_MATRIX;
  external num get SVG_TRANSFORM_ROTATE;
  external num get SVG_TRANSFORM_SCALE;
  external num get SVG_TRANSFORM_SKEWX;
  external num get SVG_TRANSFORM_SKEWY;
  external num get SVG_TRANSFORM_TRANSLATE;
  external num get SVG_TRANSFORM_UNKNOWN;
  external factory SVGTransform({
    num angle,
    DomMatrix matrix,
    num type,
    num SVG_TRANSFORM_MATRIX,
    num SVG_TRANSFORM_ROTATE,
    num SVG_TRANSFORM_SCALE,
    num SVG_TRANSFORM_SKEWX,
    num SVG_TRANSFORM_SKEWY,
    num SVG_TRANSFORM_TRANSLATE,
    num SVG_TRANSFORM_UNKNOWN,
  });
}

@JS(r'SVGTransform')
external ISVGTransform JSVGTransform;

@JS()
@anonymous
class SVGTransformList {
  external num get length;
  external num get numberOfItems;
  external Transform appendItem(Transform newItem);
  external void clear();
  external Transform? consolidate();
  external Transform createSVGTransformFromMatrix(DOMMatrix2DInit matrix);
  external Transform getItem(num index);
  external Transform initialize(Transform newItem);
  external Transform insertItemBefore(Transform newItem, num index);
  external Transform removeItem(num index);
  external Transform replaceItem(Transform newItem, num index);
  external factory SVGTransformList({
    num length,
    num numberOfItems,
  });
}

@JS(r'SVGTransformList')
external ISVGTransformList JSVGTransformList;

@JS()
@anonymous
class SVGURIReference {
  external AnimatedString get href;
  external factory SVGURIReference({
    AnimatedString href,
  });
}

@JS()
@anonymous
class SVGUnitTypes {
  external num get SVG_UNIT_TYPE_OBJECTBOUNDINGBOX;
  external num get SVG_UNIT_TYPE_UNKNOWN;
  external num get SVG_UNIT_TYPE_USERSPACEONUSE;
  external factory SVGUnitTypes({
    num SVG_UNIT_TYPE_OBJECTBOUNDINGBOX,
    num SVG_UNIT_TYPE_UNKNOWN,
    num SVG_UNIT_TYPE_USERSPACEONUSE,
  });
}

@JS(r'SVGUnitTypes')
external ISVGUnitTypes JSVGUnitTypes;

@JS()
@anonymous
class SVGUseElement extends GraphicsElement {
  external AnimatedLength get height;
  external AnimatedLength get width;
  external AnimatedLength get x;
  external AnimatedLength get y;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGUseElement({
    AnimatedLength height,
    AnimatedLength width,
    AnimatedLength x,
    AnimatedLength y,
  });
}

@JS(r'SVGUseElement')
external ISVGUseElement JSVGUseElement;

@JS()
@anonymous
class SVGViewElement extends SvgElement {
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SVGViewElement();
}

@JS(r'SVGViewElement')
external ISVGViewElement JSVGViewElement;

@JS()
@anonymous
class Screen {
  external num get availHeight;
  external num get availWidth;
  external num get colorDepth;
  external num get height;
  external ScreenOrientation get orientation;
  external num get pixelDepth;
  external num get width;
  external factory Screen({
    num availHeight,
    num availWidth,
    num colorDepth,
    num height,
    ScreenOrientation orientation,
    num pixelDepth,
    num width,
  });
}

@JS(r'Screen')
external IScreen JScreen;

@JS()
@anonymous
class ScreenOrientationEventMap {
  external Event get change;
  external set change(Event value);
  external factory ScreenOrientationEventMap({
    Event change,
  });
}

@JS()
@anonymous
class ScreenOrientation extends EventTarget {
  external num get angle;
  external dynamic Function(Event ev)? get onchange;
  external set onchange(dynamic Function(Event ev)? value);
  external OrientationType get type;
  external Promise<void> lock(OrientationLockType orientation);
  external void unlock();
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory ScreenOrientation({
    num angle,
    dynamic Function(Event ev)? onchange,
    OrientationType type,
  });
}

@JS(r'ScreenOrientation')
external IScreenOrientation JScreenOrientation;

@JS()
@anonymous
class ScriptProcessorNodeEventMap {
  external AudioProcessingEvent get audioprocess;
  external set audioprocess(AudioProcessingEvent value);
  external factory ScriptProcessorNodeEventMap({
    AudioProcessingEvent audioprocess,
  });
}

@JS()
@anonymous
class ScriptProcessorNode extends AudioNode {
  external num get bufferSize;
  external dynamic Function(AudioProcessingEvent ev)? get onaudioprocess;
  external set onaudioprocess(dynamic Function(AudioProcessingEvent ev)? value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory ScriptProcessorNode({
    num bufferSize,
    dynamic Function(AudioProcessingEvent ev)? onaudioprocess,
  });
}

@JS(r'ScriptProcessorNode')
external IScriptProcessorNode JScriptProcessorNode;

@JS()
@anonymous
class SecurityPolicyViolationEvent extends Event {
  external String get blockedURI;
  external num get columnNumber;
  external SecurityPolicyViolationEventDisposition get disposition;
  external String get documentURI;
  external String get effectiveDirective;
  external num get lineNumber;
  external String get originalPolicy;
  external String get referrer;
  external String get sample;
  external String get sourceFile;
  external num get statusCode;
  external String get violatedDirective;
  external factory SecurityPolicyViolationEvent({
    String blockedURI,
    num columnNumber,
    SecurityPolicyViolationEventDisposition disposition,
    String documentURI,
    String effectiveDirective,
    num lineNumber,
    String originalPolicy,
    String referrer,
    String sample,
    String sourceFile,
    num statusCode,
    String violatedDirective,
  });
}

@JS(r'SecurityPolicyViolationEvent')
external ISecurityPolicyViolationEvent JSecurityPolicyViolationEvent;

@JS()
@anonymous
class Selection {
  external Node? get anchorNode;
  external num get anchorOffset;
  external Node? get focusNode;
  external num get focusOffset;
  external bool get isCollapsed;
  external num get rangeCount;
  external String get type;
  external void addRange(Range range);
  external void collapse(Node? node, num offset);
  external void collapseToEnd();
  external void collapseToStart();
  external bool containsNode(Node node, bool allowPartialContainment);
  external void deleteFromDocument();
  external void empty();
  external void extend(Node node, num offset);
  external Range getRangeAt(num index);
  external void removeAllRanges();
  external void removeRange(Range range);
  external void selectAllChildren(Node node);
  external void setBaseAndExtent(Node anchorNode, num anchorOffset, Node focusNode, num focusOffset);
  external void setPosition(Node? node, num offset);
  @override
  external String toString();
  external factory Selection({
    Node? anchorNode,
    num anchorOffset,
    Node? focusNode,
    num focusOffset,
    bool isCollapsed,
    num rangeCount,
    String type,
  });
}

@JS(r'Selection')
external ISelection JSelection;

@JS()
@anonymous
class ServiceWorkerEventMap extends AbstractWorkerEventMap {
  external Event get statechange;
  external set statechange(Event value);
  external factory ServiceWorkerEventMap({
    Event statechange,
  });
}

@JS()
@anonymous
class ServiceWorker extends EventTarget {
  external dynamic Function(Event ev)? get onstatechange;
  external set onstatechange(dynamic Function(Event ev)? value);
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
  external Event get controllerchange;
  external set controllerchange(Event value);
  external MessageEvent get message;
  external set message(MessageEvent value);
  external MessageEvent get messageerror;
  external set messageerror(MessageEvent value);
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
  external dynamic Function(Event ev)? get oncontrollerchange;
  external set oncontrollerchange(dynamic Function(Event ev)? value);
  external dynamic Function(MessageEvent ev)? get onmessage;
  external set onmessage(dynamic Function(MessageEvent ev)? value);
  external dynamic Function(MessageEvent ev)? get onmessageerror;
  external set onmessageerror(dynamic Function(MessageEvent ev)? value);
  external Promise<ServiceWorkerRegistration> get ready;
  external Promise<ServiceWorkerRegistration?> getRegistration(dynamic clientURL);
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
class ServiceWorkerRegistrationEventMap {
  external Event get updatefound;
  external set updatefound(Event value);
  external factory ServiceWorkerRegistrationEventMap({
    Event updatefound,
  });
}

@JS()
@anonymous
class ServiceWorkerRegistration extends EventTarget {
  external ServiceWorker? get active;
  external ServiceWorker? get installing;
  external dynamic Function(Event ev)? get onupdatefound;
  external set onupdatefound(dynamic Function(Event ev)? value);
  external PushManager get pushManager;
  external String get scope;
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
    dynamic Function(Event ev)? onupdatefound,
    PushManager pushManager,
    String scope,
    ServiceWorkerUpdateViaCache updateViaCache,
    ServiceWorker? waiting,
  });
}

@JS(r'ServiceWorkerRegistration')
external IServiceWorkerRegistration JServiceWorkerRegistration;

@JS()
@anonymous
class ShadowRoot extends DocumentFragment {
  external Element get host;
  external ShadowRootMode get mode;
  external factory ShadowRoot({
    Element host,
    ShadowRootMode mode,
  });
}

@JS(r'ShadowRoot')
external IShadowRoot JShadowRoot;

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
class Slottable {
  external HTMLSlotElement? get assignedSlot;
  external factory Slottable({
    HTMLSlotElement? assignedSlot,
  });
}

@JS()
@anonymous
class SourceBufferEventMap {
  external Event get abort;
  external set abort(Event value);
  external Event get error;
  external set error(Event value);
  external Event get update;
  external set update(Event value);
  external Event get updateend;
  external set updateend(Event value);
  external Event get updatestart;
  external set updatestart(Event value);
  external factory SourceBufferEventMap({
    Event abort,
    Event error,
    Event update,
    Event updateend,
    Event updatestart,
  });
}

@JS()
@anonymous
class SourceBuffer extends EventTarget {
  external num get appendWindowEnd;
  external set appendWindowEnd(num value);
  external num get appendWindowStart;
  external set appendWindowStart(num value);
  external TimeRanges get buffered;
  external AppendMode get mode;
  external set mode(AppendMode value);
  external dynamic Function(Event ev)? get onabort;
  external set onabort(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onerror;
  external set onerror(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onupdate;
  external set onupdate(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onupdateend;
  external set onupdateend(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onupdatestart;
  external set onupdatestart(dynamic Function(Event ev)? value);
  external num get timestampOffset;
  external set timestampOffset(num value);
  external bool get updating;
  external void abort();
  external void appendBuffer(BufferSource data);
  external void changeType(String type);
  external void remove(num start, num end);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SourceBuffer({
    num appendWindowEnd,
    num appendWindowStart,
    TimeRanges buffered,
    AppendMode mode,
    dynamic Function(Event ev)? onabort,
    dynamic Function(Event ev)? onerror,
    dynamic Function(Event ev)? onupdate,
    dynamic Function(Event ev)? onupdateend,
    dynamic Function(Event ev)? onupdatestart,
    num timestampOffset,
    bool updating,
  });
}

@JS(r'SourceBuffer')
external ISourceBuffer JSourceBuffer;

@JS()
@anonymous
class SourceBufferListEventMap {
  external Event get addsourcebuffer;
  external set addsourcebuffer(Event value);
  external Event get removesourcebuffer;
  external set removesourcebuffer(Event value);
  external factory SourceBufferListEventMap({
    Event addsourcebuffer,
    Event removesourcebuffer,
  });
}

@JS()
@anonymous
class SourceBufferList extends EventTarget {
  external num get length;
  external dynamic Function(Event ev)? get onaddsourcebuffer;
  external set onaddsourcebuffer(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onremovesourcebuffer;
  external set onremovesourcebuffer(dynamic Function(Event ev)? value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SourceBufferList({
    num length,
    dynamic Function(Event ev)? onaddsourcebuffer,
    dynamic Function(Event ev)? onremovesourcebuffer,
  });
}

@JS(r'SourceBufferList')
external ISourceBufferList JSourceBufferList;

@JS()
@anonymous
class SpeechRecognitionAlternative {
  external num get confidence;
  external String get transcript;
  external factory SpeechRecognitionAlternative({
    num confidence,
    String transcript,
  });
}

@JS(r'SpeechRecognitionAlternative')
external ISpeechRecognitionAlternative JSpeechRecognitionAlternative;

@JS()
@anonymous
class SpeechRecognitionErrorEvent extends Event {
  external SpeechRecognitionErrorCode get error;
  external String get message;
  external factory SpeechRecognitionErrorEvent({
    SpeechRecognitionErrorCode error,
    String message,
  });
}

@JS(r'SpeechRecognitionErrorEvent')
external ISpeechRecognitionErrorEvent JSpeechRecognitionErrorEvent;

@JS()
@anonymous
class SpeechRecognitionResult {
  external bool get isFinal;
  external num get length;
  external SpeechRecognitionAlternative item(num index);
  external factory SpeechRecognitionResult({
    bool isFinal,
    num length,
  });
}

@JS(r'SpeechRecognitionResult')
external ISpeechRecognitionResult JSpeechRecognitionResult;

@JS()
@anonymous
class SpeechRecognitionResultList {
  external num get length;
  external SpeechRecognitionResult item(num index);
  external factory SpeechRecognitionResultList({
    num length,
  });
}

@JS(r'SpeechRecognitionResultList')
external ISpeechRecognitionResultList JSpeechRecognitionResultList;

@JS()
@anonymous
class SpeechSynthesisEventMap {
  external Event get voiceschanged;
  external set voiceschanged(Event value);
  external factory SpeechSynthesisEventMap({
    Event voiceschanged,
  });
}

@JS()
@anonymous
class SpeechSynthesis extends EventTarget {
  external dynamic Function(Event ev)? get onvoiceschanged;
  external set onvoiceschanged(dynamic Function(Event ev)? value);
  external bool get paused;
  external bool get pending;
  external bool get speaking;
  external void cancel();
  external List<SpeechSynthesisVoice> getVoices();
  external void pause();
  external void resume();
  external void speak(SpeechSynthesisUtterance utterance);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SpeechSynthesis({
    dynamic Function(Event ev)? onvoiceschanged,
    bool paused,
    bool pending,
    bool speaking,
  });
}

@JS(r'SpeechSynthesis')
external ISpeechSynthesis JSpeechSynthesis;

@JS()
@anonymous
class SpeechSynthesisErrorEvent extends SpeechSynthesisEvent {
  external SpeechSynthesisErrorCode get error;
  external factory SpeechSynthesisErrorEvent({
    SpeechSynthesisErrorCode error,
  });
}

@JS(r'SpeechSynthesisErrorEvent')
external ISpeechSynthesisErrorEvent JSpeechSynthesisErrorEvent;

@JS()
@anonymous
class SpeechSynthesisEvent extends Event {
  external num get charIndex;
  external num get charLength;
  external num get elapsedTime;
  external String get name;
  external SpeechSynthesisUtterance get utterance;
  external factory SpeechSynthesisEvent({
    num charIndex,
    num charLength,
    num elapsedTime,
    String name,
    SpeechSynthesisUtterance utterance,
  });
}

@JS(r'SpeechSynthesisEvent')
external ISpeechSynthesisEvent JSpeechSynthesisEvent;

@JS()
@anonymous
class SpeechSynthesisUtteranceEventMap {
  external SpeechSynthesisEvent get boundary;
  external set boundary(SpeechSynthesisEvent value);
  external SpeechSynthesisEvent get end;
  external set end(SpeechSynthesisEvent value);
  external SpeechSynthesisErrorEvent get error;
  external set error(SpeechSynthesisErrorEvent value);
  external SpeechSynthesisEvent get mark;
  external set mark(SpeechSynthesisEvent value);
  external SpeechSynthesisEvent get pause;
  external set pause(SpeechSynthesisEvent value);
  external SpeechSynthesisEvent get resume;
  external set resume(SpeechSynthesisEvent value);
  external SpeechSynthesisEvent get start;
  external set start(SpeechSynthesisEvent value);
  external factory SpeechSynthesisUtteranceEventMap({
    SpeechSynthesisEvent boundary,
    SpeechSynthesisEvent end,
    SpeechSynthesisErrorEvent error,
    SpeechSynthesisEvent mark,
    SpeechSynthesisEvent pause,
    SpeechSynthesisEvent resume,
    SpeechSynthesisEvent start,
  });
}

@JS()
@anonymous
class SpeechSynthesisUtterance extends EventTarget {
  external String get lang;
  external set lang(String value);
  external dynamic Function(SpeechSynthesisEvent ev)? get onboundary;
  external set onboundary(dynamic Function(SpeechSynthesisEvent ev)? value);
  external dynamic Function(SpeechSynthesisEvent ev)? get onend;
  external set onend(dynamic Function(SpeechSynthesisEvent ev)? value);
  external dynamic Function(SpeechSynthesisErrorEvent ev)? get onerror;
  external set onerror(dynamic Function(SpeechSynthesisErrorEvent ev)? value);
  external dynamic Function(SpeechSynthesisEvent ev)? get onmark;
  external set onmark(dynamic Function(SpeechSynthesisEvent ev)? value);
  external dynamic Function(SpeechSynthesisEvent ev)? get onpause;
  external set onpause(dynamic Function(SpeechSynthesisEvent ev)? value);
  external dynamic Function(SpeechSynthesisEvent ev)? get onresume;
  external set onresume(dynamic Function(SpeechSynthesisEvent ev)? value);
  external dynamic Function(SpeechSynthesisEvent ev)? get onstart;
  external set onstart(dynamic Function(SpeechSynthesisEvent ev)? value);
  external num get pitch;
  external set pitch(num value);
  external num get rate;
  external set rate(num value);
  external String get text;
  external set text(String value);
  external SpeechSynthesisVoice? get voice;
  external set voice(SpeechSynthesisVoice? value);
  external num get volume;
  external set volume(num value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory SpeechSynthesisUtterance({
    String lang,
    dynamic Function(SpeechSynthesisEvent ev)? onboundary,
    dynamic Function(SpeechSynthesisEvent ev)? onend,
    dynamic Function(SpeechSynthesisErrorEvent ev)? onerror,
    dynamic Function(SpeechSynthesisEvent ev)? onmark,
    dynamic Function(SpeechSynthesisEvent ev)? onpause,
    dynamic Function(SpeechSynthesisEvent ev)? onresume,
    dynamic Function(SpeechSynthesisEvent ev)? onstart,
    num pitch,
    num rate,
    String text,
    SpeechSynthesisVoice? voice,
    num volume,
  });
}

@JS(r'SpeechSynthesisUtterance')
external ISpeechSynthesisUtterance JSpeechSynthesisUtterance;

@JS()
@anonymous
class SpeechSynthesisVoice {
  external String get lang;
  external bool get localService;
  external String get name;
  external String get voiceURI;
  external factory SpeechSynthesisVoice({
    String lang,
    bool localService,
    String name,
    String voiceURI,
  });
}

@JS(r'SpeechSynthesisVoice')
external ISpeechSynthesisVoice JSpeechSynthesisVoice;

@JS()
@anonymous
class StaticRange extends AbstractRange {
  external factory StaticRange();
}

@JS(r'StaticRange')
external IStaticRange JStaticRange;

@JS()
@anonymous
class StereoPannerNode extends AudioNode {
  external AudioParam get pan;
  external factory StereoPannerNode({
    AudioParam pan,
  });
}

@JS(r'StereoPannerNode')
external IStereoPannerNode JStereoPannerNode;

@JS()
@anonymous
class Storage {
  external num get length;
  external void clear();
  external String? getItem(String key);
  external String? key(num index);
  external void removeItem(String key);
  external void setItem(String key, String value);
  external factory Storage({
    num length,
  });
}

@JS(r'Storage')
external IStorage JStorage;

@JS()
@anonymous
class StorageEvent extends Event {
  external String? get key;
  external String? get newValue;
  external String? get oldValue;
  external Storage? get storageArea;
  external String get url;
  external void initStorageEvent(String type, bool bubbles, bool cancelable, String? key, String? oldValue,
      String? newValue, dynamic url, Storage? storageArea);
  external factory StorageEvent({
    String? key,
    String? newValue,
    String? oldValue,
    Storage? storageArea,
    String url,
  });
}

@JS(r'StorageEvent')
external IStorageEvent JStorageEvent;

@JS()
@anonymous
class StorageManager {
  external Promise<StorageEstimate> estimate();
  external Promise<bool> persist();
  external Promise<bool> persisted();
  external factory StorageManager();
}

@JS(r'StorageManager')
external IStorageManager JStorageManager;

@JS()
@anonymous
class StyleMedia {
  external String get type;
  external set type(String value);
  external bool matchMedium(String mediaquery);
  external factory StyleMedia({
    String type,
  });
}

@JS(r'StyleMedia')
external IStyleMedia JStyleMedia;

@JS()
@anonymous
class StyleSheet {
  external bool get disabled;
  external set disabled(bool value);
  external String? get href;
  external MediaList get media;
  external dynamic get ownerNode;
  external CssStyleSheet? get parentStyleSheet;
  external String? get title;
  external String get type;
  external factory StyleSheet({
    bool disabled,
    String? href,
    MediaList media,
    dynamic ownerNode,
    CssStyleSheet? parentStyleSheet,
    String? title,
    String type,
  });
}

@JS(r'StyleSheet')
external IStyleSheet JStyleSheet;

@JS()
@anonymous
class StyleSheetList {
  external num get length;
  external CssStyleSheet? item(num index);
  external factory StyleSheetList({
    num length,
  });
}

@JS(r'StyleSheetList')
external IStyleSheetList JStyleSheetList;

@JS()
@anonymous
class SubmitEvent extends Event {
  external HtmlElement? get submitter;
  external factory SubmitEvent({
    HtmlElement? submitter,
  });
}

@JS(r'SubmitEvent')
external ISubmitEvent JSubmitEvent;

@JS()
@anonymous
class SubtleCrypto {
  external Promise<dynamic> decrypt(dynamic algorithm, CryptoKey key, BufferSource data);
  external Promise<ByteBuffer> deriveBits(dynamic algorithm, CryptoKey baseKey, num length);
  external Promise<CryptoKey> deriveKey(
      dynamic algorithm, CryptoKey baseKey, dynamic derivedKeyType, bool extractable, List<KeyUsage> keyUsages);
  external Promise<ByteBuffer> digest(AlgorithmIdentifier algorithm, BufferSource data);
  external Promise<dynamic> encrypt(dynamic algorithm, CryptoKey key, BufferSource data);
  external Promise<JsonWebKey> exportKey(String format, CryptoKey key);
  external Promise<CryptoKeyPair> generateKey(dynamic algorithm, bool extractable, List<KeyUsage> keyUsages);
  external Promise<CryptoKey> importKey(
      String format, JsonWebKey keyData, dynamic algorithm, bool extractable, List<KeyUsage> keyUsages);
  external Promise<ByteBuffer> sign(dynamic algorithm, CryptoKey key, BufferSource data);
  external Promise<CryptoKey> unwrapKey(KeyFormat format, BufferSource wrappedKey, CryptoKey unwrappingKey,
      dynamic unwrapAlgorithm, dynamic unwrappedKeyAlgorithm, bool extractable, List<KeyUsage> keyUsages);
  external Promise<bool> verify(dynamic algorithm, CryptoKey key, BufferSource signature, BufferSource data);
  external Promise<ByteBuffer> wrapKey(KeyFormat format, CryptoKey key, CryptoKey wrappingKey, dynamic wrapAlgorithm);
  external factory SubtleCrypto();
}

@JS(r'SubtleCrypto')
external ISubtleCrypto JSubtleCrypto;

@JS()
@anonymous
class Text extends CharacterData {
  external HTMLSlotElement? get assignedSlot;
  external String get wholeText;
  external Text splitText(num offset);
  external factory Text({
    HTMLSlotElement? assignedSlot,
    String wholeText,
  });
}

@JS(r'Text')
external IText JText;

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
  external num get fontBoundingBoxAscent;
  external num get fontBoundingBoxDescent;
  external num get width;
  external factory TextMetrics({
    num actualBoundingBoxAscent,
    num actualBoundingBoxDescent,
    num actualBoundingBoxLeft,
    num actualBoundingBoxRight,
    num fontBoundingBoxAscent,
    num fontBoundingBoxDescent,
    num width,
  });
}

@JS(r'TextMetrics')
external ITextMetrics JTextMetrics;

@JS()
@anonymous
class TextTrackEventMap {
  external Event get cuechange;
  external set cuechange(Event value);
  external factory TextTrackEventMap({
    Event cuechange,
  });
}

@JS()
@anonymous
class TextTrack extends EventTarget {
  external TextTrackCueList? get activeCues;
  external TextTrackCueList? get cues;
  external String get id;
  external String get inBandMetadataTrackDispatchType;
  external TextTrackKind get kind;
  external String get label;
  external String get language;
  external TextTrackMode get mode;
  external set mode(TextTrackMode value);
  external dynamic Function(Event ev)? get oncuechange;
  external set oncuechange(dynamic Function(Event ev)? value);
  external void addCue(TextTrackCue cue);
  external void removeCue(TextTrackCue cue);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory TextTrack({
    TextTrackCueList? activeCues,
    TextTrackCueList? cues,
    String id,
    String inBandMetadataTrackDispatchType,
    TextTrackKind kind,
    String label,
    String language,
    TextTrackMode mode,
    dynamic Function(Event ev)? oncuechange,
  });
}

@JS(r'TextTrack')
external ITextTrack JTextTrack;

@JS()
@anonymous
class TextTrackCueEventMap {
  external Event get enter;
  external set enter(Event value);
  external Event get exit;
  external set exit(Event value);
  external factory TextTrackCueEventMap({
    Event enter,
    Event exit,
  });
}

@JS()
@anonymous
class TextTrackCue extends EventTarget {
  external num get endTime;
  external set endTime(num value);
  external String get id;
  external set id(String value);
  external dynamic Function(Event ev)? get onenter;
  external set onenter(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onexit;
  external set onexit(dynamic Function(Event ev)? value);
  external bool get pauseOnExit;
  external set pauseOnExit(bool value);
  external num get startTime;
  external set startTime(num value);
  external TextTrack? get track;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory TextTrackCue({
    num endTime,
    String id,
    dynamic Function(Event ev)? onenter,
    dynamic Function(Event ev)? onexit,
    bool pauseOnExit,
    num startTime,
    TextTrack? track,
  });
}

@JS(r'TextTrackCue')
external ITextTrackCue JTextTrackCue;

@JS()
@anonymous
class TextTrackCueList {
  external num get length;
  external TextTrackCue? getCueById(String id);
  external factory TextTrackCueList({
    num length,
  });
}

@JS(r'TextTrackCueList')
external ITextTrackCueList JTextTrackCueList;

@JS()
@anonymous
class TextTrackListEventMap {
  external TrackEvent get addtrack;
  external set addtrack(TrackEvent value);
  external Event get change;
  external set change(Event value);
  external TrackEvent get removetrack;
  external set removetrack(TrackEvent value);
  external factory TextTrackListEventMap({
    TrackEvent addtrack,
    Event change,
    TrackEvent removetrack,
  });
}

@JS()
@anonymous
class TextTrackList extends EventTarget {
  external num get length;
  external dynamic Function(TrackEvent ev)? get onaddtrack;
  external set onaddtrack(dynamic Function(TrackEvent ev)? value);
  external dynamic Function(Event ev)? get onchange;
  external set onchange(dynamic Function(Event ev)? value);
  external dynamic Function(TrackEvent ev)? get onremovetrack;
  external set onremovetrack(dynamic Function(TrackEvent ev)? value);
  external TextTrack? getTrackById(String id);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory TextTrackList({
    num length,
    dynamic Function(TrackEvent ev)? onaddtrack,
    dynamic Function(Event ev)? onchange,
    dynamic Function(TrackEvent ev)? onremovetrack,
  });
}

@JS(r'TextTrackList')
external ITextTrackList JTextTrackList;

@JS()
@anonymous
class TimeRanges {
  external num get length;
  external num end(num index);
  external num start(num index);
  external factory TimeRanges({
    num length,
  });
}

@JS(r'TimeRanges')
external ITimeRanges JTimeRanges;

@JS()
@anonymous
class Touch {
  external num get clientX;
  external num get clientY;
  external num get force;
  external num get identifier;
  external num get pageX;
  external num get pageY;
  external num get radiusX;
  external num get radiusY;
  external num get rotationAngle;
  external num get screenX;
  external num get screenY;
  external EventTarget get target;
  external factory Touch({
    num clientX,
    num clientY,
    num force,
    num identifier,
    num pageX,
    num pageY,
    num radiusX,
    num radiusY,
    num rotationAngle,
    num screenX,
    num screenY,
    EventTarget target,
  });
}

@JS(r'Touch')
external ITouch JTouch;

@JS()
@anonymous
class TouchEvent extends UIEvent {
  external bool get altKey;
  external TouchList get changedTouches;
  external bool get ctrlKey;
  external bool get metaKey;
  external bool get shiftKey;
  external TouchList get targetTouches;
  external TouchList get touches;
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

@JS(r'TouchEvent')
external ITouchEvent JTouchEvent;

@JS()
@anonymous
class TouchList {
  external num get length;
  external Touch? item(num index);
  external factory TouchList({
    num length,
  });
}

@JS(r'TouchList')
external ITouchList JTouchList;

@JS()
@anonymous
class TrackEvent extends Event {
  external TextTrack? get track;
  external factory TrackEvent({
    TextTrack? track,
  });
}

@JS(r'TrackEvent')
external ITrackEvent JTrackEvent;

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
class TransitionEvent extends Event {
  external num get elapsedTime;
  external String get propertyName;
  external String get pseudoElement;
  external factory TransitionEvent({
    num elapsedTime,
    String propertyName,
    String pseudoElement,
  });
}

@JS(r'TransitionEvent')
external ITransitionEvent JTransitionEvent;

@JS()
@anonymous
class TreeWalker {
  external Node get currentNode;
  external set currentNode(Node value);
  external NodeFilter? get filter;
  external Node get root;
  external num get whatToShow;
  external Node? firstChild();
  external Node? lastChild();
  external Node? nextNode();
  external Node? nextSibling();
  external Node? parentNode();
  external Node? previousNode();
  external Node? previousSibling();
  external factory TreeWalker({
    Node currentNode,
    NodeFilter? filter,
    Node root,
    num whatToShow,
  });
}

@JS(r'TreeWalker')
external ITreeWalker JTreeWalker;

@JS()
@anonymous
class UIEvent extends Event {
  external num get detail;
  external Window? get view;
  external num get which;
  external void initUIEvent(String typeArg, bool bubblesArg, bool cancelableArg, Window? viewArg, num detailArg);
  external factory UIEvent({
    num detail,
    Window? view,
    num which,
  });
}

@JS(r'UIEvent')
external IUIEvent JUIEvent;

@JS()
@anonymous
class URL {
  external String get hash;
  external set hash(String value);
  external String get host;
  external set host(String value);
  external String get hostname;
  external set hostname(String value);
  external String get href;
  external set href(String value);
  @override
  external String toString();
  external String get origin;
  external String get password;
  external set password(String value);
  external String get pathname;
  external set pathname(String value);
  external String get port;
  external set port(String value);
  external String get protocol;
  external set protocol(String value);
  external String get search;
  external set search(String value);
  external URLSearchParams get searchParams;
  external String get username;
  external set username(String value);
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
typedef webkitURL = Url;
@JS(r'webkitURL')
external dynamic webkitURL;

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
class VTTCue extends TextTrackCue {
  external AlignSetting get align;
  external set align(AlignSetting value);
  external LineAndPositionSetting get line;
  external set line(LineAndPositionSetting value);
  external LineAlignSetting get lineAlign;
  external set lineAlign(LineAlignSetting value);
  external LineAndPositionSetting get position;
  external set position(LineAndPositionSetting value);
  external PositionAlignSetting get positionAlign;
  external set positionAlign(PositionAlignSetting value);
  external VttRegion? get region;
  external set region(VttRegion? value);
  external num get size;
  external set size(num value);
  external bool get snapToLines;
  external set snapToLines(bool value);
  external String get text;
  external set text(String value);
  external DirectionSetting get vertical;
  external set vertical(DirectionSetting value);
  external DocumentFragment getCueAsHTML();
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory VTTCue({
    AlignSetting align,
    LineAndPositionSetting line,
    LineAlignSetting lineAlign,
    LineAndPositionSetting position,
    PositionAlignSetting positionAlign,
    VttRegion? region,
    num size,
    bool snapToLines,
    String text,
    DirectionSetting vertical,
  });
}

@JS(r'VTTCue')
external IVTTCue JVTTCue;

@JS()
@anonymous
class VTTRegion {
  external String get id;
  external set id(String value);
  external num get lines;
  external set lines(num value);
  external num get regionAnchorX;
  external set regionAnchorX(num value);
  external num get regionAnchorY;
  external set regionAnchorY(num value);
  external ScrollSetting get scroll;
  external set scroll(ScrollSetting value);
  external num get viewportAnchorX;
  external set viewportAnchorX(num value);
  external num get viewportAnchorY;
  external set viewportAnchorY(num value);
  external num get width;
  external set width(num value);
  external factory VTTRegion({
    String id,
    num lines,
    num regionAnchorX,
    num regionAnchorY,
    ScrollSetting scroll,
    num viewportAnchorX,
    num viewportAnchorY,
    num width,
  });
}

@JS(r'VTTRegion')
external IVTTRegion JVTTRegion;

@JS()
@anonymous
class ValidityState {
  external bool get badInput;
  external bool get customError;
  external bool get patternMismatch;
  external bool get rangeOverflow;
  external bool get rangeUnderflow;
  external bool get stepMismatch;
  external bool get tooLong;
  external bool get tooShort;
  external bool get typeMismatch;
  external bool get valid;
  external bool get valueMissing;
  external factory ValidityState({
    bool badInput,
    bool customError,
    bool patternMismatch,
    bool rangeOverflow,
    bool rangeUnderflow,
    bool stepMismatch,
    bool tooLong,
    bool tooShort,
    bool typeMismatch,
    bool valid,
    bool valueMissing,
  });
}

@JS(r'ValidityState')
external IValidityState JValidityState;

@JS()
@anonymous
class VideoPlaybackQuality {
  external num get corruptedVideoFrames;
  external DOMHighResTimeStamp get creationTime;
  external num get droppedVideoFrames;
  external num get totalVideoFrames;
  external factory VideoPlaybackQuality({
    num corruptedVideoFrames,
    DOMHighResTimeStamp creationTime,
    num droppedVideoFrames,
    num totalVideoFrames,
  });
}

@JS(r'VideoPlaybackQuality')
external IVideoPlaybackQuality JVideoPlaybackQuality;

@JS()
@anonymous
class VisualViewportEventMap {
  external Event get resize;
  external set resize(Event value);
  external Event get scroll;
  external set scroll(Event value);
  external factory VisualViewportEventMap({
    Event resize,
    Event scroll,
  });
}

@JS()
@anonymous
class VisualViewport extends EventTarget {
  external num get height;
  external num get offsetLeft;
  external num get offsetTop;
  external dynamic Function(Event ev)? get onresize;
  external set onresize(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onscroll;
  external set onscroll(dynamic Function(Event ev)? value);
  external num get pageLeft;
  external num get pageTop;
  external num get scale;
  external num get width;
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory VisualViewport({
    num height,
    num offsetLeft,
    num offsetTop,
    dynamic Function(Event ev)? onresize,
    dynamic Function(Event ev)? onscroll,
    num pageLeft,
    num pageTop,
    num scale,
    num width,
  });
}

@JS(r'VisualViewport')
external IVisualViewport JVisualViewport;

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
class WEBGL_compressed_texture_etc {
  external GLenum get COMPRESSED_R11_EAC;
  external GLenum get COMPRESSED_RG11_EAC;
  external GLenum get COMPRESSED_RGB8_ETC2;
  external GLenum get COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
  external GLenum get COMPRESSED_RGBA8_ETC2_EAC;
  external GLenum get COMPRESSED_SIGNED_R11_EAC;
  external GLenum get COMPRESSED_SIGNED_RG11_EAC;
  external GLenum get COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
  external GLenum get COMPRESSED_SRGB8_ETC2;
  external GLenum get COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
  external factory WEBGL_compressed_texture_etc({
    GLenum COMPRESSED_R11_EAC,
    GLenum COMPRESSED_RG11_EAC,
    GLenum COMPRESSED_RGB8_ETC2,
    GLenum COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2,
    GLenum COMPRESSED_RGBA8_ETC2_EAC,
    GLenum COMPRESSED_SIGNED_R11_EAC,
    GLenum COMPRESSED_SIGNED_RG11_EAC,
    GLenum COMPRESSED_SRGB8_ALPHA8_ETC2_EAC,
    GLenum COMPRESSED_SRGB8_ETC2,
    GLenum COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2,
  });
}

@JS()
@anonymous
class WEBGL_compressed_texture_etc1 {
  external GLenum get COMPRESSED_RGB_ETC1_WEBGL;
  external factory WEBGL_compressed_texture_etc1({
    GLenum COMPRESSED_RGB_ETC1_WEBGL,
  });
}

@JS()
@anonymous
class WEBGL_compressed_texture_pvrtc {
  external GLenum get COMPRESSED_RGBA_PVRTC_2BPPV1_IMG;
  external GLenum get COMPRESSED_RGBA_PVRTC_4BPPV1_IMG;
  external GLenum get COMPRESSED_RGB_PVRTC_2BPPV1_IMG;
  external GLenum get COMPRESSED_RGB_PVRTC_4BPPV1_IMG;
  external factory WEBGL_compressed_texture_pvrtc({
    GLenum COMPRESSED_RGBA_PVRTC_2BPPV1_IMG,
    GLenum COMPRESSED_RGBA_PVRTC_4BPPV1_IMG,
    GLenum COMPRESSED_RGB_PVRTC_2BPPV1_IMG,
    GLenum COMPRESSED_RGB_PVRTC_4BPPV1_IMG,
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
class WaveShaperNode extends AudioNode {
  external Float32List? get curve;
  external set curve(Float32List? value);
  external OverSampleType get oversample;
  external set oversample(OverSampleType value);
  external factory WaveShaperNode({
    Float32List? curve,
    OverSampleType oversample,
  });
}

@JS(r'WaveShaperNode')
external IWaveShaperNode JWaveShaperNode;

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
  external CloseEvent get close;
  external set close(CloseEvent value);
  external Event get error;
  external set error(Event value);
  external MessageEvent get message;
  external set message(MessageEvent value);
  external Event get open;
  external set open(Event value);
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
  external BinaryType get binaryType;
  external set binaryType(BinaryType value);
  external num get bufferedAmount;
  external String get extensions;
  external dynamic Function(CloseEvent ev)? get onclose;
  external set onclose(dynamic Function(CloseEvent ev)? value);
  external dynamic Function(Event ev)? get onerror;
  external set onerror(dynamic Function(Event ev)? value);
  external dynamic Function(MessageEvent ev)? get onmessage;
  external set onmessage(dynamic Function(MessageEvent ev)? value);
  external dynamic Function(Event ev)? get onopen;
  external set onopen(dynamic Function(Event ev)? value);
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
class WheelEvent extends MouseEvent {
  external num get deltaMode;
  external num get deltaX;
  external num get deltaY;
  external num get deltaZ;
  external num get DOM_DELTA_LINE;
  external num get DOM_DELTA_PAGE;
  external num get DOM_DELTA_PIXEL;
  external factory WheelEvent({
    num deltaMode,
    num deltaX,
    num deltaY,
    num deltaZ,
    num DOM_DELTA_LINE,
    num DOM_DELTA_PAGE,
    num DOM_DELTA_PIXEL,
  });
}

@JS(r'WheelEvent')
external IWheelEvent JWheelEvent;

@JS()
@anonymous
class WindowEventMap extends GlobalEventHandlersEventMap {
  external DeviceMotionEvent get devicemotion;
  external set devicemotion(DeviceMotionEvent value);
  external DeviceOrientationEvent get deviceorientation;
  external set deviceorientation(DeviceOrientationEvent value);
  external GamepadEvent get gamepadconnected;
  external set gamepadconnected(GamepadEvent value);
  external GamepadEvent get gamepaddisconnected;
  external set gamepaddisconnected(GamepadEvent value);
  external Event get orientationchange;
  external set orientationchange(Event value);
  external factory WindowEventMap({
    DeviceMotionEvent devicemotion,
    DeviceOrientationEvent deviceorientation,
    GamepadEvent gamepadconnected,
    GamepadEvent gamepaddisconnected,
    Event orientationchange,
  });
}

@JS()
@anonymous
class Window extends EventTarget {
  external Document get HTMLDocument;
  external set HTMLDocument(Document value);
  external bool get closed;
  external CustomElementRegistry get customElements;
  external num get devicePixelRatio;
  external Document get document;
  external Event? get event;
  external External get external;
  external Element? get frameElement;
  external WindowProxy get frames;
  external History get history;
  external num get innerHeight;
  external num get innerWidth;
  external num get length;
  external Location get location;
  external BarProp get locationbar;
  external BarProp get menubar;
  external String get name;
  external set name(String value);
  external Navigator get navigator;
  external dynamic Function(DeviceMotionEvent ev)? get ondevicemotion;
  external set ondevicemotion(dynamic Function(DeviceMotionEvent ev)? value);
  external dynamic Function(DeviceOrientationEvent ev)? get ondeviceorientation;
  external set ondeviceorientation(dynamic Function(DeviceOrientationEvent ev)? value);
  external dynamic Function(Event ev)? get onorientationchange;
  external set onorientationchange(dynamic Function(Event ev)? value);
  external dynamic get opener;
  external set opener(dynamic value);
  external num get orientation;
  external num get outerHeight;
  external num get outerWidth;
  external num get pageXOffset;
  external num get pageYOffset;
  external WindowProxy? get parent;
  external BarProp get personalbar;
  external Screen get screen;
  external num get screenLeft;
  external num get screenTop;
  external num get screenX;
  external num get screenY;
  external num get scrollX;
  external num get scrollY;
  external BarProp get scrollbars;
  external dynamic get self;
  external SpeechSynthesis get speechSynthesis;
  external String get status;
  external set status(String value);
  external BarProp get statusbar;
  external BarProp get toolbar;
  external WindowProxy? get top;
  external VisualViewport get visualViewport;
  external dynamic get window;
  external void alert(dynamic message);
  external void blur();
  external void cancelIdleCallback(num handle);
  external void captureEvents();
  external void close();
  external bool confirm(String message);
  external void focus();
  external CssStyleDeclaration getComputedStyle(Element elt, String? pseudoElt);
  external Selection? getSelection();
  external MediaQueryList matchMedia(String query);
  external void moveBy(num x, num y);
  external void moveTo(num x, num y);
  external WindowProxy? open(dynamic url, String target, String features);
  external void postMessage(dynamic message, String targetOrigin, List<Transferable> transfer);
  external void print();
  external String? prompt(String message, String _default);
  external void releaseEvents();
  external num requestIdleCallback(IdleRequestCallback callback, IdleRequestOptions options);
  external void resizeBy(num x, num y);
  external void resizeTo(num width, num height);
  external void scroll(ScrollToOptions options);
  external void scrollBy(ScrollToOptions options);
  external void scrollTo(ScrollToOptions options);
  external void stop();
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory Window({
    Document HTMLDocument,
    bool closed,
    CustomElementRegistry customElements,
    num devicePixelRatio,
    Document document,
    Event? event,
    External external,
    Element? frameElement,
    WindowProxy frames,
    History history,
    num innerHeight,
    num innerWidth,
    num length,
    BarProp locationbar,
    BarProp menubar,
    String name,
    Navigator navigator,
    dynamic Function(DeviceMotionEvent ev)? ondevicemotion,
    dynamic Function(DeviceOrientationEvent ev)? ondeviceorientation,
    dynamic Function(Event ev)? onorientationchange,
    dynamic opener,
    num orientation,
    num outerHeight,
    num outerWidth,
    num pageXOffset,
    num pageYOffset,
    WindowProxy? parent,
    BarProp personalbar,
    Screen screen,
    num screenLeft,
    num screenTop,
    num screenX,
    num screenY,
    num scrollX,
    num scrollY,
    BarProp scrollbars,
    dynamic self,
    SpeechSynthesis speechSynthesis,
    String status,
    BarProp statusbar,
    BarProp toolbar,
    WindowProxy? top,
    VisualViewport visualViewport,
    dynamic window,
  });
}

@JS(r'Window')
external IWindow JWindow;

@JS()
@anonymous
class WindowEventHandlersEventMap {
  external Event get afterprint;
  external set afterprint(Event value);
  external Event get beforeprint;
  external set beforeprint(Event value);
  external BeforeUnloadEvent get beforeunload;
  external set beforeunload(BeforeUnloadEvent value);
  external Event get gamepadconnected;
  external set gamepadconnected(Event value);
  external Event get gamepaddisconnected;
  external set gamepaddisconnected(Event value);
  external Event get hashchange;
  external set hashchange(Event value);
  external Event get languagechange;
  external set languagechange(Event value);
  external MessageEvent get message;
  external set message(MessageEvent value);
  external MessageEvent get messageerror;
  external set messageerror(MessageEvent value);
  external Event get offline;
  external set offline(Event value);
  external Event get online;
  external set online(Event value);
  external PageTransitionEvent get pagehide;
  external set pagehide(PageTransitionEvent value);
  external PageTransitionEvent get pageshow;
  external set pageshow(PageTransitionEvent value);
  external PopStateEvent get popstate;
  external set popstate(PopStateEvent value);
  external PromiseRejectionEvent get rejectionhandled;
  external set rejectionhandled(PromiseRejectionEvent value);
  external StorageEvent get storage;
  external set storage(StorageEvent value);
  external PromiseRejectionEvent get unhandledrejection;
  external set unhandledrejection(PromiseRejectionEvent value);
  external Event get unload;
  external set unload(Event value);
  external factory WindowEventHandlersEventMap({
    Event afterprint,
    Event beforeprint,
    BeforeUnloadEvent beforeunload,
    Event gamepadconnected,
    Event gamepaddisconnected,
    Event hashchange,
    Event languagechange,
    MessageEvent message,
    MessageEvent messageerror,
    Event offline,
    Event online,
    PageTransitionEvent pagehide,
    PageTransitionEvent pageshow,
    PopStateEvent popstate,
    PromiseRejectionEvent rejectionhandled,
    StorageEvent storage,
    PromiseRejectionEvent unhandledrejection,
    Event unload,
  });
}

@JS()
@anonymous
class WindowEventHandlers {
  external dynamic Function(Event ev)? get onafterprint;
  external set onafterprint(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onbeforeprint;
  external set onbeforeprint(dynamic Function(Event ev)? value);
  external dynamic Function(BeforeUnloadEvent ev)? get onbeforeunload;
  external set onbeforeunload(dynamic Function(BeforeUnloadEvent ev)? value);
  external dynamic Function(Event ev)? get ongamepadconnected;
  external set ongamepadconnected(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get ongamepaddisconnected;
  external set ongamepaddisconnected(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onhashchange;
  external set onhashchange(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get onlanguagechange;
  external set onlanguagechange(dynamic Function(Event ev)? value);
  external dynamic Function(MessageEvent ev)? get onmessage;
  external set onmessage(dynamic Function(MessageEvent ev)? value);
  external dynamic Function(MessageEvent ev)? get onmessageerror;
  external set onmessageerror(dynamic Function(MessageEvent ev)? value);
  external dynamic Function(Event ev)? get onoffline;
  external set onoffline(dynamic Function(Event ev)? value);
  external dynamic Function(Event ev)? get ononline;
  external set ononline(dynamic Function(Event ev)? value);
  external dynamic Function(PageTransitionEvent ev)? get onpagehide;
  external set onpagehide(dynamic Function(PageTransitionEvent ev)? value);
  external dynamic Function(PageTransitionEvent ev)? get onpageshow;
  external set onpageshow(dynamic Function(PageTransitionEvent ev)? value);
  external dynamic Function(PopStateEvent ev)? get onpopstate;
  external set onpopstate(dynamic Function(PopStateEvent ev)? value);
  external dynamic Function(PromiseRejectionEvent ev)? get onrejectionhandled;
  external set onrejectionhandled(dynamic Function(PromiseRejectionEvent ev)? value);
  external dynamic Function(StorageEvent ev)? get onstorage;
  external set onstorage(dynamic Function(StorageEvent ev)? value);
  external dynamic Function(PromiseRejectionEvent ev)? get onunhandledrejection;
  external set onunhandledrejection(dynamic Function(PromiseRejectionEvent ev)? value);
  external dynamic Function(Event ev)? get onunload;
  external set onunload(dynamic Function(Event ev)? value);
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory WindowEventHandlers({
    dynamic Function(Event ev)? onafterprint,
    dynamic Function(Event ev)? onbeforeprint,
    dynamic Function(BeforeUnloadEvent ev)? onbeforeunload,
    dynamic Function(Event ev)? ongamepadconnected,
    dynamic Function(Event ev)? ongamepaddisconnected,
    dynamic Function(Event ev)? onhashchange,
    dynamic Function(Event ev)? onlanguagechange,
    dynamic Function(MessageEvent ev)? onmessage,
    dynamic Function(MessageEvent ev)? onmessageerror,
    dynamic Function(Event ev)? onoffline,
    dynamic Function(Event ev)? ononline,
    dynamic Function(PageTransitionEvent ev)? onpagehide,
    dynamic Function(PageTransitionEvent ev)? onpageshow,
    dynamic Function(PopStateEvent ev)? onpopstate,
    dynamic Function(PromiseRejectionEvent ev)? onrejectionhandled,
    dynamic Function(StorageEvent ev)? onstorage,
    dynamic Function(PromiseRejectionEvent ev)? onunhandledrejection,
    dynamic Function(Event ev)? onunload,
  });
}

@JS()
@anonymous
class WindowLocalStorage {
  external Storage get localStorage;
  external factory WindowLocalStorage({
    Storage localStorage,
  });
}

@JS()
@anonymous
class WindowOrWorkerGlobalScope {
  external CacheStorage get caches;
  external bool get crossOriginIsolated;
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
    bool crossOriginIsolated,
    Crypto crypto,
    IdbFactory indexedDB,
    bool isSecureContext,
    String origin,
    Performance performance,
  });
}

@JS()
@anonymous
class WindowSessionStorage {
  external Storage get sessionStorage;
  external factory WindowSessionStorage({
    Storage sessionStorage,
  });
}

@JS()
@anonymous
class WorkerEventMap extends AbstractWorkerEventMap {
  external MessageEvent get message;
  external set message(MessageEvent value);
  external MessageEvent get messageerror;
  external set messageerror(MessageEvent value);
  external factory WorkerEventMap({
    MessageEvent message,
    MessageEvent messageerror,
  });
}

@JS()
@anonymous
class Worker extends EventTarget {
  external dynamic Function(MessageEvent ev)? get onmessage;
  external set onmessage(dynamic Function(MessageEvent ev)? value);
  external dynamic Function(MessageEvent ev)? get onmessageerror;
  external set onmessageerror(dynamic Function(MessageEvent ev)? value);
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
class Worklet {
  external Promise<void> addModule(dynamic moduleURL, WorkletOptions options);
  external factory Worklet();
}

@JS(r'Worklet')
external IWorklet JWorklet;

@JS()
@anonymous
class WritableStream<W> {
  external bool get locked;
  external Promise<void> abort(dynamic reason);
  external Promise<void> close();
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
class XMLDocument extends Document {
  external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
  external factory XMLDocument();
}

@JS(r'XMLDocument')
external IXMLDocument JXMLDocument;

@JS()
@anonymous
class XMLHttpRequestEventMap extends XMLHttpRequestEventTargetEventMap {
  external Event get readystatechange;
  external set readystatechange(Event value);
  external factory XMLHttpRequestEventMap({
    Event readystatechange,
  });
}

@JS()
@anonymous
class XMLHttpRequest extends HttpRequestEventTarget {
  external dynamic Function(Event ev)? get onreadystatechange;
  external set onreadystatechange(dynamic Function(Event ev)? value);
  external num get readyState;
  external dynamic get response;
  external String get responseText;
  external XMLHttpRequestResponseType get responseType;
  external set responseType(XMLHttpRequestResponseType value);
  external String get responseURL;
  external Document? get responseXML;
  external num get status;
  external String get statusText;
  external num get timeout;
  external set timeout(num value);
  external HttpRequestUpload get upload;
  external bool get withCredentials;
  external set withCredentials(bool value);
  external void abort();
  external String getAllResponseHeaders();
  external String? getResponseHeader(String name);
  external void open(String method, dynamic url);
  external void overrideMimeType(String mime);
  external void send(dynamic body);
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
    Document? responseXML,
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
  external ProgressEvent<HttpRequestEventTarget> get abort;
  external set abort(ProgressEvent<HttpRequestEventTarget> value);
  external ProgressEvent<HttpRequestEventTarget> get error;
  external set error(ProgressEvent<HttpRequestEventTarget> value);
  external ProgressEvent<HttpRequestEventTarget> get load;
  external set load(ProgressEvent<HttpRequestEventTarget> value);
  external ProgressEvent<HttpRequestEventTarget> get loadend;
  external set loadend(ProgressEvent<HttpRequestEventTarget> value);
  external ProgressEvent<HttpRequestEventTarget> get loadstart;
  external set loadstart(ProgressEvent<HttpRequestEventTarget> value);
  external ProgressEvent<HttpRequestEventTarget> get progress;
  external set progress(ProgressEvent<HttpRequestEventTarget> value);
  external ProgressEvent<HttpRequestEventTarget> get timeout;
  external set timeout(ProgressEvent<HttpRequestEventTarget> value);
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
  external dynamic Function(ProgressEvent ev)? get onabort;
  external set onabort(dynamic Function(ProgressEvent ev)? value);
  external dynamic Function(ProgressEvent ev)? get onerror;
  external set onerror(dynamic Function(ProgressEvent ev)? value);
  external dynamic Function(ProgressEvent ev)? get onload;
  external set onload(dynamic Function(ProgressEvent ev)? value);
  external dynamic Function(ProgressEvent ev)? get onloadend;
  external set onloadend(dynamic Function(ProgressEvent ev)? value);
  external dynamic Function(ProgressEvent ev)? get onloadstart;
  external set onloadstart(dynamic Function(ProgressEvent ev)? value);
  external dynamic Function(ProgressEvent ev)? get onprogress;
  external set onprogress(dynamic Function(ProgressEvent ev)? value);
  external dynamic Function(ProgressEvent ev)? get ontimeout;
  external set ontimeout(dynamic Function(ProgressEvent ev)? value);
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

@JS()
@anonymous
class XMLSerializer {
  external String serializeToString(Node root);
  external factory XMLSerializer();
}

@JS(r'XMLSerializer')
external IXMLSerializer JXMLSerializer;

@JS()
@anonymous
class XPathEvaluator extends XPathEvaluatorBase {
  external factory XPathEvaluator();
}

@JS(r'XPathEvaluator')
external IXPathEvaluator JXPathEvaluator;

@JS()
@anonymous
class XPathEvaluatorBase {
  external XPathExpression createExpression(String expression, XPathNSResolver? resolver);
  external XPathNSResolver createNSResolver(Node nodeResolver);
  external XPathResult evaluate(
      String expression, Node contextNode, XPathNSResolver? resolver, num type, XPathResult? result);
  external factory XPathEvaluatorBase();
}

@JS()
@anonymous
class XPathExpression {
  external XPathResult evaluate(Node contextNode, num type, XPathResult? result);
  external factory XPathExpression();
}

@JS(r'XPathExpression')
external IXPathExpression JXPathExpression;

@JS()
@anonymous
class XPathResult {
  external bool get booleanValue;
  external bool get invalidIteratorState;
  external num get numberValue;
  external num get resultType;
  external Node? get singleNodeValue;
  external num get snapshotLength;
  external String get stringValue;
  external Node? iterateNext();
  external Node? snapshotItem(num index);
  external num get ANY_TYPE;
  external num get ANY_UNORDERED_NODE_TYPE;
  external num get BOOLEAN_TYPE;
  external num get FIRST_ORDERED_NODE_TYPE;
  external num get NUMBER_TYPE;
  external num get ORDERED_NODE_ITERATOR_TYPE;
  external num get ORDERED_NODE_SNAPSHOT_TYPE;
  external num get STRING_TYPE;
  external num get UNORDERED_NODE_ITERATOR_TYPE;
  external num get UNORDERED_NODE_SNAPSHOT_TYPE;
  external factory XPathResult({
    bool booleanValue,
    bool invalidIteratorState,
    num numberValue,
    num resultType,
    Node? singleNodeValue,
    num snapshotLength,
    String stringValue,
    num ANY_TYPE,
    num ANY_UNORDERED_NODE_TYPE,
    num BOOLEAN_TYPE,
    num FIRST_ORDERED_NODE_TYPE,
    num NUMBER_TYPE,
    num ORDERED_NODE_ITERATOR_TYPE,
    num ORDERED_NODE_SNAPSHOT_TYPE,
    num STRING_TYPE,
    num UNORDERED_NODE_ITERATOR_TYPE,
    num UNORDERED_NODE_SNAPSHOT_TYPE,
  });
}

@JS(r'XPathResult')
external IXPathResult JXPathResult;

@JS()
@anonymous
class XSLTProcessor {
  external void clearParameters();
  external dynamic getParameter(String? namespaceURI, String localName);
  external void importStylesheet(Node style);
  external void removeParameter(String? namespaceURI, String localName);
  external void reset();
  external void setParameter(String? namespaceURI, String localName, dynamic value);
  external Document transformToDocument(Node source);
  external DocumentFragment transformToFragment(Node source, Document output);
  external factory XSLTProcessor();
}

@JS(r'XSLTProcessor')
external IXSLTProcessor JXSLTProcessor;

@JS()
@anonymous
class Console {
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
  external factory Console();
}

@JS(r'console')
external Console console;
@JS(r'CSS.escape')
external String escape(String ident);
@JS(r'CSS.supports')
external bool supports(String property, String value);
@JS(r'CSS.supports')
external bool supports1(String conditionText);

@JS()
@anonymous
class CompileError extends Error {
  external factory CompileError();
}

@JS(r'WebAssembly.CompileError')
external ICompileError JCompileError;

@JS()
@anonymous
class Global {
  external dynamic get value;
  external set value(dynamic value);
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
class LinkError extends Error {
  external factory LinkError();
}

@JS(r'WebAssembly.LinkError')
external ILinkError JLinkError;

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
class RuntimeError extends Error {
  external factory RuntimeError();
}

@JS(r'WebAssembly.RuntimeError')
external IRuntimeError JRuntimeError;

@JS()
@anonymous
class Table {
  external num get length;
  external dynamic get(num index);
  external num grow(num delta, dynamic value);
  external void set(num index, dynamic value);
  external factory Table({
    num length,
  });
}

@JS(r'WebAssembly.Table')
external ITable JTable;

@JS()
@anonymous
class GlobalDescriptor {
  external bool? get mutable;
  external set mutable(bool? value);
  external ValueType get value;
  external set value(ValueType value);
  external factory GlobalDescriptor({
    bool? mutable,
    ValueType value,
  });
}

@JS()
@anonymous
class MemoryDescriptor {
  external num get initial;
  external set initial(num value);
  external num? get maximum;
  external set maximum(num? value);
  external bool? get shared;
  external set shared(bool? value);
  external factory MemoryDescriptor({
    num initial,
    num? maximum,
    bool? shared,
  });
}

@JS()
@anonymous
class ModuleExportDescriptor {
  external ImportExportKind get kind;
  external set kind(ImportExportKind value);
  external String get name;
  external set name(String value);
  external factory ModuleExportDescriptor({
    ImportExportKind kind,
    String name,
  });
}

@JS()
@anonymous
class ModuleImportDescriptor {
  external ImportExportKind get kind;
  external set kind(ImportExportKind value);
  external String get module;
  external set module(String value);
  external String get name;
  external set name(String value);
  external factory ModuleImportDescriptor({
    ImportExportKind kind,
    String module,
    String name,
  });
}

@JS()
@anonymous
class TableDescriptor {
  external TableKind get element;
  external set element(TableKind value);
  external num get initial;
  external set initial(num value);
  external num? get maximum;
  external set maximum(num? value);
  external factory TableDescriptor({
    TableKind element,
    num initial,
    num? maximum,
  });
}

@JS()
@anonymous
class WebAssemblyInstantiatedSource {
  external Instance get instance;
  external set instance(Instance value);
  external Module get module;
  external set module(Module value);
  external factory WebAssemblyInstantiatedSource({
    Instance instance,
    Module module,
  });
}

typedef ImportExportKind = String;
typedef TableKind = String;
typedef ValueType = String;
typedef ExportValue = dynamic;
typedef Exports = Record<String, ExportValue>;
typedef ImportValue = dynamic;
typedef Imports = Record<String, ModuleImports>;
typedef ModuleImports = Record<String, ImportValue>;
@JS(r'WebAssembly.compile')
external Promise<Module> compile(BufferSource bytes);
@JS(r'WebAssembly.compileStreaming')
external Promise<Module> compileStreaming(dynamic source);
@JS(r'WebAssembly.instantiate')
external Promise<WebAssemblyInstantiatedSource> instantiate(BufferSource bytes, Imports importObject);
@JS(r'WebAssembly.instantiate')
external Promise<Instance> instantiate1(Module moduleObject, Imports importObject);
@JS(r'WebAssembly.instantiateStreaming')
external Promise<WebAssemblyInstantiatedSource> instantiateStreaming(dynamic source, Imports importObject);
@JS(r'WebAssembly.validate')
external bool validate(BufferSource bytes);

@JS()
@anonymous
class BlobCallback {
  external factory BlobCallback();
}

@JS()
class CustomElementConstructor {
  external factory CustomElementConstructor([
    dynamic params1,
    dynamic params2,
    dynamic params3,
    dynamic params4,
    dynamic params5,
    dynamic params6,
    dynamic params7,
    dynamic params8,
    dynamic params9,
  ]);
}

@JS()
@anonymous
class DecodeErrorCallback {
  external factory DecodeErrorCallback();
}

@JS()
@anonymous
class DecodeSuccessCallback {
  external factory DecodeSuccessCallback();
}

@JS()
@anonymous
class ErrorCallback {
  external factory ErrorCallback();
}

@JS()
@anonymous
class FileCallback {
  external factory FileCallback();
}

@JS()
@anonymous
class FileSystemEntriesCallback {
  external factory FileSystemEntriesCallback();
}

@JS()
@anonymous
class FileSystemEntryCallback {
  external factory FileSystemEntryCallback();
}

@JS()
@anonymous
class FrameRequestCallback {
  external factory FrameRequestCallback();
}

@JS()
@anonymous
class FunctionStringCallback {
  external factory FunctionStringCallback();
}

@JS()
@anonymous
class IdleRequestCallback {
  external factory IdleRequestCallback();
}

@JS()
@anonymous
class IntersectionObserverCallback {
  external factory IntersectionObserverCallback();
}

@JS()
@anonymous
class MediaSessionActionHandler {
  external factory MediaSessionActionHandler();
}

@JS()
@anonymous
class MutationCallback {
  external factory MutationCallback();
}

@JS()
@anonymous
class NotificationPermissionCallback {
  external factory NotificationPermissionCallback();
}

@JS()
@anonymous
class OnBeforeUnloadEventHandlerNonNull {
  external factory OnBeforeUnloadEventHandlerNonNull();
}

@JS()
@anonymous
class OnErrorEventHandlerNonNull {
  external factory OnErrorEventHandlerNonNull();
}

@JS()
@anonymous
class PerformanceObserverCallback {
  external factory PerformanceObserverCallback();
}

@JS()
@anonymous
class PositionCallback {
  external factory PositionCallback();
}

@JS()
@anonymous
class PositionErrorCallback {
  external factory PositionErrorCallback();
}

@JS()
@anonymous
class QueuingStrategySize<T> {
  external factory QueuingStrategySize();
}

@JS()
@anonymous
class RTCPeerConnectionErrorCallback {
  external factory RTCPeerConnectionErrorCallback();
}

@JS()
@anonymous
class RTCSessionDescriptionCallback {
  external factory RTCSessionDescriptionCallback();
}

@JS()
@anonymous
class RemotePlaybackAvailabilityCallback {
  external factory RemotePlaybackAvailabilityCallback();
}

@JS()
@anonymous
class ResizeObserverCallback {
  external factory ResizeObserverCallback();
}

@JS()
@anonymous
class TransformerFlushCallback<O> {
  external factory TransformerFlushCallback();
}

@JS()
@anonymous
class TransformerStartCallback<O> {
  external factory TransformerStartCallback();
}

@JS()
@anonymous
class TransformerTransformCallback<I, O> {
  external factory TransformerTransformCallback();
}

@JS()
@anonymous
class UnderlyingSinkAbortCallback {
  external factory UnderlyingSinkAbortCallback();
}

@JS()
@anonymous
class UnderlyingSinkCloseCallback {
  external factory UnderlyingSinkCloseCallback();
}

@JS()
@anonymous
class UnderlyingSinkStartCallback {
  external factory UnderlyingSinkStartCallback();
}

@JS()
@anonymous
class UnderlyingSinkWriteCallback<W> {
  external factory UnderlyingSinkWriteCallback();
}

@JS()
@anonymous
class UnderlyingSourceCancelCallback {
  external factory UnderlyingSourceCancelCallback();
}

@JS()
@anonymous
class UnderlyingSourcePullCallback<R> {
  external factory UnderlyingSourcePullCallback();
}

@JS()
@anonymous
class UnderlyingSourceStartCallback<R> {
  external factory UnderlyingSourceStartCallback();
}

@JS()
@anonymous
class VoidFunction {
  external factory VoidFunction();
}

@JS()
@anonymous
class HTMLElementTagNameMap {
  external AnchorElement get a;
  external set a(AnchorElement value);
  external HtmlElement get abbr;
  external set abbr(HtmlElement value);
  external HtmlElement get address;
  external set address(HtmlElement value);
  external AreaElement get area;
  external set area(AreaElement value);
  external HtmlElement get article;
  external set article(HtmlElement value);
  external HtmlElement get aside;
  external set aside(HtmlElement value);
  external AudioElement get audio;
  external set audio(AudioElement value);
  external HtmlElement get b;
  external set b(HtmlElement value);
  external BaseElement get base;
  external set base(BaseElement value);
  external HtmlElement get bdi;
  external set bdi(HtmlElement value);
  external HtmlElement get bdo;
  external set bdo(HtmlElement value);
  external QuoteElement get blockquote;
  external set blockquote(QuoteElement value);
  external BodyElement get body;
  external set body(BodyElement value);
  external BRElement get br;
  external set br(BRElement value);
  external ButtonElement get button;
  external set button(ButtonElement value);
  external CanvasElement get canvas;
  external set canvas(CanvasElement value);
  external TableCaptionElement get caption;
  external set caption(TableCaptionElement value);
  external HtmlElement get cite;
  external set cite(HtmlElement value);
  external HtmlElement get code;
  external set code(HtmlElement value);
  external TableColElement get col;
  external set col(TableColElement value);
  external TableColElement get colgroup;
  external set colgroup(TableColElement value);
  external HTMLDataElement get data;
  external set data(HTMLDataElement value);
  external DataListElement get datalist;
  external set datalist(DataListElement value);
  external HtmlElement get dd;
  external set dd(HtmlElement value);
  external ModElement get del;
  external set del(ModElement value);
  external DetailsElement get details;
  external set details(DetailsElement value);
  external HtmlElement get dfn;
  external set dfn(HtmlElement value);
  external DialogElement get dialog;
  external set dialog(DialogElement value);
  external HTMLDirectoryElement get dir;
  external set dir(HTMLDirectoryElement value);
  external DivElement get div;
  external set div(DivElement value);
  external DListElement get dl;
  external set dl(DListElement value);
  external HtmlElement get dt;
  external set dt(HtmlElement value);
  external HtmlElement get em;
  external set em(HtmlElement value);
  external EmbedElement get embed;
  external set embed(EmbedElement value);
  external FieldSetElement get fieldset;
  external set fieldset(FieldSetElement value);
  external HtmlElement get figcaption;
  external set figcaption(HtmlElement value);
  external HtmlElement get figure;
  external set figure(HtmlElement value);
  external HTMLFontElement get font;
  external set font(HTMLFontElement value);
  external HtmlElement get footer;
  external set footer(HtmlElement value);
  external FormElement get form;
  external set form(FormElement value);
  external HTMLFrameElement get frame;
  external set frame(HTMLFrameElement value);
  external HTMLFrameSetElement get frameset;
  external set frameset(HTMLFrameSetElement value);
  external HeadingElement get h1;
  external set h1(HeadingElement value);
  external HeadingElement get h2;
  external set h2(HeadingElement value);
  external HeadingElement get h3;
  external set h3(HeadingElement value);
  external HeadingElement get h4;
  external set h4(HeadingElement value);
  external HeadingElement get h5;
  external set h5(HeadingElement value);
  external HeadingElement get h6;
  external set h6(HeadingElement value);
  external HeadElement get head;
  external set head(HeadElement value);
  external HtmlElement get header;
  external set header(HtmlElement value);
  external HtmlElement get hgroup;
  external set hgroup(HtmlElement value);
  external HRElement get hr;
  external set hr(HRElement value);
  external HtmlHtmlElement get html;
  external set html(HtmlHtmlElement value);
  external HtmlElement get i;
  external set i(HtmlElement value);
  external IFrameElement get iframe;
  external set iframe(IFrameElement value);
  external ImageElement get img;
  external set img(ImageElement value);
  external InputElement get input;
  external set input(InputElement value);
  external ModElement get ins;
  external set ins(ModElement value);
  external HtmlElement get kbd;
  external set kbd(HtmlElement value);
  external LabelElement get label;
  external set label(LabelElement value);
  external LegendElement get legend;
  external set legend(LegendElement value);
  external LIElement get li;
  external set li(LIElement value);
  external LinkElement get link;
  external set link(LinkElement value);
  external HtmlElement get main;
  external set main(HtmlElement value);
  external MapElement get map;
  external set map(MapElement value);
  external HtmlElement get mark;
  external set mark(HtmlElement value);
  external HTMLMarqueeElement get marquee;
  external set marquee(HTMLMarqueeElement value);
  external MenuElement get menu;
  external set menu(MenuElement value);
  external MetaElement get meta;
  external set meta(MetaElement value);
  external MeterElement get meter;
  external set meter(MeterElement value);
  external HtmlElement get nav;
  external set nav(HtmlElement value);
  external HtmlElement get noscript;
  external set noscript(HtmlElement value);
  external ObjectElement get object;
  external set object(ObjectElement value);
  external OListElement get ol;
  external set ol(OListElement value);
  external OptGroupElement get optgroup;
  external set optgroup(OptGroupElement value);
  external OptionElement get option;
  external set option(OptionElement value);
  external OutputElement get output;
  external set output(OutputElement value);
  external ParagraphElement get p;
  external set p(ParagraphElement value);
  external ParamElement get param;
  external set param(ParamElement value);
  external PictureElement get picture;
  external set picture(PictureElement value);
  external PreElement get pre;
  external set pre(PreElement value);
  external ProgressElement get progress;
  external set progress(ProgressElement value);
  external QuoteElement get q;
  external set q(QuoteElement value);
  external HtmlElement get rp;
  external set rp(HtmlElement value);
  external HtmlElement get rt;
  external set rt(HtmlElement value);
  external HtmlElement get ruby;
  external set ruby(HtmlElement value);
  external HtmlElement get s;
  external set s(HtmlElement value);
  external HtmlElement get samp;
  external set samp(HtmlElement value);
  external ScriptElement get script;
  external set script(ScriptElement value);
  external HtmlElement get section;
  external set section(HtmlElement value);
  external SelectElement get select;
  external set select(SelectElement value);
  external HTMLSlotElement get slot;
  external set slot(HTMLSlotElement value);
  external HtmlElement get small;
  external set small(HtmlElement value);
  external SourceElement get source;
  external set source(SourceElement value);
  external SpanElement get span;
  external set span(SpanElement value);
  external HtmlElement get strong;
  external set strong(HtmlElement value);
  external StyleElement get style;
  external set style(StyleElement value);
  external HtmlElement get sub;
  external set sub(HtmlElement value);
  external HtmlElement get summary;
  external set summary(HtmlElement value);
  external HtmlElement get sup;
  external set sup(HtmlElement value);
  external TableElement get table;
  external set table(TableElement value);
  external TableSectionElement get tbody;
  external set tbody(TableSectionElement value);
  external TableCellElement get td;
  external set td(TableCellElement value);
  external TemplateElement get template;
  external set template(TemplateElement value);
  external TextAreaElement get textarea;
  external set textarea(TextAreaElement value);
  external TableSectionElement get tfoot;
  external set tfoot(TableSectionElement value);
  external TableCellElement get th;
  external set th(TableCellElement value);
  external TableSectionElement get thead;
  external set thead(TableSectionElement value);
  external HTMLTimeElement get time;
  external set time(HTMLTimeElement value);
  external TitleElement get title;
  external set title(TitleElement value);
  external TableRowElement get tr;
  external set tr(TableRowElement value);
  external TrackElement get track;
  external set track(TrackElement value);
  external HtmlElement get u;
  external set u(HtmlElement value);
  external UListElement get ul;
  external set ul(UListElement value);
  external VideoElement get video;
  external set video(VideoElement value);
  external HtmlElement get wbr;
  external set wbr(HtmlElement value);
  external factory HTMLElementTagNameMap({
    AnchorElement a,
    HtmlElement abbr,
    HtmlElement address,
    AreaElement area,
    HtmlElement article,
    HtmlElement aside,
    AudioElement audio,
    HtmlElement b,
    BaseElement base,
    HtmlElement bdi,
    HtmlElement bdo,
    QuoteElement blockquote,
    BodyElement body,
    BRElement br,
    ButtonElement button,
    CanvasElement canvas,
    TableCaptionElement caption,
    HtmlElement cite,
    HtmlElement code,
    TableColElement col,
    TableColElement colgroup,
    HTMLDataElement data,
    DataListElement datalist,
    HtmlElement dd,
    ModElement del,
    DetailsElement details,
    HtmlElement dfn,
    DialogElement dialog,
    HTMLDirectoryElement dir,
    DivElement div,
    DListElement dl,
    HtmlElement dt,
    HtmlElement em,
    EmbedElement embed,
    FieldSetElement fieldset,
    HtmlElement figcaption,
    HtmlElement figure,
    HTMLFontElement font,
    HtmlElement footer,
    FormElement form,
    HTMLFrameElement frame,
    HTMLFrameSetElement frameset,
    HeadingElement h1,
    HeadingElement h2,
    HeadingElement h3,
    HeadingElement h4,
    HeadingElement h5,
    HeadingElement h6,
    HeadElement head,
    HtmlElement header,
    HtmlElement hgroup,
    HRElement hr,
    HtmlHtmlElement html,
    HtmlElement i,
    IFrameElement iframe,
    ImageElement img,
    InputElement input,
    ModElement ins,
    HtmlElement kbd,
    LabelElement label,
    LegendElement legend,
    LIElement li,
    LinkElement link,
    HtmlElement main,
    MapElement map,
    HtmlElement mark,
    HTMLMarqueeElement marquee,
    MenuElement menu,
    MetaElement meta,
    MeterElement meter,
    HtmlElement nav,
    HtmlElement noscript,
    ObjectElement object,
    OListElement ol,
    OptGroupElement optgroup,
    OptionElement option,
    OutputElement output,
    ParagraphElement p,
    ParamElement param,
    PictureElement picture,
    PreElement pre,
    ProgressElement progress,
    QuoteElement q,
    HtmlElement rp,
    HtmlElement rt,
    HtmlElement ruby,
    HtmlElement s,
    HtmlElement samp,
    ScriptElement script,
    HtmlElement section,
    SelectElement select,
    HTMLSlotElement slot,
    HtmlElement small,
    SourceElement source,
    SpanElement span,
    HtmlElement strong,
    StyleElement style,
    HtmlElement sub,
    HtmlElement summary,
    HtmlElement sup,
    TableElement table,
    TableSectionElement tbody,
    TableCellElement td,
    TemplateElement template,
    TextAreaElement textarea,
    TableSectionElement tfoot,
    TableCellElement th,
    TableSectionElement thead,
    HTMLTimeElement time,
    TitleElement title,
    TableRowElement tr,
    TrackElement track,
    HtmlElement u,
    UListElement ul,
    VideoElement video,
    HtmlElement wbr,
  });
}

@JS()
@anonymous
class HTMLElementDeprecatedTagNameMap {
  external PreElement get listing;
  external set listing(PreElement value);
  external PreElement get xmp;
  external set xmp(PreElement value);
  external factory HTMLElementDeprecatedTagNameMap({
    PreElement listing,
    PreElement xmp,
  });
}

@JS()
@anonymous
class SVGElementTagNameMap {
  external AElement get a;
  external set a(AElement value);
  external AnimateElement get animate;
  external set animate(AnimateElement value);
  external AnimateMotionElement get animateMotion;
  external set animateMotion(AnimateMotionElement value);
  external AnimateTransformElement get animateTransform;
  external set animateTransform(AnimateTransformElement value);
  external CircleElement get circle;
  external set circle(CircleElement value);
  external ClipPathElement get clipPath;
  external set clipPath(ClipPathElement value);
  external DefsElement get defs;
  external set defs(DefsElement value);
  external DescElement get desc;
  external set desc(DescElement value);
  external EllipseElement get ellipse;
  external set ellipse(EllipseElement value);
  external FEBlendElement get feBlend;
  external set feBlend(FEBlendElement value);
  external FEColorMatrixElement get feColorMatrix;
  external set feColorMatrix(FEColorMatrixElement value);
  external FEComponentTransferElement get feComponentTransfer;
  external set feComponentTransfer(FEComponentTransferElement value);
  external FECompositeElement get feComposite;
  external set feComposite(FECompositeElement value);
  external FEConvolveMatrixElement get feConvolveMatrix;
  external set feConvolveMatrix(FEConvolveMatrixElement value);
  external FEDiffuseLightingElement get feDiffuseLighting;
  external set feDiffuseLighting(FEDiffuseLightingElement value);
  external FEDisplacementMapElement get feDisplacementMap;
  external set feDisplacementMap(FEDisplacementMapElement value);
  external FEDistantLightElement get feDistantLight;
  external set feDistantLight(FEDistantLightElement value);
  external SVGFEDropShadowElement get feDropShadow;
  external set feDropShadow(SVGFEDropShadowElement value);
  external FEFloodElement get feFlood;
  external set feFlood(FEFloodElement value);
  external FEFuncAElement get feFuncA;
  external set feFuncA(FEFuncAElement value);
  external FEFuncBElement get feFuncB;
  external set feFuncB(FEFuncBElement value);
  external FEFuncGElement get feFuncG;
  external set feFuncG(FEFuncGElement value);
  external FEFuncRElement get feFuncR;
  external set feFuncR(FEFuncRElement value);
  external FEGaussianBlurElement get feGaussianBlur;
  external set feGaussianBlur(FEGaussianBlurElement value);
  external FEImageElement get feImage;
  external set feImage(FEImageElement value);
  external FEMergeElement get feMerge;
  external set feMerge(FEMergeElement value);
  external FEMergeNodeElement get feMergeNode;
  external set feMergeNode(FEMergeNodeElement value);
  external FEMorphologyElement get feMorphology;
  external set feMorphology(FEMorphologyElement value);
  external FEOffsetElement get feOffset;
  external set feOffset(FEOffsetElement value);
  external FEPointLightElement get fePointLight;
  external set fePointLight(FEPointLightElement value);
  external FESpecularLightingElement get feSpecularLighting;
  external set feSpecularLighting(FESpecularLightingElement value);
  external FESpotLightElement get feSpotLight;
  external set feSpotLight(FESpotLightElement value);
  external FETileElement get feTile;
  external set feTile(FETileElement value);
  external FETurbulenceElement get feTurbulence;
  external set feTurbulence(FETurbulenceElement value);
  external FilterElement get filter;
  external set filter(FilterElement value);
  external ForeignObjectElement get foreignObject;
  external set foreignObject(ForeignObjectElement value);
  external GElement get g;
  external set g(GElement value);
  external ImageElement get image;
  external set image(ImageElement value);
  external LineElement get line;
  external set line(LineElement value);
  external LinearGradientElement get linearGradient;
  external set linearGradient(LinearGradientElement value);
  external MarkerElement get marker;
  external set marker(MarkerElement value);
  external MaskElement get mask;
  external set mask(MaskElement value);
  external MetadataElement get metadata;
  external set metadata(MetadataElement value);
  external SVGMPathElement get mpath;
  external set mpath(SVGMPathElement value);
  external PathElement get path;
  external set path(PathElement value);
  external PatternElement get pattern;
  external set pattern(PatternElement value);
  external PolygonElement get polygon;
  external set polygon(PolygonElement value);
  external PolylineElement get polyline;
  external set polyline(PolylineElement value);
  external RadialGradientElement get radialGradient;
  external set radialGradient(RadialGradientElement value);
  external RectElement get rect;
  external set rect(RectElement value);
  external ScriptElement get script;
  external set script(ScriptElement value);
  external SetElement get set;
  external set set(SetElement value);
  external StopElement get stop;
  external set stop(StopElement value);
  external StyleElement get style;
  external set style(StyleElement value);
  external SvgSvgElement get svg;
  external set svg(SvgSvgElement value);
  external SymbolElement get symbol;
  external set symbol(SymbolElement value);
  external TextElement get text;
  external set text(TextElement value);
  external TextPathElement get textPath;
  external set textPath(TextPathElement value);
  external TitleElement get title;
  external set title(TitleElement value);
  external TSpanElement get tspan;
  external set tspan(TSpanElement value);
  external UseElement get use;
  external set use(UseElement value);
  external ViewElement get view;
  external set view(ViewElement value);
  external factory SVGElementTagNameMap({
    AElement a,
    AnimateElement animate,
    AnimateMotionElement animateMotion,
    AnimateTransformElement animateTransform,
    CircleElement circle,
    ClipPathElement clipPath,
    DefsElement defs,
    DescElement desc,
    EllipseElement ellipse,
    FEBlendElement feBlend,
    FEColorMatrixElement feColorMatrix,
    FEComponentTransferElement feComponentTransfer,
    FECompositeElement feComposite,
    FEConvolveMatrixElement feConvolveMatrix,
    FEDiffuseLightingElement feDiffuseLighting,
    FEDisplacementMapElement feDisplacementMap,
    FEDistantLightElement feDistantLight,
    SVGFEDropShadowElement feDropShadow,
    FEFloodElement feFlood,
    FEFuncAElement feFuncA,
    FEFuncBElement feFuncB,
    FEFuncGElement feFuncG,
    FEFuncRElement feFuncR,
    FEGaussianBlurElement feGaussianBlur,
    FEImageElement feImage,
    FEMergeElement feMerge,
    FEMergeNodeElement feMergeNode,
    FEMorphologyElement feMorphology,
    FEOffsetElement feOffset,
    FEPointLightElement fePointLight,
    FESpecularLightingElement feSpecularLighting,
    FESpotLightElement feSpotLight,
    FETileElement feTile,
    FETurbulenceElement feTurbulence,
    FilterElement filter,
    ForeignObjectElement foreignObject,
    GElement g,
    ImageElement image,
    LineElement line,
    LinearGradientElement linearGradient,
    MarkerElement marker,
    MaskElement mask,
    MetadataElement metadata,
    SVGMPathElement mpath,
    PathElement path,
    PatternElement pattern,
    PolygonElement polygon,
    PolylineElement polyline,
    RadialGradientElement radialGradient,
    RectElement rect,
    ScriptElement script,
    SetElement set,
    StopElement stop,
    StyleElement style,
    SvgSvgElement svg,
    SymbolElement symbol,
    TextElement text,
    TextPathElement textPath,
    TitleElement title,
    TSpanElement tspan,
    UseElement use,
    ViewElement view,
  });
}

typedef ElementTagNameMap = dynamic;
@JS(r'Audio')
external IAudio JAudio;
@JS(r'Image')
external IImage JImage;
@JS(r'Option')
external IOption JOption;
@JS(r'HTMLDocument')
external Document JHTMLDocument;
@JS(r'closed')
external bool closed;
@JS(r'customElements')
external CustomElementRegistry customElements;
@JS(r'devicePixelRatio')
external num devicePixelRatio;
@JS(r'document')
external Document document;
@JS(r'event')
external Event? event;
@JS(r'external')
external External external;
@JS(r'frameElement')
external Element? frameElement;
@JS(r'frames')
external WindowProxy frames;
@JS(r'history')
external History history;
@JS(r'innerHeight')
external num innerHeight;
@JS(r'innerWidth')
external num innerWidth;
@JS(r'length')
external num length;
@JS(r'location')
external Location location;
@JS(r'locationbar')
external BarProp locationbar;
@JS(r'menubar')
external BarProp menubar;
@JS(r'name')
external void name;
@JS(r'navigator')
external Navigator navigator;
@JS(r'ondevicemotion')
external dynamic Function(DeviceMotionEvent ev)? ondevicemotion;
@JS(r'ondeviceorientation')
external dynamic Function(DeviceOrientationEvent ev)? ondeviceorientation;
@JS(r'onorientationchange')
external dynamic Function(Event ev)? onorientationchange;
@JS(r'opener')
external dynamic opener;
@JS(r'orientation')
external num orientation;
@JS(r'outerHeight')
external num outerHeight;
@JS(r'outerWidth')
external num outerWidth;
@JS(r'pageXOffset')
external num pageXOffset;
@JS(r'pageYOffset')
external num pageYOffset;
@JS(r'parent')
external WindowProxy? parent;
@JS(r'personalbar')
external BarProp personalbar;
@JS(r'screen')
external Screen screen;
@JS(r'screenLeft')
external num screenLeft;
@JS(r'screenTop')
external num screenTop;
@JS(r'screenX')
external num screenX;
@JS(r'screenY')
external num screenY;
@JS(r'scrollX')
external num scrollX;
@JS(r'scrollY')
external num scrollY;
@JS(r'scrollbars')
external BarProp scrollbars;
@JS(r'self')
external dynamic self;
@JS(r'speechSynthesis')
external SpeechSynthesis speechSynthesis;
@JS(r'status')
external String status;
@JS(r'statusbar')
external BarProp statusbar;
@JS(r'toolbar')
external BarProp toolbar;
@JS(r'top')
external WindowProxy? top;
@JS(r'visualViewport')
external VisualViewport visualViewport;
@JS(r'window')
external dynamic window;
@JS(r'alert')
external void alert(dynamic message);
@JS(r'blur')
external void blur();
@JS(r'cancelIdleCallback')
external void cancelIdleCallback(num handle);
@JS(r'captureEvents')
external void captureEvents();
@JS(r'close')
external void close();
@JS(r'confirm')
external bool confirm(String message);
@JS(r'focus')
external void focus();
@JS(r'getComputedStyle')
external CssStyleDeclaration getComputedStyle(Element elt, String? pseudoElt);
@JS(r'getSelection')
external Selection? getSelection();
@JS(r'matchMedia')
external MediaQueryList matchMedia(String query);
@JS(r'moveBy')
external void moveBy(num x, num y);
@JS(r'moveTo')
external void moveTo(num x, num y);
@JS(r'open')
external WindowProxy? open(dynamic url, String target, String features);
@JS(r'postMessage')
external void postMessage(dynamic message, String targetOrigin, List<Transferable> transfer);
@JS(r'postMessage')
external void postMessage1(dynamic message, WindowPostMessageOptions options);
@JS(r'print')
external void print();
@JS(r'prompt')
external String? prompt(String message, String _default);
@JS(r'releaseEvents')
external void releaseEvents();
@JS(r'requestIdleCallback')
external num requestIdleCallback(IdleRequestCallback callback, IdleRequestOptions options);
@JS(r'resizeBy')
external void resizeBy(num x, num y);
@JS(r'resizeTo')
external void resizeTo(num width, num height);
@JS(r'scroll')
external void scroll(ScrollToOptions options);
@JS(r'scroll')
external void scroll1(num x, num y);
@JS(r'scrollBy')
external void scrollBy(ScrollToOptions options);
@JS(r'scrollBy')
external void scrollBy1(num x, num y);
@JS(r'scrollTo')
external void scrollTo(ScrollToOptions options);
@JS(r'scrollTo')
external void scrollTo1(num x, num y);
@JS(r'stop')
external void stop();
@JS(r'toString')
external String toString();
@JS(r'dispatchEvent')
external bool dispatchEvent(Event event);
@JS(r'cancelAnimationFrame')
external void cancelAnimationFrame(num handle);
@JS(r'requestAnimationFrame')
external num requestAnimationFrame(FrameRequestCallback callback);
@JS(r'onabort')
external dynamic Function(UIEvent ev)? onabort;
@JS(r'onanimationcancel')
external dynamic Function(AnimationEvent ev)? onanimationcancel;
@JS(r'onanimationend')
external dynamic Function(AnimationEvent ev)? onanimationend;
@JS(r'onanimationiteration')
external dynamic Function(AnimationEvent ev)? onanimationiteration;
@JS(r'onanimationstart')
external dynamic Function(AnimationEvent ev)? onanimationstart;
@JS(r'onauxclick')
external dynamic Function(MouseEvent ev)? onauxclick;
@JS(r'onblur')
external dynamic Function(FocusEvent ev)? onblur;
@JS(r'oncanplay')
external dynamic Function(Event ev)? oncanplay;
@JS(r'oncanplaythrough')
external dynamic Function(Event ev)? oncanplaythrough;
@JS(r'onchange')
external dynamic Function(Event ev)? onchange;
@JS(r'onclick')
external dynamic Function(MouseEvent ev)? onclick;
@JS(r'onclose')
external dynamic Function(Event ev)? onclose;
@JS(r'oncontextmenu')
external dynamic Function(MouseEvent ev)? oncontextmenu;
@JS(r'oncuechange')
external dynamic Function(Event ev)? oncuechange;
@JS(r'ondblclick')
external dynamic Function(MouseEvent ev)? ondblclick;
@JS(r'ondrag')
external dynamic Function(DragEvent ev)? ondrag;
@JS(r'ondragend')
external dynamic Function(DragEvent ev)? ondragend;
@JS(r'ondragenter')
external dynamic Function(DragEvent ev)? ondragenter;
@JS(r'ondragleave')
external dynamic Function(DragEvent ev)? ondragleave;
@JS(r'ondragover')
external dynamic Function(DragEvent ev)? ondragover;
@JS(r'ondragstart')
external dynamic Function(DragEvent ev)? ondragstart;
@JS(r'ondrop')
external dynamic Function(DragEvent ev)? ondrop;
@JS(r'ondurationchange')
external dynamic Function(Event ev)? ondurationchange;
@JS(r'onemptied')
external dynamic Function(Event ev)? onemptied;
@JS(r'onended')
external dynamic Function(Event ev)? onended;
@JS(r'onerror')
external OnErrorEventHandler onerror;
@JS(r'onfocus')
external dynamic Function(FocusEvent ev)? onfocus;
@JS(r'onformdata')
external dynamic Function(FormDataEvent ev)? onformdata;
@JS(r'ongotpointercapture')
external dynamic Function(PointerEvent ev)? ongotpointercapture;
@JS(r'oninput')
external dynamic Function(Event ev)? oninput;
@JS(r'oninvalid')
external dynamic Function(Event ev)? oninvalid;
@JS(r'onkeydown')
external dynamic Function(KeyboardEvent ev)? onkeydown;
@JS(r'onkeypress')
external dynamic Function(KeyboardEvent ev)? onkeypress;
@JS(r'onkeyup')
external dynamic Function(KeyboardEvent ev)? onkeyup;
@JS(r'onload')
external dynamic Function(Event ev)? onload;
@JS(r'onloadeddata')
external dynamic Function(Event ev)? onloadeddata;
@JS(r'onloadedmetadata')
external dynamic Function(Event ev)? onloadedmetadata;
@JS(r'onloadstart')
external dynamic Function(Event ev)? onloadstart;
@JS(r'onlostpointercapture')
external dynamic Function(PointerEvent ev)? onlostpointercapture;
@JS(r'onmousedown')
external dynamic Function(MouseEvent ev)? onmousedown;
@JS(r'onmouseenter')
external dynamic Function(MouseEvent ev)? onmouseenter;
@JS(r'onmouseleave')
external dynamic Function(MouseEvent ev)? onmouseleave;
@JS(r'onmousemove')
external dynamic Function(MouseEvent ev)? onmousemove;
@JS(r'onmouseout')
external dynamic Function(MouseEvent ev)? onmouseout;
@JS(r'onmouseover')
external dynamic Function(MouseEvent ev)? onmouseover;
@JS(r'onmouseup')
external dynamic Function(MouseEvent ev)? onmouseup;
@JS(r'onpause')
external dynamic Function(Event ev)? onpause;
@JS(r'onplay')
external dynamic Function(Event ev)? onplay;
@JS(r'onplaying')
external dynamic Function(Event ev)? onplaying;
@JS(r'onpointercancel')
external dynamic Function(PointerEvent ev)? onpointercancel;
@JS(r'onpointerdown')
external dynamic Function(PointerEvent ev)? onpointerdown;
@JS(r'onpointerenter')
external dynamic Function(PointerEvent ev)? onpointerenter;
@JS(r'onpointerleave')
external dynamic Function(PointerEvent ev)? onpointerleave;
@JS(r'onpointermove')
external dynamic Function(PointerEvent ev)? onpointermove;
@JS(r'onpointerout')
external dynamic Function(PointerEvent ev)? onpointerout;
@JS(r'onpointerover')
external dynamic Function(PointerEvent ev)? onpointerover;
@JS(r'onpointerup')
external dynamic Function(PointerEvent ev)? onpointerup;
@JS(r'onprogress')
external dynamic Function(ProgressEvent ev)? onprogress;
@JS(r'onratechange')
external dynamic Function(Event ev)? onratechange;
@JS(r'onreset')
external dynamic Function(Event ev)? onreset;
@JS(r'onresize')
external dynamic Function(UIEvent ev)? onresize;
@JS(r'onscroll')
external dynamic Function(Event ev)? onscroll;
@JS(r'onseeked')
external dynamic Function(Event ev)? onseeked;
@JS(r'onseeking')
external dynamic Function(Event ev)? onseeking;
@JS(r'onselect')
external dynamic Function(Event ev)? onselect;
@JS(r'onselectionchange')
external dynamic Function(Event ev)? onselectionchange;
@JS(r'onselectstart')
external dynamic Function(Event ev)? onselectstart;
@JS(r'onstalled')
external dynamic Function(Event ev)? onstalled;
@JS(r'onsubmit')
external dynamic Function(Event ev)? onsubmit;
@JS(r'onsuspend')
external dynamic Function(Event ev)? onsuspend;
@JS(r'ontimeupdate')
external dynamic Function(Event ev)? ontimeupdate;
@JS(r'ontoggle')
external dynamic Function(Event ev)? ontoggle;
@JS(r'ontouchcancel')
external dynamic Function(TouchEvent ev)? ontouchcancel;
@JS(r'ontouchend')
external dynamic Function(TouchEvent ev)? ontouchend;
@JS(r'ontouchmove')
external dynamic Function(TouchEvent ev)? ontouchmove;
@JS(r'ontouchstart')
external dynamic Function(TouchEvent ev)? ontouchstart;
@JS(r'ontransitioncancel')
external dynamic Function(TransitionEvent ev)? ontransitioncancel;
@JS(r'ontransitionend')
external dynamic Function(TransitionEvent ev)? ontransitionend;
@JS(r'ontransitionrun')
external dynamic Function(TransitionEvent ev)? ontransitionrun;
@JS(r'ontransitionstart')
external dynamic Function(TransitionEvent ev)? ontransitionstart;
@JS(r'onvolumechange')
external dynamic Function(Event ev)? onvolumechange;
@JS(r'onwaiting')
external dynamic Function(Event ev)? onwaiting;
@JS(r'onwebkitanimationend')
external dynamic Function(Event ev)? onwebkitanimationend;
@JS(r'onwebkitanimationiteration')
external dynamic Function(Event ev)? onwebkitanimationiteration;
@JS(r'onwebkitanimationstart')
external dynamic Function(Event ev)? onwebkitanimationstart;
@JS(r'onwebkittransitionend')
external dynamic Function(Event ev)? onwebkittransitionend;
@JS(r'onwheel')
external dynamic Function(WheelEvent ev)? onwheel;
@JS(r'onafterprint')
external dynamic Function(Event ev)? onafterprint;
@JS(r'onbeforeprint')
external dynamic Function(Event ev)? onbeforeprint;
@JS(r'onbeforeunload')
external dynamic Function(BeforeUnloadEvent ev)? onbeforeunload;
@JS(r'ongamepadconnected')
external dynamic Function(Event ev)? ongamepadconnected;
@JS(r'ongamepaddisconnected')
external dynamic Function(Event ev)? ongamepaddisconnected;
@JS(r'onhashchange')
external dynamic Function(Event ev)? onhashchange;
@JS(r'onlanguagechange')
external dynamic Function(Event ev)? onlanguagechange;
@JS(r'onmessage')
external dynamic Function(MessageEvent ev)? onmessage;
@JS(r'onmessageerror')
external dynamic Function(MessageEvent ev)? onmessageerror;
@JS(r'onoffline')
external dynamic Function(Event ev)? onoffline;
@JS(r'ononline')
external dynamic Function(Event ev)? ononline;
@JS(r'onpagehide')
external dynamic Function(PageTransitionEvent ev)? onpagehide;
@JS(r'onpageshow')
external dynamic Function(PageTransitionEvent ev)? onpageshow;
@JS(r'onpopstate')
external dynamic Function(PopStateEvent ev)? onpopstate;
@JS(r'onrejectionhandled')
external dynamic Function(PromiseRejectionEvent ev)? onrejectionhandled;
@JS(r'onstorage')
external dynamic Function(StorageEvent ev)? onstorage;
@JS(r'onunhandledrejection')
external dynamic Function(PromiseRejectionEvent ev)? onunhandledrejection;
@JS(r'onunload')
external dynamic Function(Event ev)? onunload;
@JS(r'localStorage')
external Storage localStorage;
@JS(r'caches')
external CacheStorage caches;
@JS(r'crossOriginIsolated')
external bool crossOriginIsolated;
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
@JS(r'sessionStorage')
external Storage sessionStorage;
@JS(r'addEventListener')
external void addEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
@JS(r'addEventListener')
external void addEventListener1(String type, EventListenerOrEventListenerObject listener, dynamic options);
@JS(r'removeEventListener')
external void removeEventListener<K extends String>(K type, dynamic Function(dynamic ev) listener, dynamic options);
@JS(r'removeEventListener')
external void removeEventListener1(String type, EventListenerOrEventListenerObject listener, dynamic options);
typedef AlgorithmIdentifier = dynamic;
typedef BigInteger = Uint8List;
typedef BinaryData = dynamic;
typedef BlobPart = dynamic;
typedef BodyInit = dynamic;
typedef BufferSource = dynamic;
typedef COSEAlgorithmIdentifier = num;
typedef CanvasImageSource = dynamic;
typedef ClipboardItemData = Promise<ClipboardItemDataType>;
typedef ClipboardItemDataType = dynamic;
typedef ClipboardItems = List<ClipboardItem>;
typedef ConstrainBoolean = dynamic;
typedef ConstrainDOMString = dynamic;
typedef ConstrainDouble = dynamic;
typedef ConstrainULong = dynamic;
typedef DOMHighResTimeStamp = num;
typedef DOMTimeStamp = num;
typedef EventListenerOrEventListenerObject = dynamic;
typedef Float32List = dynamic;
typedef FormDataEntryValue = dynamic;
typedef GLbitfield = num;
typedef GLboolean = bool;
typedef GLclampf = num;
typedef GLenum = num;
typedef GLfloat = num;
typedef GLint = num;
typedef GLint64 = num;
typedef GLintptr = num;
typedef GLsizei = num;
typedef GLsizeiptr = num;
typedef GLuint = num;
typedef GLuint64 = num;
typedef HTMLOrSVGImageElement = dynamic;
typedef HTMLOrSVGScriptElement = dynamic;
typedef HashAlgorithmIdentifier = AlgorithmIdentifier;
typedef HeadersInit = dynamic;
typedef IDBValidKey = dynamic;
typedef ImageBitmapSource = dynamic;
typedef InsertPosition = String;
typedef Int32List = dynamic;
typedef LineAndPositionSetting = dynamic;
typedef MediaProvider = dynamic;
typedef MessageEventSource = dynamic;
typedef MutationRecordType = String;
typedef NamedCurve = String;
typedef OnBeforeUnloadEventHandler = OnBeforeUnloadEventHandlerNonNull?;
typedef OnErrorEventHandler = OnErrorEventHandlerNonNull?;
typedef PerformanceEntryList = List<PerformanceEntry>;
typedef ReadableStreamController<T> = ReadableStreamDefaultController<T>;
typedef ReadableStreamDefaultReadResult<T> = dynamic;
typedef ReadableStreamReader<T> = ReadableStreamDefaultReader<T>;
typedef RenderingContext = dynamic;
typedef RequestInfo = dynamic;
typedef TexImageSource = dynamic;
typedef TimerHandler = dynamic;
typedef Transferable = dynamic;
typedef Uint32List = dynamic;
typedef UvmEntries = List<UvmEntry>;
typedef UvmEntry = List<num>;
typedef VibratePattern = dynamic;
typedef WindowProxy = Window;
typedef XMLHttpRequestBodyInit = dynamic;
typedef AlignSetting = String;
typedef AnimationPlayState = String;
typedef AnimationReplaceState = String;
typedef AppendMode = String;
typedef AttestationConveyancePreference = String;
typedef AudioContextLatencyCategory = String;
typedef AudioContextState = String;
typedef AuthenticatorAttachment = String;
typedef AuthenticatorTransport = String;
typedef AutoKeyword = String;
typedef AutomationRate = String;
typedef BinaryType = String;
typedef BiquadFilterType = String;
typedef CanPlayTypeResult = String;
typedef CanvasDirection = String;
typedef CanvasFillRule = String;
typedef CanvasFontKerning = String;
typedef CanvasFontStretch = String;
typedef CanvasFontVariantCaps = String;
typedef CanvasLineCap = String;
typedef CanvasLineJoin = String;
typedef CanvasTextAlign = String;
typedef CanvasTextBaseline = String;
typedef CanvasTextRendering = String;
typedef ChannelCountMode = String;
typedef ChannelInterpretation = String;
typedef ClientTypes = String;
typedef ColorGamut = String;
typedef ColorSpaceConversion = String;
typedef CompositeOperation = String;
typedef CompositeOperationOrAuto = String;
typedef ConnectionType = String;
typedef CredentialMediationRequirement = String;
typedef DOMParserSupportedType = String;
typedef DirectionSetting = String;
typedef DisplayCaptureSurfaceType = String;
typedef DistanceModelType = String;
typedef DocumentReadyState = String;
typedef EndOfStreamError = String;
typedef EndingType = String;
typedef FillMode = String;
typedef FontFaceLoadStatus = String;
typedef FontFaceSetLoadStatus = String;
typedef FullscreenNavigationUI = String;
typedef GamepadHapticActuatorType = String;
typedef GamepadMappingType = String;
typedef HdrMetadataType = String;
typedef IDBCursorDirection = String;
typedef IDBRequestReadyState = String;
typedef IDBTransactionMode = String;
typedef ImageOrientation = String;
typedef ImageSmoothingQuality = String;
typedef IterationCompositeOperation = String;
typedef KeyFormat = String;
typedef KeyType = String;
typedef KeyUsage = String;
typedef LineAlignSetting = String;
typedef MediaDecodingType = String;
typedef MediaDeviceKind = String;
typedef MediaEncodingType = String;
typedef MediaKeyMessageType = String;
typedef MediaKeySessionType = String;
typedef MediaKeyStatus = String;
typedef MediaKeysRequirement = String;
typedef MediaSessionAction = String;
typedef MediaSessionPlaybackState = String;
typedef MediaStreamTrackState = String;
typedef NavigationType = String;
typedef NotificationDirection = String;
typedef NotificationPermission = String;
typedef OrientationLockType = String;
typedef OrientationType = String;
typedef OscillatorType = String;
typedef OverSampleType = String;
typedef PanningModelType = String;
typedef PaymentComplete = String;
typedef PermissionName = String;
typedef PermissionState = String;
typedef PlaybackDirection = String;
typedef PositionAlignSetting = String;
typedef PredefinedColorSpace = String;
typedef PremultiplyAlpha = String;
typedef PresentationStyle = String;
typedef PublicKeyCredentialType = String;
typedef PushEncryptionKeyName = String;
typedef PushPermissionState = String;
typedef RTCBundlePolicy = String;
typedef RTCDataChannelState = String;
typedef RTCDegradationPreference = String;
typedef RTCDtlsTransportState = String;
typedef RTCIceCandidateType = String;
typedef RTCIceComponent = String;
typedef RTCIceConnectionState = String;
typedef RTCIceCredentialType = String;
typedef RTCIceGathererState = String;
typedef RTCIceGatheringState = String;
typedef RTCIceProtocol = String;
typedef RTCIceTcpCandidateType = String;
typedef RTCIceTransportPolicy = String;
typedef RTCIceTransportState = String;
typedef RTCPeerConnectionState = String;
typedef RTCPriorityType = String;
typedef RTCRtcpMuxPolicy = String;
typedef RTCRtpTransceiverDirection = String;
typedef RTCSdpType = String;
typedef RTCSignalingState = String;
typedef RTCStatsIceCandidatePairState = String;
typedef RTCStatsType = String;
typedef ReadyState = String;
typedef RecordingState = String;
typedef ReferrerPolicy = String;
typedef RemotePlaybackState = String;
typedef RequestCache = String;
typedef RequestCredentials = String;
typedef RequestDestination = String;
typedef RequestMode = String;
typedef RequestRedirect = String;
typedef ResidentKeyRequirement = String;
typedef ResizeObserverBoxOptions = String;
typedef ResizeQuality = String;
typedef ResponseType = String;
typedef ScrollBehavior = String;
typedef ScrollLogicalPosition = String;
typedef ScrollRestoration = String;
typedef ScrollSetting = String;
typedef SecurityPolicyViolationEventDisposition = String;
typedef SelectionMode = String;
typedef ServiceWorkerState = String;
typedef ServiceWorkerUpdateViaCache = String;
typedef ShadowRootMode = String;
typedef SlotAssignmentMode = String;
typedef SpeechRecognitionErrorCode = String;
typedef SpeechSynthesisErrorCode = String;
typedef TextTrackKind = String;
typedef TextTrackMode = String;
typedef TouchType = String;
typedef TransferFunction = String;
typedef UserVerificationRequirement = String;
typedef VideoFacingModeEnum = String;
typedef VisibilityState = String;
typedef WebGLPowerPreference = String;
typedef WorkerType = String;
typedef XMLHttpRequestResponseType = String;

@JS()
@anonymous
class IAbortController {
  external AbortController get prototype;
  external set prototype(AbortController value);
  external factory IAbortController();
}

@JS()
@anonymous
class IAbortSignal {
  external AbortSignal get prototype;
  external set prototype(AbortSignal value);
  external factory IAbortSignal();
}

@JS()
@anonymous
class IAbstractRange {
  external AbstractRange get prototype;
  external set prototype(AbstractRange value);
  external factory IAbstractRange();
}

@JS()
@anonymous
class IAnalyserNode {
  external AnalyserNode get prototype;
  external set prototype(AnalyserNode value);
  external factory IAnalyserNode({BaseAudioContext context, AnalyserOptions options});
}

@JS()
@anonymous
class IAnimation {
  external Animation get prototype;
  external set prototype(Animation value);
  external factory IAnimation({AnimationEffect? effect, AnimationTimeline? timeline});
}

@JS()
@anonymous
class IAnimationEffect {
  external AnimationEffect get prototype;
  external set prototype(AnimationEffect value);
  external factory IAnimationEffect();
}

@JS()
@anonymous
class IAnimationEvent {
  external AnimationEvent get prototype;
  external set prototype(AnimationEvent value);
  external factory IAnimationEvent({String type, AnimationEventInit animationEventInitDict});
}

@JS()
@anonymous
class IAnimationPlaybackEvent {
  external AnimationPlaybackEvent get prototype;
  external set prototype(AnimationPlaybackEvent value);
  external factory IAnimationPlaybackEvent({String type, AnimationPlaybackEventInit eventInitDict});
}

@JS()
@anonymous
class IAnimationTimeline {
  external AnimationTimeline get prototype;
  external set prototype(AnimationTimeline value);
  external factory IAnimationTimeline();
}

@JS()
@anonymous
class IAttr {
  external Attr get prototype;
  external set prototype(Attr value);
  external factory IAttr();
}

@JS()
@anonymous
class IAudio {
  external factory IAudio({String src});
}

@JS()
@anonymous
class IAudioBuffer {
  external AudioBuffer get prototype;
  external set prototype(AudioBuffer value);
  external factory IAudioBuffer({AudioBufferOptions options});
}

@JS()
@anonymous
class IAudioBufferSourceNode {
  external AudioBufferSourceNode get prototype;
  external set prototype(AudioBufferSourceNode value);
  external factory IAudioBufferSourceNode({BaseAudioContext context, AudioBufferSourceOptions options});
}

@JS()
@anonymous
class IAudioContext {
  external AudioContext get prototype;
  external set prototype(AudioContext value);
  external factory IAudioContext({AudioContextOptions contextOptions});
}

@JS()
@anonymous
class IAudioDestinationNode {
  external AudioDestinationNode get prototype;
  external set prototype(AudioDestinationNode value);
  external factory IAudioDestinationNode();
}

@JS()
@anonymous
class IAudioListener {
  external AudioListener get prototype;
  external set prototype(AudioListener value);
  external factory IAudioListener();
}

@JS()
@anonymous
class IAudioNode {
  external AudioNode get prototype;
  external set prototype(AudioNode value);
  external factory IAudioNode();
}

@JS()
@anonymous
class IAudioParam {
  external AudioParam get prototype;
  external set prototype(AudioParam value);
  external factory IAudioParam();
}

@JS()
@anonymous
class IAudioParamMap {
  external AudioParamMap get prototype;
  external set prototype(AudioParamMap value);
  external factory IAudioParamMap();
}

@JS()
@anonymous
class IAudioProcessingEvent {
  external AudioProcessingEvent get prototype;
  external set prototype(AudioProcessingEvent value);
  external factory IAudioProcessingEvent({String type, AudioProcessingEventInit eventInitDict});
}

@JS()
@anonymous
class IAudioScheduledSourceNode {
  external AudioScheduledSourceNode get prototype;
  external set prototype(AudioScheduledSourceNode value);
  external factory IAudioScheduledSourceNode();
}

@JS()
@anonymous
class IAudioWorklet {
  external AudioWorklet get prototype;
  external set prototype(AudioWorklet value);
  external factory IAudioWorklet();
}

@JS()
@anonymous
class IAudioWorkletNode {
  external AudioWorkletNode get prototype;
  external set prototype(AudioWorkletNode value);
  external factory IAudioWorkletNode({BaseAudioContext context, String name, AudioWorkletNodeOptions options});
}

@JS()
@anonymous
class IAuthenticatorAssertionResponse {
  external AuthenticatorAssertionResponse get prototype;
  external set prototype(AuthenticatorAssertionResponse value);
  external factory IAuthenticatorAssertionResponse();
}

@JS()
@anonymous
class IAuthenticatorAttestationResponse {
  external AuthenticatorAttestationResponse get prototype;
  external set prototype(AuthenticatorAttestationResponse value);
  external factory IAuthenticatorAttestationResponse();
}

@JS()
@anonymous
class IAuthenticatorResponse {
  external AuthenticatorResponse get prototype;
  external set prototype(AuthenticatorResponse value);
  external factory IAuthenticatorResponse();
}

@JS()
@anonymous
class IBarProp {
  external BarProp get prototype;
  external set prototype(BarProp value);
  external factory IBarProp();
}

@JS()
@anonymous
class IBaseAudioContext {
  external BaseAudioContext get prototype;
  external set prototype(BaseAudioContext value);
  external factory IBaseAudioContext();
}

@JS()
@anonymous
class IBeforeUnloadEvent {
  external BeforeUnloadEvent get prototype;
  external set prototype(BeforeUnloadEvent value);
  external factory IBeforeUnloadEvent();
}

@JS()
@anonymous
class IBiquadFilterNode {
  external BiquadFilterNode get prototype;
  external set prototype(BiquadFilterNode value);
  external factory IBiquadFilterNode({BaseAudioContext context, BiquadFilterOptions options});
}

@JS()
@anonymous
class IBlob {
  external Blob get prototype;
  external set prototype(Blob value);
  external factory IBlob({List<BlobPart> blobParts, BlobPropertyBag options});
}

@JS()
@anonymous
class IBlobEvent {
  external BlobEvent get prototype;
  external set prototype(BlobEvent value);
  external factory IBlobEvent({String type, BlobEventInit eventInitDict});
}

@JS()
@anonymous
class IBroadcastChannel {
  external BroadcastChannel get prototype;
  external set prototype(BroadcastChannel value);
  external factory IBroadcastChannel({String name});
}

@JS()
@anonymous
class IByteLengthQueuingStrategy {
  external ByteLengthQueuingStrategy get prototype;
  external set prototype(ByteLengthQueuingStrategy value);
  external factory IByteLengthQueuingStrategy({QueuingStrategyInit init});
}

@JS()
@anonymous
class ICDATASection {
  external CDataSection get prototype;
  external set prototype(CDataSection value);
  external factory ICDATASection();
}

@JS()
@anonymous
class ICSSAnimation {
  external CSSAnimation get prototype;
  external set prototype(CSSAnimation value);
  external factory ICSSAnimation();
}

@JS()
@anonymous
class ICSSConditionRule {
  external CSSConditionRule get prototype;
  external set prototype(CSSConditionRule value);
  external factory ICSSConditionRule();
}

@JS()
@anonymous
class ICSSCounterStyleRule {
  external CSSCounterStyleRule get prototype;
  external set prototype(CSSCounterStyleRule value);
  external factory ICSSCounterStyleRule();
}

@JS()
@anonymous
class ICSSFontFaceRule {
  external CssFontFaceRule get prototype;
  external set prototype(CssFontFaceRule value);
  external factory ICSSFontFaceRule();
}

@JS()
@anonymous
class ICSSGroupingRule {
  external CSSGroupingRule get prototype;
  external set prototype(CSSGroupingRule value);
  external factory ICSSGroupingRule();
}

@JS()
@anonymous
class ICSSImportRule {
  external CssImportRule get prototype;
  external set prototype(CssImportRule value);
  external factory ICSSImportRule();
}

@JS()
@anonymous
class ICSSKeyframeRule {
  external CssKeyframeRule get prototype;
  external set prototype(CssKeyframeRule value);
  external factory ICSSKeyframeRule();
}

@JS()
@anonymous
class ICSSKeyframesRule {
  external CssKeyframesRule get prototype;
  external set prototype(CssKeyframesRule value);
  external factory ICSSKeyframesRule();
}

@JS()
@anonymous
class ICSSMediaRule {
  external CssMediaRule get prototype;
  external set prototype(CssMediaRule value);
  external factory ICSSMediaRule();
}

@JS()
@anonymous
class ICSSNamespaceRule {
  external CSSNamespaceRule get prototype;
  external set prototype(CSSNamespaceRule value);
  external factory ICSSNamespaceRule();
}

@JS()
@anonymous
class ICSSPageRule {
  external CssPageRule get prototype;
  external set prototype(CssPageRule value);
  external factory ICSSPageRule();
}

@JS()
@anonymous
class ICSSRule {
  external CssRule get prototype;
  external set prototype(CssRule value);
  external factory ICSSRule();
  external num get CHARSET_RULE;
  external num get FONT_FACE_RULE;
  external num get IMPORT_RULE;
  external num get KEYFRAMES_RULE;
  external num get KEYFRAME_RULE;
  external num get MEDIA_RULE;
  external num get NAMESPACE_RULE;
  external num get PAGE_RULE;
  external num get STYLE_RULE;
  external num get SUPPORTS_RULE;
}

@JS()
@anonymous
class ICSSRuleList {
  external CSSRuleList get prototype;
  external set prototype(CSSRuleList value);
  external factory ICSSRuleList();
}

@JS()
@anonymous
class ICSSStyleDeclaration {
  external CssStyleDeclaration get prototype;
  external set prototype(CssStyleDeclaration value);
  external factory ICSSStyleDeclaration();
}

@JS()
@anonymous
class ICSSStyleRule {
  external CssStyleRule get prototype;
  external set prototype(CssStyleRule value);
  external factory ICSSStyleRule();
}

@JS()
@anonymous
class ICSSStyleSheet {
  external CssStyleSheet get prototype;
  external set prototype(CssStyleSheet value);
  external factory ICSSStyleSheet();
}

@JS()
@anonymous
class ICSSSupportsRule {
  external CssSupportsRule get prototype;
  external set prototype(CssSupportsRule value);
  external factory ICSSSupportsRule();
}

@JS()
@anonymous
class ICSSTransition {
  external CSSTransition get prototype;
  external set prototype(CSSTransition value);
  external factory ICSSTransition();
}

@JS()
@anonymous
class ICache {
  external Cache get prototype;
  external set prototype(Cache value);
  external factory ICache();
}

@JS()
@anonymous
class ICacheStorage {
  external CacheStorage get prototype;
  external set prototype(CacheStorage value);
  external factory ICacheStorage();
}

@JS()
@anonymous
class ICanvasGradient {
  external CanvasGradient get prototype;
  external set prototype(CanvasGradient value);
  external factory ICanvasGradient();
}

@JS()
@anonymous
class ICanvasPattern {
  external CanvasPattern get prototype;
  external set prototype(CanvasPattern value);
  external factory ICanvasPattern();
}

@JS()
@anonymous
class ICanvasRenderingContext2D {
  external CanvasRenderingContext2D get prototype;
  external set prototype(CanvasRenderingContext2D value);
  external factory ICanvasRenderingContext2D();
}

@JS()
@anonymous
class IChannelMergerNode {
  external ChannelMergerNode get prototype;
  external set prototype(ChannelMergerNode value);
  external factory IChannelMergerNode({BaseAudioContext context, ChannelMergerOptions options});
}

@JS()
@anonymous
class IChannelSplitterNode {
  external ChannelSplitterNode get prototype;
  external set prototype(ChannelSplitterNode value);
  external factory IChannelSplitterNode({BaseAudioContext context, ChannelSplitterOptions options});
}

@JS()
@anonymous
class ICharacterData {
  external CharacterData get prototype;
  external set prototype(CharacterData value);
  external factory ICharacterData();
}

@JS()
@anonymous
class IClientRect {
  external Rectangle get prototype;
  external set prototype(Rectangle value);
  external factory IClientRect();
}

@JS()
@anonymous
class IClipboard {
  external Clipboard get prototype;
  external set prototype(Clipboard value);
  external factory IClipboard();
}

@JS()
@anonymous
class IClipboardEvent {
  external ClipboardEvent get prototype;
  external set prototype(ClipboardEvent value);
  external factory IClipboardEvent({String type, ClipboardEventInit eventInitDict});
}

@JS()
@anonymous
class IClipboardItem {
  external ClipboardItem get prototype;
  external set prototype(ClipboardItem value);
  external factory IClipboardItem({Record<String, ClipboardItemData> items, ClipboardItemOptions options});
}

@JS()
@anonymous
class ICloseEvent {
  external CloseEvent get prototype;
  external set prototype(CloseEvent value);
  external factory ICloseEvent({String type, CloseEventInit eventInitDict});
}

@JS()
@anonymous
class IComment {
  external Comment get prototype;
  external set prototype(Comment value);
  external factory IComment({String data});
}

@JS()
@anonymous
class ICompileError {
  external CompileError get prototype;
  external set prototype(CompileError value);
  external factory ICompileError();
}

@JS()
@anonymous
class ICompositionEvent {
  external CompositionEvent get prototype;
  external set prototype(CompositionEvent value);
  external factory ICompositionEvent({String type, CompositionEventInit eventInitDict});
}

@JS()
@anonymous
class IConstantSourceNode {
  external ConstantSourceNode get prototype;
  external set prototype(ConstantSourceNode value);
  external factory IConstantSourceNode({BaseAudioContext context, ConstantSourceOptions options});
}

@JS()
@anonymous
class IConvolverNode {
  external ConvolverNode get prototype;
  external set prototype(ConvolverNode value);
  external factory IConvolverNode({BaseAudioContext context, ConvolverOptions options});
}

@JS()
@anonymous
class ICountQueuingStrategy {
  external CountQueuingStrategy get prototype;
  external set prototype(CountQueuingStrategy value);
  external factory ICountQueuingStrategy({QueuingStrategyInit init});
}

@JS()
@anonymous
class ICredential {
  external Credential get prototype;
  external set prototype(Credential value);
  external factory ICredential();
}

@JS()
@anonymous
class ICredentialsContainer {
  external CredentialsContainer get prototype;
  external set prototype(CredentialsContainer value);
  external factory ICredentialsContainer();
}

@JS()
@anonymous
class ICrypto {
  external Crypto get prototype;
  external set prototype(Crypto value);
  external factory ICrypto();
}

@JS()
@anonymous
class ICryptoKey {
  external CryptoKey get prototype;
  external set prototype(CryptoKey value);
  external factory ICryptoKey();
}

@JS()
@anonymous
class ICustomElementRegistry {
  external CustomElementRegistry get prototype;
  external set prototype(CustomElementRegistry value);
  external factory ICustomElementRegistry();
}

@JS()
@anonymous
class ICustomEvent {
  external CustomEvent get prototype;
  external set prototype(CustomEvent value);
  external factory ICustomEvent({String type, CustomEventInit<T> eventInitDict});
}

@JS()
@anonymous
class IDOMException {
  external DomException get prototype;
  external set prototype(DomException value);
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
class IDOMImplementation {
  external DomImplementation get prototype;
  external set prototype(DomImplementation value);
  external factory IDOMImplementation();
}

@JS()
@anonymous
class IDOMMatrix {
  external DomMatrix get prototype;
  external set prototype(DomMatrix value);
  external factory IDOMMatrix({dynamic init});
  external DomMatrix fromFloat32Array(Float32List array32);
  external DomMatrix fromFloat64Array(Float64List array64);
  external DomMatrix fromMatrix(DOMMatrixInit other);
}

@JS()
@anonymous
class IDOMMatrixReadOnly {
  external DomMatrixReadOnly get prototype;
  external set prototype(DomMatrixReadOnly value);
  external factory IDOMMatrixReadOnly({dynamic init});
  external DomMatrixReadOnly fromFloat32Array(Float32List array32);
  external DomMatrixReadOnly fromFloat64Array(Float64List array64);
  external DomMatrixReadOnly fromMatrix(DOMMatrixInit other);
  @override
  external String toString();
}

@JS()
@anonymous
class IDOMParser {
  external DomParser get prototype;
  external set prototype(DomParser value);
  external factory IDOMParser();
}

@JS()
@anonymous
class IDOMPoint {
  external DomPoint get prototype;
  external set prototype(DomPoint value);
  external factory IDOMPoint({num x, num y, num z, num w});
  external DomPoint fromPoint(DOMPointInit other);
}

@JS()
@anonymous
class IDOMPointReadOnly {
  external DomPointReadOnly get prototype;
  external set prototype(DomPointReadOnly value);
  external factory IDOMPointReadOnly({num x, num y, num z, num w});
  external DomPointReadOnly fromPoint(DOMPointInit other);
}

@JS()
@anonymous
class IDOMQuad {
  external DOMQuad get prototype;
  external set prototype(DOMQuad value);
  external factory IDOMQuad({DOMPointInit p1, DOMPointInit p2, DOMPointInit p3, DOMPointInit p4});
  external DOMQuad fromQuad(DOMQuadInit other);
  external DOMQuad fromRect(DOMRectInit other);
}

@JS()
@anonymous
class IDOMRect {
  external DOMRect get prototype;
  external set prototype(DOMRect value);
  external factory IDOMRect({num x, num y, num width, num height});
  external DOMRect fromRect(DOMRectInit other);
}

@JS()
@anonymous
class IDOMRectList {
  external DOMRectList get prototype;
  external set prototype(DOMRectList value);
  external factory IDOMRectList();
}

@JS()
@anonymous
class IDOMRectReadOnly {
  external DomRectReadOnly get prototype;
  external set prototype(DomRectReadOnly value);
  external factory IDOMRectReadOnly({num x, num y, num width, num height});
  external DomRectReadOnly fromRect(DOMRectInit other);
}

@JS()
@anonymous
class IDOMStringList {
  external DomStringList get prototype;
  external set prototype(DomStringList value);
  external factory IDOMStringList();
}

@JS()
@anonymous
class IDOMStringMap {
  external DomStringMap get prototype;
  external set prototype(DomStringMap value);
  external factory IDOMStringMap();
}

@JS()
@anonymous
class IDOMTokenList {
  external DomTokenList get prototype;
  external set prototype(DomTokenList value);
  external factory IDOMTokenList();
}

@JS()
@anonymous
class IDataTransfer {
  external DataTransfer get prototype;
  external set prototype(DataTransfer value);
  external factory IDataTransfer();
}

@JS()
@anonymous
class IDataTransferItem {
  external DataTransferItem get prototype;
  external set prototype(DataTransferItem value);
  external factory IDataTransferItem();
}

@JS()
@anonymous
class IDataTransferItemList {
  external DataTransferItemList get prototype;
  external set prototype(DataTransferItemList value);
  external factory IDataTransferItemList();
}

@JS()
@anonymous
class IDelayNode {
  external DelayNode get prototype;
  external set prototype(DelayNode value);
  external factory IDelayNode({BaseAudioContext context, DelayOptions options});
}

@JS()
@anonymous
class IDeviceMotionEvent {
  external DeviceMotionEvent get prototype;
  external set prototype(DeviceMotionEvent value);
  external factory IDeviceMotionEvent({String type, DeviceMotionEventInit eventInitDict});
}

@JS()
@anonymous
class IDeviceOrientationEvent {
  external DeviceOrientationEvent get prototype;
  external set prototype(DeviceOrientationEvent value);
  external factory IDeviceOrientationEvent({String type, DeviceOrientationEventInit eventInitDict});
}

@JS()
@anonymous
class IDocument {
  external Document get prototype;
  external set prototype(Document value);
  external factory IDocument();
}

@JS()
@anonymous
class IDocumentFragment {
  external DocumentFragment get prototype;
  external set prototype(DocumentFragment value);
  external factory IDocumentFragment();
}

@JS()
@anonymous
class IDocumentTimeline {
  external DocumentTimeline get prototype;
  external set prototype(DocumentTimeline value);
  external factory IDocumentTimeline({DocumentTimelineOptions options});
}

@JS()
@anonymous
class IDocumentType {
  external DocumentType get prototype;
  external set prototype(DocumentType value);
  external factory IDocumentType();
}

@JS()
@anonymous
class IDragEvent {
  external DragEvent get prototype;
  external set prototype(DragEvent value);
  external factory IDragEvent({String type, DragEventInit eventInitDict});
}

@JS()
@anonymous
class IDynamicsCompressorNode {
  external DynamicsCompressorNode get prototype;
  external set prototype(DynamicsCompressorNode value);
  external factory IDynamicsCompressorNode({BaseAudioContext context, DynamicsCompressorOptions options});
}

@JS()
@anonymous
class IElement {
  external Element get prototype;
  external set prototype(Element value);
  external factory IElement();
}

@JS()
@anonymous
class IErrorEvent {
  external ErrorEvent get prototype;
  external set prototype(ErrorEvent value);
  external factory IErrorEvent({String type, ErrorEventInit eventInitDict});
}

@JS()
@anonymous
class IEvent {
  external Event get prototype;
  external set prototype(Event value);
  external factory IEvent({String type, EventInit eventInitDict});
  external num get AT_TARGET;
  external num get BUBBLING_PHASE;
  external num get CAPTURING_PHASE;
  external num get NONE;
}

@JS()
@anonymous
class IEventSource {
  external EventSource get prototype;
  external set prototype(EventSource value);
  external factory IEventSource({dynamic url, EventSourceInit eventSourceInitDict});
  external num get CLOSED;
  external num get CONNECTING;
  external num get OPEN;
}

@JS()
@anonymous
class IEventTarget {
  external EventTarget get prototype;
  external set prototype(EventTarget value);
  external factory IEventTarget();
}

@JS()
@anonymous
class IExternal {
  external External get prototype;
  external set prototype(External value);
  external factory IExternal();
}

@JS()
@anonymous
class IFile {
  external File get prototype;
  external set prototype(File value);
  external factory IFile({List<BlobPart> fileBits, String fileName, FilePropertyBag options});
}

@JS()
@anonymous
class IFileList {
  external FileList get prototype;
  external set prototype(FileList value);
  external factory IFileList();
}

@JS()
@anonymous
class IFileReader {
  external FileReader get prototype;
  external set prototype(FileReader value);
  external factory IFileReader();
  external num get DONE;
  external num get EMPTY;
  external num get LOADING;
}

@JS()
@anonymous
class IFileSystem {
  external FileSystem get prototype;
  external set prototype(FileSystem value);
  external factory IFileSystem();
}

@JS()
@anonymous
class IFileSystemDirectoryEntry {
  external FileSystemDirectoryEntry get prototype;
  external set prototype(FileSystemDirectoryEntry value);
  external factory IFileSystemDirectoryEntry();
}

@JS()
@anonymous
class IFileSystemDirectoryReader {
  external FileSystemDirectoryReader get prototype;
  external set prototype(FileSystemDirectoryReader value);
  external factory IFileSystemDirectoryReader();
}

@JS()
@anonymous
class IFileSystemEntry {
  external FileSystemEntry get prototype;
  external set prototype(FileSystemEntry value);
  external factory IFileSystemEntry();
}

@JS()
@anonymous
class IFileSystemFileEntry {
  external FileSystemFileEntry get prototype;
  external set prototype(FileSystemFileEntry value);
  external factory IFileSystemFileEntry();
}

@JS()
@anonymous
class IFocusEvent {
  external FocusEvent get prototype;
  external set prototype(FocusEvent value);
  external factory IFocusEvent({String type, FocusEventInit eventInitDict});
}

@JS()
@anonymous
class IFontFace {
  external FontFace get prototype;
  external set prototype(FontFace value);
  external factory IFontFace({String family, dynamic source, FontFaceDescriptors descriptors});
}

@JS()
@anonymous
class IFontFaceSet {
  external FontFaceSet get prototype;
  external set prototype(FontFaceSet value);
  external factory IFontFaceSet({List<FontFace> initialFaces});
}

@JS()
@anonymous
class IFontFaceSetLoadEvent {
  external FontFaceSetLoadEvent get prototype;
  external set prototype(FontFaceSetLoadEvent value);
  external factory IFontFaceSetLoadEvent({String type, FontFaceSetLoadEventInit eventInitDict});
}

@JS()
@anonymous
class IFormData {
  external FormData get prototype;
  external set prototype(FormData value);
  external factory IFormData({FormElement form});
}

@JS()
@anonymous
class IFormDataEvent {
  external FormDataEvent get prototype;
  external set prototype(FormDataEvent value);
  external factory IFormDataEvent({String type, FormDataEventInit eventInitDict});
}

@JS()
@anonymous
class IGainNode {
  external GainNode get prototype;
  external set prototype(GainNode value);
  external factory IGainNode({BaseAudioContext context, GainOptions options});
}

@JS()
@anonymous
class IGamepad {
  external Gamepad get prototype;
  external set prototype(Gamepad value);
  external factory IGamepad();
}

@JS()
@anonymous
class IGamepadButton {
  external GamepadButton get prototype;
  external set prototype(GamepadButton value);
  external factory IGamepadButton();
}

@JS()
@anonymous
class IGamepadEvent {
  external GamepadEvent get prototype;
  external set prototype(GamepadEvent value);
  external factory IGamepadEvent({String type, GamepadEventInit eventInitDict});
}

@JS()
@anonymous
class IGamepadHapticActuator {
  external GamepadHapticActuator get prototype;
  external set prototype(GamepadHapticActuator value);
  external factory IGamepadHapticActuator();
}

@JS()
@anonymous
class IGeolocation {
  external Geolocation get prototype;
  external set prototype(Geolocation value);
  external factory IGeolocation();
}

@JS()
@anonymous
class IGeolocationCoordinates {
  external GeolocationCoordinates get prototype;
  external set prototype(GeolocationCoordinates value);
  external factory IGeolocationCoordinates();
}

@JS()
@anonymous
class IGeolocationPosition {
  external GeolocationPosition get prototype;
  external set prototype(GeolocationPosition value);
  external factory IGeolocationPosition();
}

@JS()
@anonymous
class IGeolocationPositionError {
  external GeolocationPositionError get prototype;
  external set prototype(GeolocationPositionError value);
  external factory IGeolocationPositionError();
  external num get PERMISSION_DENIED;
  external num get POSITION_UNAVAILABLE;
  external num get TIMEOUT;
}

@JS()
@anonymous
class IGlobal {
  external Global get prototype;
  external set prototype(Global value);
  external factory IGlobal({GlobalDescriptor descriptor, dynamic v});
}

@JS()
@anonymous
class IHTMLAllCollection {
  external HTMLAllCollection get prototype;
  external set prototype(HTMLAllCollection value);
  external factory IHTMLAllCollection();
}

@JS()
@anonymous
class IHTMLAnchorElement {
  external AnchorElement get prototype;
  external set prototype(AnchorElement value);
  external factory IHTMLAnchorElement();
}

@JS()
@anonymous
class IHTMLAreaElement {
  external AreaElement get prototype;
  external set prototype(AreaElement value);
  external factory IHTMLAreaElement();
}

@JS()
@anonymous
class IHTMLAudioElement {
  external AudioElement get prototype;
  external set prototype(AudioElement value);
  external factory IHTMLAudioElement();
}

@JS()
@anonymous
class IHTMLBRElement {
  external BRElement get prototype;
  external set prototype(BRElement value);
  external factory IHTMLBRElement();
}

@JS()
@anonymous
class IHTMLBaseElement {
  external BaseElement get prototype;
  external set prototype(BaseElement value);
  external factory IHTMLBaseElement();
}

@JS()
@anonymous
class IHTMLBodyElement {
  external BodyElement get prototype;
  external set prototype(BodyElement value);
  external factory IHTMLBodyElement();
}

@JS()
@anonymous
class IHTMLButtonElement {
  external ButtonElement get prototype;
  external set prototype(ButtonElement value);
  external factory IHTMLButtonElement();
}

@JS()
@anonymous
class IHTMLCanvasElement {
  external CanvasElement get prototype;
  external set prototype(CanvasElement value);
  external factory IHTMLCanvasElement();
}

@JS()
@anonymous
class IHTMLCollection {
  external HtmlCollection get prototype;
  external set prototype(HtmlCollection value);
  external factory IHTMLCollection();
}

@JS()
@anonymous
class IHTMLDListElement {
  external DListElement get prototype;
  external set prototype(DListElement value);
  external factory IHTMLDListElement();
}

@JS()
@anonymous
class IHTMLDataElement {
  external HTMLDataElement get prototype;
  external set prototype(HTMLDataElement value);
  external factory IHTMLDataElement();
}

@JS()
@anonymous
class IHTMLDataListElement {
  external DataListElement get prototype;
  external set prototype(DataListElement value);
  external factory IHTMLDataListElement();
}

@JS()
@anonymous
class IHTMLDetailsElement {
  external DetailsElement get prototype;
  external set prototype(DetailsElement value);
  external factory IHTMLDetailsElement();
}

@JS()
@anonymous
class IHTMLDirectoryElement {
  external HTMLDirectoryElement get prototype;
  external set prototype(HTMLDirectoryElement value);
  external factory IHTMLDirectoryElement();
}

@JS()
@anonymous
class IHTMLDivElement {
  external DivElement get prototype;
  external set prototype(DivElement value);
  external factory IHTMLDivElement();
}

@JS()
@anonymous
class IHTMLElement {
  external HtmlElement get prototype;
  external set prototype(HtmlElement value);
  external factory IHTMLElement();
}

@JS()
@anonymous
class IHTMLEmbedElement {
  external EmbedElement get prototype;
  external set prototype(EmbedElement value);
  external factory IHTMLEmbedElement();
}

@JS()
@anonymous
class IHTMLFieldSetElement {
  external FieldSetElement get prototype;
  external set prototype(FieldSetElement value);
  external factory IHTMLFieldSetElement();
}

@JS()
@anonymous
class IHTMLFontElement {
  external HTMLFontElement get prototype;
  external set prototype(HTMLFontElement value);
  external factory IHTMLFontElement();
}

@JS()
@anonymous
class IHTMLFormControlsCollection {
  external HtmlFormControlsCollection get prototype;
  external set prototype(HtmlFormControlsCollection value);
  external factory IHTMLFormControlsCollection();
}

@JS()
@anonymous
class IHTMLFormElement {
  external FormElement get prototype;
  external set prototype(FormElement value);
  external factory IHTMLFormElement();
}

@JS()
@anonymous
class IHTMLFrameElement {
  external HTMLFrameElement get prototype;
  external set prototype(HTMLFrameElement value);
  external factory IHTMLFrameElement();
}

@JS()
@anonymous
class IHTMLFrameSetElement {
  external HTMLFrameSetElement get prototype;
  external set prototype(HTMLFrameSetElement value);
  external factory IHTMLFrameSetElement();
}

@JS()
@anonymous
class IHTMLHRElement {
  external HRElement get prototype;
  external set prototype(HRElement value);
  external factory IHTMLHRElement();
}

@JS()
@anonymous
class IHTMLHeadElement {
  external HeadElement get prototype;
  external set prototype(HeadElement value);
  external factory IHTMLHeadElement();
}

@JS()
@anonymous
class IHTMLHeadingElement {
  external HeadingElement get prototype;
  external set prototype(HeadingElement value);
  external factory IHTMLHeadingElement();
}

@JS()
@anonymous
class IHTMLHtmlElement {
  external HtmlHtmlElement get prototype;
  external set prototype(HtmlHtmlElement value);
  external factory IHTMLHtmlElement();
}

@JS()
@anonymous
class IHTMLIFrameElement {
  external IFrameElement get prototype;
  external set prototype(IFrameElement value);
  external factory IHTMLIFrameElement();
}

@JS()
@anonymous
class IHTMLImageElement {
  external ImageElement get prototype;
  external set prototype(ImageElement value);
  external factory IHTMLImageElement();
}

@JS()
@anonymous
class IHTMLInputElement {
  external InputElement get prototype;
  external set prototype(InputElement value);
  external factory IHTMLInputElement();
}

@JS()
@anonymous
class IHTMLLIElement {
  external LIElement get prototype;
  external set prototype(LIElement value);
  external factory IHTMLLIElement();
}

@JS()
@anonymous
class IHTMLLabelElement {
  external LabelElement get prototype;
  external set prototype(LabelElement value);
  external factory IHTMLLabelElement();
}

@JS()
@anonymous
class IHTMLLegendElement {
  external LegendElement get prototype;
  external set prototype(LegendElement value);
  external factory IHTMLLegendElement();
}

@JS()
@anonymous
class IHTMLLinkElement {
  external LinkElement get prototype;
  external set prototype(LinkElement value);
  external factory IHTMLLinkElement();
}

@JS()
@anonymous
class IHTMLMapElement {
  external MapElement get prototype;
  external set prototype(MapElement value);
  external factory IHTMLMapElement();
}

@JS()
@anonymous
class IHTMLMarqueeElement {
  external HTMLMarqueeElement get prototype;
  external set prototype(HTMLMarqueeElement value);
  external factory IHTMLMarqueeElement();
}

@JS()
@anonymous
class IHTMLMediaElement {
  external MediaElement get prototype;
  external set prototype(MediaElement value);
  external factory IHTMLMediaElement();
  external num get HAVE_CURRENT_DATA;
  external num get HAVE_ENOUGH_DATA;
  external num get HAVE_FUTURE_DATA;
  external num get HAVE_METADATA;
  external num get HAVE_NOTHING;
  external num get NETWORK_EMPTY;
  external num get NETWORK_IDLE;
  external num get NETWORK_LOADING;
  external num get NETWORK_NO_SOURCE;
}

@JS()
@anonymous
class IHTMLMenuElement {
  external MenuElement get prototype;
  external set prototype(MenuElement value);
  external factory IHTMLMenuElement();
}

@JS()
@anonymous
class IHTMLMetaElement {
  external MetaElement get prototype;
  external set prototype(MetaElement value);
  external factory IHTMLMetaElement();
}

@JS()
@anonymous
class IHTMLMeterElement {
  external MeterElement get prototype;
  external set prototype(MeterElement value);
  external factory IHTMLMeterElement();
}

@JS()
@anonymous
class IHTMLModElement {
  external ModElement get prototype;
  external set prototype(ModElement value);
  external factory IHTMLModElement();
}

@JS()
@anonymous
class IHTMLOListElement {
  external OListElement get prototype;
  external set prototype(OListElement value);
  external factory IHTMLOListElement();
}

@JS()
@anonymous
class IHTMLObjectElement {
  external ObjectElement get prototype;
  external set prototype(ObjectElement value);
  external factory IHTMLObjectElement();
}

@JS()
@anonymous
class IHTMLOptGroupElement {
  external OptGroupElement get prototype;
  external set prototype(OptGroupElement value);
  external factory IHTMLOptGroupElement();
}

@JS()
@anonymous
class IHTMLOptionElement {
  external OptionElement get prototype;
  external set prototype(OptionElement value);
  external factory IHTMLOptionElement();
}

@JS()
@anonymous
class IHTMLOptionsCollection {
  external HtmlOptionsCollection get prototype;
  external set prototype(HtmlOptionsCollection value);
  external factory IHTMLOptionsCollection();
}

@JS()
@anonymous
class IHTMLOutputElement {
  external OutputElement get prototype;
  external set prototype(OutputElement value);
  external factory IHTMLOutputElement();
}

@JS()
@anonymous
class IHTMLParagraphElement {
  external ParagraphElement get prototype;
  external set prototype(ParagraphElement value);
  external factory IHTMLParagraphElement();
}

@JS()
@anonymous
class IHTMLParamElement {
  external ParamElement get prototype;
  external set prototype(ParamElement value);
  external factory IHTMLParamElement();
}

@JS()
@anonymous
class IHTMLPictureElement {
  external PictureElement get prototype;
  external set prototype(PictureElement value);
  external factory IHTMLPictureElement();
}

@JS()
@anonymous
class IHTMLPreElement {
  external PreElement get prototype;
  external set prototype(PreElement value);
  external factory IHTMLPreElement();
}

@JS()
@anonymous
class IHTMLProgressElement {
  external ProgressElement get prototype;
  external set prototype(ProgressElement value);
  external factory IHTMLProgressElement();
}

@JS()
@anonymous
class IHTMLQuoteElement {
  external QuoteElement get prototype;
  external set prototype(QuoteElement value);
  external factory IHTMLQuoteElement();
}

@JS()
@anonymous
class IHTMLScriptElement {
  external ScriptElement get prototype;
  external set prototype(ScriptElement value);
  external factory IHTMLScriptElement();
}

@JS()
@anonymous
class IHTMLSelectElement {
  external SelectElement get prototype;
  external set prototype(SelectElement value);
  external factory IHTMLSelectElement();
}

@JS()
@anonymous
class IHTMLSlotElement {
  external HTMLSlotElement get prototype;
  external set prototype(HTMLSlotElement value);
  external factory IHTMLSlotElement();
}

@JS()
@anonymous
class IHTMLSourceElement {
  external SourceElement get prototype;
  external set prototype(SourceElement value);
  external factory IHTMLSourceElement();
}

@JS()
@anonymous
class IHTMLSpanElement {
  external SpanElement get prototype;
  external set prototype(SpanElement value);
  external factory IHTMLSpanElement();
}

@JS()
@anonymous
class IHTMLStyleElement {
  external StyleElement get prototype;
  external set prototype(StyleElement value);
  external factory IHTMLStyleElement();
}

@JS()
@anonymous
class IHTMLTableCaptionElement {
  external TableCaptionElement get prototype;
  external set prototype(TableCaptionElement value);
  external factory IHTMLTableCaptionElement();
}

@JS()
@anonymous
class IHTMLTableCellElement {
  external TableCellElement get prototype;
  external set prototype(TableCellElement value);
  external factory IHTMLTableCellElement();
}

@JS()
@anonymous
class IHTMLTableColElement {
  external TableColElement get prototype;
  external set prototype(TableColElement value);
  external factory IHTMLTableColElement();
}

@JS()
@anonymous
class IHTMLTableElement {
  external TableElement get prototype;
  external set prototype(TableElement value);
  external factory IHTMLTableElement();
}

@JS()
@anonymous
class IHTMLTableRowElement {
  external TableRowElement get prototype;
  external set prototype(TableRowElement value);
  external factory IHTMLTableRowElement();
}

@JS()
@anonymous
class IHTMLTableSectionElement {
  external TableSectionElement get prototype;
  external set prototype(TableSectionElement value);
  external factory IHTMLTableSectionElement();
}

@JS()
@anonymous
class IHTMLTemplateElement {
  external TemplateElement get prototype;
  external set prototype(TemplateElement value);
  external factory IHTMLTemplateElement();
}

@JS()
@anonymous
class IHTMLTextAreaElement {
  external TextAreaElement get prototype;
  external set prototype(TextAreaElement value);
  external factory IHTMLTextAreaElement();
}

@JS()
@anonymous
class IHTMLTimeElement {
  external HTMLTimeElement get prototype;
  external set prototype(HTMLTimeElement value);
  external factory IHTMLTimeElement();
}

@JS()
@anonymous
class IHTMLTitleElement {
  external TitleElement get prototype;
  external set prototype(TitleElement value);
  external factory IHTMLTitleElement();
}

@JS()
@anonymous
class IHTMLTrackElement {
  external TrackElement get prototype;
  external set prototype(TrackElement value);
  external factory IHTMLTrackElement();
  external num get ERROR;
  external num get LOADED;
  external num get LOADING;
  external num get NONE;
}

@JS()
@anonymous
class IHTMLUListElement {
  external UListElement get prototype;
  external set prototype(UListElement value);
  external factory IHTMLUListElement();
}

@JS()
@anonymous
class IHTMLUnknownElement {
  external UnknownElement get prototype;
  external set prototype(UnknownElement value);
  external factory IHTMLUnknownElement();
}

@JS()
@anonymous
class IHTMLVideoElement {
  external VideoElement get prototype;
  external set prototype(VideoElement value);
  external factory IHTMLVideoElement();
}

@JS()
@anonymous
class IHashChangeEvent {
  external HashChangeEvent get prototype;
  external set prototype(HashChangeEvent value);
  external factory IHashChangeEvent({String type, HashChangeEventInit eventInitDict});
}

@JS()
@anonymous
class IHeaders {
  external Headers get prototype;
  external set prototype(Headers value);
  external factory IHeaders({HeadersInit init});
}

@JS()
@anonymous
class IHistory {
  external History get prototype;
  external set prototype(History value);
  external factory IHistory();
}

@JS()
@anonymous
class IIDBCursor {
  external Cursor get prototype;
  external set prototype(Cursor value);
  external factory IIDBCursor();
}

@JS()
@anonymous
class IIDBCursorWithValue {
  external CursorWithValue get prototype;
  external set prototype(CursorWithValue value);
  external factory IIDBCursorWithValue();
}

@JS()
@anonymous
class IIDBDatabase {
  external Database get prototype;
  external set prototype(Database value);
  external factory IIDBDatabase();
}

@JS()
@anonymous
class IIDBFactory {
  external IdbFactory get prototype;
  external set prototype(IdbFactory value);
  external factory IIDBFactory();
}

@JS()
@anonymous
class IIDBIndex {
  external Index get prototype;
  external set prototype(Index value);
  external factory IIDBIndex();
}

@JS()
@anonymous
class IIDBKeyRange {
  external KeyRange get prototype;
  external set prototype(KeyRange value);
  external factory IIDBKeyRange();
  external KeyRange bound(dynamic lower, dynamic upper, bool lowerOpen, bool upperOpen);
  external KeyRange lowerBound(dynamic lower, bool open);
  external KeyRange only(dynamic value);
  external KeyRange upperBound(dynamic upper, bool open);
}

@JS()
@anonymous
class IIDBObjectStore {
  external ObjectStore get prototype;
  external set prototype(ObjectStore value);
  external factory IIDBObjectStore();
}

@JS()
@anonymous
class IIDBOpenDBRequest {
  external OpenDBRequest get prototype;
  external set prototype(OpenDBRequest value);
  external factory IIDBOpenDBRequest();
}

@JS()
@anonymous
class IIDBRequest {
  external Request get prototype;
  external set prototype(Request value);
  external factory IIDBRequest();
}

@JS()
@anonymous
class IIDBTransaction {
  external Transaction get prototype;
  external set prototype(Transaction value);
  external factory IIDBTransaction();
}

@JS()
@anonymous
class IIDBVersionChangeEvent {
  external VersionChangeEvent get prototype;
  external set prototype(VersionChangeEvent value);
  external factory IIDBVersionChangeEvent({String type, IDBVersionChangeEventInit eventInitDict});
}

@JS()
@anonymous
class IIIRFilterNode {
  external IIRFilterNode get prototype;
  external set prototype(IIRFilterNode value);
  external factory IIIRFilterNode({BaseAudioContext context, IIRFilterOptions options});
}

@JS()
@anonymous
class IIdleDeadline {
  external IdleDeadline get prototype;
  external set prototype(IdleDeadline value);
  external factory IIdleDeadline();
}

@JS()
@anonymous
class IImage {
  external factory IImage({num width, num height});
}

@JS()
@anonymous
class IImageBitmap {
  external ImageBitmap get prototype;
  external set prototype(ImageBitmap value);
  external factory IImageBitmap();
}

@JS()
@anonymous
class IImageBitmapRenderingContext {
  external ImageBitmapRenderingContext get prototype;
  external set prototype(ImageBitmapRenderingContext value);
  external factory IImageBitmapRenderingContext();
}

@JS()
@anonymous
class IImageData {
  external ImageData get prototype;
  external set prototype(ImageData value);
  external factory IImageData({num sw, num sh, ImageDataSettings settings});
}

@JS()
@anonymous
class IInputEvent {
  external InputEvent get prototype;
  external set prototype(InputEvent value);
  external factory IInputEvent({String type, InputEventInit eventInitDict});
}

@JS()
@anonymous
class IInstance {
  external Instance get prototype;
  external set prototype(Instance value);
  external factory IInstance({Module module, Imports importObject});
}

@JS()
@anonymous
class IIntersectionObserver {
  external IntersectionObserver get prototype;
  external set prototype(IntersectionObserver value);
  external factory IIntersectionObserver({IntersectionObserverCallback callback, IntersectionObserverInit options});
}

@JS()
@anonymous
class IIntersectionObserverEntry {
  external IntersectionObserverEntry get prototype;
  external set prototype(IntersectionObserverEntry value);
  external factory IIntersectionObserverEntry({IntersectionObserverEntryInit intersectionObserverEntryInit});
}

@JS()
@anonymous
class IKeyboardEvent {
  external KeyboardEvent get prototype;
  external set prototype(KeyboardEvent value);
  external factory IKeyboardEvent({String type, KeyboardEventInit eventInitDict});
  external num get DOM_KEY_LOCATION_LEFT;
  external num get DOM_KEY_LOCATION_NUMPAD;
  external num get DOM_KEY_LOCATION_RIGHT;
  external num get DOM_KEY_LOCATION_STANDARD;
}

@JS()
@anonymous
class IKeyframeEffect {
  external KeyframeEffect get prototype;
  external set prototype(KeyframeEffect value);
  external factory IKeyframeEffect({Element? target, dynamic keyframes, dynamic options});
}

@JS()
@anonymous
class ILinkError {
  external LinkError get prototype;
  external set prototype(LinkError value);
  external factory ILinkError();
}

@JS()
@anonymous
class ILocation {
  external Location get prototype;
  external set prototype(Location value);
  external factory ILocation();
}

@JS()
@anonymous
class IMathMLElement {
  external MathMLElement get prototype;
  external set prototype(MathMLElement value);
  external factory IMathMLElement();
}

@JS()
@anonymous
class IMediaCapabilities {
  external MediaCapabilities get prototype;
  external set prototype(MediaCapabilities value);
  external factory IMediaCapabilities();
}

@JS()
@anonymous
class IMediaDeviceInfo {
  external MediaDeviceInfo get prototype;
  external set prototype(MediaDeviceInfo value);
  external factory IMediaDeviceInfo();
}

@JS()
@anonymous
class IMediaDevices {
  external MediaDevices get prototype;
  external set prototype(MediaDevices value);
  external factory IMediaDevices();
}

@JS()
@anonymous
class IMediaElementAudioSourceNode {
  external MediaElementAudioSourceNode get prototype;
  external set prototype(MediaElementAudioSourceNode value);
  external factory IMediaElementAudioSourceNode({AudioContext context, MediaElementAudioSourceOptions options});
}

@JS()
@anonymous
class IMediaEncryptedEvent {
  external MediaEncryptedEvent get prototype;
  external set prototype(MediaEncryptedEvent value);
  external factory IMediaEncryptedEvent({String type, MediaEncryptedEventInit eventInitDict});
}

@JS()
@anonymous
class IMediaError {
  external MediaError get prototype;
  external set prototype(MediaError value);
  external factory IMediaError();
  external num get MEDIA_ERR_ABORTED;
  external num get MEDIA_ERR_DECODE;
  external num get MEDIA_ERR_NETWORK;
  external num get MEDIA_ERR_SRC_NOT_SUPPORTED;
}

@JS()
@anonymous
class IMediaKeyMessageEvent {
  external MediaKeyMessageEvent get prototype;
  external set prototype(MediaKeyMessageEvent value);
  external factory IMediaKeyMessageEvent({String type, MediaKeyMessageEventInit eventInitDict});
}

@JS()
@anonymous
class IMediaKeySession {
  external MediaKeySession get prototype;
  external set prototype(MediaKeySession value);
  external factory IMediaKeySession();
}

@JS()
@anonymous
class IMediaKeyStatusMap {
  external MediaKeyStatusMap get prototype;
  external set prototype(MediaKeyStatusMap value);
  external factory IMediaKeyStatusMap();
}

@JS()
@anonymous
class IMediaKeySystemAccess {
  external MediaKeySystemAccess get prototype;
  external set prototype(MediaKeySystemAccess value);
  external factory IMediaKeySystemAccess();
}

@JS()
@anonymous
class IMediaKeys {
  external MediaKeys get prototype;
  external set prototype(MediaKeys value);
  external factory IMediaKeys();
}

@JS()
@anonymous
class IMediaList {
  external MediaList get prototype;
  external set prototype(MediaList value);
  external factory IMediaList();
}

@JS()
@anonymous
class IMediaMetadata {
  external MediaMetadata get prototype;
  external set prototype(MediaMetadata value);
  external factory IMediaMetadata({MediaMetadataInit init});
}

@JS()
@anonymous
class IMediaQueryList {
  external MediaQueryList get prototype;
  external set prototype(MediaQueryList value);
  external factory IMediaQueryList();
}

@JS()
@anonymous
class IMediaQueryListEvent {
  external MediaQueryListEvent get prototype;
  external set prototype(MediaQueryListEvent value);
  external factory IMediaQueryListEvent({String type, MediaQueryListEventInit eventInitDict});
}

@JS()
@anonymous
class IMediaRecorder {
  external MediaRecorder get prototype;
  external set prototype(MediaRecorder value);
  external factory IMediaRecorder({MediaStream stream, MediaRecorderOptions options});
  external bool isTypeSupported(String type);
}

@JS()
@anonymous
class IMediaRecorderErrorEvent {
  external MediaRecorderErrorEvent get prototype;
  external set prototype(MediaRecorderErrorEvent value);
  external factory IMediaRecorderErrorEvent({String type, MediaRecorderErrorEventInit eventInitDict});
}

@JS()
@anonymous
class IMediaSession {
  external MediaSession get prototype;
  external set prototype(MediaSession value);
  external factory IMediaSession();
}

@JS()
@anonymous
class IMediaSource {
  external MediaSource get prototype;
  external set prototype(MediaSource value);
  external factory IMediaSource();
  external bool isTypeSupported(String type);
}

@JS()
@anonymous
class IMediaStream {
  external MediaStream get prototype;
  external set prototype(MediaStream value);
  external factory IMediaStream();
}

@JS()
@anonymous
class IMediaStreamAudioDestinationNode {
  external MediaStreamAudioDestinationNode get prototype;
  external set prototype(MediaStreamAudioDestinationNode value);
  external factory IMediaStreamAudioDestinationNode({AudioContext context, AudioNodeOptions options});
}

@JS()
@anonymous
class IMediaStreamAudioSourceNode {
  external MediaStreamAudioSourceNode get prototype;
  external set prototype(MediaStreamAudioSourceNode value);
  external factory IMediaStreamAudioSourceNode({AudioContext context, MediaStreamAudioSourceOptions options});
}

@JS()
@anonymous
class IMediaStreamTrack {
  external MediaStreamTrack get prototype;
  external set prototype(MediaStreamTrack value);
  external factory IMediaStreamTrack();
}

@JS()
@anonymous
class IMediaStreamTrackEvent {
  external MediaStreamTrackEvent get prototype;
  external set prototype(MediaStreamTrackEvent value);
  external factory IMediaStreamTrackEvent({String type, MediaStreamTrackEventInit eventInitDict});
}

@JS()
@anonymous
class IMemory {
  external Memory get prototype;
  external set prototype(Memory value);
  external factory IMemory({MemoryDescriptor descriptor});
}

@JS()
@anonymous
class IMessageChannel {
  external MessageChannel get prototype;
  external set prototype(MessageChannel value);
  external factory IMessageChannel();
}

@JS()
@anonymous
class IMessageEvent {
  external MessageEvent get prototype;
  external set prototype(MessageEvent value);
  external factory IMessageEvent({String type, MessageEventInit<T> eventInitDict});
}

@JS()
@anonymous
class IMessagePort {
  external MessagePort get prototype;
  external set prototype(MessagePort value);
  external factory IMessagePort();
}

@JS()
@anonymous
class IMimeType {
  external MimeType get prototype;
  external set prototype(MimeType value);
  external factory IMimeType();
}

@JS()
@anonymous
class IMimeTypeArray {
  external MimeTypeArray get prototype;
  external set prototype(MimeTypeArray value);
  external factory IMimeTypeArray();
}

@JS()
@anonymous
class IModule {
  external Module get prototype;
  external set prototype(Module value);
  external factory IModule({BufferSource bytes});
  external List<ByteBuffer> customSections(Module moduleObject, String sectionName);
  external List<ModuleExportDescriptor> exports(Module moduleObject);
  external List<ModuleImportDescriptor> imports(Module moduleObject);
}

@JS()
@anonymous
class IMouseEvent {
  external MouseEvent get prototype;
  external set prototype(MouseEvent value);
  external factory IMouseEvent({String type, MouseEventInit eventInitDict});
}

@JS()
@anonymous
class IMutationEvent {
  external MutationEvent get prototype;
  external set prototype(MutationEvent value);
  external factory IMutationEvent();
  external num get ADDITION;
  external num get MODIFICATION;
  external num get REMOVAL;
}

@JS()
@anonymous
class IMutationObserver {
  external MutationObserver get prototype;
  external set prototype(MutationObserver value);
  external factory IMutationObserver({MutationCallback callback});
}

@JS()
@anonymous
class IMutationRecord {
  external MutationRecord get prototype;
  external set prototype(MutationRecord value);
  external factory IMutationRecord();
}

@JS()
@anonymous
class INamedNodeMap {
  external NamedNodeMap get prototype;
  external set prototype(NamedNodeMap value);
  external factory INamedNodeMap();
}

@JS()
@anonymous
class INavigator {
  external Navigator get prototype;
  external set prototype(Navigator value);
  external factory INavigator();
}

@JS()
@anonymous
class INetworkInformation {
  external NetworkInformation get prototype;
  external set prototype(NetworkInformation value);
  external factory INetworkInformation();
}

@JS()
@anonymous
class INode {
  external Node get prototype;
  external set prototype(Node value);
  external factory INode();
  external num get ATTRIBUTE_NODE;
  external num get CDATA_SECTION_NODE;
  external num get COMMENT_NODE;
  external num get DOCUMENT_FRAGMENT_NODE;
  external num get DOCUMENT_NODE;
  external num get DOCUMENT_POSITION_CONTAINED_BY;
  external num get DOCUMENT_POSITION_CONTAINS;
  external num get DOCUMENT_POSITION_DISCONNECTED;
  external num get DOCUMENT_POSITION_FOLLOWING;
  external num get DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC;
  external num get DOCUMENT_POSITION_PRECEDING;
  external num get DOCUMENT_TYPE_NODE;
  external num get ELEMENT_NODE;
  external num get ENTITY_NODE;
  external num get ENTITY_REFERENCE_NODE;
  external num get NOTATION_NODE;
  external num get PROCESSING_INSTRUCTION_NODE;
  external num get TEXT_NODE;
}

@JS()
@anonymous
class INodeFilter {
  external num get FILTER_ACCEPT;
  external num get FILTER_REJECT;
  external num get FILTER_SKIP;
  external num get SHOW_ALL;
  external num get SHOW_ATTRIBUTE;
  external num get SHOW_CDATA_SECTION;
  external num get SHOW_COMMENT;
  external num get SHOW_DOCUMENT;
  external num get SHOW_DOCUMENT_FRAGMENT;
  external num get SHOW_DOCUMENT_TYPE;
  external num get SHOW_ELEMENT;
  external num get SHOW_ENTITY;
  external num get SHOW_ENTITY_REFERENCE;
  external num get SHOW_NOTATION;
  external num get SHOW_PROCESSING_INSTRUCTION;
  external num get SHOW_TEXT;
}

@JS()
@anonymous
class INodeIterator {
  external NodeIterator get prototype;
  external set prototype(NodeIterator value);
  external factory INodeIterator();
}

@JS()
@anonymous
class INodeList {
  external NodeList get prototype;
  external set prototype(NodeList value);
  external factory INodeList();
}

@JS()
@anonymous
class INotification {
  external Notification get prototype;
  external set prototype(Notification value);
  external factory INotification({String title, NotificationOptions options});
  external NotificationPermission get permission;
  external Promise<NotificationPermission> requestPermission(NotificationPermissionCallback deprecatedCallback);
}

@JS()
@anonymous
class IOfflineAudioCompletionEvent {
  external OfflineAudioCompletionEvent get prototype;
  external set prototype(OfflineAudioCompletionEvent value);
  external factory IOfflineAudioCompletionEvent({String type, OfflineAudioCompletionEventInit eventInitDict});
}

@JS()
@anonymous
class IOfflineAudioContext {
  external OfflineAudioContext get prototype;
  external set prototype(OfflineAudioContext value);
  external factory IOfflineAudioContext({OfflineAudioContextOptions contextOptions});
}

@JS()
@anonymous
class IOption {
  external factory IOption({String text, String value, bool defaultSelected, bool selected});
}

@JS()
@anonymous
class IOscillatorNode {
  external OscillatorNode get prototype;
  external set prototype(OscillatorNode value);
  external factory IOscillatorNode({BaseAudioContext context, OscillatorOptions options});
}

@JS()
@anonymous
class IOverconstrainedError {
  external OverconstrainedError get prototype;
  external set prototype(OverconstrainedError value);
  external factory IOverconstrainedError({String constraint, String message});
}

@JS()
@anonymous
class IPageTransitionEvent {
  external PageTransitionEvent get prototype;
  external set prototype(PageTransitionEvent value);
  external factory IPageTransitionEvent({String type, PageTransitionEventInit eventInitDict});
}

@JS()
@anonymous
class IPannerNode {
  external PannerNode get prototype;
  external set prototype(PannerNode value);
  external factory IPannerNode({BaseAudioContext context, PannerOptions options});
}

@JS()
@anonymous
class IPath2D {
  external Path2D get prototype;
  external set prototype(Path2D value);
  external factory IPath2D({dynamic path});
}

@JS()
@anonymous
class IPaymentAddress {
  external PaymentAddress get prototype;
  external set prototype(PaymentAddress value);
  external factory IPaymentAddress();
}

@JS()
@anonymous
class IPaymentMethodChangeEvent {
  external PaymentMethodChangeEvent get prototype;
  external set prototype(PaymentMethodChangeEvent value);
  external factory IPaymentMethodChangeEvent({String type, PaymentMethodChangeEventInit eventInitDict});
}

@JS()
@anonymous
class IPaymentRequest {
  external PaymentRequest get prototype;
  external set prototype(PaymentRequest value);
  external factory IPaymentRequest({List<PaymentMethodData> methodData, PaymentDetailsInit details});
}

@JS()
@anonymous
class IPaymentRequestUpdateEvent {
  external PaymentRequestUpdateEvent get prototype;
  external set prototype(PaymentRequestUpdateEvent value);
  external factory IPaymentRequestUpdateEvent({String type, PaymentRequestUpdateEventInit eventInitDict});
}

@JS()
@anonymous
class IPaymentResponse {
  external PaymentResponse get prototype;
  external set prototype(PaymentResponse value);
  external factory IPaymentResponse();
}

@JS()
@anonymous
class IPerformance {
  external Performance get prototype;
  external set prototype(Performance value);
  external factory IPerformance();
}

@JS()
@anonymous
class IPerformanceEntry {
  external PerformanceEntry get prototype;
  external set prototype(PerformanceEntry value);
  external factory IPerformanceEntry();
}

@JS()
@anonymous
class IPerformanceEventTiming {
  external PerformanceEventTiming get prototype;
  external set prototype(PerformanceEventTiming value);
  external factory IPerformanceEventTiming();
}

@JS()
@anonymous
class IPerformanceMark {
  external PerformanceMark get prototype;
  external set prototype(PerformanceMark value);
  external factory IPerformanceMark({String markName, PerformanceMarkOptions markOptions});
}

@JS()
@anonymous
class IPerformanceMeasure {
  external PerformanceMeasure get prototype;
  external set prototype(PerformanceMeasure value);
  external factory IPerformanceMeasure();
}

@JS()
@anonymous
class IPerformanceNavigation {
  external PerformanceNavigation get prototype;
  external set prototype(PerformanceNavigation value);
  external factory IPerformanceNavigation();
  external num get TYPE_BACK_FORWARD;
  external num get TYPE_NAVIGATE;
  external num get TYPE_RELOAD;
  external num get TYPE_RESERVED;
}

@JS()
@anonymous
class IPerformanceNavigationTiming {
  external PerformanceNavigationTiming get prototype;
  external set prototype(PerformanceNavigationTiming value);
  external factory IPerformanceNavigationTiming();
}

@JS()
@anonymous
class IPerformanceObserver {
  external PerformanceObserver get prototype;
  external set prototype(PerformanceObserver value);
  external factory IPerformanceObserver({PerformanceObserverCallback callback});
  external List<String> get supportedEntryTypes;
}

@JS()
@anonymous
class IPerformanceObserverEntryList {
  external PerformanceObserverEntryList get prototype;
  external set prototype(PerformanceObserverEntryList value);
  external factory IPerformanceObserverEntryList();
}

@JS()
@anonymous
class IPerformancePaintTiming {
  external PerformancePaintTiming get prototype;
  external set prototype(PerformancePaintTiming value);
  external factory IPerformancePaintTiming();
}

@JS()
@anonymous
class IPerformanceResourceTiming {
  external PerformanceResourceTiming get prototype;
  external set prototype(PerformanceResourceTiming value);
  external factory IPerformanceResourceTiming();
}

@JS()
@anonymous
class IPerformanceServerTiming {
  external PerformanceServerTiming get prototype;
  external set prototype(PerformanceServerTiming value);
  external factory IPerformanceServerTiming();
}

@JS()
@anonymous
class IPerformanceTiming {
  external PerformanceTiming get prototype;
  external set prototype(PerformanceTiming value);
  external factory IPerformanceTiming();
}

@JS()
@anonymous
class IPeriodicWave {
  external PeriodicWave get prototype;
  external set prototype(PeriodicWave value);
  external factory IPeriodicWave({BaseAudioContext context, PeriodicWaveOptions options});
}

@JS()
@anonymous
class IPermissionStatus {
  external PermissionStatus get prototype;
  external set prototype(PermissionStatus value);
  external factory IPermissionStatus();
}

@JS()
@anonymous
class IPermissions {
  external Permissions get prototype;
  external set prototype(Permissions value);
  external factory IPermissions();
}

@JS()
@anonymous
class IPictureInPictureWindow {
  external PictureInPictureWindow get prototype;
  external set prototype(PictureInPictureWindow value);
  external factory IPictureInPictureWindow();
}

@JS()
@anonymous
class IPlugin {
  external Plugin get prototype;
  external set prototype(Plugin value);
  external factory IPlugin();
}

@JS()
@anonymous
class IPluginArray {
  external PluginArray get prototype;
  external set prototype(PluginArray value);
  external factory IPluginArray();
}

@JS()
@anonymous
class IPointerEvent {
  external PointerEvent get prototype;
  external set prototype(PointerEvent value);
  external factory IPointerEvent({String type, PointerEventInit eventInitDict});
}

@JS()
@anonymous
class IPopStateEvent {
  external PopStateEvent get prototype;
  external set prototype(PopStateEvent value);
  external factory IPopStateEvent({String type, PopStateEventInit eventInitDict});
}

@JS()
@anonymous
class IProcessingInstruction {
  external ProcessingInstruction get prototype;
  external set prototype(ProcessingInstruction value);
  external factory IProcessingInstruction();
}

@JS()
@anonymous
class IProgressEvent {
  external ProgressEvent get prototype;
  external set prototype(ProgressEvent value);
  external factory IProgressEvent({String type, ProgressEventInit eventInitDict});
}

@JS()
@anonymous
class IPromiseRejectionEvent {
  external PromiseRejectionEvent get prototype;
  external set prototype(PromiseRejectionEvent value);
  external factory IPromiseRejectionEvent({String type, PromiseRejectionEventInit eventInitDict});
}

@JS()
@anonymous
class IPublicKeyCredential {
  external PublicKeyCredential get prototype;
  external set prototype(PublicKeyCredential value);
  external factory IPublicKeyCredential();
  external Promise<bool> isUserVerifyingPlatformAuthenticatorAvailable();
}

@JS()
@anonymous
class IPushManager {
  external PushManager get prototype;
  external set prototype(PushManager value);
  external factory IPushManager();
  external List<String> get supportedContentEncodings;
}

@JS()
@anonymous
class IPushSubscription {
  external PushSubscription get prototype;
  external set prototype(PushSubscription value);
  external factory IPushSubscription();
}

@JS()
@anonymous
class IPushSubscriptionOptions {
  external PushSubscriptionOptions get prototype;
  external set prototype(PushSubscriptionOptions value);
  external factory IPushSubscriptionOptions();
}

@JS()
@anonymous
class IRTCCertificate {
  external RTCCertificate get prototype;
  external set prototype(RTCCertificate value);
  external factory IRTCCertificate();
}

@JS()
@anonymous
class IRTCDTMFSender {
  external RtcDtmfSender get prototype;
  external set prototype(RtcDtmfSender value);
  external factory IRTCDTMFSender();
}

@JS()
@anonymous
class IRTCDTMFToneChangeEvent {
  external RtcDtmfToneChangeEvent get prototype;
  external set prototype(RtcDtmfToneChangeEvent value);
  external factory IRTCDTMFToneChangeEvent({String type, RTCDTMFToneChangeEventInit eventInitDict});
}

@JS()
@anonymous
class IRTCDataChannel {
  external RtcDataChannel get prototype;
  external set prototype(RtcDataChannel value);
  external factory IRTCDataChannel();
}

@JS()
@anonymous
class IRTCDataChannelEvent {
  external RtcDataChannelEvent get prototype;
  external set prototype(RtcDataChannelEvent value);
  external factory IRTCDataChannelEvent({String type, RTCDataChannelEventInit eventInitDict});
}

@JS()
@anonymous
class IRTCDtlsTransport {
  external RTCDtlsTransport get prototype;
  external set prototype(RTCDtlsTransport value);
  external factory IRTCDtlsTransport();
}

@JS()
@anonymous
class IRTCIceCandidate {
  external RtcIceCandidate get prototype;
  external set prototype(RtcIceCandidate value);
  external factory IRTCIceCandidate({RTCIceCandidateInit candidateInitDict});
}

@JS()
@anonymous
class IRTCIceTransport {
  external RTCIceTransport get prototype;
  external set prototype(RTCIceTransport value);
  external factory IRTCIceTransport();
}

@JS()
@anonymous
class IRTCPeerConnection {
  external RtcPeerConnection get prototype;
  external set prototype(RtcPeerConnection value);
  external factory IRTCPeerConnection({RTCConfiguration configuration});
  external Promise<RTCCertificate> generateCertificate(AlgorithmIdentifier keygenAlgorithm);
}

@JS()
@anonymous
class IRTCPeerConnectionIceErrorEvent {
  external RTCPeerConnectionIceErrorEvent get prototype;
  external set prototype(RTCPeerConnectionIceErrorEvent value);
  external factory IRTCPeerConnectionIceErrorEvent({String type, RTCPeerConnectionIceErrorEventInit eventInitDict});
}

@JS()
@anonymous
class IRTCPeerConnectionIceEvent {
  external RTCPeerConnectionIceEvent get prototype;
  external set prototype(RTCPeerConnectionIceEvent value);
  external factory IRTCPeerConnectionIceEvent({String type, RTCPeerConnectionIceEventInit eventInitDict});
}

@JS()
@anonymous
class IRTCRtpReceiver {
  external RTCRtpReceiver get prototype;
  external set prototype(RTCRtpReceiver value);
  external factory IRTCRtpReceiver();
  external RTCRtpCapabilities? getCapabilities(String kind);
}

@JS()
@anonymous
class IRTCRtpSender {
  external RTCRtpSender get prototype;
  external set prototype(RTCRtpSender value);
  external factory IRTCRtpSender();
  external RTCRtpCapabilities? getCapabilities(String kind);
}

@JS()
@anonymous
class IRTCRtpTransceiver {
  external RTCRtpTransceiver get prototype;
  external set prototype(RTCRtpTransceiver value);
  external factory IRTCRtpTransceiver();
}

@JS()
@anonymous
class IRTCSessionDescription {
  external RtcSessionDescription get prototype;
  external set prototype(RtcSessionDescription value);
  external factory IRTCSessionDescription({RTCSessionDescriptionInit descriptionInitDict});
}

@JS()
@anonymous
class IRTCStatsReport {
  external RtcStatsReport get prototype;
  external set prototype(RtcStatsReport value);
  external factory IRTCStatsReport();
}

@JS()
@anonymous
class IRTCTrackEvent {
  external RTCTrackEvent get prototype;
  external set prototype(RTCTrackEvent value);
  external factory IRTCTrackEvent({String type, RTCTrackEventInit eventInitDict});
}

@JS()
@anonymous
class IRadioNodeList {
  external RadioNodeList get prototype;
  external set prototype(RadioNodeList value);
  external factory IRadioNodeList();
}

@JS()
@anonymous
class IRange {
  external Range get prototype;
  external set prototype(Range value);
  external factory IRange();
  external num get END_TO_END;
  external num get END_TO_START;
  external num get START_TO_END;
  external num get START_TO_START;
  @override
  external String toString();
}

@JS()
@anonymous
class IReadableStream {
  external ReadableStream get prototype;
  external set prototype(ReadableStream value);
  external factory IReadableStream({UnderlyingSource<R> underlyingSource, QueuingStrategy<R> strategy});
}

@JS()
@anonymous
class IReadableStreamDefaultController {
  external ReadableStreamDefaultController get prototype;
  external set prototype(ReadableStreamDefaultController value);
  external factory IReadableStreamDefaultController();
}

@JS()
@anonymous
class IReadableStreamDefaultReader {
  external ReadableStreamDefaultReader get prototype;
  external set prototype(ReadableStreamDefaultReader value);
  external factory IReadableStreamDefaultReader({ReadableStream<R> stream});
}

@JS()
@anonymous
class IRemotePlayback {
  external RemotePlayback get prototype;
  external set prototype(RemotePlayback value);
  external factory IRemotePlayback();
}

@JS()
@anonymous
class IRequest {
  external Request get prototype;
  external set prototype(Request value);
  external factory IRequest({RequestInfo input, RequestInit init});
}

@JS()
@anonymous
class IResizeObserver {
  external ResizeObserver get prototype;
  external set prototype(ResizeObserver value);
  external factory IResizeObserver({ResizeObserverCallback callback});
}

@JS()
@anonymous
class IResizeObserverEntry {
  external ResizeObserverEntry get prototype;
  external set prototype(ResizeObserverEntry value);
  external factory IResizeObserverEntry();
}

@JS()
@anonymous
class IResizeObserverSize {
  external ResizeObserverSize get prototype;
  external set prototype(ResizeObserverSize value);
  external factory IResizeObserverSize();
}

@JS()
@anonymous
class IResponse {
  external Response get prototype;
  external set prototype(Response value);
  external factory IResponse({BodyInit? body, ResponseInit init});
  external Response error();
  external Response redirect(dynamic url, num status);
}

@JS()
@anonymous
class IRuntimeError {
  external RuntimeError get prototype;
  external set prototype(RuntimeError value);
  external factory IRuntimeError();
}

@JS()
@anonymous
class ISVGAElement {
  external AElement get prototype;
  external set prototype(AElement value);
  external factory ISVGAElement();
}

@JS()
@anonymous
class ISVGAngle {
  external Angle get prototype;
  external set prototype(Angle value);
  external factory ISVGAngle();
  external num get SVG_ANGLETYPE_DEG;
  external num get SVG_ANGLETYPE_GRAD;
  external num get SVG_ANGLETYPE_RAD;
  external num get SVG_ANGLETYPE_UNKNOWN;
  external num get SVG_ANGLETYPE_UNSPECIFIED;
}

@JS()
@anonymous
class ISVGAnimateElement {
  external AnimateElement get prototype;
  external set prototype(AnimateElement value);
  external factory ISVGAnimateElement();
}

@JS()
@anonymous
class ISVGAnimateMotionElement {
  external AnimateMotionElement get prototype;
  external set prototype(AnimateMotionElement value);
  external factory ISVGAnimateMotionElement();
}

@JS()
@anonymous
class ISVGAnimateTransformElement {
  external AnimateTransformElement get prototype;
  external set prototype(AnimateTransformElement value);
  external factory ISVGAnimateTransformElement();
}

@JS()
@anonymous
class ISVGAnimatedAngle {
  external AnimatedAngle get prototype;
  external set prototype(AnimatedAngle value);
  external factory ISVGAnimatedAngle();
}

@JS()
@anonymous
class ISVGAnimatedBoolean {
  external AnimatedBoolean get prototype;
  external set prototype(AnimatedBoolean value);
  external factory ISVGAnimatedBoolean();
}

@JS()
@anonymous
class ISVGAnimatedEnumeration {
  external AnimatedEnumeration get prototype;
  external set prototype(AnimatedEnumeration value);
  external factory ISVGAnimatedEnumeration();
}

@JS()
@anonymous
class ISVGAnimatedInteger {
  external AnimatedInteger get prototype;
  external set prototype(AnimatedInteger value);
  external factory ISVGAnimatedInteger();
}

@JS()
@anonymous
class ISVGAnimatedLength {
  external AnimatedLength get prototype;
  external set prototype(AnimatedLength value);
  external factory ISVGAnimatedLength();
}

@JS()
@anonymous
class ISVGAnimatedLengthList {
  external AnimatedLengthList get prototype;
  external set prototype(AnimatedLengthList value);
  external factory ISVGAnimatedLengthList();
}

@JS()
@anonymous
class ISVGAnimatedNumber {
  external AnimatedNumber get prototype;
  external set prototype(AnimatedNumber value);
  external factory ISVGAnimatedNumber();
}

@JS()
@anonymous
class ISVGAnimatedNumberList {
  external AnimatedNumberList get prototype;
  external set prototype(AnimatedNumberList value);
  external factory ISVGAnimatedNumberList();
}

@JS()
@anonymous
class ISVGAnimatedPreserveAspectRatio {
  external AnimatedPreserveAspectRatio get prototype;
  external set prototype(AnimatedPreserveAspectRatio value);
  external factory ISVGAnimatedPreserveAspectRatio();
}

@JS()
@anonymous
class ISVGAnimatedRect {
  external AnimatedRect get prototype;
  external set prototype(AnimatedRect value);
  external factory ISVGAnimatedRect();
}

@JS()
@anonymous
class ISVGAnimatedString {
  external AnimatedString get prototype;
  external set prototype(AnimatedString value);
  external factory ISVGAnimatedString();
}

@JS()
@anonymous
class ISVGAnimatedTransformList {
  external AnimatedTransformList get prototype;
  external set prototype(AnimatedTransformList value);
  external factory ISVGAnimatedTransformList();
}

@JS()
@anonymous
class ISVGAnimationElement {
  external AnimationElement get prototype;
  external set prototype(AnimationElement value);
  external factory ISVGAnimationElement();
}

@JS()
@anonymous
class ISVGCircleElement {
  external CircleElement get prototype;
  external set prototype(CircleElement value);
  external factory ISVGCircleElement();
}

@JS()
@anonymous
class ISVGClipPathElement {
  external ClipPathElement get prototype;
  external set prototype(ClipPathElement value);
  external factory ISVGClipPathElement();
}

@JS()
@anonymous
class ISVGComponentTransferFunctionElement {
  external SVGComponentTransferFunctionElement get prototype;
  external set prototype(SVGComponentTransferFunctionElement value);
  external factory ISVGComponentTransferFunctionElement();
  external num get SVG_FECOMPONENTTRANSFER_TYPE_DISCRETE;
  external num get SVG_FECOMPONENTTRANSFER_TYPE_GAMMA;
  external num get SVG_FECOMPONENTTRANSFER_TYPE_IDENTITY;
  external num get SVG_FECOMPONENTTRANSFER_TYPE_LINEAR;
  external num get SVG_FECOMPONENTTRANSFER_TYPE_TABLE;
  external num get SVG_FECOMPONENTTRANSFER_TYPE_UNKNOWN;
}

@JS()
@anonymous
class ISVGCursorElement {
  external SVGCursorElement get prototype;
  external set prototype(SVGCursorElement value);
  external factory ISVGCursorElement();
}

@JS()
@anonymous
class ISVGDefsElement {
  external DefsElement get prototype;
  external set prototype(DefsElement value);
  external factory ISVGDefsElement();
}

@JS()
@anonymous
class ISVGDescElement {
  external DescElement get prototype;
  external set prototype(DescElement value);
  external factory ISVGDescElement();
}

@JS()
@anonymous
class ISVGElement {
  external SvgElement get prototype;
  external set prototype(SvgElement value);
  external factory ISVGElement();
}

@JS()
@anonymous
class ISVGEllipseElement {
  external EllipseElement get prototype;
  external set prototype(EllipseElement value);
  external factory ISVGEllipseElement();
}

@JS()
@anonymous
class ISVGFEBlendElement {
  external FEBlendElement get prototype;
  external set prototype(FEBlendElement value);
  external factory ISVGFEBlendElement();
  external num get SVG_FEBLEND_MODE_COLOR;
  external num get SVG_FEBLEND_MODE_COLOR_BURN;
  external num get SVG_FEBLEND_MODE_COLOR_DODGE;
  external num get SVG_FEBLEND_MODE_DARKEN;
  external num get SVG_FEBLEND_MODE_DIFFERENCE;
  external num get SVG_FEBLEND_MODE_EXCLUSION;
  external num get SVG_FEBLEND_MODE_HARD_LIGHT;
  external num get SVG_FEBLEND_MODE_HUE;
  external num get SVG_FEBLEND_MODE_LIGHTEN;
  external num get SVG_FEBLEND_MODE_LUMINOSITY;
  external num get SVG_FEBLEND_MODE_MULTIPLY;
  external num get SVG_FEBLEND_MODE_NORMAL;
  external num get SVG_FEBLEND_MODE_OVERLAY;
  external num get SVG_FEBLEND_MODE_SATURATION;
  external num get SVG_FEBLEND_MODE_SCREEN;
  external num get SVG_FEBLEND_MODE_SOFT_LIGHT;
  external num get SVG_FEBLEND_MODE_UNKNOWN;
}

@JS()
@anonymous
class ISVGFEColorMatrixElement {
  external FEColorMatrixElement get prototype;
  external set prototype(FEColorMatrixElement value);
  external factory ISVGFEColorMatrixElement();
  external num get SVG_FECOLORMATRIX_TYPE_HUEROTATE;
  external num get SVG_FECOLORMATRIX_TYPE_LUMINANCETOALPHA;
  external num get SVG_FECOLORMATRIX_TYPE_MATRIX;
  external num get SVG_FECOLORMATRIX_TYPE_SATURATE;
  external num get SVG_FECOLORMATRIX_TYPE_UNKNOWN;
}

@JS()
@anonymous
class ISVGFEComponentTransferElement {
  external FEComponentTransferElement get prototype;
  external set prototype(FEComponentTransferElement value);
  external factory ISVGFEComponentTransferElement();
}

@JS()
@anonymous
class ISVGFECompositeElement {
  external FECompositeElement get prototype;
  external set prototype(FECompositeElement value);
  external factory ISVGFECompositeElement();
  external num get SVG_FECOMPOSITE_OPERATOR_ARITHMETIC;
  external num get SVG_FECOMPOSITE_OPERATOR_ATOP;
  external num get SVG_FECOMPOSITE_OPERATOR_IN;
  external num get SVG_FECOMPOSITE_OPERATOR_OUT;
  external num get SVG_FECOMPOSITE_OPERATOR_OVER;
  external num get SVG_FECOMPOSITE_OPERATOR_UNKNOWN;
  external num get SVG_FECOMPOSITE_OPERATOR_XOR;
}

@JS()
@anonymous
class ISVGFEConvolveMatrixElement {
  external FEConvolveMatrixElement get prototype;
  external set prototype(FEConvolveMatrixElement value);
  external factory ISVGFEConvolveMatrixElement();
  external num get SVG_EDGEMODE_DUPLICATE;
  external num get SVG_EDGEMODE_NONE;
  external num get SVG_EDGEMODE_UNKNOWN;
  external num get SVG_EDGEMODE_WRAP;
}

@JS()
@anonymous
class ISVGFEDiffuseLightingElement {
  external FEDiffuseLightingElement get prototype;
  external set prototype(FEDiffuseLightingElement value);
  external factory ISVGFEDiffuseLightingElement();
}

@JS()
@anonymous
class ISVGFEDisplacementMapElement {
  external FEDisplacementMapElement get prototype;
  external set prototype(FEDisplacementMapElement value);
  external factory ISVGFEDisplacementMapElement();
  external num get SVG_CHANNEL_A;
  external num get SVG_CHANNEL_B;
  external num get SVG_CHANNEL_G;
  external num get SVG_CHANNEL_R;
  external num get SVG_CHANNEL_UNKNOWN;
}

@JS()
@anonymous
class ISVGFEDistantLightElement {
  external FEDistantLightElement get prototype;
  external set prototype(FEDistantLightElement value);
  external factory ISVGFEDistantLightElement();
}

@JS()
@anonymous
class ISVGFEDropShadowElement {
  external SVGFEDropShadowElement get prototype;
  external set prototype(SVGFEDropShadowElement value);
  external factory ISVGFEDropShadowElement();
}

@JS()
@anonymous
class ISVGFEFloodElement {
  external FEFloodElement get prototype;
  external set prototype(FEFloodElement value);
  external factory ISVGFEFloodElement();
}

@JS()
@anonymous
class ISVGFEFuncAElement {
  external FEFuncAElement get prototype;
  external set prototype(FEFuncAElement value);
  external factory ISVGFEFuncAElement();
}

@JS()
@anonymous
class ISVGFEFuncBElement {
  external FEFuncBElement get prototype;
  external set prototype(FEFuncBElement value);
  external factory ISVGFEFuncBElement();
}

@JS()
@anonymous
class ISVGFEFuncGElement {
  external FEFuncGElement get prototype;
  external set prototype(FEFuncGElement value);
  external factory ISVGFEFuncGElement();
}

@JS()
@anonymous
class ISVGFEFuncRElement {
  external FEFuncRElement get prototype;
  external set prototype(FEFuncRElement value);
  external factory ISVGFEFuncRElement();
}

@JS()
@anonymous
class ISVGFEGaussianBlurElement {
  external FEGaussianBlurElement get prototype;
  external set prototype(FEGaussianBlurElement value);
  external factory ISVGFEGaussianBlurElement();
}

@JS()
@anonymous
class ISVGFEImageElement {
  external FEImageElement get prototype;
  external set prototype(FEImageElement value);
  external factory ISVGFEImageElement();
}

@JS()
@anonymous
class ISVGFEMergeElement {
  external FEMergeElement get prototype;
  external set prototype(FEMergeElement value);
  external factory ISVGFEMergeElement();
}

@JS()
@anonymous
class ISVGFEMergeNodeElement {
  external FEMergeNodeElement get prototype;
  external set prototype(FEMergeNodeElement value);
  external factory ISVGFEMergeNodeElement();
}

@JS()
@anonymous
class ISVGFEMorphologyElement {
  external FEMorphologyElement get prototype;
  external set prototype(FEMorphologyElement value);
  external factory ISVGFEMorphologyElement();
  external num get SVG_MORPHOLOGY_OPERATOR_DILATE;
  external num get SVG_MORPHOLOGY_OPERATOR_ERODE;
  external num get SVG_MORPHOLOGY_OPERATOR_UNKNOWN;
}

@JS()
@anonymous
class ISVGFEOffsetElement {
  external FEOffsetElement get prototype;
  external set prototype(FEOffsetElement value);
  external factory ISVGFEOffsetElement();
}

@JS()
@anonymous
class ISVGFEPointLightElement {
  external FEPointLightElement get prototype;
  external set prototype(FEPointLightElement value);
  external factory ISVGFEPointLightElement();
}

@JS()
@anonymous
class ISVGFESpecularLightingElement {
  external FESpecularLightingElement get prototype;
  external set prototype(FESpecularLightingElement value);
  external factory ISVGFESpecularLightingElement();
}

@JS()
@anonymous
class ISVGFESpotLightElement {
  external FESpotLightElement get prototype;
  external set prototype(FESpotLightElement value);
  external factory ISVGFESpotLightElement();
}

@JS()
@anonymous
class ISVGFETileElement {
  external FETileElement get prototype;
  external set prototype(FETileElement value);
  external factory ISVGFETileElement();
}

@JS()
@anonymous
class ISVGFETurbulenceElement {
  external FETurbulenceElement get prototype;
  external set prototype(FETurbulenceElement value);
  external factory ISVGFETurbulenceElement();
  external num get SVG_STITCHTYPE_NOSTITCH;
  external num get SVG_STITCHTYPE_STITCH;
  external num get SVG_STITCHTYPE_UNKNOWN;
  external num get SVG_TURBULENCE_TYPE_FRACTALNOISE;
  external num get SVG_TURBULENCE_TYPE_TURBULENCE;
  external num get SVG_TURBULENCE_TYPE_UNKNOWN;
}

@JS()
@anonymous
class ISVGFilterElement {
  external FilterElement get prototype;
  external set prototype(FilterElement value);
  external factory ISVGFilterElement();
}

@JS()
@anonymous
class ISVGForeignObjectElement {
  external ForeignObjectElement get prototype;
  external set prototype(ForeignObjectElement value);
  external factory ISVGForeignObjectElement();
}

@JS()
@anonymous
class ISVGGElement {
  external GElement get prototype;
  external set prototype(GElement value);
  external factory ISVGGElement();
}

@JS()
@anonymous
class ISVGGeometryElement {
  external GeometryElement get prototype;
  external set prototype(GeometryElement value);
  external factory ISVGGeometryElement();
}

@JS()
@anonymous
class ISVGGradientElement {
  external SVGGradientElement get prototype;
  external set prototype(SVGGradientElement value);
  external factory ISVGGradientElement();
  external num get SVG_SPREADMETHOD_PAD;
  external num get SVG_SPREADMETHOD_REFLECT;
  external num get SVG_SPREADMETHOD_REPEAT;
  external num get SVG_SPREADMETHOD_UNKNOWN;
}

@JS()
@anonymous
class ISVGGraphicsElement {
  external GraphicsElement get prototype;
  external set prototype(GraphicsElement value);
  external factory ISVGGraphicsElement();
}

@JS()
@anonymous
class ISVGImageElement {
  external ImageElement get prototype;
  external set prototype(ImageElement value);
  external factory ISVGImageElement();
}

@JS()
@anonymous
class ISVGLength {
  external Length get prototype;
  external set prototype(Length value);
  external factory ISVGLength();
  external num get SVG_LENGTHTYPE_CM;
  external num get SVG_LENGTHTYPE_EMS;
  external num get SVG_LENGTHTYPE_EXS;
  external num get SVG_LENGTHTYPE_IN;
  external num get SVG_LENGTHTYPE_MM;
  external num get SVG_LENGTHTYPE_NUMBER;
  external num get SVG_LENGTHTYPE_PC;
  external num get SVG_LENGTHTYPE_PERCENTAGE;
  external num get SVG_LENGTHTYPE_PT;
  external num get SVG_LENGTHTYPE_PX;
  external num get SVG_LENGTHTYPE_UNKNOWN;
}

@JS()
@anonymous
class ISVGLengthList {
  external LengthList get prototype;
  external set prototype(LengthList value);
  external factory ISVGLengthList();
}

@JS()
@anonymous
class ISVGLineElement {
  external LineElement get prototype;
  external set prototype(LineElement value);
  external factory ISVGLineElement();
}

@JS()
@anonymous
class ISVGLinearGradientElement {
  external LinearGradientElement get prototype;
  external set prototype(LinearGradientElement value);
  external factory ISVGLinearGradientElement();
}

@JS()
@anonymous
class ISVGMPathElement {
  external SVGMPathElement get prototype;
  external set prototype(SVGMPathElement value);
  external factory ISVGMPathElement();
}

@JS()
@anonymous
class ISVGMarkerElement {
  external MarkerElement get prototype;
  external set prototype(MarkerElement value);
  external factory ISVGMarkerElement();
  external num get SVG_MARKERUNITS_STROKEWIDTH;
  external num get SVG_MARKERUNITS_UNKNOWN;
  external num get SVG_MARKERUNITS_USERSPACEONUSE;
  external num get SVG_MARKER_ORIENT_ANGLE;
  external num get SVG_MARKER_ORIENT_AUTO;
  external num get SVG_MARKER_ORIENT_UNKNOWN;
}

@JS()
@anonymous
class ISVGMaskElement {
  external MaskElement get prototype;
  external set prototype(MaskElement value);
  external factory ISVGMaskElement();
}

@JS()
@anonymous
class ISVGMetadataElement {
  external MetadataElement get prototype;
  external set prototype(MetadataElement value);
  external factory ISVGMetadataElement();
}

@JS()
@anonymous
class ISVGNumber {
  external Number get prototype;
  external set prototype(Number value);
  external factory ISVGNumber();
}

@JS()
@anonymous
class ISVGNumberList {
  external NumberList get prototype;
  external set prototype(NumberList value);
  external factory ISVGNumberList();
}

@JS()
@anonymous
class ISVGPathElement {
  external PathElement get prototype;
  external set prototype(PathElement value);
  external factory ISVGPathElement();
}

@JS()
@anonymous
class ISVGPatternElement {
  external PatternElement get prototype;
  external set prototype(PatternElement value);
  external factory ISVGPatternElement();
}

@JS()
@anonymous
class ISVGPointList {
  external PointList get prototype;
  external set prototype(PointList value);
  external factory ISVGPointList();
}

@JS()
@anonymous
class ISVGPolygonElement {
  external PolygonElement get prototype;
  external set prototype(PolygonElement value);
  external factory ISVGPolygonElement();
}

@JS()
@anonymous
class ISVGPolylineElement {
  external PolylineElement get prototype;
  external set prototype(PolylineElement value);
  external factory ISVGPolylineElement();
}

@JS()
@anonymous
class ISVGPreserveAspectRatio {
  external PreserveAspectRatio get prototype;
  external set prototype(PreserveAspectRatio value);
  external factory ISVGPreserveAspectRatio();
  external num get SVG_MEETORSLICE_MEET;
  external num get SVG_MEETORSLICE_SLICE;
  external num get SVG_MEETORSLICE_UNKNOWN;
  external num get SVG_PRESERVEASPECTRATIO_NONE;
  external num get SVG_PRESERVEASPECTRATIO_UNKNOWN;
  external num get SVG_PRESERVEASPECTRATIO_XMAXYMAX;
  external num get SVG_PRESERVEASPECTRATIO_XMAXYMID;
  external num get SVG_PRESERVEASPECTRATIO_XMAXYMIN;
  external num get SVG_PRESERVEASPECTRATIO_XMIDYMAX;
  external num get SVG_PRESERVEASPECTRATIO_XMIDYMID;
  external num get SVG_PRESERVEASPECTRATIO_XMIDYMIN;
  external num get SVG_PRESERVEASPECTRATIO_XMINYMAX;
  external num get SVG_PRESERVEASPECTRATIO_XMINYMID;
  external num get SVG_PRESERVEASPECTRATIO_XMINYMIN;
}

@JS()
@anonymous
class ISVGRadialGradientElement {
  external RadialGradientElement get prototype;
  external set prototype(RadialGradientElement value);
  external factory ISVGRadialGradientElement();
}

@JS()
@anonymous
class ISVGRectElement {
  external RectElement get prototype;
  external set prototype(RectElement value);
  external factory ISVGRectElement();
}

@JS()
@anonymous
class ISVGSVGElement {
  external SvgSvgElement get prototype;
  external set prototype(SvgSvgElement value);
  external factory ISVGSVGElement();
}

@JS()
@anonymous
class ISVGScriptElement {
  external ScriptElement get prototype;
  external set prototype(ScriptElement value);
  external factory ISVGScriptElement();
}

@JS()
@anonymous
class ISVGSetElement {
  external SetElement get prototype;
  external set prototype(SetElement value);
  external factory ISVGSetElement();
}

@JS()
@anonymous
class ISVGStopElement {
  external StopElement get prototype;
  external set prototype(StopElement value);
  external factory ISVGStopElement();
}

@JS()
@anonymous
class ISVGStringList {
  external StringList get prototype;
  external set prototype(StringList value);
  external factory ISVGStringList();
}

@JS()
@anonymous
class ISVGStyleElement {
  external StyleElement get prototype;
  external set prototype(StyleElement value);
  external factory ISVGStyleElement();
}

@JS()
@anonymous
class ISVGSwitchElement {
  external SwitchElement get prototype;
  external set prototype(SwitchElement value);
  external factory ISVGSwitchElement();
}

@JS()
@anonymous
class ISVGSymbolElement {
  external SymbolElement get prototype;
  external set prototype(SymbolElement value);
  external factory ISVGSymbolElement();
}

@JS()
@anonymous
class ISVGTSpanElement {
  external TSpanElement get prototype;
  external set prototype(TSpanElement value);
  external factory ISVGTSpanElement();
}

@JS()
@anonymous
class ISVGTextContentElement {
  external TextContentElement get prototype;
  external set prototype(TextContentElement value);
  external factory ISVGTextContentElement();
  external num get LENGTHADJUST_SPACING;
  external num get LENGTHADJUST_SPACINGANDGLYPHS;
  external num get LENGTHADJUST_UNKNOWN;
}

@JS()
@anonymous
class ISVGTextElement {
  external TextElement get prototype;
  external set prototype(TextElement value);
  external factory ISVGTextElement();
}

@JS()
@anonymous
class ISVGTextPathElement {
  external TextPathElement get prototype;
  external set prototype(TextPathElement value);
  external factory ISVGTextPathElement();
  external num get TEXTPATH_METHODTYPE_ALIGN;
  external num get TEXTPATH_METHODTYPE_STRETCH;
  external num get TEXTPATH_METHODTYPE_UNKNOWN;
  external num get TEXTPATH_SPACINGTYPE_AUTO;
  external num get TEXTPATH_SPACINGTYPE_EXACT;
  external num get TEXTPATH_SPACINGTYPE_UNKNOWN;
}

@JS()
@anonymous
class ISVGTextPositioningElement {
  external TextPositioningElement get prototype;
  external set prototype(TextPositioningElement value);
  external factory ISVGTextPositioningElement();
}

@JS()
@anonymous
class ISVGTitleElement {
  external TitleElement get prototype;
  external set prototype(TitleElement value);
  external factory ISVGTitleElement();
}

@JS()
@anonymous
class ISVGTransform {
  external Transform get prototype;
  external set prototype(Transform value);
  external factory ISVGTransform();
  external num get SVG_TRANSFORM_MATRIX;
  external num get SVG_TRANSFORM_ROTATE;
  external num get SVG_TRANSFORM_SCALE;
  external num get SVG_TRANSFORM_SKEWX;
  external num get SVG_TRANSFORM_SKEWY;
  external num get SVG_TRANSFORM_TRANSLATE;
  external num get SVG_TRANSFORM_UNKNOWN;
}

@JS()
@anonymous
class ISVGTransformList {
  external TransformList get prototype;
  external set prototype(TransformList value);
  external factory ISVGTransformList();
}

@JS()
@anonymous
class ISVGUnitTypes {
  external UnitTypes get prototype;
  external set prototype(UnitTypes value);
  external factory ISVGUnitTypes();
  external num get SVG_UNIT_TYPE_OBJECTBOUNDINGBOX;
  external num get SVG_UNIT_TYPE_UNKNOWN;
  external num get SVG_UNIT_TYPE_USERSPACEONUSE;
}

@JS()
@anonymous
class ISVGUseElement {
  external UseElement get prototype;
  external set prototype(UseElement value);
  external factory ISVGUseElement();
}

@JS()
@anonymous
class ISVGViewElement {
  external ViewElement get prototype;
  external set prototype(ViewElement value);
  external factory ISVGViewElement();
}

@JS()
@anonymous
class IScreen {
  external Screen get prototype;
  external set prototype(Screen value);
  external factory IScreen();
}

@JS()
@anonymous
class IScreenOrientation {
  external ScreenOrientation get prototype;
  external set prototype(ScreenOrientation value);
  external factory IScreenOrientation();
}

@JS()
@anonymous
class IScriptProcessorNode {
  external ScriptProcessorNode get prototype;
  external set prototype(ScriptProcessorNode value);
  external factory IScriptProcessorNode();
}

@JS()
@anonymous
class ISecurityPolicyViolationEvent {
  external SecurityPolicyViolationEvent get prototype;
  external set prototype(SecurityPolicyViolationEvent value);
  external factory ISecurityPolicyViolationEvent({String type, SecurityPolicyViolationEventInit eventInitDict});
}

@JS()
@anonymous
class ISelection {
  external Selection get prototype;
  external set prototype(Selection value);
  external factory ISelection();
  @override
  external String toString();
}

@JS()
@anonymous
class IServiceWorker {
  external ServiceWorker get prototype;
  external set prototype(ServiceWorker value);
  external factory IServiceWorker();
}

@JS()
@anonymous
class IServiceWorkerContainer {
  external ServiceWorkerContainer get prototype;
  external set prototype(ServiceWorkerContainer value);
  external factory IServiceWorkerContainer();
}

@JS()
@anonymous
class IServiceWorkerRegistration {
  external ServiceWorkerRegistration get prototype;
  external set prototype(ServiceWorkerRegistration value);
  external factory IServiceWorkerRegistration();
}

@JS()
@anonymous
class IShadowRoot {
  external ShadowRoot get prototype;
  external set prototype(ShadowRoot value);
  external factory IShadowRoot();
}

@JS()
@anonymous
class ISharedWorker {
  external SharedWorker get prototype;
  external set prototype(SharedWorker value);
  external factory ISharedWorker({dynamic scriptURL, dynamic options});
}

@JS()
@anonymous
class ISourceBuffer {
  external SourceBuffer get prototype;
  external set prototype(SourceBuffer value);
  external factory ISourceBuffer();
}

@JS()
@anonymous
class ISourceBufferList {
  external SourceBufferList get prototype;
  external set prototype(SourceBufferList value);
  external factory ISourceBufferList();
}

@JS()
@anonymous
class ISpeechRecognitionAlternative {
  external SpeechRecognitionAlternative get prototype;
  external set prototype(SpeechRecognitionAlternative value);
  external factory ISpeechRecognitionAlternative();
}

@JS()
@anonymous
class ISpeechRecognitionErrorEvent {
  external SpeechRecognitionErrorEvent get prototype;
  external set prototype(SpeechRecognitionErrorEvent value);
  external factory ISpeechRecognitionErrorEvent({String type, SpeechRecognitionErrorEventInit eventInitDict});
}

@JS()
@anonymous
class ISpeechRecognitionResult {
  external SpeechRecognitionResult get prototype;
  external set prototype(SpeechRecognitionResult value);
  external factory ISpeechRecognitionResult();
}

@JS()
@anonymous
class ISpeechRecognitionResultList {
  external SpeechRecognitionResultList get prototype;
  external set prototype(SpeechRecognitionResultList value);
  external factory ISpeechRecognitionResultList();
}

@JS()
@anonymous
class ISpeechSynthesis {
  external SpeechSynthesis get prototype;
  external set prototype(SpeechSynthesis value);
  external factory ISpeechSynthesis();
}

@JS()
@anonymous
class ISpeechSynthesisErrorEvent {
  external SpeechSynthesisErrorEvent get prototype;
  external set prototype(SpeechSynthesisErrorEvent value);
  external factory ISpeechSynthesisErrorEvent({String type, SpeechSynthesisErrorEventInit eventInitDict});
}

@JS()
@anonymous
class ISpeechSynthesisEvent {
  external SpeechSynthesisEvent get prototype;
  external set prototype(SpeechSynthesisEvent value);
  external factory ISpeechSynthesisEvent({String type, SpeechSynthesisEventInit eventInitDict});
}

@JS()
@anonymous
class ISpeechSynthesisUtterance {
  external SpeechSynthesisUtterance get prototype;
  external set prototype(SpeechSynthesisUtterance value);
  external factory ISpeechSynthesisUtterance({String text});
}

@JS()
@anonymous
class ISpeechSynthesisVoice {
  external SpeechSynthesisVoice get prototype;
  external set prototype(SpeechSynthesisVoice value);
  external factory ISpeechSynthesisVoice();
}

@JS()
@anonymous
class IStaticRange {
  external StaticRange get prototype;
  external set prototype(StaticRange value);
  external factory IStaticRange({StaticRangeInit init});
}

@JS()
@anonymous
class IStereoPannerNode {
  external StereoPannerNode get prototype;
  external set prototype(StereoPannerNode value);
  external factory IStereoPannerNode({BaseAudioContext context, StereoPannerOptions options});
}

@JS()
@anonymous
class IStorage {
  external Storage get prototype;
  external set prototype(Storage value);
  external factory IStorage();
}

@JS()
@anonymous
class IStorageEvent {
  external StorageEvent get prototype;
  external set prototype(StorageEvent value);
  external factory IStorageEvent({String type, StorageEventInit eventInitDict});
}

@JS()
@anonymous
class IStorageManager {
  external StorageManager get prototype;
  external set prototype(StorageManager value);
  external factory IStorageManager();
}

@JS()
@anonymous
class IStyleMedia {
  external StyleMedia get prototype;
  external set prototype(StyleMedia value);
  external factory IStyleMedia();
}

@JS()
@anonymous
class IStyleSheet {
  external StyleSheet get prototype;
  external set prototype(StyleSheet value);
  external factory IStyleSheet();
}

@JS()
@anonymous
class IStyleSheetList {
  external StyleSheetList get prototype;
  external set prototype(StyleSheetList value);
  external factory IStyleSheetList();
}

@JS()
@anonymous
class ISubmitEvent {
  external SubmitEvent get prototype;
  external set prototype(SubmitEvent value);
  external factory ISubmitEvent({String type, SubmitEventInit eventInitDict});
}

@JS()
@anonymous
class ISubtleCrypto {
  external SubtleCrypto get prototype;
  external set prototype(SubtleCrypto value);
  external factory ISubtleCrypto();
}

@JS()
@anonymous
class ITable {
  external Table get prototype;
  external set prototype(Table value);
  external factory ITable({TableDescriptor descriptor, dynamic value});
}

@JS()
@anonymous
class IText {
  external Text get prototype;
  external set prototype(Text value);
  external factory IText({String data});
}

@JS()
@anonymous
class ITextDecoder {
  external TextDecoder get prototype;
  external set prototype(TextDecoder value);
  external factory ITextDecoder({String label, TextDecoderOptions options});
}

@JS()
@anonymous
class ITextDecoderStream {
  external TextDecoderStream get prototype;
  external set prototype(TextDecoderStream value);
  external factory ITextDecoderStream({String label, TextDecoderOptions options});
}

@JS()
@anonymous
class ITextEncoder {
  external TextEncoder get prototype;
  external set prototype(TextEncoder value);
  external factory ITextEncoder();
}

@JS()
@anonymous
class ITextEncoderStream {
  external TextEncoderStream get prototype;
  external set prototype(TextEncoderStream value);
  external factory ITextEncoderStream();
}

@JS()
@anonymous
class ITextMetrics {
  external TextMetrics get prototype;
  external set prototype(TextMetrics value);
  external factory ITextMetrics();
}

@JS()
@anonymous
class ITextTrack {
  external TextTrack get prototype;
  external set prototype(TextTrack value);
  external factory ITextTrack();
}

@JS()
@anonymous
class ITextTrackCue {
  external TextTrackCue get prototype;
  external set prototype(TextTrackCue value);
  external factory ITextTrackCue();
}

@JS()
@anonymous
class ITextTrackCueList {
  external TextTrackCueList get prototype;
  external set prototype(TextTrackCueList value);
  external factory ITextTrackCueList();
}

@JS()
@anonymous
class ITextTrackList {
  external TextTrackList get prototype;
  external set prototype(TextTrackList value);
  external factory ITextTrackList();
}

@JS()
@anonymous
class ITimeRanges {
  external TimeRanges get prototype;
  external set prototype(TimeRanges value);
  external factory ITimeRanges();
}

@JS()
@anonymous
class ITouch {
  external Touch get prototype;
  external set prototype(Touch value);
  external factory ITouch({TouchInit touchInitDict});
}

@JS()
@anonymous
class ITouchEvent {
  external TouchEvent get prototype;
  external set prototype(TouchEvent value);
  external factory ITouchEvent({String type, TouchEventInit eventInitDict});
}

@JS()
@anonymous
class ITouchList {
  external TouchList get prototype;
  external set prototype(TouchList value);
  external factory ITouchList();
}

@JS()
@anonymous
class ITrackEvent {
  external TrackEvent get prototype;
  external set prototype(TrackEvent value);
  external factory ITrackEvent({String type, TrackEventInit eventInitDict});
}

@JS()
@anonymous
class ITransformStream {
  external TransformStream get prototype;
  external set prototype(TransformStream value);
  external factory ITransformStream(
      {Transformer<I, O> transformer, QueuingStrategy<I> writableStrategy, QueuingStrategy<O> readableStrategy});
}

@JS()
@anonymous
class ITransformStreamDefaultController {
  external TransformStreamDefaultController get prototype;
  external set prototype(TransformStreamDefaultController value);
  external factory ITransformStreamDefaultController();
}

@JS()
@anonymous
class ITransitionEvent {
  external TransitionEvent get prototype;
  external set prototype(TransitionEvent value);
  external factory ITransitionEvent({String type, TransitionEventInit transitionEventInitDict});
}

@JS()
@anonymous
class ITreeWalker {
  external TreeWalker get prototype;
  external set prototype(TreeWalker value);
  external factory ITreeWalker();
}

@JS()
@anonymous
class IUIEvent {
  external UIEvent get prototype;
  external set prototype(UIEvent value);
  external factory IUIEvent({String type, UIEventInit eventInitDict});
}

@JS()
@anonymous
class IURL {
  external Url get prototype;
  external set prototype(Url value);
  external factory IURL({dynamic url, dynamic base});
  external String createObjectURL(dynamic object);
  external void revokeObjectURL(String url);
}

@JS()
@anonymous
class IURLSearchParams {
  external URLSearchParams get prototype;
  external set prototype(URLSearchParams value);
  external factory IURLSearchParams({dynamic init});
  @override
  external String toString();
}

@JS()
@anonymous
class IVTTCue {
  external VttCue get prototype;
  external set prototype(VttCue value);
  external factory IVTTCue({num startTime, num endTime, String text});
}

@JS()
@anonymous
class IVTTRegion {
  external VttRegion get prototype;
  external set prototype(VttRegion value);
  external factory IVTTRegion();
}

@JS()
@anonymous
class IValidityState {
  external ValidityState get prototype;
  external set prototype(ValidityState value);
  external factory IValidityState();
}

@JS()
@anonymous
class IVideoPlaybackQuality {
  external VideoPlaybackQuality get prototype;
  external set prototype(VideoPlaybackQuality value);
  external factory IVideoPlaybackQuality();
}

@JS()
@anonymous
class IVisualViewport {
  external VisualViewport get prototype;
  external set prototype(VisualViewport value);
  external factory IVisualViewport();
}

@JS()
@anonymous
class IWaveShaperNode {
  external WaveShaperNode get prototype;
  external set prototype(WaveShaperNode value);
  external factory IWaveShaperNode({BaseAudioContext context, WaveShaperOptions options});
}

@JS()
@anonymous
class IWebGL2RenderingContext {
  external WebGL2RenderingContext get prototype;
  external set prototype(WebGL2RenderingContext value);
  external factory IWebGL2RenderingContext();
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
class IWebGLActiveInfo {
  external ActiveInfo get prototype;
  external set prototype(ActiveInfo value);
  external factory IWebGLActiveInfo();
}

@JS()
@anonymous
class IWebGLBuffer {
  external Buffer get prototype;
  external set prototype(Buffer value);
  external factory IWebGLBuffer();
}

@JS()
@anonymous
class IWebGLContextEvent {
  external ContextEvent get prototype;
  external set prototype(ContextEvent value);
  external factory IWebGLContextEvent({String type, WebGLContextEventInit eventInit});
}

@JS()
@anonymous
class IWebGLFramebuffer {
  external Framebuffer get prototype;
  external set prototype(Framebuffer value);
  external factory IWebGLFramebuffer();
}

@JS()
@anonymous
class IWebGLProgram {
  external Program get prototype;
  external set prototype(Program value);
  external factory IWebGLProgram();
}

@JS()
@anonymous
class IWebGLQuery {
  external WebGLQuery get prototype;
  external set prototype(WebGLQuery value);
  external factory IWebGLQuery();
}

@JS()
@anonymous
class IWebGLRenderbuffer {
  external Renderbuffer get prototype;
  external set prototype(Renderbuffer value);
  external factory IWebGLRenderbuffer();
}

@JS()
@anonymous
class IWebGLRenderingContext {
  external RenderingContext get prototype;
  external set prototype(RenderingContext value);
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
  external WebGLSampler get prototype;
  external set prototype(WebGLSampler value);
  external factory IWebGLSampler();
}

@JS()
@anonymous
class IWebGLShader {
  external Shader get prototype;
  external set prototype(Shader value);
  external factory IWebGLShader();
}

@JS()
@anonymous
class IWebGLShaderPrecisionFormat {
  external ShaderPrecisionFormat get prototype;
  external set prototype(ShaderPrecisionFormat value);
  external factory IWebGLShaderPrecisionFormat();
}

@JS()
@anonymous
class IWebGLSync {
  external WebGLSync get prototype;
  external set prototype(WebGLSync value);
  external factory IWebGLSync();
}

@JS()
@anonymous
class IWebGLTexture {
  external Texture get prototype;
  external set prototype(Texture value);
  external factory IWebGLTexture();
}

@JS()
@anonymous
class IWebGLTransformFeedback {
  external WebGLTransformFeedback get prototype;
  external set prototype(WebGLTransformFeedback value);
  external factory IWebGLTransformFeedback();
}

@JS()
@anonymous
class IWebGLUniformLocation {
  external UniformLocation get prototype;
  external set prototype(UniformLocation value);
  external factory IWebGLUniformLocation();
}

@JS()
@anonymous
class IWebGLVertexArrayObject {
  external WebGLVertexArrayObject get prototype;
  external set prototype(WebGLVertexArrayObject value);
  external factory IWebGLVertexArrayObject();
}

@JS()
@anonymous
class IWebSocket {
  external WebSocket get prototype;
  external set prototype(WebSocket value);
  external factory IWebSocket({dynamic url, dynamic protocols});
  external num get CLOSED;
  external num get CLOSING;
  external num get CONNECTING;
  external num get OPEN;
}

@JS()
@anonymous
class IWheelEvent {
  external WheelEvent get prototype;
  external set prototype(WheelEvent value);
  external factory IWheelEvent({String type, WheelEventInit eventInitDict});
  external num get DOM_DELTA_LINE;
  external num get DOM_DELTA_PAGE;
  external num get DOM_DELTA_PIXEL;
}

@JS()
@anonymous
class IWindow {
  external Window get prototype;
  external set prototype(Window value);
  external factory IWindow();
}

@JS()
@anonymous
class IWorker {
  external Worker get prototype;
  external set prototype(Worker value);
  external factory IWorker({dynamic scriptURL, WorkerOptions options});
}

@JS()
@anonymous
class IWorklet {
  external Worklet get prototype;
  external set prototype(Worklet value);
  external factory IWorklet();
}

@JS()
@anonymous
class IWritableStream {
  external WritableStream get prototype;
  external set prototype(WritableStream value);
  external factory IWritableStream({UnderlyingSink<W> underlyingSink, QueuingStrategy<W> strategy});
}

@JS()
@anonymous
class IWritableStreamDefaultController {
  external WritableStreamDefaultController get prototype;
  external set prototype(WritableStreamDefaultController value);
  external factory IWritableStreamDefaultController();
}

@JS()
@anonymous
class IWritableStreamDefaultWriter {
  external WritableStreamDefaultWriter get prototype;
  external set prototype(WritableStreamDefaultWriter value);
  external factory IWritableStreamDefaultWriter({WritableStream<W> stream});
}

@JS()
@anonymous
class IXMLDocument {
  external XmlDocument get prototype;
  external set prototype(XmlDocument value);
  external factory IXMLDocument();
}

@JS()
@anonymous
class IXMLHttpRequest {
  external HttpRequest get prototype;
  external set prototype(HttpRequest value);
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
  external HttpRequestEventTarget get prototype;
  external set prototype(HttpRequestEventTarget value);
  external factory IXMLHttpRequestEventTarget();
}

@JS()
@anonymous
class IXMLHttpRequestUpload {
  external HttpRequestUpload get prototype;
  external set prototype(HttpRequestUpload value);
  external factory IXMLHttpRequestUpload();
}

@JS()
@anonymous
class IXMLSerializer {
  external XmlSerializer get prototype;
  external set prototype(XmlSerializer value);
  external factory IXMLSerializer();
}

@JS()
@anonymous
class IXPathEvaluator {
  external XPathEvaluator get prototype;
  external set prototype(XPathEvaluator value);
  external factory IXPathEvaluator();
}

@JS()
@anonymous
class IXPathExpression {
  external XPathExpression get prototype;
  external set prototype(XPathExpression value);
  external factory IXPathExpression();
}

@JS()
@anonymous
class IXPathResult {
  external XPathResult get prototype;
  external set prototype(XPathResult value);
  external factory IXPathResult();
  external num get ANY_TYPE;
  external num get ANY_UNORDERED_NODE_TYPE;
  external num get BOOLEAN_TYPE;
  external num get FIRST_ORDERED_NODE_TYPE;
  external num get NUMBER_TYPE;
  external num get ORDERED_NODE_ITERATOR_TYPE;
  external num get ORDERED_NODE_SNAPSHOT_TYPE;
  external num get STRING_TYPE;
  external num get UNORDERED_NODE_ITERATOR_TYPE;
  external num get UNORDERED_NODE_SNAPSHOT_TYPE;
}

@JS()
@anonymous
class IXSLTProcessor {
  external XsltProcessor get prototype;
  external set prototype(XsltProcessor value);
  external factory IXSLTProcessor();
}

typedef Error = dynamic;
typedef Record<T, U> = dynamic;
