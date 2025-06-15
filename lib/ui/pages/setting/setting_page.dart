import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
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
import 'package:koshiba_agent_app/logic/models/connect_to_google/connect_to_google_status.dart';
import 'package:koshiba_agent_app/logic/models/resource/resource.dart';
import 'package:koshiba_agent_app/logic/usecases/connect_service/connect_service_use_case.dart';
import 'package:koshiba_agent_app/ui/core/alert/app_alert.dart';
import 'package:koshiba_agent_app/ui/core/button/pannel_button.dart';
import 'package:koshiba_agent_app/ui/core/mover/app_mover.dart';
import 'package:koshiba_agent_app/ui/core/shimmer/shimmer_wiget.dart';
import 'package:koshiba_agent_app/ui/routers/mobile/mobile_router.dart';
import 'package:web/web.dart' show window;

class SettingPage extends HookConsumerWidget {
  const SettingPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future<void> signOut() async {
      final isConfirmed = await AppAlert.showConfirm(
        title: AppMessage.current.sign_out_confirm_title,
        confirmText: AppMessage.current.common_sign_out,
      );
      if (isConfirmed != true) {
        return;
      }

      await ref
          .read(accountRepositoryProvider)
          .signOut()
          .withLoaderOverlay()
          .withToastAtError()
          .withToastAtSuccess((_) => AppMessage.current.sign_out_success)
          .onSuccessWithoutValue(const SignInRouteData().go);
    }

    Future<void> deleteAccount() async {
      final isConfirmed = await AppAlert.showConfirm(
        title: AppMessage.current.account_delete_confirm_title,
        confirmText: AppMessage.current.account_delete_confirm_button_title,
        useRedForConfirmText: true,
      );
      if (isConfirmed != true) {
        return;
      }
      await ref
          .read(accountRepositoryProvider)
          .deleteMe()
          .withLoaderOverlay()
          .withToastAtError()
          .withToastAtSuccess((_) => AppMessage.current.account_delete_success)
          .onSuccessWithoutValue(const SignInRouteData().go);
    }

    Future<void> getConnectForGoogle() => ref
        .read(connectServiceUseCaseProvider.notifier)
        .getGoogleConnectStatus()
        .withToastAtError();

    Future<void> connectToGoogle() {
      Future<void> getAuthUrlAndOpenUrlForWeb() async {
        final fromUri = Uri.parse(window.location.href);
        await ref
            .read(connectServiceUseCaseProvider.notifier)
            .getAuthUrlForConnectGoogleServiceForWeb(fromUri: fromUri)
            .withLoaderOverlay()
            .withToastAtError()
            .onSuccess((_, uri) => AppMover.openUrl(uri));
      }

      Future<void> connectToGoogleForMobile() => ref
          .read(connectServiceUseCaseProvider.notifier)
          .connectGoogleServiceForMobile()
          .withLoaderOverlay()
          .withToastAtError()
          .withToastAtSuccess(
            (_) => AppMessage.current.connect_to_google_success,
          );

      if (kIsWeb) {
        return getAuthUrlAndOpenUrlForWeb();
      }
      return connectToGoogleForMobile();
    }

    Future<void> disconnectToGoogle() async {
      final isConfirmed = await AppAlert.showConfirm(
        title: AppMessage.current.disconnect_to_google_confirm_title,
        confirmText: AppMessage
            .current
            .disconnect_to_google_confirm_disconnect_button_title,
      );
      if (isConfirmed != true) {
        return;
      }
      await ref
          .read(connectServiceUseCaseProvider.notifier)
          .disconnectGoogleService()
          .withLoaderOverlay()
          .withToastAtError()
          .withToastAtSuccess(
            (_) => AppMessage.current.disconnect_to_google_success,
          );
    }

    useMemoized(() {
      Future(getConnectForGoogle);
    }, []);
    return Scaffold(
      backgroundColor: AppColor.backgroundLightGray,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundLightGray,
        title: Text(AppMessage.current.common_navigation_accounts),
      ),
      body: RefreshIndicator(
        onRefresh: getConnectForGoogle,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
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
                    _connectedServiceView(
                      connectToGoogleStatus: ref.watch(
                        connectServiceUseCaseProvider,
                      ),
                      connectForGoogle: connectToGoogle,
                      disconnectForGoogle: disconnectToGoogle,
                    ),
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
      ),
    );
  }

  Widget _profileView() => Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    spacing: AppSpace.xss2,
    children: [
      PannelButtonGroup(
        pannelButtonDataList:
            [
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
  }) => Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    spacing: AppSpace.xss2,
    children: [
      Text(
        AppMessage.current.common_navigation_accounts,
        style: AppTextStyle.bodyMedium14,
      ),
      PannelButtonGroup(
        pannelButtonDataList:
            [
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
    required Resource<ConnectToGoogleStatus> connectToGoogleStatus,
    required Future<void> Function() connectForGoogle,
    required Future<void> Function() disconnectForGoogle,
  }) => Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    spacing: AppSpace.xss2,
    children: [
      Text(
        AppMessage.current.common_connected_service,
        style: AppTextStyle.bodyMedium14,
      ),
      PannelButtonGroup(
        pannelButtonDataList:
            [
                  PannelButtonData.icon(
                    onPressed: switch (connectToGoogleStatus) {
                      ResourceDone(:final value) =>
                        value.isConnected
                            ? disconnectForGoogle
                            : connectForGoogle,
                      ResourceInProgress() => null,
                      ResourceError() => null,
                    },
                    leadingIcon: const Icon(FontAwesomeIcons.google),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppMessage.current.common_connect_for_google,
                          style: AppTextStyle.bodyMedium14,
                        ),
                        Flexible(
                          child: switch (connectToGoogleStatus) {
                            ResourceDone(:final value) => Text(
                              value.isConnected
                                  ? AppMessage.current.common_connected
                                  : AppMessage.current.common_disconnected,
                              style: AppTextStyle.bodySmall12.withGray60(),
                            ),
                            ResourceInProgress() => const ShimmerWidget(
                              width: 40,
                              height: 12,
                            ),
                            ResourceError() => Text(
                              AppMessage.current.common_error_fetch_failed,
                              style: AppTextStyle.bodySmall12.withError(),
                            ),
                          },
                        ),
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

  Widget _deleteAccountView({required Future<void> Function() deleteAccount}) =>
      Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: AppSpace.xss2,
        children: [
          PannelButtonGroup(
            pannelButtonDataList:
                [
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
