import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:koshiba_agent_app/core/constants/app_route_path.dart';
import 'package:koshiba_agent_app/core/utils/global_context/global_context.dart';
import 'package:koshiba_agent_app/data/repositories/account_repository.dart';
import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:koshiba_agent_app/logic/models/user/user.dart';
import 'package:koshiba_agent_app/ui/pages/chat/connected_chat_page.dart';
import 'package:koshiba_agent_app/ui/pages/home/home_page.dart';
import 'package:koshiba_agent_app/ui/pages/reset_password_send/connected_reset_password_send_page.dart';
import 'package:koshiba_agent_app/ui/pages/setting/connected_setting_page.dart';
import 'package:koshiba_agent_app/ui/pages/sign_in/connected_sign_in_page.dart';
import 'package:koshiba_agent_app/ui/pages/sign_up_send/connected_sign_up_send_page.dart';
import 'package:koshiba_agent_app/ui/pages/sign_up_verify/connected_sign_up_verify_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'package:koshiba_agent_app/ui/routers/authorized/stateful_shell_branch/authorized_stateful_shell_route_data.dart';
part 'package:koshiba_agent_app/ui/routers/authorized/stateful_shell_branch/chat_route_data.dart';
part 'package:koshiba_agent_app/ui/routers/authorized/stateful_shell_branch/home_route_data.dart';
part 'package:koshiba_agent_app/ui/routers/authorized/stateful_shell_branch/setting_route_data.dart';
part 'package:koshiba_agent_app/ui/routers/unauthorized/reset_password_send_route_data.dart';
part 'package:koshiba_agent_app/ui/routers/unauthorized/sign_in_route_data.dart';
part 'package:koshiba_agent_app/ui/routers/unauthorized/sign_up_send_route_data.dart';
part 'package:koshiba_agent_app/ui/routers/unauthorized/sign_up_verify_route_data.dart';
part 'router.g.dart';

@Riverpod(keepAlive: true)
class Router extends _$Router {
  @override
  GoRouter build() {
    final router = GoRouter(
      initialLocation: AppRoutePath.home,
      redirect: (_, routerState) {
        if (AppRoutePath.unauthorizedPathList
            .contains(routerState.matchedLocation)) {
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
