import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koshiba_agent_app/constants/app_route_path.dart';
import 'package:koshiba_agent_app/pages/reset_password_send/connected_reset_password_send_page.dart';
import 'package:koshiba_agent_app/utils/global_context/global_context.dart';
import 'package:koshiba_agent_app/pages/history/connected_history_page.dart';
import 'package:koshiba_agent_app/pages/home/connected_home_page.dart';
import 'package:koshiba_agent_app/pages/sign_in/connected_sign_in_page.dart';
import 'package:koshiba_agent_app/pages/setting/connected_setting_page.dart';
import 'package:koshiba_agent_app/pages/sign_up_send/connected_sign_up_send_page.dart';
import 'package:koshiba_agent_app/pages/sign_up_verify/connected_sign_up_verify_page.dart';

part 'package:koshiba_agent_app/routers/authorized/stateful_shell_branch/authorized_stateful_shell_route_data.dart';
part 'package:koshiba_agent_app/routers/authorized/stateful_shell_branch/history_route_data.dart';
part 'package:koshiba_agent_app/routers/authorized/stateful_shell_branch/home_route_data.dart';
part 'package:koshiba_agent_app/routers/authorized/stateful_shell_branch/setting_route_data.dart';
part 'package:koshiba_agent_app/routers/unauthorized/reset_password_send_route_data.dart';
part 'package:koshiba_agent_app/routers/unauthorized/sign_in_route_data.dart';
part 'package:koshiba_agent_app/routers/unauthorized/sign_up_send_route_data.dart';
part 'package:koshiba_agent_app/routers/unauthorized/sign_up_verify_route_data.dart';
part 'router.g.dart';

final routerProvider = NotifierProvider<Router, GoRouter>(() => Router());

class Router extends Notifier<GoRouter> {
  @override
  GoRouter build() {
    final router = GoRouter(
      initialLocation: AppRoutePath.home,
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
