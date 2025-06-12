import 'package:flutter/material.dart';
import 'package:koshiba_agent_app/core/themes/app_radius.dart';
import 'package:koshiba_agent_app/core/themes/app_space.dart';
import 'package:koshiba_agent_app/core/themes/button_style/filled_button_style.dart';

class PannelButtonGroup extends StatelessWidget {
  const PannelButtonGroup({
    required this.pannelButtonDataList,
    this.spacing = 2.0,
    this.radius = 8.0,
    super.key,
    this.backgroundColor,
  });
  final List<PannelButtonData> pannelButtonDataList;
  final double spacing;
  final double radius;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) => DecoratedBox(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: spacing,
          children: pannelButtonDataList.asMap().entries.map((entry) {
            final index = entry.key;
            final buttonData = entry.value;
            return PannelButton(
              onPressed: buttonData.onPressed,
              topRadius: index == 0 ? radius : 0,
              bottomRadius:
                  index == pannelButtonDataList.length - 1 ? radius : 0,
              child: buttonData.child,
            );
          }).toList(),
        ),
      );
}

class PannelButtonData {
  const PannelButtonData({required this.child, this.onPressed, this.style});
  factory PannelButtonData.icon({
    required Widget leadingIcon,
    required Widget title,
    VoidCallback? onPressed,
    ButtonStyle? style,
  }) =>
      PannelButtonData(
        child: Row(spacing: AppSpace.sm8, children: [leadingIcon, title]),
        onPressed: onPressed,
        style: style,
      );
  final Widget child;
  final VoidCallback? onPressed;
  final ButtonStyle? style;
}

class PannelButton extends StatelessWidget {
  const PannelButton({
    required this.child,
    super.key,
    this.onPressed,
    this.topRadius = AppRadius.md8,
    this.bottomRadius = AppRadius.md8,
    this.style,
  });
  final Widget child;
  final VoidCallback? onPressed;
  final double topRadius;
  final double bottomRadius;
  final ButtonStyle? style;

  @override
  Widget build(BuildContext context) => IgnorePointer(
        ignoring: onPressed == null,
        child: FilledButton(
          onPressed: onPressed ?? () {},
          style: (style ?? FilledButtonStyle.pannel).copyWith(
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(topRadius),
                  topRight: Radius.circular(topRadius),
                  bottomLeft: Radius.circular(bottomRadius),
                  bottomRight: Radius.circular(bottomRadius),
                ),
              ),
            ),
          ),
          child: child,
        ),
      );
}
