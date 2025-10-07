import 'package:flutter/material.dart';
import 'package:zain/zain.dart';

class ZjRadioButtonTheme {
  ZjRadioButtonTheme._();

  static RadioThemeData radioButtonTheme(ZjColorsTheme zjColors) {
    return RadioThemeData(
      splashRadius: 18,
      visualDensity: VisualDensity.compact,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      fillColor: WidgetStateProperty.resolveWith<Color?>((states) {
        if (states.contains(WidgetState.selected)) {
           return zjColors.radioButtonSelectedColor; // when selected
        }
        if (states.contains(WidgetState.disabled)) {
           return zjColors.radioButtonDisableColor; // when disabled
        }
        return zjColors.radioButtonDefaultColor; // default (unselected)
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
}
