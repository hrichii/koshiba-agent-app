part of 'package:koshiba_agent_app/ui/routers/web/web_router.dart';

@TypedGoRoute<SettingRouteData>(
  name: AppRoutePath.setting,
  path: AppRoutePath.setting,
)
class SettingRouteData extends GoRouteData with _$SettingRouteData {
  const SettingRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ScaffoldWithNavigationRail(child: SettingPage());
}
