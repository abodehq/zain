import 'package:flutter/material.dart';
import '../core/zj_color_theme.dart';
import '../core/zj_colors.dart';

class ZjDarkColors implements ZjColorsTheme {
  ZjDarkColors._();
  static final ZjDarkColors instance = ZjDarkColors._();


  @override
  Color get appPrimaryColor => ZjColors.primary;
  @override
  Color get screenPrimaryBackground => ZjColors.primary;

  // App bar
  @override
  Color get appBarBackgroundColor => ZjColors.error;
  @override
  Color get appBarTitleColor => ZjColors.black8;
  @override
  Color get appBarIconColor => ZjColors.black;

  // Text
  @override
  Color get txtBrandPrimary => ZjColors.secondary;
  @override
  Color get txtBrandSecondary => ZjColors.primary;
  @override
  Color get txtBrandThird => ZjColors.third;
  @override
  Color get txtPrimaryBlack => ZjColors.white;
  @override
  Color get txtSecondaryBlack => ZjColors.white;
  @override
  Color get txtPrimaryWhite => ZjColors.white;
  @override
  Color get txtSecondaryWhite => ZjColors.white;

  // Borders / Dividers
  @override
  Color get borderPrimary => ZjColors.white;
  @override
  Color get dividerTextColor => ZjColors.white;
  @override
  Color get dividerStrokeColor => ZjColors.white;
  @override
  Color get icon => ZjColors.white;

  // Inputs
  @override
  Color get inputPrimaryBackgroundColor=> ZjColors.primary;
  @override
  Color get inputFocusBackgroundColor=> ZjColors.primary;
  @override
  Color get inputDisableBackgroundColor=> ZjColors.primary;
  @override
  Color get inputBorderColor=> ZjColors.primary;
  @override
  Color get inputBorderFocusColor=> ZjColors.primary;
  @override
  Color get inputDisableBorderColor=> ZjColors.primary;
  @override
  Color get inputLabelColor => ZjColors.white;
  @override
  Color get inputHintColor => ZjColors.black24;
  // Buttons
  @override
  Color get buttonPrimaryBackgroundColor => ZjColors.primary;
  @override
  Color get buttonTextColor => ZjColors.black;
  @override
  Color get buttonSecondaryBackgroundColor => ZjColors.secondary;
  @override
  Color get buttonDisableBackgroundColor => ZjColors.primary;
  @override
  Color get buttonDisableText => ZjColors.black;

  // Radio buttons
  @override
  Color get radioButtonSelectedColor => ZjColors.primary;
  @override
  Color get radioButtonDefaultColor => ZjColors.white;
  @override
  Color get radioButtonDisableColor => ZjColors.white;

  // Checkbox buttons
  @override
  Color get checkboxButtonSelectedColor => ZjColors.primary;
  @override
  Color get checkboxButtonDefaultColor => ZjColors.black;
  @override
  Color get checkboxButtonDisableColor => ZjColors.white;
  @override
  Color get checkboxButtonBorderSelectedColor => ZjColors.primary;
  @override
  Color get checkboxButtonBorderColor => ZjColors.white;
  @override
  Color get checkboxButtonBorderDisableColor => ZjColors.white;

  // Screens
  @override
  Color get screenWithActionButtonBackgroundColor => ZjColors.black;
  @override
  Color get screenWithActionButtonBorderColor => ZjColors.white;
  @override
  Color get screenWithActionButtonContainerColor => ZjColors.black;

  // Icons
  @override
  Color get iconPrimaryColor => ZjColors.white;

  // Zigzag
  @override
  Color get zigzagFillColor => ZjColors.black;
  @override
  Color get zigzagStrokeColor => ZjColors.white;
}
