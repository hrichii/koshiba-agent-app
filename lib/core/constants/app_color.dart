import 'package:flutter/material.dart';

class AppColorScheme {
  static const dark = ColorScheme(
    brightness: Brightness.dark,
    primary: _Colors.purple80,
    onPrimary: _Colors.purple10,
    primaryContainer: _Colors.purple30,
    onPrimaryContainer: _Colors.purple95,
    secondary: _Colors.green90,
    onSecondary: _Colors.green10,
    secondaryContainer: _Colors.green20,
    onSecondaryContainer: _Colors.green95,
    tertiary: _Colors.yellow70,
    onTertiary: _Colors.yellow10,
    tertiaryContainer: _Colors.yellow30,
    onTertiaryContainer: _Colors.yellow95,
    error: _Colors.red22,
    onError: _Colors.red50,
    errorContainer: _Colors.red10,
    onErrorContainer: _Colors.red95,
    surface: _Colors.gray0, //SearchBarやNavigationRailなどの背景色
    onSurface: _Colors.gray90, //Textの色
    onSurfaceVariant: _Colors.gray90, //アイコンやラジオボタンの枠の色
    outline: _Colors.gray60, //OutlineButtonの枠やTextFieldの下線の色
    onInverseSurface: _Colors.gray10,
    inverseSurface: _Colors.gray90,
    inversePrimary: _Colors.purple40,
    shadow: Colors.black, //影の色
    surfaceTint: Colors.white, //SearchBarやNavigationRailなどの背景色に少し影響
    outlineVariant: _Colors.gray30, //Dividerに影響
    scrim: Colors.black,
  );
}

class AppColor {
  static ColorScheme get _colorScheme => AppColorScheme.dark;
  static Color get primary => _colorScheme.primary;
  static Color get onPrimary => _colorScheme.onPrimary;
  static Color get primaryContainer => _colorScheme.primaryContainer;
  static Color get onPrimaryContainer => _colorScheme.onPrimaryContainer;
  static Color get secondary => _colorScheme.secondary;
  static Color get onSecondary => _colorScheme.onSecondary;
  static Color get secondaryContainer => _colorScheme.secondaryContainer;
  static Color get onSecondaryContainer => _colorScheme.onSecondaryContainer;
  static Color get tertiary => _colorScheme.tertiary;
  static Color get onTertiary => _colorScheme.onTertiary;
  static Color get tertiaryContainer => _colorScheme.tertiaryContainer;
  static Color get onTertiaryContainer => _colorScheme.onTertiaryContainer;
  static Color get error => _colorScheme.error;
  static Color get onError => _colorScheme.onError;
  static Color get errorContainer => _colorScheme.errorContainer;
  static Color get onErrorContainer => _colorScheme.onErrorContainer;
  static Color get surface => _colorScheme.surface;
  static Color get onSurface => _colorScheme.onSurface;
  static Color get surfaceVariant => _colorScheme.surfaceContainerHighest;
  static Color get onSurfaceVariant => _colorScheme.onSurfaceVariant;
  static Color get outline => _colorScheme.outline;
  static Color get onInverseSurface => _colorScheme.onInverseSurface;
  static Color get inverseSurface => _colorScheme.inverseSurface;
  static Color get inversePrimary => _colorScheme.inversePrimary;
  static Color get shadow => _colorScheme.shadow;
  static Color get surfaceTint => _colorScheme.surfaceTint;
  static Color get outlineVariant => _colorScheme.outlineVariant;
  static Color get scrim => _colorScheme.scrim;

  static Color get warn => Colors.orange;
  static Color get success => _Colors.green60;

  static Color get gray0 => _Colors.gray0;
  static Color get gray1 => _Colors.gray1;
  static Color get gray2 => _Colors.gray2;
  static Color get gray3 => _Colors.gray3;
  static Color get gray4 => _Colors.gray4;
  static Color get gray5 => _Colors.gray5;
  static Color get gray10 => _Colors.gray10;
  static Color get gray15 => _Colors.gray15;
  static Color get gray20 => _Colors.gray20;
  static Color get gray25 => _Colors.gray25;
  static Color get gray30 => _Colors.gray30;
  static Color get gray35 => _Colors.gray35;
  static Color get gray40 => _Colors.gray40;
  static Color get gray50 => _Colors.gray50;
  static Color get gray60 => _Colors.gray60;
  static Color get gray70 => _Colors.gray70;
  static Color get gray80 => _Colors.gray80;
  static Color get gray85 => _Colors.gray85;
  static Color get gray90 => _Colors.gray90;
  static Color get gray95 => _Colors.gray95;
  static Color get gray96 => _Colors.gray96;
  static Color get gray97 => _Colors.gray97;
  static Color get gray98 => _Colors.gray98;
  static Color get gray99 => _Colors.gray99;
  static Color get gray100 => _Colors.gray100;

