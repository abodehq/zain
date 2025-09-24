import 'package:flutter/material.dart';
import 'theme/core/zj-units.dart';
import 'theme/core/zj-colors.dart';
import 'theme/components/zj-icons.dart';
import 'theme/components/zj-text.dart';
import 'theme/components/zj-button.dart';
import 'theme/components/zj-input.dart';
import 'theme/styles/zj-input-theme.dart';

import 'theme/theme_extension/zj_theme_extension.dart';
import 'theme/theme_extension/zj_zigzag_theme.dart';


class ZjTheme {
  ZjTheme._();

  static ThemeData get light => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: ZjColors.primary,
    dividerTheme: const DividerThemeData(
      color: ZjLightColors.borderPrimary,
      thickness: 1,
    ),
    scaffoldBackgroundColor: ZjLightColors.screenPrimaryBackground,
    fontFamily: "zain",
    // textTheme: const TextTheme(
    //   bodyLarge: TextStyle( fontSize: 14,color: ZjColors.primary,fontWeight: FontWeight.w400),
    //   bodyMedium: TextStyle(fontSize: 14,color: ZjColors.primary,fontWeight: FontWeight.w400),
    //   titleMedium: TextStyle(fontSize: 14,color: ZjColors.primary,fontWeight: FontWeight.w600),
    //   headlineSmall: TextStyle(fontSize: 14,color: ZjColors.primary,fontWeight: FontWeight.w700),
    // ),
    // Text styles for TextFormField
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Color.fromRGBO(0, 0, 0, 0.7), // matches text-secondary-black
        height: 1.5, // line-height equivalent
      ),
    ),

    inputDecorationTheme:ZjInputTheme.lightInputDecorationTheme ,
    iconTheme: const IconThemeData(
      color: ZjColors.black54, // Light theme icon color
      size:24,
    ),


    colorScheme: ColorScheme.fromSeed(
      seedColor: ZjColors.primary,
      primary: ZjColors.primary,
      secondary: ZjColors.secondary,
      error: ZjColors.error,
    ),
  ).copyWith(
    extensions: <ThemeExtension<dynamic>>[
      const ZjThemeExtension(
        dividerTextColor: ZjLightColors.dividerTextColor,
        zigzagTheme: ZjZigzagTheme(
          zigzagHeight: 12,
          zigzagWidth: 18,
          fillColor: ZjColors.white,
          strokeColor: ZjColors.black8,
          strokeWidth: 1,
          bottomFillColor: ZjLightColors.screenPrimaryBackground,
        ),
      ),
    ],
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
    iconTheme: const IconThemeData(
      color: ZjColors.white54, // Light theme icon color
      size:24,
    ),
    inputDecorationTheme: ZjInputTheme.darkInputDecorationTheme ,

    colorScheme: ColorScheme.fromSeed(
      seedColor: ZjColors.primary,
      brightness: Brightness.dark,
      primary: ZjColors.primary,
      secondary: ZjColors.secondary,
      error: ZjColors.error,
    ),
  );
}