import 'package:flutter/material.dart';

class AppTextTheme {
  static const TextTheme dark = _default;

  static const _textOverflow = TextOverflow.ellipsis;
  static const _fontWeight = FontWeight.w600;
  static const _default = TextTheme(
    displayMedium: TextStyle(
        fontSize: 48, overflow: _textOverflow, fontWeight: _fontWeight),
    titleLarge: TextStyle(
        fontSize: 32, overflow: _textOverflow, fontWeight: _fontWeight),
    titleMedium: TextStyle(
        fontSize: 24, overflow: _textOverflow, fontWeight: _fontWeight),
    titleSmall: TextStyle(
        fontSize: 20, overflow: _textOverflow, fontWeight: _fontWeight),
    bodyLarge: TextStyle(
        fontSize: 16, overflow: _textOverflow, fontWeight: _fontWeight),
    bodyMedium: TextStyle(
        fontSize: 14, overflow: _textOverflow, fontWeight: _fontWeight),
    bodySmall: TextStyle(
        fontSize: 12, overflow: _textOverflow, fontWeight: _fontWeight),
    labelLarge: TextStyle(
        fontSize: 10, overflow: _textOverflow, fontWeight: _fontWeight),
    labelMedium: TextStyle(
        fontSize: 8, overflow: _textOverflow, fontWeight: _fontWeight),
    labelSmall: TextStyle(
        fontSize: 6, overflow: _textOverflow, fontWeight: _fontWeight),
  );
}
