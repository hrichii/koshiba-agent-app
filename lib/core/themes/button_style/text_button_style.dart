import 'package:flutter/material.dart';
import 'package:koshiba_agent_app/core/extensions/color_extension.dart';
import 'package:koshiba_agent_app/core/themes/app_color.dart';
import 'package:koshiba_agent_app/core/themes/app_radius.dart';
import 'package:koshiba_agent_app/core/themes/app_text_theme.dart';

class TextButtonStyle {
  static ButtonStyle styleForm({required Color color}) =>
      TextButton.styleFrom(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: Size.zero,
        padding: EdgeInsets.zero,
        foregroundColor: color,
        textStyle: AppTextStyle.bodyMedium14,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.md8),
        ),
      ).copyWith(
        foregroundColor: WidgetStateProperty.resolveWith<Color>((
          Set<WidgetState> states,
        ) {
          if (states.contains(WidgetState.disabled)) {
            return color.withBlack(0.5);
          } else if (states.contains(WidgetState.hovered)) {
            return Color.lerp(color, Colors.white, 0.25) ?? color;
          } else {
            return color;
          }
        }),
      );

  static ButtonStyle styleFormWithoutOverlay({required Color color}) {
    const Color overlayColor = Colors.transparent;
    return styleForm(color: color).copyWith(
      overlayColor: WidgetStateProperty.resolveWith<Color>(
        (Set<WidgetState> states) => overlayColor,
      ),
    );
  }

  static ButtonStyle get primary => styleForm(color: AppColor.primary);

  static ButtonStyle get primaryWithoutOverlay =>
      styleFormWithoutOverlay(color: AppColor.primary);

  static ButtonStyle get whiteWithoutOverlay =>
      styleFormWithoutOverlay(color: AppColor.gray100);

  static ButtonStyle get gray => styleForm(color: AppColor.gray90);

  static ButtonStyle get grayWithoutOverlay =>
      styleFormWithoutOverlay(color: AppColor.gray90);

  static ButtonStyle get secondary => styleForm(color: AppColor.secondary);

  static ButtonStyle get secondaryWithoutOverlay =>
      styleFormWithoutOverlay(color: AppColor.secondary);

  static ButtonStyle get tertiary => styleForm(color: AppColor.tertiary);

  static ButtonStyle get tertiaryWithoutOverlay =>
      styleFormWithoutOverlay(color: AppColor.tertiary);

  static ButtonStyle get error => styleForm(color: AppColor.error);

  static ButtonStyle get errorWithoutOverlay =>
      styleFormWithoutOverlay(color: AppColor.error);
}
