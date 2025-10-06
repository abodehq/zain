import 'package:flutter/material.dart';
import 'package:zain/zain.dart';

class ZjCheckboxButtonTheme {
  ZjCheckboxButtonTheme._();

  static CheckboxThemeData lightCheckboxButtonTheme = CheckboxThemeData(
    splashRadius: 18,
    visualDensity: VisualDensity.compact,
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    fillColor: WidgetStateProperty.resolveWith<Color?>(
          (states) {
        if (states.contains(WidgetState.selected)) {
         // return ZjLightColors.checkboxButtonSelectedColor; // checked fill color
        }
        if (states.contains(WidgetState.disabled)) {
          //return ZjLightColors.checkboxButtonDisableColor; // when disabled
        }
       // return ZjLightColors.checkboxButtonDefaultColor; // unchecked border color
      },
    ),
    //checkColor: WidgetStateProperty.all(ZjColors.white), // checkmark color
    side: WidgetStateBorderSide.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        //return const BorderSide(color: ZjLightColors.checkboxButtonBorderSelectedColor, width: 2);
      }
      if (states.contains(WidgetState.disabled)) {
        //return const BorderSide(color: ZjLightColors.checkboxButtonBorderColor, width: 2);
      }
      //return const BorderSide(color: ZjLightColors.checkboxButtonBorderColor, width: 2);
    }),
    // shape: RoundedRectangleBorder(
    //   borderRadius: BorderRadius.circular(4),
    // ),
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
    //visualDensity: VisualDensity.compact, // smaller checkbox buttons
  );
}
