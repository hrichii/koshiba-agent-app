import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koshiba_agent_app/core/extensions/future_ext.dart';
import 'package:koshiba_agent_app/core/extensions/future_result_ext.dart';
import 'package:koshiba_agent_app/core/extensions/text_style_extension.dart';
import 'package:koshiba_agent_app/core/themes/app_color.dart';
import 'package:koshiba_agent_app/core/themes/app_env.dart';
import 'package:koshiba_agent_app/core/themes/app_space.dart';
import 'package:koshiba_agent_app/core/themes/app_text_theme.dart';
import 'package:koshiba_agent_app/data/repositories/account_repository.dart';
import 'package:koshiba_agent_app/generated/l10n.dart';
import 'package:koshiba_agent_app/logic/usecases/connect_service/connect_service_use_case.dart';
import 'package:koshiba_agent_app/ui/core/button/pannel_button.dart';
import 'package:koshiba_agent_app/ui/routers/router.dart';

class SettingPage extends ConsumerWidget {
  const SettingPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future<void> signOut() => ref
        .read(accountRepositoryProvider)
        .signOut()
        .withLoaderOverlay()
        .withToastAtError()
        .withToastAtSuccess((_) => AppMessage.current.sign_out_success)
        .onSuccessWithoutValue(const SignInRouteData().go);
    Future<void> deleteAccount() => ref
        .read(accountRepositoryProvider)
        .deleteMe()
        .withLoaderOverlay()
        .withToastAtError()
        .withToastAtSuccess((_) => AppMessage.current.account_delete_success)
        .onSuccessWithoutValue(const SignInRouteData().go);
    Future<void> connectForGoogle() => ref
        .read(connectServiceUseCaseProvider.notifier)
        .connectGoogleService()
        .withLoaderOverlay()
        .withToastAtError()
        .withToastAtSuccess(
          (_) => AppMessage.current.connect_to_google_success,
        );

    return Scaffold(
      backgroundColor: AppColor.backgroundLightGray,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundLightGray,
        title: Text(AppMessage.current.common_navigation_accounts),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpace.lg16,
            vertical: AppSpace.md12,
          ),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 600),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                spacing: AppSpace.lg16,
                children: [
                  _profileView(),
                  _accountView(signOut: signOut, changePassword: () async {}),
                  _connectedServiceView(connectForGoogle: connectForGoogle),
                  Padding(
                    padding: const EdgeInsets.only(top: AppSpace.xl24),
                    child: _deleteAccountView(deleteAccount: deleteAccount),
                  ),
                  if (AppEnv.env == 'dev')
                    OutlinedButton(
                      onPressed: () => const DebugRouteData().push(context),
                      child: const Text('デバッグ画面へ'),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _profileView() => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: AppSpace.xss2,
        children: [
          PannelButtonGroup(
            pannelButtonDataList: [
              PannelButtonData(
                child: Row(
                  children: [
                    const Icon(Icons.account_circle, size: 40),
                    const SizedBox(width: AppSpace.sm8),
                    Text('email@aa.aa', style: AppTextStyle.bodyMedium14),
                  ],
                ),
              ),
            ]
                .map(
                  (buttonData) => PannelButtonData(
                    onPressed: buttonData.onPressed,
                    child: Padding(
                      padding: const EdgeInsets.all(AppSpace.lg16),
                      child: buttonData.child,
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      );

  Widget _accountView({
    required Future<void> Function() signOut,
    required Future<void> Function() changePassword,
  }) =>
      Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: AppSpace.xss2,
        children: [
          Text(
            AppMessage.current.common_navigation_accounts,
            style: AppTextStyle.bodyMedium14,
          ),
          PannelButtonGroup(
            pannelButtonDataList: [
              PannelButtonData.icon(
                leadingIcon: const Icon(Icons.logout),
                onPressed: signOut,
                title: Text(AppMessage.current.common_sign_out),
              ),
              PannelButtonData.icon(
                leadingIcon: const Icon(Icons.key),
                onPressed: changePassword,
                title: Text(AppMessage.current.common_change_password),
              ),
            ]
                .map(
                  (buttonData) => PannelButtonData(
                    onPressed: buttonData.onPressed,
                    child: Padding(
                      padding: const EdgeInsets.all(AppSpace.lg16),
                      child: buttonData.child,
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      );

  Widget _connectedServiceView({
    required Future<void> Function() connectForGoogle,
  }) =>
      Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: AppSpace.xss2,
        children: [
          Text(
            AppMessage.current.common_connected_service,
            style: AppTextStyle.bodyMedium14,
          ),
          PannelButtonGroup(
            pannelButtonDataList: [
              PannelButtonData.icon(
                onPressed: connectForGoogle,
                leadingIcon: const Icon(FontAwesomeIcons.google),
                title: Text(
                  AppMessage.current.common_connect_for_google,
                  style: AppTextStyle.bodyMedium14,
                ),
              ),
            ]
                .map(
                  (buttonData) => PannelButtonData(
                    onPressed: buttonData.onPressed,
                    child: Padding(
                      padding: const EdgeInsets.all(AppSpace.lg16),
                      child: buttonData.child,
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      );

  Widget _deleteAccountView({required Future<void> Function() deleteAccount}) =>
      Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: AppSpace.xss2,
        children: [
          PannelButtonGroup(
            pannelButtonDataList: [
              PannelButtonData.icon(
                leadingIcon: Icon(
                  Icons.delete_outline,
                  color: AppColor.error,
                ),
                onPressed: deleteAccount,
                title: Text(
                  AppMessage.current.common_delete_account,
                  style: AppTextStyle.bodyMedium14.withError(),
                ),
              ),
            ]
                .map(
                  (buttonData) => PannelButtonData(
                    onPressed: buttonData.onPressed,
                    child: Padding(
                      padding: const EdgeInsets.all(AppSpace.lg16),
                      child: buttonData.child,
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      );
}
