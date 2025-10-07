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

      inputDecorationTheme: ZjInputTheme.inputTheme(zjColors),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ZjButtonTheme.buttonTheme(zjColors),
      ),
      radioTheme: ZjRadioButtonTheme.radioButtonTheme(zjColors),
      checkboxTheme: ZjCheckboxButtonTheme.checkboxButtonTheme(zjColors),
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
}
