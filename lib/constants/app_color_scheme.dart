import 'package:flutter/material.dart';
import 'package:koshiba_agent_app/constants/app_color.dart';

class AppColorScheme {
  static const dark = ColorScheme(
    brightness: Brightness.dark,
    primary: AppColor.purple80,
    onPrimary: AppColor.purple10,
    primaryContainer: AppColor.purple30,
    onPrimaryContainer: AppColor.purple95,
    secondary: AppColor.green90,
    onSecondary: AppColor.green10,
    secondaryContainer: AppColor.green20,
    onSecondaryContainer: AppColor.green95,
    tertiary: AppColor.yellow70,
    onTertiary: AppColor.yellow10,
    tertiaryContainer: AppColor.yellow30,
    onTertiaryContainer: AppColor.yellow95,
    error: AppColor.red22,
    onError: AppColor.red50,
    errorContainer: AppColor.red10,
    onErrorContainer: AppColor.red95,
    background: AppColor.purple2, //背景色
    onBackground: AppColor.gray80,
    surface: AppColor.gray0, //SearchBarやNavigationRailなどの背景色
    onSurface: AppColor.gray90, //Textの色
    surfaceVariant: AppColor.gray30, //SliderやDialogの背景色
    onSurfaceVariant: AppColor.gray90, //アイコンやラジオボタンの枠の色
    outline: AppColor.gray60, //OutlineButtonの枠やTextFieldの下線の色
    onInverseSurface: AppColor.gray10,
    inverseSurface: AppColor.gray90,
    inversePrimary: AppColor.purple40,
    shadow: Colors.black, //影の色
    surfaceTint: Colors.white, //SearchBarやNavigationRailなどの背景色に少し影響
    outlineVariant: AppColor.gray30, //Dividerに影響
    scrim: Colors.black,
  );
}
