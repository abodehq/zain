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

        radioTheme: RadioThemeData(
          splashRadius: 18,
          //visualDensity: VisualDensity.compact,
          visualDensity:VisualDensity.compact,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap, // smaller touch area
          fillColor: WidgetStateProperty.resolveWith<Color?>((states) {
            if (states.contains(WidgetState.selected)) {
              return ZjLightColors.radioButtonSelectedColor; // when selected
            }
            if (states.contains(WidgetState.disabled)) {
              return ZjLightColors.radioButtonDisableColor; // when disabled
            }
            return ZjLightColors.radioButtonDefaultColor; // default (unselected)
          }),
          // overlayColor: WidgetStateProperty.resolveWith<Color?>((states) {
          //   if (states.contains(WidgetState.hovered)) {
          //     return ZjColors.secondary;
          //   }
          //   if (states.contains(WidgetState.focused)) {
          //     return ZjColors.third;
          //   }
          //   if (states.contains(WidgetState.pressed)) {
          //     return ZjColors.error;
          //   }
          //   return null;
          // }),
          //materialTapTargetSize: MaterialTapTargetSize.shrinkWrap, // tighter spacing if needed
          //visualDensity: VisualDensity.compact, // smaller radio buttons

        ),
        listTileTheme: const ListTileThemeData(
          contentPadding: EdgeInsets.symmetric(horizontal: 0),
          iconColor: Colors.blue,
          textColor: Colors.black,
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