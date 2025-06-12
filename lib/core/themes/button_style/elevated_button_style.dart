import 'package:flutter/material.dart';
import 'package:koshiba_agent_app/core/extensions/color_extension.dart';
import 'package:koshiba_agent_app/core/themes/app_color.dart';
import 'package:koshiba_agent_app/core/themes/app_radius.dart';
import 'package:koshiba_agent_app/core/themes/app_space.dart';
import 'package:koshiba_agent_app/core/themes/app_text_theme.dart';

class ElevatedButtonStyle {
  static ButtonStyle styleForm({
    required Color color,
    required Color onColor,
  }) =>
      ElevatedButton.styleFrom(
        foregroundColor: onColor,
        backgroundColor: color,
        disabledForegroundColor: onColor.withBlack(0.5),
        disabledBackgroundColor: color.withBlack(0.5),
        textStyle: AppTextStyle.bodyMedium14,
        padding: const EdgeInsets.all(AppSpace.lg16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            AppRadius.md8,
          ),
        ),
      );

  static ButtonStyle get primary =>
      styleForm(color: AppColor.primary, onColor: AppColor.onPrimary);
  static ButtonStyle get secondary =>
      styleForm(color: AppColor.secondary, onColor: AppColor.onSecondary);
  static ButtonStyle get tertiary =>
      styleForm(color: AppColor.tertiary, onColor: AppColor.onTertiary);
  static ButtonStyle get error =>
      styleForm(color: AppColor.error, onColor: AppColor.onError);
}
