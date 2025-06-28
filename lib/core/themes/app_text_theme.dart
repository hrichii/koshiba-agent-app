import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:koshiba_agent_app/core/themes/app_color.dart';

class AppTextTheme {
  static TextTheme get normal => _default;

  static const _textOverflow = TextOverflow.visible;
  static const _fontWeight = FontWeight.w300;
  static const _textColor = AppColorPallete.gray10;

  static TextTheme get _default => TextTheme(
    displayMedium: GoogleFonts.sawarabiGothic(
      fontSize: 48,
      fontWeight: _fontWeight,
      color: _textColor,
    ).copyWith(overflow: _textOverflow),
    titleLarge: GoogleFonts.sawarabiGothic(
      fontSize: 32,
      fontWeight: _fontWeight,
      color: _textColor,
    ).copyWith(overflow: _textOverflow),
    titleMedium: GoogleFonts.sawarabiGothic(
      fontSize: 24,
      fontWeight: _fontWeight,
      color: _textColor,
    ).copyWith(overflow: _textOverflow),
    titleSmall: GoogleFonts.sawarabiGothic(
      fontSize: 20,
      fontWeight: _fontWeight,
      color: _textColor,
    ).copyWith(overflow: _textOverflow),
    bodyLarge: GoogleFonts.sawarabiGothic(
      fontSize: 16,
      fontWeight: _fontWeight,
      color: _textColor,
    ).copyWith(overflow: _textOverflow),
    bodyMedium: GoogleFonts.sawarabiGothic(
      fontSize: 14,
      fontWeight: _fontWeight,
      color: _textColor,
    ).copyWith(overflow: _textOverflow),
    bodySmall: GoogleFonts.sawarabiGothic(
      fontSize: 12,
      fontWeight: _fontWeight,
      color: _textColor,
    ).copyWith(overflow: _textOverflow),
    labelLarge: GoogleFonts.sawarabiGothic(
      fontSize: 10,
      fontWeight: _fontWeight,
      color: _textColor,
    ).copyWith(overflow: _textOverflow),
    labelMedium: GoogleFonts.sawarabiGothic(
      fontSize: 8,
      fontWeight: _fontWeight,
      color: _textColor,
    ).copyWith(overflow: _textOverflow),
    labelSmall: GoogleFonts.sawarabiGothic(
      fontSize: 6,
      fontWeight: _fontWeight,
      color: _textColor,
    ).copyWith(overflow: _textOverflow),
  );
}

class AppTextStyle {
  static TextTheme get _textTheme => AppTextTheme.normal;
  static TextStyle get displayMedium48 => _textTheme.displayMedium!;
  static TextStyle get titleLarge32 => _textTheme.titleLarge!;
  static TextStyle get titleMedium24 => _textTheme.titleMedium!;
  static TextStyle get titleSmall20 => _textTheme.titleSmall!;
  static TextStyle get bodyLarge16 => _textTheme.bodyLarge!;
  static TextStyle get bodyMedium14 => _textTheme.bodyMedium!;
  static TextStyle get bodySmall12 => _textTheme.bodySmall!;
  static TextStyle get labelLarge10 => _textTheme.labelLarge!;
  static TextStyle get labelMedium8 => _textTheme.labelMedium!;
  static TextStyle get labelSmall6 => _textTheme.labelSmall!;
}
