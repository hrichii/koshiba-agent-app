import 'package:flutter/material.dart';

class AppColorScheme {
  static const light = ColorScheme(
    brightness: Brightness.light,
    primary: _Colors.blue40,
    onPrimary: _Colors.blue100,
    primaryContainer: _Colors.blue80,
    onPrimaryContainer: _Colors.blue10,
    secondary: _Colors.yellow50,
    onSecondary: _Colors.yellow100,
    secondaryContainer: _Colors.yellow90,
    onSecondaryContainer: _Colors.yellow10,
    tertiary: _Colors.pink40,
    onTertiary: _Colors.pink100,
    tertiaryContainer: _Colors.pink70,
    onTertiaryContainer: _Colors.pink10,
    error: _Colors.red40,
    onError: _Colors.red100,
    errorContainer: _Colors.red90,
    onErrorContainer: _Colors.red10,
    surface: _Colors.gray100, //SearchBarやNavigationRailなどの背景色
    onSurface: _Colors.gray10, //Textの色
    onSurfaceVariant: _Colors.gray10, //アイコンやラジオボタンの枠の色
    outline: _Colors.gray50, //OutlineButtonの枠やTextFieldの下線の色
    onInverseSurface: _Colors.gray95,
    inverseSurface: _Colors.gray20,
    inversePrimary: _Colors.blue80,
    shadow: Colors.black, //影の色
    surfaceTint: Colors.white, //SearchBarやNavigationRailなどの背景色に少し影響
    outlineVariant: _Colors.gray80, //Dividerに影響
    scrim: Colors.black,
  );
}

class AppColor {
  static ColorScheme get _colorScheme => AppColorScheme.light;
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

  static Color get blue0 => _Colors.blue0;
  static Color get blue1 => _Colors.blue1;
  static Color get blue2 => _Colors.blue2;
  static Color get blue3 => _Colors.blue3;
  static Color get blue4 => _Colors.blue4;
  static Color get blue5 => _Colors.blue5;
  static Color get blue10 => _Colors.blue10;
  static Color get blue15 => _Colors.blue15;
  static Color get blue20 => _Colors.blue20;
  static Color get blue25 => _Colors.blue25;
  static Color get blue30 => _Colors.blue30;
  static Color get blue35 => _Colors.blue35;
  static Color get blue40 => _Colors.blue40;
  static Color get blue50 => _Colors.blue50;
  static Color get blue60 => _Colors.blue60;
  static Color get blue70 => _Colors.blue70;
  static Color get blue80 => _Colors.blue80;
  static Color get blue85 => _Colors.blue85;
  static Color get blue90 => _Colors.blue90;
  static Color get blue95 => _Colors.blue95;
  static Color get blue96 => _Colors.blue96;
  static Color get blue97 => _Colors.blue97;
  static Color get blue98 => _Colors.blue98;
  static Color get blue99 => _Colors.blue99;
  static Color get blue100 => _Colors.blue100;

  static Color get yellow0 => _Colors.yellow0;
  static Color get yellow5 => _Colors.yellow5;
  static Color get yellow10 => _Colors.yellow10;
  static Color get yellow15 => _Colors.yellow15;
  static Color get yellow20 => _Colors.yellow20;
  static Color get yellow25 => _Colors.yellow25;
  static Color get yellow30 => _Colors.yellow30;
  static Color get yellow35 => _Colors.yellow35;
  static Color get yellow40 => _Colors.yellow40;
  static Color get yellow50 => _Colors.yellow50;
  static Color get yellow60 => _Colors.yellow60;
  static Color get yellow70 => _Colors.yellow70;
  static Color get yellow80 => _Colors.yellow80;
  static Color get yellow90 => _Colors.yellow90;
  static Color get yellow95 => _Colors.yellow95;
  static Color get yellow98 => _Colors.yellow98;
  static Color get yellow99 => _Colors.yellow99;
  static Color get yellow100 => _Colors.yellow100;

  static Color get pink0 => _Colors.pink0;
  static Color get pink5 => _Colors.pink5;
  static Color get pink10 => _Colors.pink10;
  static Color get pink15 => _Colors.pink15;
  static Color get pink20 => _Colors.pink20;
  static Color get pink25 => _Colors.pink25;
  static Color get pink30 => _Colors.pink30;
  static Color get pink35 => _Colors.pink35;
  static Color get pink40 => _Colors.pink40;
  static Color get pink50 => _Colors.pink50;
  static Color get pink60 => _Colors.pink60;
  static Color get pink70 => _Colors.pink70;
  static Color get pink80 => _Colors.pink80;
  static Color get pink90 => _Colors.pink90;
  static Color get pink95 => _Colors.pink95;
  static Color get pink98 => _Colors.pink98;
  static Color get pink99 => _Colors.pink99;
  static Color get pink100 => _Colors.pink100;
}

