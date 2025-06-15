import 'package:koshiba_agent_app/core/utils/global_context/global_context.dart';
import 'package:koshiba_agent_app/ui/routers/mobile/mobile_router.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:url_launcher/url_launcher.dart';

class AppMover {
  static BuildContext get _rootContext => GlobalContext.context;

  static void openUrl(Uri uri) {
    launchUrl(
      uri,
      mode: LaunchMode.platformDefault,
      webOnlyWindowName: kIsWeb ? '_self' : null,
    );
  }

  static Future<void> pushBotInvite(BuildContext? context) async {
    if (kIsWeb) {
      // TODO
    } else {
      return const BotInviteRoute().push(context ?? _rootContext);
    }
  }

  static Future<void> pushScheduleAdd(BuildContext? context) async {
    if (kIsWeb) {
      // TODO
    } else {
      return const ScheduleAddRoute().push(context ?? _rootContext);
    }
  }
}
