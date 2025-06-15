part of 'package:koshiba_agent_app/ui/routers/web/web_router.dart';

@TypedGoRoute<DocumentRouteData>(
  name: AppRoutePath.document,
  path: AppRoutePath.document,
)
class DocumentRouteData extends GoRouteData with _$DocumentRouteData {
  const DocumentRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ConnectedDocumentPage();
}
