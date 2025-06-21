import 'package:flutter/material.dart';

extension ButtonStyleExt on ButtonStyle {
  ButtonStyle withoutPadding() => copyWith(
    padding: const WidgetStatePropertyAll<EdgeInsetsGeometry>(EdgeInsets.zero),
  );
  ButtonStyle withPadding(EdgeInsetsGeometry padding) =>
      copyWith(padding: WidgetStatePropertyAll<EdgeInsetsGeometry>(padding));

  ButtonStyle withBorderRadius(BorderRadiusGeometry borderRadius) => copyWith(
    shape: WidgetStatePropertyAll<OutlinedBorder>(
      RoundedRectangleBorder(borderRadius: borderRadius),
    ),
  );
}
