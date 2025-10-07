import 'package:flutter/material.dart';

abstract class ZjColorsTheme {
  Color get appPrimaryColor;
  Color get screenPrimaryBackground;

  // App bar
  Color get appBarBackgroundColor;
  Color get appBarTitleColor;
  Color get appBarIconColor;

  // Text
  Color get txtBrandPrimary;
  Color get txtBrandSecondary;
  Color get txtBrandThird;
  Color get txtPrimaryBlack;
  Color get txtSecondaryBlack;
  Color get txtPrimaryWhite;
  Color get txtSecondaryWhite;


  // Borders / Dividers
  Color get borderPrimary;
  Color get dividerTextColor;
  Color get dividerStrokeColor;
  Color get icon;

  //Inputs
  Color get inputPrimaryBackgroundColor;
  Color get inputFocusBackgroundColor;
  Color get inputDisableBackgroundColor;
  Color get inputBorderColor;
  Color get inputBorderFocusColor;
  Color get inputDisableBorderColor;
  Color get inputLabelColor;

  // Buttons
  Color get buttonPrimaryBackgroundColor;
  Color get buttonTextColor;
  Color get buttonSecondaryBackgroundColor;
  Color get buttonDisableBackgroundColor;
  Color get buttonDisableText;

  // Radio buttons
  Color get radioButtonSelectedColor;
  Color get radioButtonDefaultColor;
  Color get radioButtonDisableColor;

  // Checkbox buttons
  Color get checkboxButtonSelectedColor;
  Color get checkboxButtonDefaultColor;
  Color get checkboxButtonDisableColor;
  Color get checkboxButtonBorderSelectedColor;
  Color get checkboxButtonBorderColor;
  Color get checkboxButtonBorderDisableColor;

  // Screens
  Color get screenWithActionButtonBackgroundColor;
  Color get screenWithActionButtonBorderColor;
  Color get screenWithActionButtonContainerColor;

  // Icons
  Color get iconPrimaryColor;

  // Zigzag
  Color get zigzagFillColor;
  Color get zigzagStrokeColor;
}
