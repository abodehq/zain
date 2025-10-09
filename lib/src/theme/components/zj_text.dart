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
class H1 extends Text {
  H1(
    super.data, {
    super.key,
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    bool? softWrap,
    double? textScaleFactor,
    Locale? locale,
    StrutStyle? strutStyle,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    Color? selectionColor,
  }) : super(
         style: (style ?? ZjTextStyles.h1).copyWith(color: color),
         textAlign: textAlign,
         maxLines: maxLines,
         overflow: overflow,
         softWrap: softWrap,
         textScaleFactor: textScaleFactor,
         locale: locale,
         strutStyle: strutStyle,
         textWidthBasis: textWidthBasis,
         textHeightBehavior: textHeightBehavior,
         selectionColor: selectionColor,
       );
}

class H2 extends Text {
  H2(
    super.data, {
    super.key,
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    bool? softWrap,
    double? textScaleFactor,
    Locale? locale,
    StrutStyle? strutStyle,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    Color? selectionColor,
  }) : super(
         style: (style ?? ZjTextStyles.h2).copyWith(color: color),
         textAlign: textAlign,
         maxLines: maxLines,
         overflow: overflow,
         softWrap: softWrap,
         textScaleFactor: textScaleFactor,
         locale: locale,
         strutStyle: strutStyle,
         textWidthBasis: textWidthBasis,
         textHeightBehavior: textHeightBehavior,
         selectionColor: selectionColor,
       );
}

class H3 extends Text {
  H3(
    super.data, {
    super.key,
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    bool? softWrap,
    double? textScaleFactor,
    Locale? locale,
    StrutStyle? strutStyle,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    Color? selectionColor,
  }) : super(
         style: (style ?? ZjTextStyles.h3).copyWith(color: color),
         textAlign: textAlign,
         maxLines: maxLines,
         overflow: overflow,
         softWrap: softWrap,
         textScaleFactor: textScaleFactor,
         locale: locale,
         strutStyle: strutStyle,
         textWidthBasis: textWidthBasis,
         textHeightBehavior: textHeightBehavior,
         selectionColor: selectionColor,
       );
}

class H4 extends Text {
  H4(
    super.data, {
    super.key,
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    bool? softWrap,
    double? textScaleFactor,
    Locale? locale,
    StrutStyle? strutStyle,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    Color? selectionColor,
  }) : super(
         style: (style ?? ZjTextStyles.h4).copyWith(color: color),
         textAlign: textAlign,
         maxLines: maxLines,
         overflow: overflow,
         softWrap: softWrap,
         textScaleFactor: textScaleFactor,
         locale: locale,
         strutStyle: strutStyle,
         textWidthBasis: textWidthBasis,
         textHeightBehavior: textHeightBehavior,
         selectionColor: selectionColor,
       );
}

class H5 extends Text {
  H5(
    super.data, {
    super.key,
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    bool? softWrap,
    double? textScaleFactor,
    Locale? locale,
    StrutStyle? strutStyle,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    Color? selectionColor,
  }) : super(
         style: (style ?? ZjTextStyles.h5).copyWith(color: color),
         textAlign: textAlign,
         maxLines: maxLines,
         overflow: overflow,
         softWrap: softWrap,
         textScaleFactor: textScaleFactor,
         locale: locale,
         strutStyle: strutStyle,
         textWidthBasis: textWidthBasis,
         textHeightBehavior: textHeightBehavior,
         selectionColor: selectionColor,
       );
}

class H6 extends Text {
  H6(
    super.data, {
    super.key,
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    bool? softWrap,
    double? textScaleFactor,
    Locale? locale,
    StrutStyle? strutStyle,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    Color? selectionColor,
  }) : super(
         style: (style ?? ZjTextStyles.h6).copyWith(color: color),
         textAlign: textAlign,
         maxLines: maxLines,
         overflow: overflow,
         softWrap: softWrap,
         textScaleFactor: textScaleFactor,
         locale: locale,
         strutStyle: strutStyle,
         textWidthBasis: textWidthBasis,
         textHeightBehavior: textHeightBehavior,
         selectionColor: selectionColor,
       );
}

class DividerText extends Text {
  DividerText(super.data, {super.key, Color? color})
    : super(style: (ZjTextStyles.dividerTextStyle).copyWith(color: color));
}
