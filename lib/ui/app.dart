import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koshiba_agent_app/core/constants/app_env.dart';
import 'package:koshiba_agent_app/ui/routers/router.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => MaterialApp.router(
        title: AppEnv.appName,
        debugShowCheckedModeBanner: false,
        // localizationsDelegates: const [
        //   S.delegate,
        //   GlobalMaterialLocalizations.delegate,
        //   GlobalWidgetsLocalizations.delegate,
        //   GlobalCupertinoLocalizations.delegate,
        // ],
        // supportedLocales: S.delegate.supportedLocales,
        // theme: ThemeData(
        //   colorScheme: colorScheme,
        //   textTheme: textTheme,
        //   useMaterial3: true,
        //   scaffoldBackgroundColor: colorScheme.background,
        //   appBarTheme: AppBarTheme(
        //     surfaceTintColor: Colors.transparent,
        //     backgroundColor: Colors.transparent,
        //     elevation: 0,
        //     centerTitle: true,
        //     titleTextStyle: TextStyleUtil.bodyLarge16,
        //   ),
        //   inputDecorationTheme: InputDecorationTheme(
        //     border: OutlineInputBorder(
        //       borderRadius: BorderRadius.circular(RadiusConstant.sm4),
        //     ),
        //     filled: true,
        //     fillColor: ColorUtil.gray10,
        //     contentPadding: const EdgeInsets.all(16),
        //     enabledBorder: OutlineInputBorder(
        //       borderRadius: BorderRadius.circular(RadiusConstant.sm4),
        //       borderSide: BorderSide(color: ColorUtil.gray50),
        //     ),
        //     focusedBorder: OutlineInputBorder(
        //       borderRadius: BorderRadius.circular(RadiusConstant.sm4),
        //       borderSide: BorderSide(color: ColorUtil.primary),
        //     ),
        //     prefixIconColor: ColorUtil.gray50,
        //     hintStyle: TextStyleUtil.bodyMedium14.withGray50(),
        //     errorStyle: AppTextStyle.bodySmall12.withError().withW300(),
        //     errorMaxLines: 3,
        //   ),
        //   filledButtonTheme: FilledButtonThemeData(
        //     style: FilledButtonStyle.primary,
        //   ),
        //   outlinedButtonTheme:
        //       OutlinedButtonThemeData(style: OutlinedButtonStyle.primary),
        //   textButtonTheme: TextButtonThemeData(style: TextButtonStyle.primary),
        //   iconButtonTheme: IconButtonThemeData(style: IconButtonStyle.primary),
        //   iconTheme: IconThemeData(size: 24, color: colorScheme.primary),
        //   dividerTheme: DividerThemeData(
        //     space: 1,
        //     color: ColorUtil.gray30,
        //   ),
        //   progressIndicatorTheme:
        //       ProgressIndicatorThemeData(color: colorScheme.primary),
        //   listTileTheme: const ListTileThemeData(
        //     dense: true,
        //     contentPadding: EdgeInsets.zero,
        //     minVerticalPadding: 0,
        //   ),
        //   bottomSheetTheme: BottomSheetThemeData(
        //     backgroundColor: colorScheme.background,
        //     elevation: 2,
        //     showDragHandle: false,
        //     clipBehavior: Clip.antiAliasWithSaveLayer,
        //     shape: const RoundedRectangleBorder(
        //       borderRadius: BorderRadius.vertical(
        //         top: Radius.circular(RadiusConstant.xl16),
        //       ),
        //     ),
        //   ),
        //   dialogBackgroundColor: ColorUtil.gray20,
        //   pageTransitionsTheme: PageTransitionsTheme(
        //       builders: <TargetPlatform, PageTransitionsBuilder>{
        //         TargetPlatform.iOS: PageTransition(
        //                 type: PageTransitionType.rightToLeft, child: this)
        //             .matchingBuilder,
        //         TargetPlatform.android: PageTransition(
        //                 type: PageTransitionType.rightToLeft, child: this)
        //             .matchingBuilder
        //       }),
        // ),
        routerConfig: ref.watch(routerProvider),
      );
}
