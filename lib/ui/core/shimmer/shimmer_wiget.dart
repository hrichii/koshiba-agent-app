import 'package:flutter/material.dart';
import 'package:koshiba_agent_app/core/themes/app_color.dart';
import 'package:koshiba_agent_app/core/themes/app_radius.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  const ShimmerWidget({
    super.key,
    this.borderRadius,
    this.height = 30,
    this.width = double.infinity,
    this.backgroundColor,
    this.baseColor,
    this.highlightColor,
  });
  final BorderRadiusGeometry? borderRadius;
  final double height;
  final double width;
  final Color? backgroundColor;
  final Color? baseColor;
  final Color? highlightColor;

  @override
  Widget build(BuildContext context) => Shimmer.fromColors(
    direction: ShimmerDirection.ltr,
    baseColor: baseColor ?? AppColor.gray80,
    highlightColor: highlightColor ?? AppColor.gray90,
    child: Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColor.gray0,
        borderRadius: borderRadius ?? BorderRadius.circular(AppRadius.sm4),
      ),
    ),
  );
}
