part of 'package:koshiba_agent_app/ui/routers/mobile/mobile_router.dart';

const _settingTypedStatefulShellBranch = TypedStatefulShellBranch(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<SettingRouteData>(
      name: AppRoutePath.setting,
      path: AppRoutePath.setting,
      routes: [],
    ),
  ],
);

class SettingRouteData extends GoRouteData with _$SettingRouteData {
  const SettingRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingPage();
}
