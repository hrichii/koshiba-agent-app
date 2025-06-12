import 'package:flutter/material.dart';
import 'package:koshiba_agent_app/core/extensions/color_extension.dart';
import 'package:koshiba_agent_app/core/themes/app_color.dart';
import 'package:koshiba_agent_app/core/themes/app_space.dart';

class IconButtonStyle {
  static ButtonStyle styleForm({
    required Color color,
  }) =>
      IconButton.styleFrom(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: Size.zero,
        padding: const EdgeInsets.all(AppSpace.sm8),
        foregroundColor: color,
        backgroundColor: Colors.transparent,
        disabledForegroundColor: color.withBlack(0.25),
        disabledBackgroundColor: Colors.transparent,
      );

  static ButtonStyle get primary => styleForm(color: AppColor.primary);
  static ButtonStyle get white => styleForm(color: AppColor.gray100);
  static ButtonStyle get secondary => styleForm(color: AppColor.secondary);
  static ButtonStyle get tertiary => styleForm(color: AppColor.tertiary);
  static ButtonStyle get error => styleForm(color: AppColor.error);
}
