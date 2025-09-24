import 'package:flutter/material.dart';
import 'dart:ui';
import '../core/zj-colors.dart';

@immutable
class ZjZigzagTheme {
  final double zigzagHeight;
  final double zigzagWidth;
  final Color fillColor;
  final Color strokeColor;
  final double strokeWidth;
  final Color bottomFillColor;

  const ZjZigzagTheme({
    this.zigzagHeight = 12,
    this.zigzagWidth = 22,
    this.fillColor =ZjColors.white,
    this.strokeColor = ZjColors.black2 ,
    this.strokeWidth = 1,
    this.bottomFillColor= ZjColors.white,
  });

  ZjZigzagTheme copyWith({
    double? zigzagHeight,
    double? zigzagWidth,
    Color? fillColor,
    Color? strokeColor,
    double? strokeWidth,
    Color? bottomFillColor,
  }) {
    return ZjZigzagTheme(
      zigzagHeight: zigzagHeight ?? this.zigzagHeight,
      zigzagWidth: zigzagWidth ?? this.zigzagWidth,
      fillColor: fillColor ?? this.fillColor,
      strokeColor: strokeColor ?? this.strokeColor,
      strokeWidth: strokeWidth ?? this.strokeWidth,
      bottomFillColor: bottomFillColor ?? this.bottomFillColor,
    );
  }

  // Helper lerp method
  ZjZigzagTheme lerp(ZjZigzagTheme other, double t) {
    return ZjZigzagTheme(
      zigzagHeight: lerpDouble(zigzagHeight, other.zigzagHeight, t)!,
      zigzagWidth: lerpDouble(zigzagWidth, other.zigzagWidth, t)!,
      fillColor: Color.lerp(fillColor, other.fillColor, t)!,
      strokeColor: Color.lerp(strokeColor, other.strokeColor, t)!,
      strokeWidth: lerpDouble(strokeWidth, other.strokeWidth, t)!,
      bottomFillColor: Color.lerp(bottomFillColor, other.bottomFillColor, t)!,
    );
  }
}
