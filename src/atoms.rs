//! Copied from https://github.com/dart-lang/js_facade_gen/blob/master/lib/dart_libraries_for_browser_types.ts

use ahash::{AHashMap, RandomState};
use lasso::{Rodeo, RodeoReader, Spur};
use lazy_static::lazy_static;

// Tricks for counting numbers of macro items.
// See https://danielkeep.github.io/tlborm/book/blk-counting.html
// This does not work for const contexts.

macro_rules! replace_expr {
    ($_t:tt $sub:expr) => {
        $sub
    };
}

macro_rules! count_tts {
    ($($tts:tt)*) => {<[()]>::len(&[$(replace_expr!($tts ())),*])};
}

pub struct Atoms {
    reader: RodeoReader<Spur, RandomState>,
    map: AHashMap<Spur, Spur>,
}

impl Atoms {
    pub fn get(&self, value: &str) -> Option<&'_ str> {
        let key = self.reader.get(value)?;
        self.map.get(&key).map(|x| self.reader.resolve(x))
    }
}

macro_rules! define_atom_store {
    ($store:ident, $( $k:literal : $v:literal ),*) => {
        lazy_static! {
            pub static ref $store: Atoms = {
                #[allow(unused_mut)]
                let mut rodeo = Rodeo::with_hasher(RandomState::new());
                #[allow(unused_mut)]
                let mut map = AHashMap::with_capacity(count_tts!($( $k )*));
                $(
                    let key = rodeo.get_or_intern_static($k);
                    let val = rodeo.get_or_intern_static($v);
                    map.insert(key, val);
                )*
                let reader = rodeo.into_reader();
                Atoms { map, reader }
            };
        }
    };
}

/// Finds the replacement type for [typ] and the Dart library where it was defined.
pub fn replacement_for(typ: &str) -> (Option<&'static str>, Option<&'static str>) {
    let replacement = STDLIB_TYPE_REPLACEMENTS.get(typ);
    let lib = DART_LIBRARIES_FOR_BROWSER_TYPES.get(typ);
    (replacement, lib)
}

