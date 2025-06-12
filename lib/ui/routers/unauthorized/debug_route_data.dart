part of 'package:koshiba_agent_app/ui/routers/router.dart';

@TypedGoRoute<DebugRouteData>(
  path: AppRoutePath.debug,
  name: AppRoutePath.debug,
)
class DebugRouteData extends GoRouteData {
  const DebugRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) => DebugPage();
}
