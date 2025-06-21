import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koshiba_agent_app/core/extensions/text_style_extension.dart';
import 'package:koshiba_agent_app/core/themes/app_color.dart';
import 'package:koshiba_agent_app/core/themes/app_env.dart';
import 'package:koshiba_agent_app/core/themes/app_radius.dart';
import 'package:koshiba_agent_app/core/themes/app_text_theme.dart';
import 'package:koshiba_agent_app/core/themes/button_style/filled_button_style.dart';
import 'package:koshiba_agent_app/core/themes/button_style/icon_button_style.dart';
import 'package:koshiba_agent_app/core/themes/button_style/outlined_button_style.dart';
import 'package:koshiba_agent_app/core/themes/button_style/text_button_style.dart';
import 'package:koshiba_agent_app/core/validation/app_reactive_form_config.dart';
import 'package:koshiba_agent_app/generated/l10n.dart';
import 'package:koshiba_agent_app/ui/core/transition/no_transitions_builder.dart';
import 'package:koshiba_agent_app/ui/routers/mobile/mobile_router.dart';
import 'package:koshiba_agent_app/ui/routers/web/web_router.dart';
import 'package:page_transition/page_transition.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const colorScheme = AppColorScheme.light;
    const textTheme = AppTextTheme.normal;
    return AppReactiveFormConfig(
      child: MaterialApp.router(
        title: AppEnv.appName,
        debugShowCheckedModeBanner: false,
        routerConfig: kIsWeb
            ? ref.watch(webRouterProvider)
            : ref.watch(mobileRouterProvider),
        localizationsDelegates: const [
          AppMessage.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        locale: const Locale('ja', 'JP'),
        supportedLocales: const [Locale('ja', 'JP')],
        theme: ThemeData(
          colorScheme: colorScheme,
          textTheme: textTheme,
          scaffoldBackgroundColor: AppColor.blue98,
          appBarTheme: AppBarTheme(
            surfaceTintColor: Colors.transparent,
            backgroundColor: AppColorScheme.light.surface,
            elevation: 0,
            centerTitle: true,
            titleTextStyle: textTheme.bodyLarge,
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppRadius.sm4),
            ),
            filled: true,
            fillColor: AppColor.gray100,
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
          outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButtonStyle.primary,
          ),
          textButtonTheme: TextButtonThemeData(style: TextButtonStyle.primary),
          iconButtonTheme: IconButtonThemeData(style: IconButtonStyle.primary),
          iconTheme: IconThemeData(size: 24, color: colorScheme.primary),
          dividerTheme: DividerThemeData(space: 1, color: AppColor.gray30),
          progressIndicatorTheme: ProgressIndicatorThemeData(
            color: colorScheme.primary,
          ),
          listTileTheme: const ListTileThemeData(
            dense: true,
            contentPadding: EdgeInsets.zero,
            minVerticalPadding: 0,
          ),
          navigationRailTheme: NavigationRailThemeData(
            backgroundColor: colorScheme.surface,
            selectedIconTheme: IconThemeData(
              color: colorScheme.onPrimaryContainer,
            ),
            unselectedIconTheme: IconThemeData(color: AppColor.gray50),
            selectedLabelTextStyle: textTheme.bodyMedium
                ?.withOnPrimaryContainer(),
            unselectedLabelTextStyle: textTheme.bodyMedium?.withGray50(),
            indicatorColor: colorScheme.primaryContainer,
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
          switchTheme: SwitchThemeData(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            padding: EdgeInsets.zero,
            trackColor: WidgetStateProperty.resolveWith((states) {
              final color = () {
                if (states.contains(WidgetState.selected)) {
                  return AppColor.primary;
                } else {
                  return AppColor.gray100;
                }
              }();
              if (states.contains(WidgetState.disabled)) {
                return color.withValues(alpha: 0.3);
              }
              return color;
            }),
            thumbColor: WidgetStateProperty.resolveWith((states) {
              final color = () {
                if (states.contains(WidgetState.selected)) {
                  return AppColor.gray100;
                } else {
                  return AppColor.gray20;
                }
              }();
              if (states.contains(WidgetState.disabled)) {
                return color.withValues(alpha: 0.3);
              }
              return color;
            }),
          ),
          pageTransitionsTheme: PageTransitionsTheme(
            builders: kIsWeb
                ? {
                    for (final platform in TargetPlatform.values)
                      platform: const NoTransitionsBuilder(),
                  }
                : <TargetPlatform, PageTransitionsBuilder>{
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
        ),
      ),
    );
  }
}
