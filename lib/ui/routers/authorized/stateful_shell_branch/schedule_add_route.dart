part of 'package:koshiba_agent_app/ui/routers/router.dart';

@TypedGoRoute<ScheduleAddRoute>(
  path: AppRoutePath.scheduleAdd,
  name: AppRoutePath.scheduleAdd,
)
class ScheduleAddRoute extends GoRouteData with _$ScheduleAddRoute {
  const ScheduleAddRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ScheduleAddPage();
}
