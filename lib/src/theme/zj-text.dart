import 'package:flutter/material.dart';

/// ========= Raw Variations =========
class ZjTextVars {
  // Font sizes
  static const double s36 = 36.0;
  static const double s32 = 32.0;
  static const double s24 = 24.0;
  static const double s20 = 20.0;
  static const double s18 = 18.0;
  static const double s16 = 16.0;
  static const double s14 = 14.0;

  // Font weights
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight bold = FontWeight.w700;

  // Common style
  static const FontStyle normal = FontStyle.normal;

  // ===== Variations =====
  static const TextStyle txtLight36 = TextStyle(
    fontSize: s36,
    fontWeight: light,
  );

  static const TextStyle txt36 = TextStyle(
    fontSize: s36,
    fontWeight: regular,
  );

  static const TextStyle txtBold36 = TextStyle(
    fontSize: s36,
    fontWeight: bold,
  );

  static const TextStyle txt32 = TextStyle(
    fontSize: s32,
    fontWeight: regular,
  );

  static const TextStyle txtBold32 = TextStyle(
    fontSize: s32,
    fontWeight: bold,
  );

  static const TextStyle txtLight24 = TextStyle(
    fontSize: s24,
    fontWeight: light,
  );

  static const TextStyle txt24 = TextStyle(
    fontSize: s24,
    fontWeight: regular,
  );

  static const TextStyle txtBold24 = TextStyle(
    fontSize: s24,
    fontWeight: bold,
  );

  static const TextStyle txt20 = TextStyle(
    fontSize: s20,
    fontWeight: regular,
  );

  static const TextStyle txtBold20 = TextStyle(
    fontSize: s20,
    fontWeight: bold,
  );

  static const TextStyle txt18 = TextStyle(
    fontSize: s18,
    fontWeight: regular,
  );

  static const TextStyle txtBold18 = TextStyle(
    fontSize: s18,
    fontWeight: bold,
  );

  static const TextStyle txtLight16 = TextStyle(
    fontSize: s16,
    fontWeight: light,
  );

  static const TextStyle txt16 = TextStyle(
    fontSize: s16,
    fontWeight: regular,
  );

  static const TextStyle txtBold16 = TextStyle(
    fontSize: s16,
    fontWeight: bold,
  );

  static const TextStyle txtLight14 = TextStyle(
    fontSize: s14,
    fontWeight: light,
  );

  static const TextStyle txt14 = TextStyle(
    fontSize: s14,
    fontWeight: regular,
  );

  static const TextStyle txtBold14 = TextStyle(
    fontSize: s14,
    fontWeight: bold,
  );

  static const TextStyle txtLight12 = TextStyle(
    fontSize: s12,
    fontWeight: light,
  );

  static const TextStyle txt12 = TextStyle(
    fontSize: s12,
    fontWeight: regular,
  );

  static const TextStyle txtBold12 = TextStyle(
    fontSize: s12,
    fontWeight: bold,
  );
}



/// ========= Semantic Styles =========
class ZjTextStyles {
  static const TextStyle h1 = TextStyle(fontSize: 36, fontWeight: FontWeight.bold);
  static const TextStyle h2 = TextStyle(fontSize: 36, fontWeight: FontWeight.normal);
  static const TextStyle h3 = TextStyle(fontSize: 32, fontWeight: FontWeight.bold);
  static const TextStyle h4 = TextStyle(fontSize: 32, fontWeight: FontWeight.normal);
  static const TextStyle h5 = TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
  static const TextStyle h6 = TextStyle(fontSize: 24, fontWeight: FontWeight.normal);

  static const TextStyle body = TextStyle(fontSize: 24, fontWeight: FontWeight.normal);
  static const TextStyle caption = TextStyle(fontSize: 24, fontWeight: FontWeight.w300);
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
