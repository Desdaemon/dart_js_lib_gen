@JS()
library samples.mermaidAPI.d.ts;

// ignore_for_file: non_constant_identifier_names, private_optional_parameter, unused_element
import 'package:js/js.dart';
import "dart:html";

/// "default" | "forest" | "dark" | "neutral"
typedef Theme = String;

@JS()
@anonymous
class FlowChartConfig {
  external num? diagramPadding;
  external bool? htmlLabels;
  external num? nodeSpacing;
  external num? rankSpacing;
  external String? curve;
  external num? padding;
  external bool? useMaxWidth;
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
  external num? diagramMarginX;
  external num? diagramMarginY;
  external num? actorMargin;
  external num? width;
  external num? height;
  external num? boxMargin;
  external num? boxTextMargin;
  external num? noteMargin;
  external num? messageMargin;
  external bool? mirrorActors;
  external num? bottomMarginAdj;
  external bool? useMaxWidth;
  external bool? rightAngles;
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
  external num? titleTopMargin;
  external num? barHeight;
  external num? barGap;
  external num? topPadding;
  external num? leftPadding;
  external num? gridLineStartPadding;
  external num? fontSize;
  external String? fontFamily;
  external num? numberSectionStyles;
  external String? axisFormat;
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
  external String? securityLevel;
  external Theme? theme;
  external num? maxTextSize;
  external String? fontFamily;
  external LogLevel? logLevel;
  external bool? startOnLoad;
  external bool? arrowMarkerAbsolute;
  external List<String>? secure;
  external bool? deterministicIds;
  external String? deterministicIDSeed;
  external FlowChartConfig? flowchart;
  external SequenceDiagramConfig? sequence;
  external GanttConfig? gantt;
  external dynamic git;
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
