import 'package:flutter/material.dart';
import 'package:koshiba_agent_app/core/extensions/color_extension.dart';
import 'package:koshiba_agent_app/core/themes/app_color.dart';
import 'package:koshiba_agent_app/core/themes/app_radius.dart';
import 'package:koshiba_agent_app/core/themes/app_space.dart';
import 'package:koshiba_agent_app/core/themes/app_text_theme.dart';

class FilledButtonStyle {
  static ButtonStyle _getStyle({
    required Color color,
    required Color onColor,
  }) =>
      FilledButton.styleFrom(
        foregroundColor: onColor,
        backgroundColor: color,
        disabledForegroundColor: onColor.withWhite(0.6),
        disabledBackgroundColor: color.withWhite(0.6),
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
  static ButtonStyle get primaryTonal => _getStyle(
        color: AppColor.primaryContainer,
        onColor: AppColor.onPrimaryContainer,
      );

  static ButtonStyle get secondary =>
      _getStyle(color: AppColor.secondary, onColor: AppColor.onSecondary);
  static ButtonStyle get secondaryTonal => _getStyle(
        color: AppColor.secondaryContainer,
        onColor: AppColor.onSecondaryContainer,
      );

  static ButtonStyle get tertiary =>
      _getStyle(color: AppColor.tertiary, onColor: AppColor.onTertiary);
  static ButtonStyle get tertiaryTonal => _getStyle(
      color: AppColor.tertiaryContainer, onColor: AppColor.onTertiaryContainer);

  static ButtonStyle get error =>
      _getStyle(color: AppColor.error, onColor: AppColor.onError);
}
