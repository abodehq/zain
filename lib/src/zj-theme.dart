import 'package:flutter/material.dart';
import 'package:zain/zain.dart';


class ZjTheme {
  ZjTheme._();

  static ThemeData get light =>
      ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        primaryColor: ZjColors.primary,
        dividerTheme: const DividerThemeData(
          color: ZjLightColors.dividerStrokeColor,
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
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ZjButtonTheme.lightButtonTheme, // your global style
        ),
        inputDecorationTheme: ZjInputTheme.lightInputDecorationTheme,
        iconTheme: const IconThemeData(
          color: ZjColors.black54, // Light theme icon color
          size: 24,
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
            buttonPrimaryBackgroundColor: ZjLightColors.buttonPrimaryBackgroundColor,
            buttonSecondaryBackgroundColor: ZjLightColors.buttonSecondaryBackgroundColor,
            buttonDisableBackgroundColor: ZjLightColors.buttonDisableBackgroundColor,
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
  static ThemeData get dark =>
      ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        primaryColor: ZjColors.primary,
        dividerTheme: const DividerThemeData(
          color: ZjDarkColors.dividerStrokeColor,
          thickness: 1,
        ),
        scaffoldBackgroundColor: ZjDarkColors.screenPrimaryBackground,
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

        inputDecorationTheme: ZjInputTheme.lightInputDecorationTheme,
        iconTheme: const IconThemeData(
          color: ZjDarkColors.icon, // Light theme icon color
          size: 24,
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
            dividerTextColor: ZjDarkColors.dividerTextColor,
            buttonPrimaryBackgroundColor: ZjLightColors.buttonPrimaryBackgroundColor,
            buttonSecondaryBackgroundColor: ZjLightColors.buttonSecondaryBackgroundColor,
            buttonDisableBackgroundColor: ZjLightColors.buttonDisableBackgroundColor,
            zigzagTheme: ZjZigzagTheme(
              zigzagHeight: 12,
              zigzagWidth: 18,
              fillColor: ZjColors.black,
              strokeColor: ZjColors.white,
              strokeWidth: 1,
              bottomFillColor: ZjDarkColors.screenPrimaryBackground,
            ),
          ),
        ],
      );
}