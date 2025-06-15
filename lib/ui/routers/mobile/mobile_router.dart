import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:koshiba_agent_app/core/themes/app_route_path.dart';
import 'package:koshiba_agent_app/core/utils/global_context/global_context.dart';
import 'package:koshiba_agent_app/data/repositories/account_repository.dart';
import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:koshiba_agent_app/logic/models/user/user.dart';
import 'package:koshiba_agent_app/ui/core/scaffold/scaffold_with_bottom_navigation_bar.dart';
import 'package:koshiba_agent_app/ui/pages/bot_invite/bot_invite_page.dart';
import 'package:koshiba_agent_app/ui/pages/calender/calender_page.dart';
import 'package:koshiba_agent_app/ui/pages/debug/debug_page.dart';
import 'package:koshiba_agent_app/ui/pages/document/document_page.dart';
import 'package:koshiba_agent_app/ui/pages/home/home_page.dart';
import 'package:koshiba_agent_app/ui/pages/reset_password_send/connected_reset_password_send_page.dart';
import 'package:koshiba_agent_app/ui/pages/schedule_add/schedule_add_page.dart';
import 'package:koshiba_agent_app/ui/pages/setting/setting_page.dart';
import 'package:koshiba_agent_app/ui/pages/sign_in/connected_sign_in_page.dart';
import 'package:koshiba_agent_app/ui/pages/sign_up_send/connected_sign_up_send_page.dart';
import 'package:koshiba_agent_app/ui/pages/sign_up_verify/connected_sign_up_verify_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'package:koshiba_agent_app/ui/routers/mobile/authorized/authorized_stateful_shell_route_data.dart';
part 'package:koshiba_agent_app/ui/routers/mobile/authorized/calender_route_data.dart';
part 'package:koshiba_agent_app/ui/routers/mobile/authorized/document_route_data.dart';
part 'package:koshiba_agent_app/ui/routers/mobile/authorized/home_route_data.dart';
part 'package:koshiba_agent_app/ui/routers/mobile/authorized/schedule_add_route.dart';
part 'package:koshiba_agent_app/ui/routers/mobile/authorized/bot_invite_route.dart';
part 'package:koshiba_agent_app/ui/routers/mobile/authorized/setting_route_data.dart';
part 'package:koshiba_agent_app/ui/routers/mobile/unauthorized/reset_password_send_route_data.dart';
part 'package:koshiba_agent_app/ui/routers/mobile/unauthorized/debug_route_data.dart';
part 'package:koshiba_agent_app/ui/routers/mobile/unauthorized/sign_in_route_data.dart';
part 'package:koshiba_agent_app/ui/routers/mobile/unauthorized/sign_up_send_route_data.dart';
part 'package:koshiba_agent_app/ui/routers/mobile/unauthorized/sign_up_verify_route_data.dart';
part 'mobile_router.g.dart';

@Riverpod(keepAlive: true)
class MobileRouter extends _$MobileRouter {
  @override
  GoRouter build() {
    final router = GoRouter(
      initialLocation: AppRoutePath.home,
      redirect: (_, routerState) {
        if (AppRoutePath.unauthorizedPathList.contains(
          routerState.matchedLocation,
        )) {
          return null;
        }
        final resultUser = ref.read(accountRepositoryProvider).getMe();
        switch (resultUser) {
          case ResultOk<User, AppMessageCode>():
            return null;
          case ResultNg<User, AppMessageCode>():
            return AppRoutePath.singIn;
        }
      },
      routes: <RouteBase>[
        ShellRoute(
          builder: (BuildContext context, GoRouterState state, Widget child) {
            GlobalContext.init(context);
            return child;
          },
          routes: $appRoutes,
        ),
      ],
    );

    return router;
  }
}
