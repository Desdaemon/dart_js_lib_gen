@JS()
library samples.mermaidAPI.d.ts;

// ignore_for_file: non_constant_identifier_names, private_optional_parameter, unused_element
import 'package:js/js.dart';
import "dart:html";

typedef Theme = String;

@JS()
@anonymous
class FlowChartConfig {
  external num? get diagramPadding;
  external set diagramPadding(num? value);
  external bool? get htmlLabels;
  external set htmlLabels(bool? value);
  external num? get nodeSpacing;
  external set nodeSpacing(num? value);
  external num? get rankSpacing;
  external set rankSpacing(num? value);
  external String? get curve;
  external set curve(String? value);
  external num? get padding;
  external set padding(num? value);
  external bool? get useMaxWidth;
  external set useMaxWidth(bool? value);
  external factory FlowChartConfig({
    num? diagramPadding,
    bool? htmlLabels,
    num? nodeSpacing,
    num? rankSpacing,
    String? curve,
    num? padding,
    bool? useMaxWidth,
  });
}

@JS()
@anonymous
class SequenceDiagramConfig {
  external num? get diagramMarginX;
  external set diagramMarginX(num? value);
  external num? get diagramMarginY;
  external set diagramMarginY(num? value);
  external num? get actorMargin;
  external set actorMargin(num? value);
  external num? get width;
  external set width(num? value);
  external num? get height;
  external set height(num? value);
  external num? get boxMargin;
  external set boxMargin(num? value);
  external num? get boxTextMargin;
  external set boxTextMargin(num? value);
  external num? get noteMargin;
  external set noteMargin(num? value);
  external num? get messageMargin;
  external set messageMargin(num? value);
  external bool? get mirrorActors;
  external set mirrorActors(bool? value);
  external num? get bottomMarginAdj;
  external set bottomMarginAdj(num? value);
  external bool? get useMaxWidth;
  external set useMaxWidth(bool? value);
  external bool? get rightAngles;
  external set rightAngles(bool? value);
  external factory SequenceDiagramConfig({
    num? diagramMarginX,
    num? diagramMarginY,
    num? actorMargin,
    num? width,
    num? height,
    num? boxMargin,
    num? boxTextMargin,
    num? noteMargin,
    num? messageMargin,
    bool? mirrorActors,
    num? bottomMarginAdj,
    bool? useMaxWidth,
    bool? rightAngles,
  });
}

@JS()
@anonymous
class GanttConfig {
  external num? get titleTopMargin;
  external set titleTopMargin(num? value);
  external num? get barHeight;
  external set barHeight(num? value);
  external num? get barGap;
  external set barGap(num? value);
  external num? get topPadding;
  external set topPadding(num? value);
  external num? get leftPadding;
  external set leftPadding(num? value);
  external num? get gridLineStartPadding;
  external set gridLineStartPadding(num? value);
  external num? get fontSize;
  external set fontSize(num? value);
  external String? get fontFamily;
  external set fontFamily(String? value);
  external num? get numberSectionStyles;
  external set numberSectionStyles(num? value);
  external String? get axisFormat;
  external set axisFormat(String? value);
  external factory GanttConfig({
    num? titleTopMargin,
    num? barHeight,
    num? barGap,
    num? topPadding,
    num? leftPadding,
    num? gridLineStartPadding,
    num? fontSize,
    String? fontFamily,
    num? numberSectionStyles,
    String? axisFormat,
  });
}

@JS()
@anonymous
class Config {
  external String? get securityLevel;
  external set securityLevel(String? value);
  external Theme? get theme;
  external set theme(Theme? value);
  external num? get maxTextSize;
  external set maxTextSize(num? value);
  external String? get fontFamily;
  external set fontFamily(String? value);
  external LogLevel? get logLevel;
  external set logLevel(LogLevel? value);
  external bool? get startOnLoad;
  external set startOnLoad(bool? value);
  external bool? get arrowMarkerAbsolute;
  external set arrowMarkerAbsolute(bool? value);
  external List<String>? get secure;
  external set secure(List<String>? value);
  external bool? get deterministicIds;
  external set deterministicIds(bool? value);
  external String? get deterministicIDSeed;
  external set deterministicIDSeed(String? value);
  external FlowChartConfig? get flowchart;
  external set flowchart(FlowChartConfig? value);
  external SequenceDiagramConfig? get sequence;
  external set sequence(SequenceDiagramConfig? value);
  external GanttConfig? get gantt;
  external set gantt(GanttConfig? value);
  external dynamic get git;
  external set git(dynamic value);
  external factory Config({
    String? securityLevel,
    Theme? theme,
    num? maxTextSize,
    String? fontFamily,
    LogLevel? logLevel,
    bool? startOnLoad,
    bool? arrowMarkerAbsolute,
    List<String>? secure,
    bool? deterministicIds,
    String? deterministicIDSeed,
    FlowChartConfig? flowchart,
    SequenceDiagramConfig? sequence,
    GanttConfig? gantt,
    dynamic git,
  });
}

@JS(r'mermaidAPI.render')
external String render(String id, String txt,
    void Function(String svgCode, void Function(Element element) bindFunctions) cb, Element container);
@JS(r'mermaidAPI.parse')
external dynamic parse(String text);
@JS(r'mermaidAPI.initialize')
external void initialize(Config options);
@JS(r'mermaidAPI.getConfig')
external Config getConfig();
typedef LogLevel = dynamic;
