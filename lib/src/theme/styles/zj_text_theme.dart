import 'package:flutter/material.dart';
import 'package:zain/zain.dart';

class ZjTextTheme {
  ZjTextTheme._();

  static TextTheme lightTextTheme = ThemeData.light().textTheme.apply(
    bodyColor: ZjColors.black87,
    displayColor: ZjColors.black87,
  );
//     .copyWith(
  //   bodyLarge: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.red),
  // ),
}
