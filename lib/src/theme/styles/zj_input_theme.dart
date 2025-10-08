import 'package:flutter/material.dart';
import 'package:zain/zain.dart';

class ZjInputTheme {
  ZjInputTheme._();

  static InputDecorationTheme inputTheme(
    ZjColorsTheme zjColors,
  ) {
    return InputDecorationTheme(
      filled: true,
      //fillColor: Colors.red,
      //fillColor: ZjColors.secondary2, // background
      fillColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.focused)) {
          return zjColors.inputFocusBackgroundColor; // focused background
        }
        if (states.contains(WidgetState.disabled)) {
          return zjColors.inputDisableBackgroundColor; // disabled background
        }
        return zjColors.inputPrimaryBackgroundColor; // default background
      }),
      contentPadding: const EdgeInsets.symmetric(
        vertical: ZjUnits.unit10, // padding top/bottom
        horizontal: ZjUnits.unit12, // padding left/right
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(ZjComponentsUnits.inputBorderRadius), // border-radius
        borderSide:  BorderSide(
          color: zjColors.inputBorderColor, // border color
          width: ZjComponentsUnits.inputBorderWidth,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(ZjComponentsUnits.inputBorderRadius), // border-radius
        borderSide:  BorderSide(color: zjColors.inputBorderColor, width: ZjComponentsUnits.inputBorderWidth),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: zjColors.inputBorderFocusColor, // change border on focus
        ),
      ),
      labelStyle: TextStyle(color: zjColors.inputLabelColor,fontSize: ZjComponentsUnits.inputFontSize),
      hintStyle:  TextStyle(
        fontSize: ZjComponentsUnits.inputHintFontSize,
        fontWeight: FontWeight.w400,
        color: zjColors.inputHintColor, // lighter hint
      ),
    );
  }
}
