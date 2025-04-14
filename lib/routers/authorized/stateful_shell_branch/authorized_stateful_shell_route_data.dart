part of 'package:koshiba_agent_app/routers/router.dart';

@TypedStatefulShellRoute<AuthorizedStatefulShellRouteData>(
  branches: [
    _homeTypedStatefulShellBranch,
    _historyTypedStatefulShellBranch,
    _settingTypedStatefulShellBranch,
  ],
)
class AuthorizedStatefulShellRouteData extends StatefulShellRouteData {
  const AuthorizedStatefulShellRouteData();

  @override
  Widget builder(BuildContext context, GoRouterState state,
      StatefulNavigationShell navigationShell) {
    return Scaffold(
      body: navigationShell,
    );
  }
}
