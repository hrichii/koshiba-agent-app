import 'package:flutter/material.dart';

class AppTextTheme {
  static const TextTheme normal = _default;

  static const _textOverflow = TextOverflow.visible;
  static const _fontWeight = FontWeight.w300;
  static const _default = TextTheme(
    displayMedium: TextStyle(
      fontSize: 48,
      overflow: _textOverflow,
      fontWeight: _fontWeight,
    ),
    titleLarge: TextStyle(
      fontSize: 32,
      overflow: _textOverflow,
      fontWeight: _fontWeight,
    ),
    titleMedium: TextStyle(
      fontSize: 24,
      overflow: _textOverflow,
      fontWeight: _fontWeight,
    ),
    titleSmall: TextStyle(
      fontSize: 20,
      overflow: _textOverflow,
      fontWeight: _fontWeight,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      overflow: _textOverflow,
      fontWeight: _fontWeight,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      overflow: _textOverflow,
      fontWeight: _fontWeight,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      overflow: _textOverflow,
      fontWeight: _fontWeight,
    ),
    labelLarge: TextStyle(
      fontSize: 10,
      overflow: _textOverflow,
      fontWeight: _fontWeight,
    ),
    labelMedium: TextStyle(
      fontSize: 8,
      overflow: _textOverflow,
      fontWeight: _fontWeight,
    ),
    labelSmall: TextStyle(
      fontSize: 6,
      overflow: _textOverflow,
      fontWeight: _fontWeight,
    ),
  );
}

class AppTextStyle {
  static const TextTheme _textTheme = AppTextTheme.normal;
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
