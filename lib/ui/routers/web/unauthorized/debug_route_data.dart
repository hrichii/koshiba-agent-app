part of 'package:koshiba_agent_app/ui/routers/web/web_router.dart';

@TypedGoRoute<DebugRouteData>(
  path: AppRoutePath.debug,
  name: AppRoutePath.debug,
)
class DebugRouteData extends GoRouteData with _$DebugRouteData {
  const DebugRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) => DebugPage();
}
