import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:koshiba_agent_app/core/themes/app_route_path.dart';
import 'package:koshiba_agent_app/core/utils/global_context/global_context.dart';
import 'package:koshiba_agent_app/data/repositories/account_repository.dart';
import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:koshiba_agent_app/logic/models/schedule/schedule.dart';
import 'package:koshiba_agent_app/logic/models/user/user.dart';
import 'package:koshiba_agent_app/ui/pages/bot_invite/bot_invite_page.dart';
import 'package:koshiba_agent_app/ui/pages/calender/calender_page.dart';
import 'package:koshiba_agent_app/ui/pages/reset_password_send/connected_reset_password_send_page.dart';
import 'package:koshiba_agent_app/ui/pages/schedule_add/schedule_add_page.dart';
import 'package:koshiba_agent_app/ui/pages/schedule_detail/schedule_detail_page.dart';
import 'package:koshiba_agent_app/ui/pages/sign_in/connected_sign_in_page.dart';
import 'package:koshiba_agent_app/ui/pages/sign_up_send/connected_sign_up_send_page.dart';
import 'package:koshiba_agent_app/ui/pages/sign_up_verify/connected_sign_up_verify_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'package:koshiba_agent_app/ui/routers/web/authorized/calender_route_data.dart';
part 'package:koshiba_agent_app/ui/routers/web/authorized/bot_invite_route.dart';
part 'package:koshiba_agent_app/ui/routers/web/authorized/schedule_detail_route_data.dart';
part 'package:koshiba_agent_app/ui/routers/web/authorized/schedule_add_route.dart';
part 'package:koshiba_agent_app/ui/routers/web/unauthorized/sign_in_route_data.dart';
part 'package:koshiba_agent_app/ui/routers/web/unauthorized/sign_up_send_route_data.dart';
part 'package:koshiba_agent_app/ui/routers/web/unauthorized/sign_up_verify_route_data.dart';
part 'package:koshiba_agent_app/ui/routers/web/unauthorized/reset_password_send_route_data.dart';
part 'web_router.g.dart';

@Riverpod(keepAlive: true)
class WebRouter extends _$WebRouter {
  @override
  GoRouter build() {
    final router = GoRouter(
      initialLocation: AppRoutePath.schedule,
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
