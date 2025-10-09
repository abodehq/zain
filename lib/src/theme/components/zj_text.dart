import 'package:flutter/material.dart';
import 'package:zain/src/theme/styles/zj_text_theme.dart';

class ZjText extends StatelessWidget {
  final String? text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;

  const ZjText(
    this.text, {
    super.key,
    this.style,
    this.textAlign,
    this.maxLines,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? '',
      style: style,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}

/// ========= Components extending Text =========
class H1 extends ZjText {
  H1(
    super.data, {
    super.key,
    String? text,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
  }) : super(
         style: ZjTextStyles.h1.copyWith(color: color),
         textAlign: textAlign,
         maxLines: maxLines,
         overflow: overflow,
       );
}

class DividerText extends ZjText {
  DividerText(super.data, {super.key, Color? color})
    : super(style: (ZjTextStyles.dividerTextStyle).copyWith(color: color));
}
