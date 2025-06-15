part of 'package:koshiba_agent_app/ui/routers/mobile/mobile_router.dart';

@TypedGoRoute<BotInviteRoute>(
  path: AppRoutePath.botInvite,
  name: AppRoutePath.botInvite,
)
class BotInviteRoute extends GoRouteData with _$BotInviteRoute {
  const BotInviteRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const BotInvitePage();
}
