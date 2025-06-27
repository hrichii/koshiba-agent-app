part of 'package:koshiba_agent_app/ui/routers/mobile/mobile_router.dart';

@TypedGoRoute<CalenderRouteData>(
  name: AppRoutePath.schedule,
  path: AppRoutePath.schedule,
  routes: <TypedRoute<RouteData>>[],
)
class CalenderRouteData extends GoRouteData with _$CalenderRouteData {
  const CalenderRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ConnectedSchedulePage();
}
