part of 'package:koshiba_agent_app/ui/routers/web/web_router.dart';

@TypedGoRoute<ResetPasswordSendRouteData>(
  path: AppRoutePath.resetPasswordSend,
  name: AppRoutePath.resetPasswordSend,
)
class ResetPasswordSendRouteData extends GoRouteData
    with _$ResetPasswordSendRouteData {
  const ResetPasswordSendRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ConnectedResetPasswordSendPage();
}
