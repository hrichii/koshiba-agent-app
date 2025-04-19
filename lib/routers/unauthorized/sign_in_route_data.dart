part of 'package:koshiba_agent_app/routers/router.dart';

@TypedGoRoute<SignInRouteData>(
  path: AppRoutePath.singIn,
  name: AppRoutePath.singIn,
)
class SignInRouteData extends GoRouteData {
  const SignInRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ConnectedSignInPage();
}
