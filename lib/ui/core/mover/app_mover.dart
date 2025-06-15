import 'package:koshiba_agent_app/core/utils/global_context/global_context.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:url_launcher/url_launcher.dart';

class AppMover {
  static BuildContext get context => GlobalContext.context;

  static void openUrl(Uri uri) {
    launchUrl(
      uri,
      mode: LaunchMode.platformDefault,
      webOnlyWindowName: kIsWeb ? '_self' : null,
    );
  }
}