class _Colors {
  static const blue0 = Color(0xFF000000);
  static const blue1 = Color(0xFF020306);
  static const blue2 = Color(0xFF05060D);
  static const blue3 = Color(0xFF070913);
  static const blue4 = Color(0xFF0A0C16);
  static const blue5 = Color(0xFF0C0E1A);
  static const blue10 = Color(0xFF191D34);
  static const blue15 = Color(0xFF262C4E);
  static const blue20 = Color(0xFF333A68);
  static const blue25 = Color(0xFF404982);
  static const blue30 = Color(0xFF4D589B);
  static const blue35 = Color(0xFF5A66B5);
  static const blue40 = Color(0xFF6775CF);
  static const blue50 = Color(0xFF7E8EEA);
  static const blue60 = Color(0xFF96A7FF);
  static const blue70 = Color(0xFFB1C0FF);
  static const blue80 = Color(0xFFCCDAFF);
  static const blue85 = Color(0xFFD8E4FF);
  static const blue90 = Color(0xFFE5EEFF);
  static const blue95 = Color(0xFFF0F5FF);
  static const blue96 = Color(0xFFF3F7FF);
  static const blue97 = Color(0xFFF5F9FF);
  static const blue98 = Color(0xFFF7FAFF);
  static const blue99 = Color(0xFFF9FBFF);
  static const blue100 = Color(0xFFFFFFFF);

  static const yellow0 = Color(0xFF000000);
  static const yellow5 = Color(0xFF131100);
  static const yellow10 = Color(0xFF262200);
  static const yellow15 = Color(0xFF393300);
  static const yellow20 = Color(0xFF4C4400);
  static const yellow25 = Color(0xFF5F5500);
  static const yellow30 = Color(0xFF726600);
  static const yellow35 = Color(0xFF857700);
  static const yellow40 = Color(0xFF988800);
  static const yellow50 = Color(0xFFB5A600);
  static const yellow60 = Color(0xFFD2C300);
  static const yellow70 = Color(0xFFF0E000);
  static const yellow80 = Color(0xFFFFF000);
  static const yellow90 = Color(0xFFFFF780);
  static const yellow95 = Color(0xFFFFFBC0);
  static const yellow98 = Color(0xFFFFFDED);
  static const yellow99 = Color(0xFFFFFFF6);
  static const yellow100 = Color(0xFFFFFFFF);

  static const pink0 = Color(0xFF000000);
  static const pink5 = Color(0xFF140D0F);
  static const pink10 = Color(0xFF281B1E);
  static const pink15 = Color(0xFF3C282C);
  static const pink20 = Color(0xFF50353B);
  static const pink25 = Color(0xFF644249);
  static const pink30 = Color(0xFF784F58);
  static const pink35 = Color(0xFF8C5C66);
  static const pink40 = Color(0xFFA06975);
  static const pink50 = Color(0xFFBC858D);
  static const pink60 = Color(0xFFD8A1A6);
  static const pink70 = Color(0xFFF4BDC0);
  static const pink80 = Color(0xFFFFD4D7);
  static const pink90 = Color(0xFFFFEBF1);
  static const pink95 = Color(0xFFFFF5F8);
  static const pink98 = Color(0xFFFFFDFE);
  static const pink99 = Color(0xFFFFFFFE);
  static const pink100 = Color(0xFFFFFFFF);

  // green
  // static const green10 = Color(0xFF00210A);
  // static const green20 = Color(0xFF013917);
  static const green60 = Color(0xFF669D6F);
  // static const green90 = Color(0xFFB5F1BC);
  // static const green95 = Color(0xFFC5FDCA);

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

  // static const red0 = Color(0xFF000000);
  static const red10 = Color(0xFF410002);
  // static const red20 = Color(0xFF690005);
  // static const red25 = Color(0xFF7E0007);
  // static const red30 = Color(0xFF93000A);
  // static const red35 = Color(0xFFA80710);
  static const red40 = Color(0xFFBA1A1A);
  // static const red50 = Color(0xFFDE3730);
  // static const red60 = Color(0xFFFF5449);
  // static const red70 = Color(0xFFFF897D);
  // static const red80 = Color(0xFFFFB4AB);
  static const red90 = Color(0xFFFFDAD6);
  // static const red95 = Color(0xFFFFEDEA);
  // static const red98 = Color(0xFFFFF8F7);
  // static const red99 = Color(0xFFFFFBFF);
  static const red100 = Color(0xFFFFFFFF);
}
