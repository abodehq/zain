import 'package:flutter/material.dart';
import '../core/zj-colors.dart';

class ZjInputTheme {
  ZjInputTheme._();

 static  InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
      filled: true,
      fillColor: const Color.fromRGBO(35, 174, 183, 0.02), // background
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

     static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
      filled: true,
      fillColor: const Color.fromRGBO(35, 174, 183, 0.02), // background
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