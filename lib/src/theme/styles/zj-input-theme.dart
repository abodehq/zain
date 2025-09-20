import 'package:flutter/material.dart';
import 'theme/core/zj-units.dart';
import 'theme/core/zj-colors.dart';
import 'theme/components/zj-icons.dart';
import 'theme/components/zj-text.dart';
import 'theme/components/zj-button.dart';
import 'theme/components/zj-input.dart';

class ZjInputTheme {
  ZjTheme._();

 static InputDecorationTheme  lightInputDecorationTheme(
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

     static InputDecorationTheme  darkInputDecorationTheme(
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