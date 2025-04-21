import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koshiba_agent_app/core/constants/app_color.dart';
import 'package:koshiba_agent_app/core/constants/app_env.dart';
import 'package:koshiba_agent_app/core/constants/app_radius.dart';
import 'package:koshiba_agent_app/core/constants/app_text_theme.dart';
import 'package:koshiba_agent_app/core/constants/button_style/filled_button_style.dart';
import 'package:koshiba_agent_app/core/constants/button_style/icon_button_style.dart';
import 'package:koshiba_agent_app/core/constants/button_style/outlined_button_style.dart';
import 'package:koshiba_agent_app/core/constants/button_style/text_button_style.dart';
import 'package:koshiba_agent_app/core/extensions/text_style_extension.dart';
import 'package:koshiba_agent_app/generated/l10n.dart';
import 'package:koshiba_agent_app/ui/routers/router.dart';
import 'package:page_transition/page_transition.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const colorScheme = AppColorScheme.dark;
    const textTheme = AppTextTheme.dark;
    return MaterialApp.router(
      title: AppEnv.appName,
      debugShowCheckedModeBanner: false,
      routerConfig: ref.watch(routerProvider),
      localizationsDelegates: const [
        AppMessage.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppMessage.delegate.supportedLocales,
      theme: ThemeData(
        colorScheme: colorScheme,
        textTheme: textTheme,
        useMaterial3: true,
        scaffoldBackgroundColor: AppColorScheme.dark.surface,
        appBarTheme: AppBarTheme(
          surfaceTintColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: textTheme.bodyLarge,
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppRadius.sm4),
          ),
          filled: true,
          fillColor: AppColor.gray10,
          contentPadding: const EdgeInsets.all(16),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppRadius.sm4),
            borderSide: BorderSide(color: AppColor.gray50),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppRadius.sm4),
            borderSide: BorderSide(color: AppColor.gray50),
          ),
          prefixIconColor: AppColor.gray50,
          hintStyle: textTheme.bodyMedium?.withGray50(),
          errorStyle: textTheme.bodySmall?.withError().withW300(),
          errorMaxLines: 3,
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButtonStyle.primary,
        ),
        outlinedButtonTheme:
            OutlinedButtonThemeData(style: OutlinedButtonStyle.primary),
        textButtonTheme: TextButtonThemeData(style: TextButtonStyle.primary),
        iconButtonTheme: IconButtonThemeData(style: IconButtonStyle.primary),
        iconTheme: IconThemeData(size: 24, color: colorScheme.primary),
        dividerTheme: DividerThemeData(
          space: 1,
          color: AppColor.gray30,
        ),
        progressIndicatorTheme:
            ProgressIndicatorThemeData(color: colorScheme.primary),
        listTileTheme: const ListTileThemeData(
          dense: true,
          contentPadding: EdgeInsets.zero,
          minVerticalPadding: 0,
        ),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: colorScheme.surface,
          elevation: 2,
          showDragHandle: false,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(AppRadius.xl16),
            ),
          ),
        ),
        pageTransitionsTheme: PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.iOS: PageTransition(
              type: PageTransitionType.rightToLeft,
              child: this,
            ).matchingBuilder,
            TargetPlatform.android: PageTransition(
              type: PageTransitionType.rightToLeft,
              child: this,
            ).matchingBuilder,
          },
        ),
        dialogTheme: DialogThemeData(backgroundColor: AppColor.gray20),
      ),
    );
  }
}
