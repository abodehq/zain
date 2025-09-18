import 'package:flutter/material.dart';
import 'theme/core/zj-units.dart';
import 'theme/core/zj-colors.dart';
import 'theme/components/zj-icons.dart';
import 'theme/components/zj-text.dart';
import 'theme/components/zj-button.dart';
import 'theme/components/zj-input.dart';

class ZjTheme {
  static ThemeData get light => ThemeData(
    brightness: Brightness.light,
    primaryColor: ZjColors.primary,
    scaffoldBackgroundColor: ZjColors.white,
    fontFamily: "zain",
    textTheme: const TextTheme(
      bodyLarge: TextStyle( fontSize: 14,color: ZjColors.primary,fontWeight: FontWeight.w400),
      bodyMedium: TextStyle(fontSize: 14,color: ZjColors.primary,fontWeight: FontWeight.w400),
      titleMedium: TextStyle(fontSize: 14,color: ZjColors.primary,fontWeight: FontWeight.w600),
      headlineSmall: TextStyle(fontSize: 14,color: ZjColors.primary,fontWeight: FontWeight.w700),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color.fromRGBO(35, 174, 183, 0.02),
      contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: Color.fromRGBO(0, 0, 0, 0.08)),
      ),
    ),

    colorScheme: ColorScheme.fromSeed(
      seedColor: ZjColors.primary,
      primary: ZjColors.primary,
      secondary: ZjColors.secondary,
      error: ZjColors.error,
    ),
  );

  /// Dark Theme
  static ThemeData get dark => ThemeData(
    brightness: Brightness.dark,
    primaryColor: ZjColors.primary,
    scaffoldBackgroundColor: ZjColors.black,
    fontFamily: "zain",

    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontSize: 14,
        color: ZjColors.white,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        color: ZjColors.white,
        fontWeight: FontWeight.w400,
      ),
      titleMedium: TextStyle(
        fontSize: 14,
        color: ZjColors.white,
        fontWeight: FontWeight.w600,
      ),
      headlineSmall: TextStyle(
        fontSize: 14,
        color: ZjColors.white,
        fontWeight: FontWeight.w700,
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white10,
      contentPadding:
      const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: Colors.white30),
      ),
    ),

    colorScheme: ColorScheme.fromSeed(
      seedColor: ZjColors.primary,
      brightness: Brightness.dark,
      primary: ZjColors.primary,
      secondary: ZjColors.secondary,
      error: ZjColors.error,
    ),
  );
}