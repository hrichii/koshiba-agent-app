part of 'package:koshiba_agent_app/routers/router.dart';

const _homeTypedStatefulShellBranch = TypedStatefulShellBranch(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<HomeRouteData>(
      name: AppRoutePath.home,
      path: AppRoutePath.home,
      routes: [],
    )
  ],
);

class HomeRouteData extends GoRouteData {
  const HomeRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ConnectedHomePage();
  }
}
