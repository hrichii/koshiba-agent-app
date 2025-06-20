part of 'package:koshiba_agent_app/ui/routers/mobile/mobile_router.dart';

const _calenderTypedStatefulShellBranch = TypedStatefulShellBranch(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<CalenderRouteData>(
      name: AppRoutePath.schedule,
      path: AppRoutePath.schedule,
      routes: [],
    ),
  ],
);

class CalenderRouteData extends GoRouteData with _$CalenderRouteData {
  const CalenderRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const CalendarPage();
}
