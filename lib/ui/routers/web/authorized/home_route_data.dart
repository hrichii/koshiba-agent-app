part of 'package:koshiba_agent_app/ui/routers/web/web_router.dart';

@TypedGoRoute<HomeRouteData>(name: AppRoutePath.home, path: AppRoutePath.home)
class HomeRouteData extends GoRouteData with _$HomeRouteData {
  const HomeRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomePage();
}
