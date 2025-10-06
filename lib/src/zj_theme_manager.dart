import 'package:flutter/material.dart';
import 'package:zain/zain.dart';
final Map<ZjThemeType, ThemeData> zjThemes = {
  ZjThemeType.light: ZjTheme.getTheme(ZjLightColors.instance),
  // ZjThemeType.dark: ZjTheme.getTheme(ZjDarkColors.instance),
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