import 'package:flutter/material.dart';
import 'package:zain/zain.dart';

class ZjInputTheme {
  ZjInputTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    filled: true,
    //fillColor: ZjColors.secondary2, // background
    fillColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.focused)) {
        return ZjColors.white; // focused background
      }
      if (states.contains(WidgetState.disabled)) {
        return ZjColors.black8; // disabled background
      }
      return ZjColors.secondary2; // default background
    }),
    contentPadding: const EdgeInsets.symmetric(
      vertical: ZjUnits.unit10, // padding top/bottom
      horizontal: ZjUnits.unit12, // padding left/right
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(ZjUnits.rmd), // border-radius
      borderSide: const BorderSide(
        color: ZjColors.black8, // border color
        width: 1,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: ZjColors.black8, width: 1),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: ZjColors.secondary54, // change border on focus
      ),
    ),
    hintStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: ZjColors.black, // lighter hint
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    filled: true,
    fillColor: ZjColors.primary,
    // background
    contentPadding: const EdgeInsets.symmetric(
      vertical: 10, // padding top/bottom
      horizontal: 12, // padding left/right
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8), // border-radius
      borderSide: const BorderSide(
        color: Color.fromRGBO(0, 0, 0, 0.08), // border color
        width: 1,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: Color.fromRGBO(0, 0, 0, 0.08),
        width: 1,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: ZjColors.primary, // change border on focus
        width: 1.5,
      ),
    ),
    hintStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(0, 0, 0, 0.4), // lighter hint
    ),
  );
}