define_atom_store!(DART_LIBRARIES_FOR_BROWSER_TYPES,
  "HTMLDivElement": "dart:html",
  "NavigatorID": "dart:html",
  "HTMLImageElement": "dart:html",
  "TreeWalker": "dart:html",
  "HTMLTableSectionElement": "dart:html",
  "TextTrackCue": "dart:html",
  "FileEntry": "dart:html",
  "HTMLDetailsElement": "dart:html",
  "XPathResult": "dart:html",
  "XMLHttpRequest": "dart:html",
  "SpeechSynthesisUtterance": "dart:html",
  "DOMFileSystemSync": "dart:html",
  "CredentialsContainer": "dart:html",
  "Animation": "dart:html",
  "MessageChannel": "dart:html",
  "Navigator": "dart:html",
  "MediaQueryList": "dart:html",
  "CloseEvent": "dart:html",
  "ProgressEvent": "dart:html",
  "CSSImportRule": "dart:html",
  "MediaController": "dart:html",
  "StorageQuota": "dart:html",
  "MediaQueryListEvent": "dart:html",
  "HTMLCollection": "dart:html",
  "Element": "dart:html",
  "SpeechSynthesis": "dart:html",
  "FileList": "dart:html",
  "Plugin": "dart:html",
  "CSSFontFaceRule": "dart:html",
  "ReadableStream": "dart:html",
  "File": "dart:html",
  "Node": "dart:html",
  "MouseEvent": "dart:html",
  "DedicatedWorkerGlobalScope": "dart:html",
  "HTMLMenuElement": "dart:html",
  "AudioTrackList": "dart:html",
  "FetchEvent": "dart:html",
  "MediaStreamTrack": "dart:html",
  "StyleMedia": "dart:html",
  "WindowEventHandlers": "dart:html",
  "ShadowRoot": "dart:html",
  "SourceInfo": "dart:html",
  "DirectoryEntrySync": "dart:html",
  "WebKitAnimationEvent": "dart:html",
  "SpeechSynthesisEvent": "dart:html",
  "PluginPlaceholderElement": "dart:html",
  "MutationEvent": "dart:html",
  "Counter": "dart:html",
  "HTMLLinkElement": "dart:html",
  "TextTrackCueList": "dart:html",
  "VideoPlaybackQuality": "dart:html",
  "Window": "dart:html",
  "HTMLIFrameElement": "dart:html",
  "SpeechRecognition": "dart:html",
  "Console": "dart:html",
  "AutocompleteErrorEvent": "dart:html",
  "FontFace": "dart:html",
  "CanvasGradient": "dart:html",
  "HTMLAnchorElement": "dart:html",
  "Document": "dart:html",
  "MediaStream": "dart:html",
  "MessageEvent": "dart:html",
  "ClientRectList": "dart:html",
  "Rect": "dart:html",
  "RTCDTMFSender": "dart:html",
  "HTMLParamElement": "dart:html",
  "TextTrack": "dart:html",
  "HTMLModElement": "dart:html",
  "XSLTProcessor": "dart:html",
  "HTMLScriptElement": "dart:html",
  "NavigatorLanguage": "dart:html",
  "HTMLParagraphElement": "dart:html",
  "Touch": "dart:html",
  "URL": "dart:html",
  "BarProp": "dart:html",
  "DeviceLightEvent": "dart:html",
  "SourceBuffer": "dart:html",
  "CSSCharsetRule": "dart:html",
  "HTMLEmbedElement": "dart:html",
  "InstallEvent": "dart:html",
  "Metadata": "dart:html",
  "DeprecatedStorageQuota": "dart:html",
  "WebKitCSSTransformValue": "dart:html",
  "HTMLBaseElement": "dart:html",
  "HTMLBRElement": "dart:html",
  "DataTransfer": "dart:html",
  "Presentation": "dart:html",
  "MutationObserver": "dart:html",
  "FileEntrySync": "dart:html",
  "CircularGeofencingRegion": "dart:html",
  "XMLSerializer": "dart:html",
  "HTMLPictureElement": "dart:html",
  "PushManager": "dart:html",
  "CSSValueList": "dart:html",
  "HTMLObjectElement": "dart:html",
  "TouchEvent": "dart:html",
  "DOMMatrix": "dart:html",
  "AbstractWorker": "dart:html",
  "HTMLMeterElement": "dart:html",
  "ResourceProgressEvent": "dart:html",
  "HTMLUListElement": "dart:html",
  "ValidityState": "dart:html",
  "HTMLHRElement": "dart:html",
  "Storage": "dart:html",
  "DocumentType": "dart:html",
  "HTMLOptGroupElement": "dart:html",
  "Crypto": "dart:html",
  "ErrorEvent": "dart:html",
  "PerformanceTiming": "dart:html",
  "HTMLBodyElement": "dart:html",
  "RTCDataChannel": "dart:html",
  "NavigatorOnLine": "dart:html",
  "DeprecatedStorageInfo": "dart:html",
  "Geoposition": "dart:html",
  "HTMLAppletElement": "dart:html",
  "ApplicationCacheErrorEvent": "dart:html",
  "SpeechSynthesisVoice": "dart:html",
  "FontFaceSetLoadEvent": "dart:html",
  "MutationRecord": "dart:html",
  "HTMLFieldSetElement": "dart:html",
  "HTMLSourceElement": "dart:html",
  "InjectedScriptHost": "dart:html",
  "DirectoryReaderSync": "dart:html",
  "UIEvent": "dart:html",
  "HTMLHtmlElement": "dart:html",
  "RTCSessionDescription": "dart:html",
  "HTMLOptionElement": "dart:html",
  "Text": "dart:html",
  "MediaSource": "dart:html",
  "PositionError": "dart:html",
  "MediaKeyMessageEvent": "dart:html",
  "VideoTrackList": "dart:html",
  "GamepadButton": "dart:html",
  "CustomEvent": "dart:html",
  "WorkerConsole": "dart:html",
  "VTTRegion": "dart:html",
  "Stream": "dart:html",
  "HTMLHeadingElement": "dart:html",
  "History": "dart:html",
  "HTMLTemplateElement": "dart:html",
  "ClientRect": "dart:math",
  "RTCStatsReport": "dart:html",
  "TimeRanges": "dart:html",
  "ServiceWorkerRegistration": "dart:html",
  "Request": "dart:html",
  "WindowTimers": "dart:html",
  "WorkerNavigator": "dart:html",
  "DirectoryReader": "dart:html",
  "AnimationTimeline": "dart:html",
  "Event": "dart:html",
  "Iterator": "dart:html",
  "Headers": "dart:html",
  "ImageData": "dart:html",
  "MediaStreamTrackEvent": "dart:html",
  "RTCStatsResponse": "dart:html",
  "VTTRegionList": "dart:html",
  "HTMLDataListElement": "dart:html",
  "HTMLElement": "dart:html",
  "HTMLDocument": "dart:html",
  "MediaList": "dart:html",
  "ServiceWorkerClients": "dart:html",
  "MIDIPort": "dart:html",
  "CSSMediaRule": "dart:html",
  "ParentNode": "dart:html",
  "FileReaderSync": "dart:html",
  "CSSViewportRule": "dart:html",
  "DataTransferItemList": "dart:html",
  "DocumentFragment": "dart:html",
  "GlobalEventHandlers": "dart:html",
  "FederatedCredential": "dart:html",
  "RTCIceCandidateEvent": "dart:html",
  "PerformanceMark": "dart:html",
  "SharedWorkerGlobalScope": "dart:html",
  "DOMImplementation": "dart:html",
  "MimeTypeArray": "dart:html",
  "HTMLDialogElement": "dart:html",
  "StyleSheet": "dart:html",
  "HTMLTableRowElement": "dart:html",
  "MessagePort": "dart:html",
  "FileReader": "dart:html",
  "HTMLOptionsCollection": "dart:html",
  "Geofencing": "dart:html",
  "NodeList": "dart:html",
  "HTMLFrameSetElement": "dart:html",
  "PerformanceMeasure": "dart:html",
  "ServiceWorkerContainer": "dart:html",
  "RelatedEvent": "dart:html",
  "MIDIAccess": "dart:html",
  "HTMLTableCaptionElement": "dart:html",
  "CSSStyleRule": "dart:html",
  "DOMError": "dart:html",
  "HTMLMenuItemElement": "dart:html",
  "HashChangeEvent": "dart:html",
  "RTCDataChannelEvent": "dart:html",
  "HTMLMediaElement": "dart:html",
  "HTMLInputElement": "dart:html",
  "MediaDeviceInfo": "dart:html",
  "CDATASection": "dart:html",
  "StorageEvent": "dart:html",
  "CSSStyleSheet": "dart:html",
  "DOMRectReadOnly": "dart:html",
  "FormData": "dart:html",
  "PushEvent": "dart:html",
  "CSSSupportsRule": "dart:html",
  "DOMParser": "dart:html",
  "HTMLLIElement": "dart:html",
  "CSSPageRule": "dart:html",
  "PageTransitionEvent": "dart:html",
  "LocalCredential": "dart:html",
  "MemoryInfo": "dart:html",
  "ServiceWorkerGlobalScope": "dart:html",
  "HTMLPreElement": "dart:html",
  "NamedNodeMap": "dart:html",
  "HTMLStyleElement": "dart:html",
  "TrackEvent": "dart:html",
  "XPathEvaluator": "dart:html",
  "Performance": "dart:html",
  "AnimationNode": "dart:html",
  "HTMLContentElement": "dart:html",
  "CompositionEvent": "dart:html",
  "FileWriter": "dart:html",
  "HTMLSpanElement": "dart:html",
  "WebKitCSSMatrix": "dart:html",
  "CSSKeyframeRule": "dart:html",
  "WorkerPerformance": "dart:html",
  "MIDIInputMap": "dart:html",
  "TransitionEvent": "dart:html",
  "XMLDocument": "dart:html",
  "CSSValue": "dart:html",
  "GamepadEvent": "dart:html",
  "HTMLFontElement": "dart:html",
  "Response": "dart:html",
  "PagePopupController": "dart:html",
  "AnimationPlayerEvent": "dart:html",
  "DOMTokenList": "dart:html",
  "Credential": "dart:html",
  "DOMException": "dart:html",
  "PluginArray": "dart:html",
  "GamepadList": "dart:html",
  "DOMPoint": "dart:html",
  "HTMLLegendElement": "dart:html",
  "DOMFileSystem": "dart:html",
  "NavigatorCPU": "dart:html",
  "VideoTrack": "dart:html",
  "HTMLQuoteElement": "dart:html",
  "XMLHttpRequestEventTarget": "dart:html",
  "HTMLLabelElement": "dart:html",
  "NavigatorUserMediaError": "dart:html",
  "HTMLTextAreaElement": "dart:html",
  "TextMetrics": "dart:html",
  "HTMLUnknownElement": "dart:html",
  "RadioNodeList": "dart:html",
  "Selection": "dart:html",
  "AnimationEffect": "dart:html",
  "NodeIterator": "dart:html",
  "HTMLAreaElement": "dart:html",
  "ImageBitmap": "dart:html",
  "Notification": "dart:html",
  "CSSUnknownRule": "dart:html",
  "HTMLDirectoryElement": "dart:html",
  "Canvas2DContextAttributes": "dart:html",
  "HTMLTableCellElement": "dart:html",
  "DOMStringMap": "dart:html",
  "Entry": "dart:html",
  "AudioTrack": "dart:html",
  "RGBColor": "dart:html",
  "RTCIceCandidate": "dart:html",
  "SpeechRecognitionResult": "dart:html",
  "Body": "dart:html",
  "TextTrackList": "dart:html",
  "HTMLFrameElement": "dart:html",
  "ServiceWorker": "dart:html",
  "SharedWorker": "dart:html",
  "EventTarget": "dart:html",
  "HTMLFormControlsCollection": "dart:html",
  "KeyboardEvent": "dart:html",
  "Attr": "dart:html",
  "MIDIMessageEvent": "dart:html",
  "CacheStorage": "dart:html",
  "CanvasRenderingContext2D": "dart:html",
  "HTMLOListElement": "dart:html",
  "BatteryManager": "dart:html",
  "HTMLCanvasElement": "dart:html",
  "StyleSheetList": "dart:html",
  "Path2D": "dart:html",
  "PushRegistration": "dart:html",
  "ApplicationCache": "dart:html",
  "RTCPeerConnection": "dart:html",
  "HTMLVideoElement": "dart:html",
  "DeviceRotationRate": "dart:html",
  "HTMLOutputElement": "dart:html",
  "Screen": "dart:html",
  "Coordinates": "dart:html",
  "NetworkInformation": "dart:html",
  "StorageInfo": "dart:html",
  "HTMLTableColElement": "dart:html",
  "FocusEvent": "dart:html",
  "SpeechGrammarList": "dart:html",
  "Range": "dart:html",
  "SpeechGrammar": "dart:html",
  "WorkerGlobalScope": "dart:html",
  "CSSStyleDeclaration": "dart:html",
  "DOMStringList": "dart:html",
  "CSSPrimitiveValue": "dart:html",
  "ScreenOrientation": "dart:html",
  "XMLHttpRequestUpload": "dart:html",
  "HTMLTitleElement": "dart:html",
  "MediaKeySession": "dart:html",
  "AnimationPlayer": "dart:html",
  "Gamepad": "dart:html",
  "Worker": "dart:html",
  "MIDIConnectionEvent": "dart:html",
  "FileError": "dart:html",
  "HTMLDListElement": "dart:html",
  "CanvasPathMethods": "dart:html",
  "HTMLSelectElement": "dart:html",
  "HTMLHeadElement": "dart:html",
  "URLUtils": "dart:html",
  "ConsoleBase": "dart:html",
  "HTMLAudioElement": "dart:html",
  "DOMSettableTokenList": "dart:html",
  "SpeechRecognitionEvent": "dart:html",
  "WebSocket": "dart:html",
  "WorkerLocation": "dart:html",
  "Location": "dart:html",
  "TouchList": "dart:html",
  "XMLHttpRequestProgressEvent": "dart:html",
  "PerformanceEntry": "dart:html",
  "HTMLMetaElement": "dart:html",
  "Timing": "dart:html",
  "HTMLTrackElement": "dart:html",
  "WheelEvent": "dart:html",
  "WebKitCSSFilterValue": "dart:html",
  "Cache": "dart:html",
  "MimeType": "dart:html",
  "MIDIOutputMap": "dart:html",
  "DOMMatrixReadOnly": "dart:html",
  "ChildNode": "dart:html",
  "HTMLFormElement": "dart:html",
  "Geolocation": "dart:html",
  "MediaKeyEvent": "dart:html",
  "CSSRuleList": "dart:html",
  "SpeechRecognitionResultList": "dart:html",
  "HTMLProgressElement": "dart:html",
  "InputMethodContext": "dart:html",
  "FontFaceSet": "dart:html",
  "BeforeUnloadEvent": "dart:html",
  "DataTransferItem": "dart:html",
  "MediaKeyNeededEvent": "dart:html",
  "HTMLKeygenElement": "dart:html",
  "CryptoKey": "dart:html",
  "HTMLButtonElement": "dart:html",
  "HTMLAllCollection": "dart:html",
  "SubtleCrypto": "dart:html",
  "CSSKeyframesRule": "dart:html",
  "ProcessingInstruction": "dart:html",
  "HTMLMarqueeElement": "dart:html",
  "TextEvent": "dart:html",
  "EntrySync": "dart:html",
  "DeviceAcceleration": "dart:html",
  "HTMLMapElement": "dart:html",
  "MediaKeys": "dart:html",
  "DOMPointReadOnly": "dart:html",
  "WindowBase64": "dart:html",
  "SpeechRecognitionError": "dart:html",
  "MIDIOutput": "dart:html",
  "EventSource": "dart:html",
  "RTCDTMFToneChangeEvent": "dart:html",
  "DeviceOrientationEvent": "dart:html",
  "DirectoryEntry": "dart:html",
  "HTMLShadowElement": "dart:html",
  "Blob": "dart:html",
  "VTTCue": "dart:html",
  "PopStateEvent": "dart:html",
  "NodeFilter": "dart:html",
  "DOMRect": "dart:html",
  "URLUtilsReadOnly": "dart:html",
  "OverflowEvent": "dart:html",
  "MediaError": "dart:html",
  "SourceBufferList": "dart:html",
  "DeviceMotionEvent": "dart:html",
  "Comment": "dart:html",
  "PerformanceResourceTiming": "dart:html",
  "CanvasPattern": "dart:html",
  "GeofencingRegion": "dart:html",
  "CharacterData": "dart:html",
  "CSS": "dart:html",
  "MediaKeyError": "dart:html",
  "MIDIInput": "dart:html",
  "CSSRule": "dart:html",
  "SpeechRecognitionAlternative": "dart:html",
  "WebKitCSSFilterRule": "dart:html",
  "XPathExpression": "dart:html",
  "ServiceWorkerClient": "dart:html",
  "PerformanceNavigation": "dart:html",
  "ExtendableEvent": "dart:html",
  "MediaStreamEvent": "dart:html",
  "XPathNSResolver": "dart:html",
  "SecurityPolicyViolationEvent": "dart:html",
  "FileWriterSync": "dart:html",
  "HTMLTableElement": "dart:html",
  "IDBFactory": "dart:indexed_db",
  "IDBKeyRange": "dart:indexed_db",
  "IDBCursor": "dart:indexed_db",
  "IDBRequest": "dart:indexed_db",
  "IDBOpenDBRequest": "dart:indexed_db",
  "IDBDatabase": "dart:indexed_db",
  "IDBIndex": "dart:indexed_db",
  "IDBObjectStore": "dart:indexed_db",
  "IDBTransaction": "dart:indexed_db",
  "IDBCursorWithValue": "dart:indexed_db",
  "IDBVersionChangeEvent": "dart:indexed_db",
  "WebGLRenderingContextBase": "dart:web_gl",
  "WebGLBuffer": "dart:web_gl",
  "EXTShaderTextureLOD": "dart:web_gl",
  "WebGLUniformLocation": "dart:web_gl",
  "EXTBlendMinMax": "dart:web_gl",
  "WebGLFramebuffer": "dart:web_gl",
  "WebGLTexture": "dart:web_gl",
  "WebGLContextAttributes": "dart:web_gl",
  "OESStandardDerivatives": "dart:web_gl",
  "WebGLDepthTexture": "dart:web_gl",
  "WebGLDrawBuffers": "dart:web_gl",
  "OESTextureFloatLinear": "dart:web_gl",
  "OESTextureHalfFloatLinear": "dart:web_gl",
  "WebGLDebugShaders": "dart:web_gl",
  "OESVertexArrayObject": "dart:web_gl",
  "WebGLCompressedTextureS3TC": "dart:web_gl",
  "WebGLProgram": "dart:web_gl",
  "EXTFragDepth": "dart:web_gl",
  "WebGLContextEvent": "dart:web_gl",
  "ANGLEInstancedArrays": "dart:web_gl",
  "WebGLDebugRendererInfo": "dart:web_gl",
  "WebGLShader": "dart:web_gl",
  "WebGLCompressedTextureATC": "dart:web_gl",
  "WebGLRenderingContext": "dart:web_gl",
  "WebGLShaderPrecisionFormat": "dart:web_gl",
  "OESTextureHalfFloat": "dart:web_gl",
  "EXTTextureFilterAnisotropic": "dart:web_gl",
  "OESTextureFloat": "dart:web_gl",
  "OESElementIndexUint": "dart:web_gl",
  "WebGLCompressedTextureETC1": "dart:web_gl",
  "WebGLLoseContext": "dart:web_gl",
  "WebGLVertexArrayObjectOES": "dart:web_gl",
  "WebGLCompressedTexturePVRTC": "dart:web_gl",
  "WebGLRenderbuffer": "dart:web_gl",
  "WebGLActiveInfo": "dart:web_gl",
  "SQLError": "dart:web_sql",
  "SQLResultSet": "dart:web_sql",
  "SQLResultSetRowList": "dart:web_sql",
  "Database": "dart:web_sql",
  "SQLTransaction": "dart:web_sql",
  "SVGAnimatedString": "dart:svg",
  "SVGFilterElement": "dart:svg",
  "SVGFEFuncAElement": "dart:svg",
  "SVGPathSegLinetoRel": "dart:svg",
  "SVGPathSegLinetoVerticalRel": "dart:svg",
  "SVGURIReference": "dart:svg",
  "SVGAnimatedLengthList": "dart:svg",
  "SVGImageElement": "dart:svg",
  "SVGStyleElement": "dart:svg",
  "SVGAnimatedPreserveAspectRatio": "dart:svg",
  "SVGTextElement": "dart:svg",
  "SVGDefsElement": "dart:svg",
  "SVGFontFaceFormatElement": "dart:svg",
  "SVGFEDiffuseLightingElement": "dart:svg",
  "SVGFEMorphologyElement": "dart:svg",
  "SVGAltGlyphElement": "dart:svg",
  "SVGFETileElement": "dart:svg",
  "SVGPathSegLinetoHorizontalAbs": "dart:svg",
  "SVGPathSegMovetoRel": "dart:svg",
  "SVGPolygonElement": "dart:svg",
  "SVGUseElement": "dart:svg",
  "SVGPoint": "dart:svg",
  "SVGRect": "dart:svg",
  "SVGAnimatedBoolean": "dart:svg",
  "SVGPathSegArcRel": "dart:svg",
  "SVGTransform": "dart:svg",
  "SVGFEDropShadowElement": "dart:svg",
  "SVGFETurbulenceElement": "dart:svg",
  "SVGNumberList": "dart:svg",
  "SVGAnimateElement": "dart:svg",
  "SVGAnimationElement": "dart:svg",
  "SVGAnimatedRect": "dart:svg",
  "SVGGraphicsElement": "dart:svg",
  "SVGMarkerElement": "dart:svg",
  "SVGFECompositeElement": "dart:svg",
  "SVGPolylineElement": "dart:svg",
  "SVGTransformList": "dart:svg",
  "SVGPathSegList": "dart:svg",
  "SVGPathSegCurvetoQuadraticSmoothRel": "dart:svg",
  "SVGEllipseElement": "dart:svg",
  "SVGFEFuncGElement": "dart:svg",
  "SVGPointList": "dart:svg",
  "SVGFEMergeElement": "dart:svg",
  "SVGGlyphElement": "dart:svg",
  "SVGCircleElement": "dart:svg",
  "SVGFEFuncRElement": "dart:svg",
  "SVGMissingGlyphElement": "dart:svg",
  "SVGAnimatedNumberList": "dart:svg",
  "SVGFEFuncBElement": "dart:svg",
  "SVGSwitchElement": "dart:svg",
  "SVGFEBlendElement": "dart:svg",
  "SVGGlyphRefElement": "dart:svg",
  "SVGAnimatedAngle": "dart:svg",
  "SVGTSpanElement": "dart:svg",
  "SVGRadialGradientElement": "dart:svg",
  "SVGPathSegCurvetoCubicRel": "dart:svg",
  "SVGFEDistantLightElement": "dart:svg",
  "SVGLinearGradientElement": "dart:svg",
  "SVGFontFaceSrcElement": "dart:svg",
  "SVGTextPositioningElement": "dart:svg",
  "SVGAnimateMotionElement": "dart:svg",
  "SVGGeometryElement": "dart:svg",
  "SVGAltGlyphItemElement": "dart:svg",
  "SVGAnimateTransformElement": "dart:svg",
  "SVGFontFaceUriElement": "dart:svg",
  "SVGPathSegCurvetoQuadraticRel": "dart:svg",
  "SVGAltGlyphDefElement": "dart:svg",
  "SVGPreserveAspectRatio": "dart:svg",
  "SVGPathElement": "dart:svg",
  "SVGFEColorMatrixElement": "dart:svg",
  "SVGPathSegLinetoHorizontalRel": "dart:svg",
  "SVGLength": "dart:svg",
  "SVGPatternElement": "dart:svg",
  "SVGFEConvolveMatrixElement": "dart:svg",
  "SVGStringList": "dart:svg",
  "SVGTextContentElement": "dart:svg",
  "SVGPathSegLinetoAbs": "dart:svg",
  "SVGFESpecularLightingElement": "dart:svg",
  "SVGAnimatedTransformList": "dart:svg",
  "SVGFEGaussianBlurElement": "dart:svg",
  "SVGRenderingIntent": "dart:svg",
  "SVGNumber": "dart:svg",
  "SVGFontElement": "dart:svg",
  "SVGFESpotLightElement": "dart:svg",
  "SVGLineElement": "dart:svg",
  "SVGZoomEvent": "dart:svg",
  "SVGMatrix": "dart:svg",
  "SVGPathSegCurvetoCubicSmoothAbs": "dart:svg",
  "SVGSVGElement": "dart:svg",
  "SVGFitToViewBox": "dart:svg",
  "SVGAnimatedNumber": "dart:svg",
  "SVGMPathElement": "dart:svg",
  "SVGFontFaceNameElement": "dart:svg",
  "SVGFEDisplacementMapElement": "dart:svg",
  "SVGAngle": "dart:svg",
  "SVGMaskElement": "dart:svg",
  "SVGPathSegCurvetoQuadraticSmoothAbs": "dart:svg",
  "SVGPathSegClosePath": "dart:svg",
  "SVGAnimatedLength": "dart:svg",
  "SVGSymbolElement": "dart:svg",
  "SVGPathSegArcAbs": "dart:svg",
  "SVGVKernElement": "dart:svg",
  "SVGRectElement": "dart:svg",
  "SVGClipPathElement": "dart:svg",
  "SVGStopElement": "dart:svg",
  "SVGFEFloodElement": "dart:svg",
  "SVGPathSegCurvetoQuadraticAbs": "dart:svg",
  "SVGScriptElement": "dart:svg",
  "SVGViewSpec": "dart:svg",
  "SVGFontFaceElement": "dart:svg",
  "SVGLengthList": "dart:svg",
  "SVGAnimatedInteger": "dart:svg",
  "SVGTests": "dart:svg",
  "SVGCursorElement": "dart:svg",
  "SVGForeignObjectElement": "dart:svg",
  "SVGSetElement": "dart:svg",
  "SVGElement": "dart:svg",
  "SVGUnitTypes": "dart:svg",
  "SVGFEComponentTransferElement": "dart:svg",
  "SVGDescElement": "dart:svg",
  "SVGDiscardElement": "dart:svg",
  "SVGPathSegCurvetoCubicSmoothRel": "dart:svg",
  "SVGPathSegLinetoVerticalAbs": "dart:svg",
  "SVGFEMergeNodeElement": "dart:svg",
  "SVGHKernElement": "dart:svg",
  "SVGPathSeg": "dart:svg",
  "SVGGElement": "dart:svg",
  "SVGPathSegMovetoAbs": "dart:svg",
  "SVGTextPathElement": "dart:svg",
  "SVGFEOffsetElement": "dart:svg",
  "SVGPathSegCurvetoCubicAbs": "dart:svg",
  "SVGAnimatedEnumeration": "dart:svg",
  "SVGZoomAndPan": "dart:svg",
  "SVGTitleElement": "dart:svg",
  "SVGViewElement": "dart:svg",
  "SVGMetadataElement": "dart:svg",
  "SVGAElement": "dart:svg",
  "SVGGradientElement": "dart:svg",
  "SVGFEImageElement": "dart:svg",
  "SVGComponentTransferFunctionElement": "dart:svg",
  "SVGFEPointLightElement": "dart:svg",
  "SVGFilterPrimitiveStandardAttributes": "dart:svg",
  "AudioListener": "dart:web_audio",
  "AudioNode": "dart:web_audio",
  "AudioDestinationNode": "dart:web_audio",
  "WaveShaperNode": "dart:web_audio",
  "GainNode": "dart:web_audio",
  "MediaStreamAudioDestinationNode": "dart:web_audio",
  "AudioProcessingEvent": "dart:web_audio",
  "ScriptProcessorNode": "dart:web_audio",
  "MediaElementAudioSourceNode": "dart:web_audio",
  "AudioBufferSourceNode": "dart:web_audio",
  "AudioContext": "dart:web_audio",
  "ChannelSplitterNode": "dart:web_audio",
  "DynamicsCompressorNode": "dart:web_audio",
  "DelayNode": "dart:web_audio",
  "OfflineAudioCompletionEvent": "dart:web_audio",
  "OscillatorNode": "dart:web_audio",
  "PeriodicWave": "dart:web_audio",
  "BiquadFilterNode": "dart:web_audio",
  "MediaStreamAudioSourceNode": "dart:web_audio",
  "PannerNode": "dart:web_audio",
  "OfflineAudioContext": "dart:web_audio",
  "AudioBuffer": "dart:web_audio",
  "AudioParam": "dart:web_audio",
  "AnalyserNode": "dart:web_audio",
  "ConvolverNode": "dart:web_audio",
  "ChannelMergerNode": "dart:web_audio",
  "AudioSourceNode": "dart:web_audio",
  "DataView": "dart:typed_data",
  "Float32Array": "dart:typed_data",
  "Float64Array": "dart:typed_data",
  "Int8Array": "dart:typed_data",
  "Int16Array": "dart:typed_data",
  "Int32Array": "dart:typed_data",
  "Uint8Array": "dart:typed_data",
  "Uint8ClampedArray": "dart:typed_data",
  "Uint16Array": "dart:typed_data",
  "Uint32Array": "dart:typed_data",
  "ArrayBuffer": "dart:typed_data",
  "ArrayBufferView": "dart:typed_data",

  // Extensions
  "Promise": "lib.es5.d.dart",
  "Map": "lib.es2015.collection.d.dart",
  "ReadonlyMap": "lib.es2015.collection.d.dart",
  "ReadonlySet": "lib.es2015.collection.d.dart",
  "WeakMap": "lib.es2015.collection.d.dart",
  "WeakSet": "lib.es2015.collection.d.dart"
);

