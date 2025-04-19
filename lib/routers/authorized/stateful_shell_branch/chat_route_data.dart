part of 'package:koshiba_agent_app/routers/router.dart';

const _historyTypedStatefulShellBranch = TypedStatefulShellBranch(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<ChatRouteData>(
      name: AppRoutePath.chat,
      path: AppRoutePath.chat,
      routes: [],
    ),
  ],
);

class ChatRouteData extends GoRouteData {
  const ChatRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ConnectedChatPage();
}
