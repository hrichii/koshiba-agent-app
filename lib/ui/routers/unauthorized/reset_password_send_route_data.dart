part of 'package:koshiba_agent_app/ui/routers/router.dart';

@TypedGoRoute<ResetPasswordSendRouteData>(
  path: AppRoutePath.resetPasswordSend,
  name: AppRoutePath.resetPasswordSend,
)
class ResetPasswordSendRouteData extends GoRouteData {
  const ResetPasswordSendRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ConnectedResetPasswordSendPage();
}
