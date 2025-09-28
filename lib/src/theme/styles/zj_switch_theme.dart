import 'package:flutter/material.dart';
import 'package:zain/zain.dart';

class ZjSwitchTheme {
  ZjSwitchTheme._();

  static SwitchThemeData lightSwitchTheme = SwitchThemeData(
    thumbColor: WidgetStateProperty.resolveWith<Color>((states) {
      if (states.contains(WidgetState.selected)) {
        return ZjColors.white; // Thumb color when ON
      }
      if (states.contains(WidgetState.disabled)) {
        return Colors.grey; // Thumb color when disabled
      }
      return ZjColors.white; // Thumb color when OFF
    }),
    trackColor: WidgetStateProperty.resolveWith<Color>((states) {
      if (states.contains(WidgetState.selected)) {
        return ZjColors.primary; // Track color when ON
      }
      if (states.contains(WidgetState.disabled)) {
        return Colors.blue; // Track color when disabled
      }
      return ZjColors.black70; // Track color when OFF
    }),
    thumbIcon: WidgetStateProperty.all(const Icon(null)),
    splashRadius: 20, // Optional: ripple radius
    trackOutlineWidth: WidgetStateProperty.all<double>(0.0),

    materialTapTargetSize: MaterialTapTargetSize.padded,
  );
}
