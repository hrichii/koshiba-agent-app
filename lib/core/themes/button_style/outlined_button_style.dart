import 'package:flutter/material.dart';
import 'package:koshiba_agent_app/core/extensions/color_extension.dart';
import 'package:koshiba_agent_app/core/themes/app_color.dart';
import 'package:koshiba_agent_app/core/themes/app_radius.dart';
import 'package:koshiba_agent_app/core/themes/app_space.dart';
import 'package:koshiba_agent_app/core/themes/app_text_theme.dart';

class OutlinedButtonStyle {
  static ButtonStyle _getStyle({
    required Color mainColor,
    Color? backgroundColor,
  }) {
    final disabledMainColor = mainColor.withBlack(0.5);
    return OutlinedButton.styleFrom(
      foregroundColor: mainColor,
      backgroundColor: backgroundColor,
      disabledForegroundColor: disabledMainColor,
      textStyle: AppTextStyle.bodyMedium14,
      padding: const EdgeInsets.all(AppSpace.lg16),
      surfaceTintColor: AppColor.gray0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          AppRadius.md8,
        ),
      ),
    ).copyWith(
      side: WidgetStateProperty.resolveWith<BorderSide>(
        (Set<WidgetState> states) => BorderSide(
          color: states.contains(WidgetState.disabled)
              ? disabledMainColor
              : mainColor,
        ),
      ),
    );
  }

  static ButtonStyle get primary => _getStyle(mainColor: AppColor.primary);
  static ButtonStyle get primaryWithBackground =>
      _getStyle(mainColor: AppColor.primary, backgroundColor: AppColor.surface);
  static ButtonStyle get secondary => _getStyle(mainColor: AppColor.secondary);
  static ButtonStyle get tertiary => _getStyle(mainColor: AppColor.tertiary);
  static ButtonStyle get error => _getStyle(mainColor: AppColor.error);
  static ButtonStyle get gray => _getStyle(mainColor: AppColor.gray90);
}
