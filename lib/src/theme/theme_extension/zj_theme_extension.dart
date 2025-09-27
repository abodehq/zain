import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:zain/zain.dart';


@immutable
class ZjThemeExtension extends ThemeExtension<ZjThemeExtension> {
  final ZjZigzagTheme zigzagTheme;
  final Color dividerTextColor;
  final Color buttonPrimaryBackgroundColor;
  final Color buttonSecondaryBackgroundColor;
  final Color buttonDisableBackgroundColor;
  //final ZjButtonTheme buttonTheme;
  // Add more themes here as needed

  const ZjThemeExtension({
    required this.zigzagTheme,
    required this.dividerTextColor,
    required this.buttonPrimaryBackgroundColor,
    required this.buttonSecondaryBackgroundColor,
    required this.buttonDisableBackgroundColor,
   // required this.buttonTheme,
  });

  @override
  ZjThemeExtension copyWith({
    ZjZigzagTheme? zigzagTheme,
    Color? dividerTextColor,
   // ZjButtonTheme? buttonTheme,
  }) {
    return ZjThemeExtension(
      zigzagTheme: zigzagTheme ?? this.zigzagTheme,
      dividerTextColor: dividerTextColor ?? this.dividerTextColor,
      buttonPrimaryBackgroundColor: buttonPrimaryBackgroundColor ?? this.buttonSecondaryBackgroundColor,
      buttonSecondaryBackgroundColor: buttonSecondaryBackgroundColor ?? this.buttonSecondaryBackgroundColor,
      buttonDisableBackgroundColor: buttonDisableBackgroundColor ?? this.buttonSecondaryBackgroundColor,
      //buttonTheme: buttonTheme ?? this.buttonTheme,
    );
  }

  @override
  ZjThemeExtension lerp(ThemeExtension<ZjThemeExtension>? other, double t) {
    if (other is! ZjThemeExtension) return this;
    return ZjThemeExtension(
      zigzagTheme: zigzagTheme.lerp(other.zigzagTheme, t),
      dividerTextColor: Color.lerp(dividerTextColor, other.dividerTextColor, t)!,
      buttonPrimaryBackgroundColor: Color.lerp(buttonPrimaryBackgroundColor, other.buttonSecondaryBackgroundColor, t)!,
      buttonSecondaryBackgroundColor: Color.lerp(buttonSecondaryBackgroundColor, other.buttonSecondaryBackgroundColor, t)!,
      buttonDisableBackgroundColor: Color.lerp(buttonDisableBackgroundColor, other.buttonDisableBackgroundColor, t)!,
      //buttonTheme: buttonTheme.lerp(other.buttonTheme, t),
    );
  }
}

extension ZjThemeDataExtension on ThemeData {
  ZjThemeExtension get zjTheme => extension<ZjThemeExtension>()!;
}

