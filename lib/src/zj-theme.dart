import 'package:flutter/material.dart';
import 'theme/zj-colors.dart';

class ZjTheme {
  static ThemeData get light => ThemeData(
    brightness: Brightness.light,
    primaryColor: ZjColors.primary,
    scaffoldBackgroundColor: ZjColors.white,
    fontFamily: "Zain",
    textTheme: const TextTheme(
      bodyLarge: TextStyle(fontWeight: FontWeight.w400),
      bodyMedium: TextStyle(fontWeight: FontWeight.w400),
      titleMedium: TextStyle(fontWeight: FontWeight.w600),
      headlineSmall: TextStyle(fontWeight: FontWeight.w700),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: ZjColors.primary,
      primary: ZjColors.primary,
      secondary: ZjColors.secondary,
      error: ZjColors.error,
    ),
  );
}