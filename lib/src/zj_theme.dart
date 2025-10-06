import 'package:flutter/material.dart';
import 'package:zain/zain.dart';

class ZjTheme {
  ZjTheme._();
  static ThemeData getTheme(ZjColorsTheme zjColors) {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light, // you can also pass brightness as parameter if needed
      primaryColor: zjColors.appPrimaryColor,
      scaffoldBackgroundColor: zjColors.screenPrimaryBackground,
      fontFamily: "zain",
      colorScheme: ColorScheme.fromSeed(
        seedColor: zjColors.appPrimaryColor,
        primary: zjColors.appPrimaryColor,
        secondary: zjColors.txtBrandSecondary,
        error: ZjColors.error,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: zjColors.appBarBackgroundColor,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: TextStyle(
          color: zjColors.appBarTitleColor,
          fontSize: ZjUnits.unit20,
        ),
        titleSpacing: 0,
        leadingWidth: 48,
        iconTheme: IconThemeData(
          color: zjColors.appBarIconColor,
        ),
      ),
      textTheme: ZjTextTheme.lightTextTheme,
      inputDecorationTheme: ZjInputTheme.lightInputDecorationTheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ZjButtonTheme.lightButtonTheme,
      ),
      radioTheme: ZjRadioButtonTheme.lightRadioButtonTheme,
      checkboxTheme: ZjCheckboxButtonTheme.lightCheckboxButtonTheme,
      switchTheme: ZjSwitchTheme.lightSwitchTheme,
      listTileTheme: const ListTileThemeData(
        contentPadding: EdgeInsets.symmetric(horizontal: 0),
        iconColor: Colors.blue,
        textColor: Colors.black,
      ),
      dividerTheme: DividerThemeData(
        color: zjColors.dividerStrokeColor,
        thickness: ZjComponentsUnits.dividerThickness,
      ),
      iconTheme: IconThemeData(
        color: zjColors.iconPrimaryColor,
        size: ZjComponentsUnits.defaultIconSize,
      ),
    ).copyWith(
      extensions: <ThemeExtension<dynamic>>[
        ZjThemeExtension(
          dividerTextColor: zjColors.dividerTextColor,
          buttonPrimaryBackgroundColor: zjColors.buttonPrimaryBackgroundColor,
          buttonSecondaryBackgroundColor: zjColors.buttonSecondaryBackgroundColor,
          buttonDisableBackgroundColor: zjColors.buttonDisableBackgroundColor,
          buttonTextColor: zjColors.buttonTextColor,
          screenWithActionButtonBackgroundColor: zjColors.screenWithActionButtonBackgroundColor,
          screenWithActionButtonBorderColor: zjColors.screenWithActionButtonBorderColor,
          screenWithActionButtonContainerColor: zjColors.screenWithActionButtonContainerColor,
          zigzagTheme: ZjZigzagTheme(
            zigzagHeight: ZjComponentsUnits.zigzagHeight,
            zigzagWidth: ZjComponentsUnits.zigzagWidth,
            fillColor: zjColors.zigzagFillColor,
            strokeColor: zjColors.zigzagStrokeColor,
            strokeWidth: ZjComponentsUnits.zigzagStrokeWidth,
            bottomFillColor: zjColors.screenPrimaryBackground,
          ),
        ),
      ],
    );
  }

  // static ThemeData get light =>
  //     ThemeData(
  //       useMaterial3: true,
  //       brightness: Brightness.light,
  //       primaryColor: ZjLightColors.appPrimaryColor,
  //       scaffoldBackgroundColor: ZjLightColors.screenPrimaryBackground,
  //       fontFamily: "zain",
  //       colorScheme: ColorScheme.fromSeed(
  //         seedColor: ZjColors.primary,
  //         primary: ZjColors.primary,
  //         secondary: ZjColors.secondary,
  //         error: ZjColors.error,
  //       ),
  //       appBarTheme: const AppBarTheme(
  //         backgroundColor: ZjLightColors.appBarBackgroundColor, // your custom background
  //         elevation: 0, // flat style
  //         //toolbarHeight: 64.0,not used cause we use custom value in the widget
  //         centerTitle: false,
  //         titleTextStyle: TextStyle(
  //           color: ZjLightColors.appBarTitleColor,
  //           fontSize: ZjUnits.unit20,
  //           //fontWeight: ZjUnits.,
  //         ),
  //         titleSpacing:0,
  //         leadingWidth: 48,
  //         iconTheme: IconThemeData(
  //           color: ZjLightColors.appBarIconColor, // color of back arrow and other icons
  //         ),
  //       ),
  //       textTheme: ZjTextTheme.lightTextTheme,
  //       inputDecorationTheme: ZjInputTheme.lightInputDecorationTheme,
  //       elevatedButtonTheme: ElevatedButtonThemeData(
  //         style: ZjButtonTheme.lightButtonTheme, // your global style
  //       ),
  //       radioTheme: ZjRadioButtonTheme.lightRadioButtonTheme,
  //       checkboxTheme: ZjCheckboxButtonTheme.lightCheckboxButtonTheme,
  //       switchTheme: ZjSwitchTheme.lightSwitchTheme,
  //       listTileTheme: const ListTileThemeData(
  //         contentPadding: EdgeInsets.symmetric(horizontal: 0),
  //         iconColor: Colors.blue,
  //         textColor: Colors.black,
  //       ),
  //       dividerTheme: const DividerThemeData(
  //         color: ZjLightColors.dividerStrokeColor,
  //         thickness: ZjComponentsUnits.dividerThickness,
  //       ),
  //       iconTheme: const IconThemeData(
  //         color: ZjLightColors.iconPrimaryColor, // Light theme icon color
  //         size: ZjComponentsUnits.defaultIconSize,
  //       ),
  //     ).copyWith(
  //       extensions: <ThemeExtension<dynamic>>[
  //         const ZjThemeExtension(
  //           dividerTextColor: ZjLightColors.dividerTextColor,
  //           buttonPrimaryBackgroundColor:
  //           ZjLightColors.buttonPrimaryBackgroundColor,
  //           buttonSecondaryBackgroundColor:
  //           ZjLightColors.buttonSecondaryBackgroundColor,
  //           buttonDisableBackgroundColor:
  //           ZjLightColors.buttonDisableBackgroundColor,
  //           screenWithActionButtonBackgroundColor:
  //           ZjLightColors.screenWithActionButtonBackgroundColor,
  //           screenWithActionButtonBorderColor:
  //           ZjLightColors.screenWithActionButtonBorderColor,
  //           screenWithActionButtonContainerColor:
  //           ZjLightColors.screenWithActionButtonContainerColor,
  //           zigzagTheme: ZjZigzagTheme(
  //             zigzagHeight: ZjComponentsUnits.zigzagHeight,
  //             zigzagWidth: ZjComponentsUnits.zigzagWidth,
  //             fillColor: ZjLightColors.zigzagFillColor,
  //             strokeColor: ZjLightColors.zigzagStrokeColor,
  //             strokeWidth: ZjComponentsUnits.zigzagStrokeWidth,
  //             bottomFillColor: ZjLightColors.screenPrimaryBackground,
  //           ),
  //         ),
  //       ],
  //     );
  //
  // /// Dark Theme
  // static ThemeData get dark =>
  //     ThemeData(
  //       useMaterial3: true,
  //       brightness: Brightness.light,
  //       primaryColor: ZjColors.primary,
  //       dividerTheme: const DividerThemeData(
  //         color: ZjDarkColors.dividerStrokeColor,
  //         thickness: 1,
  //       ),
  //       scaffoldBackgroundColor: ZjDarkColors.screenPrimaryBackground,
  //       fontFamily: "zain",
  //       // textTheme: const TextTheme(
  //       //   bodyLarge: TextStyle( fontSize: 14,color: ZjColors.primary,fontWeight: FontWeight.w400),
  //       //   bodyMedium: TextStyle(fontSize: 14,color: ZjColors.primary,fontWeight: FontWeight.w400),
  //       //   titleMedium: TextStyle(fontSize: 14,color: ZjColors.primary,fontWeight: FontWeight.w600),
  //       //   headlineSmall: TextStyle(fontSize: 14,color: ZjColors.primary,fontWeight: FontWeight.w700),
  //       // ),
  //       // Text styles for TextFormField
  //       textTheme: ThemeData.light().textTheme.apply(
  //         bodyColor: ZjColors.white87,
  //         displayColor: ZjColors.white87,
  //       ),
  //
  //       // textTheme: const TextTheme(
  //       //   bodyLarge: TextStyle(
  //       //     fontSize: 14,
  //       //     fontWeight: FontWeight.w400,
  //       //     color: Color.fromRGBO(0, 0, 0, 0.7), // matches text-secondary-black
  //       //     height: 1.5, // line-height equivalent
  //       //   ),
  //       // ),
  //       inputDecorationTheme: ZjInputTheme.lightInputDecorationTheme,
  //       iconTheme: const IconThemeData(
  //         color: ZjDarkColors.icon, // Light theme icon color
  //         size: 24,
  //       ),
  //
  //       colorScheme: ColorScheme.fromSeed(
  //         seedColor: ZjColors.primary,
  //         primary: ZjColors.primary,
  //         secondary: ZjColors.secondary,
  //         error: ZjColors.error,
  //       ),
  //     ).copyWith(
  //       extensions: <ThemeExtension<dynamic>>[
  //         const ZjThemeExtension(
  //           dividerTextColor: ZjDarkColors.dividerTextColor,
  //           buttonPrimaryBackgroundColor:
  //           ZjLightColors.buttonPrimaryBackgroundColor,
  //           buttonSecondaryBackgroundColor:
  //           ZjLightColors.buttonSecondaryBackgroundColor,
  //           buttonDisableBackgroundColor:
  //           ZjLightColors.buttonDisableBackgroundColor,
  //
  //           screenWithActionButtonBackgroundColor:
  //           ZjLightColors.screenWithActionButtonBackgroundColor,
  //           screenWithActionButtonBorderColor:
  //           ZjLightColors.screenWithActionButtonBorderColor,
  //           screenWithActionButtonContainerColor:
  //           ZjLightColors.screenWithActionButtonContainerColor,
  //           zigzagTheme: ZjZigzagTheme(
  //             zigzagHeight: 12,
  //             zigzagWidth: 18,
  //             fillColor: ZjColors.black,
  //             strokeColor: ZjColors.white,
  //             strokeWidth: 1,
  //             bottomFillColor: ZjDarkColors.screenPrimaryBackground,
  //           ),
  //         ),
  //       ],
  //     );
}
