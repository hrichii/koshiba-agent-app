part of 'package:koshiba_agent_app/routers/router.dart';

const _settingTypedStatefulShellBranch =
    TypedStatefulShellBranch(routes: <TypedRoute<RouteData>>[
  TypedGoRoute<SettingRouteData>(
    name: AppRoutePath.setting,
    path: AppRoutePath.setting,
    routes: [],
  )
]);

class SettingRouteData extends GoRouteData {
  const SettingRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ConnectedSettingPage();
  }
}
