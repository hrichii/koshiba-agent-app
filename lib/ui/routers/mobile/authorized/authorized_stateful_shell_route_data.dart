part of 'package:koshiba_agent_app/ui/routers/mobile/mobile_router.dart';

@TypedStatefulShellRoute<AuthorizedStatefulShellRouteData>(
  branches: [
    _homeTypedStatefulShellBranch,
    _calenderTypedStatefulShellBranch,
    _documentTypedStatefulShellBranch,
    _settingTypedStatefulShellBranch,
  ],
)
class AuthorizedStatefulShellRouteData extends StatefulShellRouteData {
  const AuthorizedStatefulShellRouteData();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) => ScaffoldWithNavigation(
    selectedIndex: navigationShell.currentIndex,
    onDestinationSelected: navigationShell.goBranch,
    body: navigationShell,
  );
}
