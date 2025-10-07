import 'package:flutter/material.dart';
import '../core/zj_color_theme.dart';
import '../core/zj_colors.dart';

class ZjLightColors implements ZjColorsTheme {
  ZjLightColors._();
  static final ZjLightColors instance = ZjLightColors._();
  @override
  Color get appPrimaryColor => ZjColors.primary;
  @override
  Color get screenPrimaryBackground => const Color(0xFFF1F1F1);

  // App bar
  @override
  Color get appBarBackgroundColor => ZjColors.primary;
  @override
  Color get appBarTitleColor => ZjColors.white;
  @override
  Color get appBarIconColor => ZjColors.white;

  // Text
  @override
  Color get txtBrandPrimary => ZjColors.primary;
  @override
  Color get txtBrandSecondary => ZjColors.secondary;
  @override
  Color get txtBrandThird => ZjColors.third;
  @override
  Color get txtPrimaryBlack => ZjColors.black87;
  @override
  Color get txtSecondaryBlack => ZjColors.black70;
  @override
  Color get txtPrimaryWhite => ZjColors.white;
  @override
  Color get txtSecondaryWhite => ZjColors.white70;

  // Borders / Dividers
  @override
  Color get borderPrimary => ZjColors.black8;
  @override
  Color get dividerTextColor => ZjColors.black;
  @override
  Color get dividerStrokeColor => ZjColors.black8;
  @override
  Color get icon => ZjColors.black;

  // Inputs
  @override
  Color get inputPrimaryBackgroundColor=> ZjColors.secondary2;
  @override
  Color get inputFocusBackgroundColor=> ZjColors.white;
  @override
  Color get inputDisableBackgroundColor=> ZjColors.black8;
  @override
  Color get inputBorderColor=> ZjColors.black8;
  @override
  Color get inputBorderFocusColor=> ZjColors.secondary54;
  @override
  Color get inputDisableBorderColor=> ZjColors.primary;
  @override
  Color get inputLabelColor => txtPrimaryBlack;

  // Buttons
  @override
  Color get buttonPrimaryBackgroundColor => ZjColors.primary;
  @override
  Color get buttonTextColor => ZjColors.white;
  @override
  Color get buttonSecondaryBackgroundColor => ZjColors.secondary;
  @override
  Color get buttonDisableBackgroundColor => ZjColors.primary;
  @override
  Color get buttonDisableText => ZjColors.white;

  // Radio buttons
  @override
  Color get radioButtonSelectedColor => ZjColors.primary;
  @override
  Color get radioButtonDefaultColor => ZjColors.black70;
  @override
  Color get radioButtonDisableColor => ZjColors.black24;

  // Checkbox buttons
  @override
  Color get checkboxButtonSelectedColor => ZjColors.primary;
  @override
  Color get checkboxButtonDefaultColor => ZjColors.white;
  @override
  Color get checkboxButtonDisableColor => ZjColors.black24;
  @override
  Color get checkboxButtonBorderSelectedColor => ZjColors.primary;
  @override
  Color get checkboxButtonBorderColor => ZjColors.black70;
  @override
  Color get checkboxButtonBorderDisableColor => ZjColors.black24;

  // Screens
  @override
  Color get screenWithActionButtonBackgroundColor => ZjColors.white;
  @override
  Color get screenWithActionButtonBorderColor => ZjColors.black8;
  @override
  Color get screenWithActionButtonContainerColor => ZjColors.white;

  // Icons
  @override
  Color get iconPrimaryColor => ZjColors.black54;

  // Zigzag
  @override
  Color get zigzagFillColor => ZjColors.white;
  @override
  Color get zigzagStrokeColor => ZjColors.black8;
}
