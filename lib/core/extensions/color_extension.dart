import 'dart:math';

import 'package:flutter/material.dart';

extension ColorExtension on Color {
  Color withWhite(double amount) => withColorBlend(Colors.white, amount);
  Color withBlack(double amount) => withColorBlend(Colors.black, amount);
  Color withColorBlend(Color blendColor, double amount) {
    final double normalizedAmount = min(max(0, amount), 1);
    return Color.alphaBlend(
      blendColor.withValues(alpha: normalizedAmount),
      this,
    );
  }
}
