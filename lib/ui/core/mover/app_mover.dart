import 'package:koshiba_agent_app/core/utils/global_context/global_context.dart';
import 'package:koshiba_agent_app/logic/models/schedule/schedule.dart';
import 'package:koshiba_agent_app/ui/routers/mobile/mobile_router.dart'
    as mobile;
import 'package:koshiba_agent_app/ui/routers/web/web_router.dart' as web;

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

  static Future<void> goSignUp({BuildContext? context}) async {
    if (kIsWeb) {
      return const web.SignInRouteData().go(context ?? _rootContext);
    } else {
      return const mobile.SignInRouteData().go(context ?? _rootContext);
    }
  }

  static Future<void> goSignIn({BuildContext? context}) async {
    if (kIsWeb) {
      return const web.SignInRouteData().go(context ?? _rootContext);
    } else {
      return const mobile.SignInRouteData().go(context ?? _rootContext);
    }
  }

  static Future<void> pushScheduleDetail({
    required Schedule schedule,
    BuildContext? context,
  }) async {
    if (kIsWeb) {
      return web.ScheduleDetailRouteData(
        $extra: schedule,
        gid: schedule.googleCalendarEvent?.id,
        kid: schedule.scheduledBot?.id,
      ).go(context ?? _rootContext);
    } else {
      return mobile.ScheduleDetailRouteData(
        $extra: schedule,
        gid: schedule.googleCalendarEvent?.id,
        kid: schedule.scheduledBot?.id,
      ).push(context ?? _rootContext);
    }
  }

  static Future<void> pushScheduleAdd({BuildContext? context}) async {
    if (kIsWeb) {
      return const mobile.ScheduleAddRoute().push(context ?? _rootContext);
    } else {
      return const mobile.ScheduleAddRoute().push(context ?? _rootContext);
    }
  }

  static Future<void> goCalendar({BuildContext? context}) async {
    if (kIsWeb) {
      return const web.CalenderRouteData().go(context ?? _rootContext);
    } else {
      return const mobile.CalenderRouteData().go(context ?? _rootContext);
    }
  }

  static Future<void> openExternalUrl(Uri? url) async {
    if (url != null && await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    }
    return;
  }
}
