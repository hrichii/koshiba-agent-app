part of 'package:koshiba_agent_app/ui/routers/web/web_router.dart';

@TypedGoRoute<CalenderRouteData>(
  name: AppRoutePath.calender,
  path: AppRoutePath.calender,
)
class CalenderRouteData extends GoRouteData with _$CalenderRouteData {
  const CalenderRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const CalendarPage();
}
