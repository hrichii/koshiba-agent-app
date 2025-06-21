part of 'package:koshiba_agent_app/ui/routers/mobile/mobile_router.dart';

@TypedGoRoute<ScheduleDetailRouteData>(
  path: AppRoutePath.scheduleDetail,
  name: AppRoutePath.scheduleDetail,
)
class ScheduleDetailRouteData extends GoRouteData
    with _$ScheduleDetailRouteData {
  const ScheduleDetailRouteData({this.$extra, this.gid, this.kid});

  final String? gid;
  final String? kid;
  final Schedule? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      ScheduleDetailPage(googleCalendarEventId: gid, scheduleId: kid);
}
