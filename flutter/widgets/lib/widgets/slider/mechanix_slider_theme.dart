import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class MechanixSliderThemeData extends ThemeExtension<MechanixSliderThemeData>
    with Diagnosticable {
  const MechanixSliderThemeData({
    this.height = 60.0,
    this.horizontalPadding = 16.0,
    this.activeColor = const Color(0xFF3283E8),
    this.inactiveColor = const Color(0xFF404040),
    this.barHeight = 56.0,
    this.widgetRadius = const BorderRadius.all(Radius.circular(0)),
    this.iconColor,
    this.iconSize = 24.0,
    this.boxWidth = 30.0,
    this.boxHeight = 30.0,
    this.iconLeftPadding = 4.0,
    this.iconRightPadding = 20.0,
    this.dotColor = const Color(0xFF5A5A5A),
    this.barBackgroundColor = const Color(0xFF2B2B2B),
    this.containerColor,
  });

  final double height;
  final double horizontalPadding;
  final Color activeColor;
  final Color inactiveColor;
  final double barHeight;
  final BorderRadius widgetRadius;
  final Color? iconColor;
  final double iconSize;
  final double boxWidth;
  final double boxHeight;
  final double iconLeftPadding;
  final double iconRightPadding;
  final Color dotColor;
  final Color barBackgroundColor;
  final Color? containerColor;

  @override
  MechanixSliderThemeData copyWith({
    double? height,
    double? horizontalPadding,
    Color? activeColor,
    Color? inactiveColor,
    bool? showBars,
    double? barHeight,
    BorderRadius? widgetRadius,
    Color? iconColor,
    double? iconSize,
    double? boxWidth,
    double? boxHeight,
    double? iconLeftPadding,
    double? iconRightPadding,
    Color? dotColor,
    Color? barBackgroundColor,
    Color? containerColor,
  }) {
    return MechanixSliderThemeData(
      height: height ?? this.height,
      horizontalPadding: horizontalPadding ?? this.horizontalPadding,
      activeColor: activeColor ?? this.activeColor,
      inactiveColor: inactiveColor ?? this.inactiveColor,
      barHeight: barHeight ?? this.barHeight,
      widgetRadius: widgetRadius ?? this.widgetRadius,
      iconColor: iconColor ?? this.iconColor,
      iconSize: iconSize ?? this.iconSize,
      boxWidth: boxWidth ?? this.boxWidth,
      boxHeight: boxHeight ?? this.boxHeight,
      iconLeftPadding: iconLeftPadding ?? this.iconLeftPadding,
      iconRightPadding: iconRightPadding ?? this.iconRightPadding,
      dotColor: dotColor ?? this.dotColor,
      barBackgroundColor: barBackgroundColor ?? this.barBackgroundColor,
      containerColor: containerColor ?? this.containerColor,
    );
  }

  @override
  ThemeExtension<MechanixSliderThemeData> lerp(
      ThemeExtension<MechanixSliderThemeData>? other, double t) {
    final o = other as MechanixSliderThemeData?;
    return MechanixSliderThemeData(
      height: lerpDouble(height, o?.height, t) ?? height,
      horizontalPadding:
          lerpDouble(horizontalPadding, o?.horizontalPadding, t) ??
              horizontalPadding,
      activeColor: Color.lerp(activeColor, o?.activeColor, t) ?? activeColor,
      inactiveColor:
          Color.lerp(inactiveColor, o?.inactiveColor, t) ?? inactiveColor,
      barHeight: lerpDouble(barHeight, o?.barHeight, t) ?? barHeight,
      widgetRadius:
          BorderRadius.lerp(widgetRadius, o?.widgetRadius, t) ?? widgetRadius,
      iconColor: Color.lerp(iconColor, o?.iconColor, t),
      iconSize: lerpDouble(iconSize, o?.iconSize, t) ?? iconSize,
      boxWidth: lerpDouble(boxWidth, o?.boxWidth, t) ?? boxWidth,
      boxHeight: lerpDouble(boxHeight, o?.boxHeight, t) ?? boxHeight,
      iconLeftPadding:
          lerpDouble(iconLeftPadding, o?.iconLeftPadding, t) ?? iconLeftPadding,
      iconRightPadding: lerpDouble(iconRightPadding, o?.iconRightPadding, t) ??
          iconRightPadding,
      dotColor: Color.lerp(dotColor, o?.dotColor, t) ?? dotColor,
      barBackgroundColor:
          Color.lerp(barBackgroundColor, o?.barBackgroundColor, t) ??
              barBackgroundColor,
      containerColor: Color.lerp(containerColor, o?.containerColor, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);

    properties.add(DiagnosticsProperty('height', height));
    properties.add(DiagnosticsProperty('horizontalPadding', horizontalPadding));
    properties.add(DiagnosticsProperty('activeColor', activeColor));
    properties.add(DiagnosticsProperty('inactiveColor', inactiveColor));
    properties.add(DiagnosticsProperty('barHeight', barHeight));
    properties.add(DiagnosticsProperty('widgetRadius', widgetRadius));
    properties.add(DiagnosticsProperty('iconColor', iconColor));
    properties.add(DiagnosticsProperty('iconSize', iconSize));
    properties.add(DiagnosticsProperty('boxWidth', boxWidth));
    properties.add(DiagnosticsProperty('boxHeight', boxHeight));
    properties.add(DiagnosticsProperty('iconLeftPadding', iconLeftPadding));
    properties.add(DiagnosticsProperty('iconRightPadding', iconRightPadding));
    properties.add(DiagnosticsProperty('dotColor', dotColor));
    properties
        .add(DiagnosticsProperty('barBackgroundColor', barBackgroundColor));
    properties.add(DiagnosticsProperty('containerColor', containerColor));
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is MechanixSliderThemeData &&
        height == other.height &&
        horizontalPadding == other.horizontalPadding &&
        activeColor == other.activeColor &&
        inactiveColor == other.inactiveColor &&
        barHeight == other.barHeight &&
        widgetRadius == other.widgetRadius &&
        iconColor == other.iconColor &&
        iconSize == other.iconSize &&
        boxWidth == other.boxWidth &&
        boxHeight == other.boxHeight &&
        iconLeftPadding == other.iconLeftPadding &&
        iconRightPadding == other.iconRightPadding &&
        dotColor == other.dotColor &&
        barBackgroundColor == other.barBackgroundColor &&
        containerColor == other.containerColor;
  }

  @override
  int get hashCode {
    return Object.hash(
      height,
      horizontalPadding,
      activeColor,
      inactiveColor,
      barHeight,
      widgetRadius,
      iconColor,
      iconSize,
      boxWidth,
      boxHeight,
      iconLeftPadding,
      iconRightPadding,
      dotColor,
      barBackgroundColor,
      containerColor,
    );
  }
}

class MechanixSliderTheme extends InheritedTheme {
  const MechanixSliderTheme({
    super.key,
    required this.style,
    required super.child,
  });

  final MechanixSliderThemeData style;

  static MechanixSliderThemeData of(BuildContext context) {
    final theme =
        context.dependOnInheritedWidgetOfExactType<MechanixSliderTheme>();
    return theme?.style ??
        Theme.of(context).extension<MechanixSliderThemeData>() ??
        const MechanixSliderThemeData();
  }

  @override
  Widget wrap(BuildContext context, Widget child) {
    return MechanixSliderTheme(
      style: style,
      child: child,
    );
  }

  @override
  bool updateShouldNotify(MechanixSliderTheme oldWidget) {
    return style != oldWidget.style;
  }
}
