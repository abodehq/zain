import 'package:flutter/material.dart';
import 'package:zain/zain.dart';
// final Map<ZjThemeType, ThemeData> zjThemes = {
//   ZjThemeType.light: (() {
//     print("🎨 Initializing Light Theme...");
//     return ZjTheme.getTheme(ZjLightColors.instance);
//   })(),
//   ZjThemeType.dark: (() {
//     print("🎨 Initializing Dark Theme...");
//     return ZjTheme.getTheme(ZjDarkColors.instance);
//   })(),
//   // ZjThemeType.blue: (() {
//   //   print("🎨 Initializing Blue Theme...");
//   //   return ZjTheme.getTheme(ZjBlueColors.instance);
//   // })(),
//   // ZjThemeType.green: (() {
//   //   print("🎨 Initializing Green Theme...");
//   //   return ZjTheme.getTheme(ZjGreenColors.instance);
//   // })(),
//   // ZjThemeType.corporate: (() {
//   //   print("🎨 Initializing Corporate Theme...");
//   //   return ZjTheme.getTheme(ZjCorporateColors.instance);
//   // })(),
// };
//
// class ZjThemeManager extends ValueNotifier<ZjThemeType> {
//   ZjThemeManager._(super.value) {
//     print("🧭 ZjThemeManager initialized with theme: ${value.name}");
//   }
//
//   static final ZjThemeManager instance = ZjThemeManager._(ZjThemeType.light);
//
//   ThemeData get currentTheme {
//     print("🎨 Getting current theme: ${value.name}");
//     return zjThemes[value]!;
//   }
//
//   void switchTheme(ZjThemeType newTheme) {
//     print("🔄 Switching theme from ${value.name} to ${newTheme.name}");
//     value = newTheme;
//   }
// }
final Map<ZjThemeType, ThemeData> zjThemes = {
  ZjThemeType.light: ZjTheme.getTheme(ZjLightColors.instance),
  ZjThemeType.dark: ZjTheme.getTheme(ZjDarkColors.instance),
  // ZjThemeType.blue: ZjTheme.getTheme(ZjBlueColors.instance),
  // ZjThemeType.green: ZjTheme.getTheme(ZjGreenColors.instance),
  // ZjThemeType.corporate: ZjTheme.getTheme(ZjCorporateColors.instance),
};
class ZjThemeManager extends ValueNotifier<ZjThemeType> {
  ZjThemeManager._(super.value);

  static final ZjThemeManager instance = ZjThemeManager._(ZjThemeType.light);

  ThemeData get currentTheme => zjThemes[value]!;
  void switchTheme(ZjThemeType newTheme) => value = newTheme;
}