define_atom_store!(STDLIB_TYPE_REPLACEMENTS,
  "HTMLDivElement": "DivElement",
  "HTMLImageElement": "ImageElement",
  "HTMLTableSectionElement": "TableSectionElement",
  "HTMLDetailsElement": "DetailsElement",
  "XMLHttpRequest": "HttpRequest",
  "CSSImportRule": "CssImportRule",
  "HTMLCollection": "HtmlCollection",
  "CSSFontFaceRule": "CssFontFaceRule",
  "HTMLMenuElement": "MenuElement",
  "WebKitAnimationEvent": "AnimationEvent",
  "HTMLLinkElement": "LinkElement",
  "HTMLIFrameElement": "IFrameElement",
  "HTMLAnchorElement": "AnchorElement",
  "RTCDTMFSender": "RtcDtmfSender",
  "HTMLParamElement": "ParamElement",
  "HTMLModElement": "ModElement",
  "XSLTProcessor": "XsltProcessor",
  "HTMLScriptElement": "ScriptElement",
  "HTMLParagraphElement": "ParagraphElement",
  "URL": "Url",
  "CSSCharsetRule": "CssCharsetRule",
  "HTMLEmbedElement": "EmbedElement",
  "HTMLBaseElement": "BaseElement",
  "HTMLBRElement": "BRElement",
  "XMLSerializer": "XmlSerializer",
  "HTMLPictureElement": "PictureElement",
  "HTMLObjectElement": "ObjectElement",
  "DOMMatrix": "DomMatrix",
  "HTMLMeterElement": "MeterElement",
  "HTMLUListElement": "UListElement",
  "HTMLHRElement": "HRElement",
  "HTMLOptGroupElement": "OptGroupElement",
  "HTMLBodyElement": "BodyElement",
  "RTCDataChannel": "RtcDataChannel",
  "HTMLFieldSetElement": "FieldSetElement",
  "HTMLSourceElement": "SourceElement",
  "HTMLHtmlElement": "HtmlHtmlElement",
  "RTCSessionDescription": "RtcSessionDescription",
  "HTMLOptionElement": "OptionElement",
  "VTTRegion": "VttRegion",
  "Stream": "FileStream",
  "HTMLHeadingElement": "HeadingElement",
  "HTMLTemplateElement": "TemplateElement",
  "RTCStatsReport": "RtcStatsReport",
  "Iterator": "DomIterator",
  "RTCStatsResponse": "RtcStatsResponse",
  "VTTRegionList": "VttRegionList",
  "HTMLDataListElement": "DataListElement",
  "HTMLElement": "HtmlElement",
  "HTMLDocument": "HtmlDocument",
  "MIDIPort": "MidiPort",
  "CSSMediaRule": "CssMediaRule",
  "CSSViewportRule": "CssViewportRule",
  "RTCIceCandidateEvent": "RtcIceCandidateEvent",
  "DOMImplementation": "DomImplementation",
  "HTMLDialogElement": "DialogElement",
  "HTMLTableRowElement": "TableRowElement",
  "HTMLOptionsCollection": "HtmlOptionsCollection",
  "MIDIAccess": "MidiAccess",
  "HTMLTableCaptionElement": "TableCaptionElement",
  "CSSStyleRule": "CssStyleRule",
  "DOMError": "DomError",
  "HTMLMenuItemElement": "MenuItemElement",
  "RTCDataChannelEvent": "RtcDataChannelEvent",
  "HTMLMediaElement": "MediaElement",
  "HTMLInputElement": "InputElement",
  "CDATASection": "CDataSection",
  "CSSStyleSheet": "CssStyleSheet",
  "DOMRectReadOnly": "DomRectReadOnly",
  "CSSSupportsRule": "CssSupportsRule",
  "DOMParser": "DomParser",
  "HTMLLIElement": "LIElement",
  "CSSPageRule": "CssPageRule",
  "HTMLPreElement": "PreElement",
  "HTMLStyleElement": "StyleElement",
  "HTMLContentElement": "ContentElement",
  "HTMLSpanElement": "SpanElement",
  "CSSKeyframeRule": "CssKeyframeRule",
  "MIDIInputMap": "MidiInputMap",
  "XMLDocument": "XmlDocument",
  "DOMTokenList": "DomTokenList",
  "DOMException": "DomException",
  "DOMPoint": "DomPoint",
  "HTMLLegendElement": "LegendElement",
  "DOMFileSystem": "FileSystem",
  "NavigatorCPU": "NavigatorCpu",
  "HTMLQuoteElement": "QuoteElement",
  "XMLHttpRequestEventTarget": "HttpRequestEventTarget",
  "HTMLLabelElement": "LabelElement",
  "HTMLTextAreaElement": "TextAreaElement",
  "HTMLUnknownElement": "UnknownElement",
  "HTMLAreaElement": "AreaElement",
  "HTMLTableCellElement": "TableCellElement",
  "DOMStringMap": "DomStringMap",
  "RTCIceCandidate": "RtcIceCandidate",
  "HTMLFormControlsCollection": "HtmlFormControlsCollection",
  "MIDIMessageEvent": "MidiMessageEvent",
  "HTMLOListElement": "OListElement",
  "HTMLCanvasElement": "CanvasElement",
  "RTCPeerConnection": "RtcPeerConnection",
  "HTMLVideoElement": "VideoElement",
  "HTMLOutputElement": "OutputElement",
  "HTMLTableColElement": "TableColElement",
  "CSSStyleDeclaration": "CssStyleDeclaration",
  "DOMStringList": "DomStringList",
  "XMLHttpRequestUpload": "HttpRequestUpload",
  "HTMLTitleElement": "TitleElement",
  "MIDIConnectionEvent": "MidiConnectionEvent",
  "HTMLDListElement": "DListElement",
  "HTMLSelectElement": "SelectElement",
  "HTMLHeadElement": "HeadElement",
  "URLUtils": "UrlUtils",
  "HTMLAudioElement": "AudioElement",
  "DOMSettableTokenList": "DomSettableTokenList",
  "HTMLMetaElement": "MetaElement",
  "HTMLTrackElement": "TrackElement",
  "MIDIOutputMap": "MidiOutputMap",
  "DOMMatrixReadOnly": "DomMatrixReadOnly",
  "HTMLFormElement": "FormElement",
  "HTMLProgressElement": "ProgressElement",
  "HTMLKeygenElement": "KeygenElement",
  "HTMLButtonElement": "ButtonElement",
  "CSSKeyframesRule": "CssKeyframesRule",
  "HTMLMapElement": "MapElement",
  "DOMPointReadOnly": "DomPointReadOnly",
  "MIDIOutput": "MidiOutput",
  "RTCDTMFToneChangeEvent": "RtcDtmfToneChangeEvent",
  "HTMLShadowElement": "ShadowElement",
  "VTTCue": "VttCue",
  "URLUtilsReadOnly": "UrlUtilsReadOnly",
  "CSS": "Css",
  "MIDIInput": "MidiInput",
  "CSSRule": "CssRule",
  "WebKitCSSFilterRule": "CssFilterRule",
  "HTMLTableElement": "TableElement",
  "IDBFactory": "IdbFactory",
  "IDBKeyRange": "KeyRange",
  "IDBCursor": "Cursor",
  "IDBRequest": "Request",
  "IDBOpenDBRequest": "OpenDBRequest",
  "IDBDatabase": "Database",
  "IDBIndex": "Index",
  "IDBObjectStore": "ObjectStore",
  "IDBTransaction": "Transaction",
  "IDBCursorWithValue": "CursorWithValue",
  "IDBVersionChangeEvent": "VersionChangeEvent",
  "WebGLBuffer": "Buffer",
  "EXTShaderTextureLOD": "ExtShaderTextureLod",
  "WebGLUniformLocation": "UniformLocation",
  "EXTBlendMinMax": "ExtBlendMinMax",
  "WebGLFramebuffer": "Framebuffer",
  "WebGLTexture": "Texture",
  "WebGLContextAttributes": "ContextAttributes",
  "OESStandardDerivatives": "OesStandardDerivatives",
  "WebGLDepthTexture": "DepthTexture",
  "WebGLDrawBuffers": "DrawBuffers",
  "OESTextureFloatLinear": "OesTextureFloatLinear",
  "OESTextureHalfFloatLinear": "OesTextureHalfFloatLinear",
  "WebGLDebugShaders": "DebugShaders",
  "OESVertexArrayObject": "OesVertexArrayObject",
  "WebGLCompressedTextureS3TC": "CompressedTextureS3TC",
  "WebGLProgram": "Program",
  "EXTFragDepth": "ExtFragDepth",
  "WebGLContextEvent": "ContextEvent",
  "ANGLEInstancedArrays": "AngleInstancedArrays",
  "WebGLDebugRendererInfo": "DebugRendererInfo",
  "WebGLShader": "Shader",
  "WebGLCompressedTextureATC": "CompressedTextureAtc",
  "WebGLRenderingContext": "RenderingContext",
  "WebGLShaderPrecisionFormat": "ShaderPrecisionFormat",
  "OESTextureHalfFloat": "OesTextureHalfFloat",
  "EXTTextureFilterAnisotropic": "ExtTextureFilterAnisotropic",
  "OESTextureFloat": "OesTextureFloat",
  "OESElementIndexUint": "OesElementIndexUint",
  "WebGLCompressedTextureETC1": "CompressedTextureETC1",
  "WebGLLoseContext": "LoseContext",
  "WebGLVertexArrayObjectOES": "VertexArrayObject",
  "WebGLCompressedTexturePVRTC": "CompressedTexturePvrtc",
  "WebGLRenderbuffer": "Renderbuffer",
  "WebGLActiveInfo": "ActiveInfo",
  "SQLError": "SqlError",
  "SQLResultSet": "SqlResultSet",
  "SQLResultSetRowList": "SqlResultSetRowList",
  "Database": "SqlDatabase",
  "SQLTransaction": "SqlTransaction",
  "SVGAnimatedString": "AnimatedString",
  "SVGFilterElement": "FilterElement",
  "SVGFEFuncAElement": "FEFuncAElement",
  "SVGPathSegLinetoRel": "PathSegLinetoRel",
  "SVGPathSegLinetoVerticalRel": "PathSegLinetoVerticalRel",
  "SVGURIReference": "UriReference",
  "SVGAnimatedLengthList": "AnimatedLengthList",
  "SVGImageElement": "ImageElement",
  "SVGStyleElement": "StyleElement",
  "SVGAnimatedPreserveAspectRatio": "AnimatedPreserveAspectRatio",
  "SVGTextElement": "TextElement",
  "SVGDefsElement": "DefsElement",
  "SVGFEDiffuseLightingElement": "FEDiffuseLightingElement",
  "SVGFEMorphologyElement": "FEMorphologyElement",
  "SVGAltGlyphElement": "AltGlyphElement",
  "SVGFETileElement": "FETileElement",
  "SVGPathSegLinetoHorizontalAbs": "PathSegLinetoHorizontalAbs",
  "SVGPathSegMovetoRel": "PathSegMovetoRel",
  "SVGPolygonElement": "PolygonElement",
  "SVGUseElement": "UseElement",
  "SVGPoint": "Point",
  "SVGRect": "Rect",
  "SVGAnimatedBoolean": "AnimatedBoolean",
  "SVGPathSegArcRel": "PathSegArcRel",
  "SVGTransform": "Transform",
  "SVGFETurbulenceElement": "FETurbulenceElement",
  "SVGNumberList": "NumberList",
  "SVGAnimateElement": "AnimateElement",
  "SVGAnimationElement": "AnimationElement",
  "SVGAnimatedRect": "AnimatedRect",
  "SVGGraphicsElement": "GraphicsElement",
  "SVGMarkerElement": "MarkerElement",
  "SVGFECompositeElement": "FECompositeElement",
  "SVGPolylineElement": "PolylineElement",
  "SVGTransformList": "TransformList",
  "SVGPathSegList": "PathSegList",
  "SVGPathSegCurvetoQuadraticSmoothRel": "PathSegCurvetoQuadraticSmoothRel",
  "SVGEllipseElement": "EllipseElement",
  "SVGFEFuncGElement": "FEFuncGElement",
  "SVGPointList": "PointList",
  "SVGFEMergeElement": "FEMergeElement",
  "SVGCircleElement": "CircleElement",
  "SVGFEFuncRElement": "FEFuncRElement",
  "SVGAnimatedNumberList": "AnimatedNumberList",
  "SVGFEFuncBElement": "FEFuncBElement",
  "SVGSwitchElement": "SwitchElement",
  "SVGFEBlendElement": "FEBlendElement",
  "SVGAnimatedAngle": "AnimatedAngle",
  "SVGTSpanElement": "TSpanElement",
  "SVGRadialGradientElement": "RadialGradientElement",
  "SVGPathSegCurvetoCubicRel": "PathSegCurvetoCubicRel",
  "SVGFEDistantLightElement": "FEDistantLightElement",
  "SVGLinearGradientElement": "LinearGradientElement",
  "SVGTextPositioningElement": "TextPositioningElement",
  "SVGAnimateMotionElement": "AnimateMotionElement",
  "SVGGeometryElement": "GeometryElement",
  "SVGAnimateTransformElement": "AnimateTransformElement",
  "SVGPathSegCurvetoQuadraticRel": "PathSegCurvetoQuadraticRel",
  "SVGPreserveAspectRatio": "PreserveAspectRatio",
  "SVGPathElement": "PathElement",
  "SVGFEColorMatrixElement": "FEColorMatrixElement",
  "SVGPathSegLinetoHorizontalRel": "PathSegLinetoHorizontalRel",
  "SVGLength": "Length",
  "SVGPatternElement": "PatternElement",
  "SVGFEConvolveMatrixElement": "FEConvolveMatrixElement",
  "SVGStringList": "StringList",
  "SVGTextContentElement": "TextContentElement",
  "SVGPathSegLinetoAbs": "PathSegLinetoAbs",
  "SVGFESpecularLightingElement": "FESpecularLightingElement",
  "SVGAnimatedTransformList": "AnimatedTransformList",
  "SVGFEGaussianBlurElement": "FEGaussianBlurElement",
  "SVGRenderingIntent": "RenderingIntent",
  "SVGNumber": "Number",
  "SVGFESpotLightElement": "FESpotLightElement",
  "SVGLineElement": "LineElement",
  "SVGZoomEvent": "ZoomEvent",
  "SVGMatrix": "Matrix",
  "SVGPathSegCurvetoCubicSmoothAbs": "PathSegCurvetoCubicSmoothAbs",
  "SVGSVGElement": "SvgSvgElement",
  "SVGFitToViewBox": "FitToViewBox",
  "SVGAnimatedNumber": "AnimatedNumber",
  "SVGFEDisplacementMapElement": "FEDisplacementMapElement",
  "SVGAngle": "Angle",
  "SVGMaskElement": "MaskElement",
  "SVGPathSegCurvetoQuadraticSmoothAbs": "PathSegCurvetoQuadraticSmoothAbs",
  "SVGPathSegClosePath": "PathSegClosePath",
  "SVGAnimatedLength": "AnimatedLength",
  "SVGSymbolElement": "SymbolElement",
  "SVGPathSegArcAbs": "PathSegArcAbs",
  "SVGRectElement": "RectElement",
  "SVGClipPathElement": "ClipPathElement",
  "SVGStopElement": "StopElement",
  "SVGFEFloodElement": "FEFloodElement",
  "SVGPathSegCurvetoQuadraticAbs": "PathSegCurvetoQuadraticAbs",
  "SVGScriptElement": "ScriptElement",
  "SVGViewSpec": "ViewSpec",
  "SVGLengthList": "LengthList",
  "SVGAnimatedInteger": "AnimatedInteger",
  "SVGTests": "Tests",
  "SVGForeignObjectElement": "ForeignObjectElement",
  "SVGSetElement": "SetElement",
  "SVGElement": "SvgElement",
  "SVGUnitTypes": "UnitTypes",
  "SVGFEComponentTransferElement": "FEComponentTransferElement",
  "SVGDescElement": "DescElement",
  "SVGDiscardElement": "DiscardElement",
  "SVGPathSegCurvetoCubicSmoothRel": "PathSegCurvetoCubicSmoothRel",
  "SVGPathSegLinetoVerticalAbs": "PathSegLinetoVerticalAbs",
  "SVGFEMergeNodeElement": "FEMergeNodeElement",
  "SVGPathSeg": "PathSeg",
  "SVGGElement": "GElement",
  "SVGPathSegMovetoAbs": "PathSegMovetoAbs",
  "SVGTextPathElement": "TextPathElement",
  "SVGFEOffsetElement": "FEOffsetElement",
  "SVGPathSegCurvetoCubicAbs": "PathSegCurvetoCubicAbs",
  "SVGAnimatedEnumeration": "AnimatedEnumeration",
  "SVGZoomAndPan": "ZoomAndPan",
  "SVGTitleElement": "TitleElement",
  "SVGViewElement": "ViewElement",
  "SVGMetadataElement": "MetadataElement",
  "SVGAElement": "AElement",
  "SVGFEImageElement": "FEImageElement",
  "SVGFEPointLightElement": "FEPointLightElement",
  "SVGFilterPrimitiveStandardAttributes": "FilterPrimitiveStandardAttributes",
  "ClientRect": "Rectangle",

  "Date": "DateTime",
  "Array": "List",
  "ReadonlyArray": "List",
  "ArrayBuffer": "ByteBuffer",
  "ArrayBufferView": "TypedData",
  "DataView": "ByteData",
  "Float32Array": "Float32List",
  "Float64Array": "Float64List",
  "Int8Array": "Int8List",
  "Int16Array": "Int16List",
  "Int32Array": "Int32List",
  "Uint8Array": "Uint8List",
  "Uint8ClampedArray": "Uint8ClampedList",
  "Uint16Array": "Uint16List",
  "Uint32Array": "Uint32List",
  "Boolean": "bool",
  "Number": "num"
);
