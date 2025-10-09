import 'package:flutter/material.dart';
import 'package:zain/zain.dart';

class ZjTextStyles {
  // ===== Variations =====
  static const TextStyle txtLight36 = TextStyle(
    fontSize: ZjTextVariables.s36,
    fontWeight: ZjTextVariables.light,
  );

  static const TextStyle txt36 = TextStyle(
    fontSize: ZjTextVariables.s36,
    fontWeight: ZjTextVariables.regular,
  );

  static const TextStyle txtBold36 = TextStyle(
    fontSize: ZjTextVariables.s36,
    fontWeight: ZjTextVariables.bold,
  );

  static const TextStyle txt32 = TextStyle(
    fontSize: ZjTextVariables.s32,
    fontWeight: ZjTextVariables.regular,
  );

  static const TextStyle txtBold32 = TextStyle(
    fontSize: ZjTextVariables.s32,
    fontWeight: ZjTextVariables.bold,
  );

  static const TextStyle txtLight24 = TextStyle(
    fontSize: ZjTextVariables.s24,
    fontWeight: ZjTextVariables.light,
  );

  static const TextStyle txt24 = TextStyle(
    fontSize: ZjTextVariables.s24,
    fontWeight: ZjTextVariables.regular,
  );

  static const TextStyle txtBold24 = TextStyle(
    fontSize: ZjTextVariables.s24,
    fontWeight: ZjTextVariables.bold,
  );

  static const TextStyle txt20 = TextStyle(
    fontSize: ZjTextVariables.s20,
    fontWeight: ZjTextVariables.regular,
  );

  static const TextStyle txtBold20 = TextStyle(
    fontSize: ZjTextVariables.s20,
    fontWeight: ZjTextVariables.bold,
  );

  static const TextStyle txt18 = TextStyle(
    fontSize: ZjTextVariables.s18,
    fontWeight: ZjTextVariables.regular,
  );

  static const TextStyle txtBold18 = TextStyle(
    fontSize: ZjTextVariables.s18,
    fontWeight: ZjTextVariables.bold,
  );

  static const TextStyle txtLight16 = TextStyle(
    fontSize: ZjTextVariables.s16,
    fontWeight: ZjTextVariables.light,
  );

  static const TextStyle txt16 = TextStyle(
    fontSize: ZjTextVariables.s16,
    fontWeight: ZjTextVariables.regular,
  );

  static const TextStyle txtBold16 = TextStyle(
    fontSize: ZjTextVariables.s16,
    fontWeight: ZjTextVariables.bold,
  );

  static const TextStyle txtLight14 = TextStyle(
    fontSize: ZjTextVariables.s14,
    fontWeight: ZjTextVariables.light,
  );

  static const TextStyle txt14 = TextStyle(
    fontSize: ZjTextVariables.s14,
    fontWeight: ZjTextVariables.regular,
  );

  static const TextStyle txtBold14 = TextStyle(
    fontSize: ZjTextVariables.s14,
    fontWeight: ZjTextVariables.bold,
  );

  static const TextStyle txtLight12 = TextStyle(
    fontSize: ZjTextVariables.s12,
    fontWeight: ZjTextVariables.light,
  );

  static const TextStyle txt12 = TextStyle(
    fontSize: ZjTextVariables.s12,
    fontWeight: ZjTextVariables.regular,
  );

  static const TextStyle txtBold12 = TextStyle(
    fontSize: ZjTextVariables.s12,
    fontWeight: ZjTextVariables.bold,
  );

  static const TextStyle defaultTextStyle = txt16;
  static const TextStyle h1 = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle h2 = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.normal,
  );
  static const TextStyle h3 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle h4 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.normal,
  );
  static const TextStyle h5 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle h6 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle body = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.normal,
  );
  static const TextStyle caption = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w300,
  );
  static const TextStyle dividerTextStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
}

class ZjTextTheme {
  ZjTextTheme._();

  static TextTheme textTheme(ZjColorsTheme zjColors) {
    return TextTheme(
      bodyMedium: ZjTextStyles.txtBold14.copyWith(
        color: zjColors.txtDefaultColor,
      ),
    );
  }
}
