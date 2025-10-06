import 'package:flutter/material.dart';
import 'package:zain/zain.dart';


class ZjButtonTheme {
  ZjButtonTheme._();

  // Example variables (keep your originals)
  static const bool isEnabled = true;


  static final ButtonStyle lightButtonTheme = ButtonStyle(
    shadowColor: WidgetStateProperty.all(Colors.transparent),
    elevation: WidgetStateProperty.all(0.0),

    // background color depending on state
    backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
      //return states.contains(WidgetState.disabled)
         // ? ZjLightColors.buttonDisableBackgroundColor
          //: ZjLightColors.buttonPrimaryBackgroundColor;
      return ZjColors.primary;
    }),

    // foreground/text color depending on state
    foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
      //return states.contains(WidgetState.disabled)
          //? ZjLightColors.buttonDisableText
         // : ZjLightColors.buttonText;
      return ZjColors.primary;
    }),

    padding: WidgetStateProperty.all(
      const EdgeInsets.symmetric(
          horizontal: ZjUnits.unit24, vertical: ZjUnits.unit10),
    ),
    minimumSize: WidgetStateProperty.all(
      const Size(ZjUnits.unit0, ZjUnits.unit40),
    ),
    shape: WidgetStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(ZjUnits.rxl),
      ),
    ),

    // text style depending on state
    textStyle: WidgetStateProperty.resolveWith<TextStyle>((states) {
      return ZjTextVars.txtBold14.copyWith(
        //color: states.contains(WidgetState.disabled)
            //? ZjLightColors.buttonDisableText
            //: ZjLightColors.buttonText,
      );
    }),
  );
}
