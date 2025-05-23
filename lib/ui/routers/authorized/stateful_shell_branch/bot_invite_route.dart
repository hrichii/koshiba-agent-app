part of 'package:koshiba_agent_app/ui/routers/router.dart';

@TypedGoRoute<BotInviteRoute>(
  path: AppRoutePath.botInvite,
  name: AppRoutePath.botInvite,
)
class BotInviteRoute extends GoRouteData {
  const BotInviteRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const BotInvitePage();
}
