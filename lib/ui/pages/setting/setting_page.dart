import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koshiba_agent_app/core/extensions/future_ext.dart';
import 'package:koshiba_agent_app/core/extensions/future_result_ext.dart';
import 'package:koshiba_agent_app/core/themes/app_env.dart';
import 'package:koshiba_agent_app/core/themes/app_space.dart';
import 'package:koshiba_agent_app/data/repositories/account_repository.dart';
import 'package:koshiba_agent_app/generated/l10n.dart';
import 'package:koshiba_agent_app/ui/routers/router.dart';

class SettingPage extends ConsumerWidget {
  const SettingPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) => Scaffold(
        appBar: AppBar(
          title: Text(AppMessage.current.common_navigation_accounts),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: AppSpace.md12,
            children: [
              FilledButton(
                onPressed: () => ref
                    .read(accountRepositoryProvider)
                    .signOut()
                    .withLoaderOverlay()
                    .withToastAtError()
                    .withToastAtSuccess(
                      (_) => AppMessage.current.sign_out_success,
                    )
                    .onSuccessWithoutValue(const SignInRouteData().go),
                child: Text(AppMessage.current.common_sign_out),
              ),
              FilledButton(
                onPressed: () => ref
                    .read(accountRepositoryProvider)
                    .deleteMe()
                    .withLoaderOverlay()
                    .withToastAtError()
                    .withToastAtSuccess(
                      (_) => AppMessage.current.account_delete_success,
                    )
                    .onSuccessWithoutValue(const SignInRouteData().go),
                child: Text(AppMessage.current.common_delete_account),
              ),
              if (AppEnv.env == 'dev')
                FilledButton(
                  onPressed: () => const DebugRouteData().push(context),
                  child: const Text('デバッグ画面へ'),
                ),
            ],
          ),
        ),
      );
}
