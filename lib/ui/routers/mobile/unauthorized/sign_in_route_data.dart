part of 'package:koshiba_agent_app/ui/routers/mobile/mobile_router.dart';

@TypedGoRoute<SignInRouteData>(
  path: AppRoutePath.singIn,
  name: AppRoutePath.singIn,
)
class SignInRouteData extends GoRouteData with _$SignInRouteData {
  const SignInRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ConnectedSignInPage();
}
