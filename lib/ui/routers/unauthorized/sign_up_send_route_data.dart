part of 'package:koshiba_agent_app/ui/routers/router.dart';

@TypedGoRoute<SignUpSendRouteData>(
  path: AppRoutePath.signUpSend,
  name: AppRoutePath.signUpSend,
)
class SignUpSendRouteData extends GoRouteData {
  const SignUpSendRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ConnectedSignUpSendPage();
}
