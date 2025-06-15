part of 'package:koshiba_agent_app/ui/routers/web/web_router.dart';

@TypedGoRoute<SignUpVerifyRouteData>(
  path: AppRoutePath.signUpVerify,
  name: AppRoutePath.signUpVerify,
)
class SignUpVerifyRouteData extends GoRouteData with _$SignUpVerifyRouteData {
  const SignUpVerifyRouteData({required this.email});
  final String email;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ConnectedSignUpVerifyPage();
}
