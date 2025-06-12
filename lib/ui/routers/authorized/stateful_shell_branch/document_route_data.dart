part of 'package:koshiba_agent_app/ui/routers/router.dart';

const _documentTypedStatefulShellBranch = TypedStatefulShellBranch(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<DocumentRouteData>(
      name: AppRoutePath.document,
      path: AppRoutePath.document,
      routes: [],
    ),
  ],
);

class DocumentRouteData extends GoRouteData with _$DocumentRouteData {
  const DocumentRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ConnectedDocumentPage();
}
