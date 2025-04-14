part of 'package:koshiba_agent_app/routers/router.dart';

const _historyTypedStatefulShellBranch =
    TypedStatefulShellBranch(routes: <TypedRoute<RouteData>>[
  TypedGoRoute<HistoryRouteData>(
    name: AppRoutePath.history,
    path: AppRoutePath.history,
    routes: [],
  )
]);

class HistoryRouteData extends GoRouteData {
  const HistoryRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ConnectedHistoryPage();
  }
}