  static Color get purple0 => _Colors.purple0;
  static Color get purple1 => _Colors.purple1;
  static Color get purple2 => _Colors.purple2;
  static Color get purple3 => _Colors.purple3;
  static Color get purple4 => _Colors.purple4;
  static Color get purple5 => _Colors.purple5;
  static Color get purple10 => _Colors.purple10;
  static Color get purple15 => _Colors.purple15;
  static Color get purple20 => _Colors.purple20;
  static Color get purple25 => _Colors.purple25;
  static Color get purple30 => _Colors.purple30;
  static Color get purple35 => _Colors.purple35;
  static Color get purple40 => _Colors.purple40;
  static Color get purple50 => _Colors.purple50;
  static Color get purple60 => _Colors.purple60;
  static Color get purple70 => _Colors.purple70;
  static Color get purple80 => _Colors.purple80;
  static Color get purple85 => _Colors.purple85;
  static Color get purple90 => _Colors.purple90;
  static Color get purple95 => _Colors.purple95;
  static Color get purple96 => _Colors.purple96;
  static Color get purple97 => _Colors.purple97;
  static Color get purple98 => _Colors.purple98;
  static Color get purple99 => _Colors.purple99;
  static Color get purple100 => _Colors.purple100;
}

class _Colors {
  // purple
  static const purple0 = Color(0xFF000000);
  static const purple1 = Color(0xFF060009);
  static const purple2 = Color(0xFF0D0113);
  static const purple3 = Color(0xFF13021D);
  static const purple4 = Color(0xFF1A0327);
  static const purple5 = Color(0xFF210431);
  static const purple10 = Color(0xFF2D0B3C);
  static const purple15 = Color(0xFF381647);
  static const purple20 = Color(0xFF442253);
  static const purple25 = Color(0xFF502D5E);
  static const purple30 = Color(0xFF5C386B);
  static const purple35 = Color(0xFF694478);
  static const purple40 = Color(0xFF765085);
  static const purple50 = Color(0xFF90689F);
  static const purple60 = Color(0xFFAB82BA);
  static const purple70 = Color(0xFFC79CD6);
  static const purple80 = Color(0xFFE4B7F3);
  static const purple85 = Color(0xFFF0CDF9);
  static const purple90 = Color(0xFFF7D8FF);
  static const purple95 = Color(0xFFFFEBF9);
  static const purple96 = Color(0xFFFFF1FA);
  static const purple97 = Color(0xFFFFF5FB);
  static const purple98 = Color(0xFFFFF7FB);
  static const purple99 = Color(0xFFFFFBFF);
  static const purple100 = Color(0xFFFFFFFF);

  // green
  static const green10 = Color(0xFF00210A);
  static const green20 = Color(0xFF013917);
  static const green60 = Color(0xFF669D6F);
  static const green90 = Color(0xFFB5F1BC);
  static const green95 = Color(0xFFC5FDCA);

  // gray
  static const gray0 = Color(0xFF000000);
  static const gray1 = Color(0xFF020202);
  static const gray2 = Color(0xFF050505);
  static const gray3 = Color(0xFF070707);
  static const gray4 = Color(0xFF0A0A0A);
  static const gray5 = Color(0xFF0D0D0D);
  static const gray10 = Color(0xFF1A1A1A);
  static const gray15 = Color(0xFF262626);
  static const gray20 = Color(0xFF333333);
  static const gray25 = Color(0xFF404040);
  static const gray30 = Color(0xFF4D4D4D);
  static const gray35 = Color(0xFF595959);
  static const gray40 = Color(0xFF666666);
  static const gray50 = Color(0xFF808080);
  static const gray60 = Color(0xFF999999);
  static const gray70 = Color(0xFFB3B3B3);
  static const gray80 = Color(0xFFCCCCCC);
  static const gray85 = Color(0xFFD9D9D9);
  static const gray90 = Color(0xFFE6E6E6);
  static const gray95 = Color(0xFFF2F2F2);
  static const gray96 = Color(0xFFF4F4F4);
  static const gray97 = Color(0xFFF6F6F6);
  static const gray98 = Color(0xFFFAFAFA);
  static const gray99 = Color(0xFFFCFCFC);
  static const gray100 = Color(0xFFFFFFFF);

  // yellow
  static const yellow10 = Color(0xFF211B00);
  static const yellow30 = Color(0xFF524700);
  static const yellow70 = Color(0xFFC4AB00);
  static const yellow95 = Color(0xFFFFF1B7);

  // red
  static const red10 = Color(0xFFBA1A1A);
  static const red22 = Color(0xFFFF7871);
  static const red50 = Color(0xFFFFEDEA);
  static const red95 = Color(0xFFFFFFFF);
}
