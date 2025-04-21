import 'package:flutter/material.dart';
import 'package:koshiba_agent_app/core/constants/app_color.dart';
import 'package:koshiba_agent_app/core/constants/app_radius.dart';
import 'package:koshiba_agent_app/core/constants/app_space.dart';
import 'package:koshiba_agent_app/core/constants/app_text_theme.dart';
import 'package:koshiba_agent_app/core/extensions/color_extension.dart';

class FilledButtonStyle {
  static ButtonStyle _getStyle(
          {required Color color, required Color onColor}) =>
      FilledButton.styleFrom(
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
      _getStyle(color: AppColor.primary, onColor: AppColor.onPrimary);

  static ButtonStyle get secondary =>
      _getStyle(color: AppColor.secondary, onColor: AppColor.onSecondary);

  static ButtonStyle get tertiary =>
      _getStyle(color: AppColor.tertiary, onColor: AppColor.onTertiary);

  static ButtonStyle get error =>
      _getStyle(color: AppColor.error, onColor: AppColor.onError);
}
