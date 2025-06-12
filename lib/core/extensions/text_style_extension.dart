import 'package:flutter/widgets.dart';
import 'package:koshiba_agent_app/core/themes/app_color.dart';
import 'package:koshiba_agent_app/core/themes/app_text_theme.dart';

extension TextStyleExtension on TextStyle {
  // Color
  TextStyle withColor(Color color) => copyWith(color: color);
  TextStyle withPrimary() => copyWith(color: AppColor.primary);
  TextStyle withOnPrimary() => copyWith(color: AppColor.onPrimary);
  TextStyle withPrimaryContainer() =>
      copyWith(color: AppColor.primaryContainer);
  TextStyle withOnPrimaryContainer() =>
      copyWith(color: AppColor.onPrimaryContainer);
  // TextStyle withSecondary() => copyWith(color: AppColor.secondary);
  // TextStyle withOnSecondary() => copyWith(color: AppColor.onSecondary);
  // TextStyle withSecondaryContainer() =>
  //     copyWith(color: AppColor.secondaryContainer);
  // TextStyle withOnSecondaryContainer() =>
  //     copyWith(color: AppColor.onSecondaryContainer);
  // TextStyle withTertiary() => copyWith(color: AppColor.tertiary);
  // TextStyle withOnTertiary() => copyWith(color: AppColor.onTertiary);
  // TextStyle withTertiaryContainer() =>
  //     copyWith(color: AppColor.tertiaryContainer);
  // TextStyle withOnTertiaryContainer() =>
  //     copyWith(color: AppColor.onTertiaryContainer);
  TextStyle withError() => copyWith(color: AppColor.error);
  TextStyle withOnError() => copyWith(color: AppColor.onError);
  TextStyle withErrorContainer() => copyWith(color: AppColor.errorContainer);
  TextStyle withOnErrorContainer() =>
      copyWith(color: AppColor.onErrorContainer);
  TextStyle withGray0() => copyWith(color: AppColor.gray0);
  TextStyle withGray1() => copyWith(color: AppColor.gray1);
  TextStyle withGray2() => copyWith(color: AppColor.gray2);
  TextStyle withGray3() => copyWith(color: AppColor.gray3);
  TextStyle withGray4() => copyWith(color: AppColor.gray4);
  TextStyle withGray5() => copyWith(color: AppColor.gray5);
  TextStyle withGray10() => copyWith(color: AppColor.gray10);
  TextStyle withGray15() => copyWith(color: AppColor.gray15);
  TextStyle withGray20() => copyWith(color: AppColor.gray20);
  TextStyle withGray25() => copyWith(color: AppColor.gray25);
  TextStyle withGray30() => copyWith(color: AppColor.gray30);
  TextStyle withGray35() => copyWith(color: AppColor.gray35);
  TextStyle withGray40() => copyWith(color: AppColor.gray40);
  TextStyle withGray50() => copyWith(color: AppColor.gray50);
  TextStyle withGray60() => copyWith(color: AppColor.gray60);
  TextStyle withGray70() => copyWith(color: AppColor.gray70);
  TextStyle withGray80() => copyWith(color: AppColor.gray80);
  TextStyle withGray85() => copyWith(color: AppColor.gray85);
  TextStyle withGray90() => copyWith(color: AppColor.gray90);
  TextStyle withGray95() => copyWith(color: AppColor.gray95);
  TextStyle withGray96() => copyWith(color: AppColor.gray96);
  TextStyle withGray97() => copyWith(color: AppColor.gray97);
  TextStyle withGray98() => copyWith(color: AppColor.gray98);
  TextStyle withGray99() => copyWith(color: AppColor.gray99);
  TextStyle withGray100() => copyWith(color: AppColor.gray100);

  // FontWeight
  TextStyle withW300() => copyWith(fontWeight: FontWeight.w300);
  TextStyle withW400() => copyWith(fontWeight: FontWeight.w400);
  TextStyle withW600() => copyWith(fontWeight: FontWeight.w600);

  // LineHeight
  TextStyle withLineHeight(double lineHeight) => copyWith(
        height:
            lineHeight / (fontSize ?? AppTextStyle.bodyMedium14.fontSize ?? 14),
      );

  // TextOverflow
  TextStyle withVisible() => copyWith(overflow: TextOverflow.visible);
  TextStyle withEllipsis() => copyWith(overflow: TextOverflow.ellipsis);

  // Underline
  TextStyle withUnderline() => copyWith(decoration: TextDecoration.underline);

  // TextLeadingDistribution
  TextStyle withLeadingEven() =>
      copyWith(leadingDistribution: TextLeadingDistribution.even);
}
