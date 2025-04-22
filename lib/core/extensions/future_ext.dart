import 'package:koshiba_agent_app/ui/core/loader_overlay/loader_overlay.dart';

extension FutureExt<T> on Future<T> {
  Future<T> withLoaderOverlay() async {
    LoaderOverlay().show();
    final result = await this;
    LoaderOverlay().hidden();
    return result;
  }
}
