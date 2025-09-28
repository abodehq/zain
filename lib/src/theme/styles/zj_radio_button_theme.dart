import 'package:flutter/material.dart';
import 'package:zain/zain.dart';

class ZjRadioButtonTheme {
  ZjRadioButtonTheme._();

  static RadioThemeData lightRadioButtonTheme = RadioThemeData(
    splashRadius: 18,
    visualDensity: VisualDensity.compact,
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    fillColor: WidgetStateProperty.resolveWith<Color?>((states) {
      if (states.contains(WidgetState.selected)) {
        return ZjLightColors.radioButtonSelectedColor; // when selected
      }
      if (states.contains(WidgetState.disabled)) {
        return ZjLightColors.radioButtonDisableColor; // when disabled
      }
      return ZjLightColors.radioButtonDefaultColor; // default (unselected)
    }),
    // overlayColor: WidgetStateProperty.resolveWith<Color?>((states) {
    //   if (states.contains(WidgetState.hovered)) {
    //     return ZjColors.secondary;
    //   }
    //   if (states.contains(WidgetState.focused)) {
    //     return ZjColors.third;
    //   }
    //   if (states.contains(WidgetState.pressed)) {
    //     return ZjColors.error;
    //   }
    //   return null;
    // }),
    //materialTapTargetSize: MaterialTapTargetSize.shrinkWrap, // tighter spacing if needed
    //visualDensity: VisualDensity.compact, // smaller radio buttons
  );
}
