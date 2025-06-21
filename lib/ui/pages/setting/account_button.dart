import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:koshiba_agent_app/core/extensions/text_style_extension.dart';
import 'package:koshiba_agent_app/core/themes/app_color.dart';
import 'package:koshiba_agent_app/core/themes/app_radius.dart';
import 'package:koshiba_agent_app/core/themes/app_space.dart';
import 'package:koshiba_agent_app/core/themes/app_text_theme.dart';
import 'package:koshiba_agent_app/generated/l10n.dart';
import 'package:koshiba_agent_app/logic/models/connect_to_google/connect_to_google_status.dart';
import 'package:koshiba_agent_app/logic/models/resource/resource.dart';
import 'package:koshiba_agent_app/logic/models/user/user.dart';
import 'package:koshiba_agent_app/ui/core/shimmer/shimmer_wiget.dart';

class AccountButton extends HookWidget {
  const AccountButton({
    required this.accountResource,
    required this.connectToGoogleResource,
    required this.onSignOut,
    required this.onChangePassword,
    required this.onConnectToGoogle,
    required this.onDisconnectToGoogle,
    required this.onDeleteAccount,
    super.key,
  });

  final Resource<User> accountResource;
  final Resource<ConnectToGoogleStatus> connectToGoogleResource;
  final Future<void> Function() onSignOut;
  final Future<void> Function() onChangePassword;
  final Future<void> Function() onConnectToGoogle;
  final Future<void> Function() onDisconnectToGoogle;
  final Future<void> Function() onDeleteAccount;

  @override
  Widget build(BuildContext context) {
    final menuController = useMemoized(() => MenuController());
    return MenuAnchor(
      controller: menuController,
      alignmentOffset: const Offset(-200, -30),
      builder: (_, _, _) => Material(
        borderRadius: BorderRadius.circular(AppRadius.full),
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(AppRadius.full),
          onTap: () => menuController.open(),
          child: _iconView(accountResource),
        ),
      ),
      menuChildren: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _profileView(accountResource),
            _signOutView(onTap: onSignOut),
            _changePasswordView(onTap: onChangePassword),
            Padding(
              padding: const EdgeInsets.all(AppSpace.sm8),
              child: Text(
                AppMessage.current.common_connected_service,
                style: AppTextStyle.bodyMedium14,
              ),
            ),
            _connectedServiceView(
              connectToGoogleStatus: connectToGoogleResource,
              connectForGoogle: onConnectToGoogle,
              disconnectForGoogle: onDisconnectToGoogle,
            ),
            _deleteAccountView(deleteAccount: onDeleteAccount),
          ],
        ),
      ],
    );
  }

  Widget _iconView(Resource<User> userResource) => switch (userResource) {
    ResourceDone(:final value) when value.photoURL != null => CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(value.photoURL!),
    ),
    ResourceDone() => Icon(
      Icons.account_circle,
      size: 40,
      color: AppColor.primary,
    ),
    ResourceInProgress() => const ShimmerWidget(width: 40, height: 40),
    ResourceError() => Icon(
      Icons.account_circle,
      size: 40,
      color: AppColor.error,
    ),
  };

  Widget _profileView(Resource<User> userResource) => Padding(
    padding: const EdgeInsets.symmetric(
      vertical: AppSpace.sm8,
      horizontal: AppSpace.sm8,
    ),
    child: Row(
      spacing: AppSpace.md12,
      children: [
        _iconView(userResource),
        Expanded(
          child: switch (userResource) {
            ResourceDone(:final value) => Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  value.email ?? '',
                  style: AppTextStyle.bodyMedium14.withW400(),
                ),
                if (value.useProvider.label != null)
                  Text(
                    value.useProvider.label!,
                    style: AppTextStyle.bodySmall12.withGray60(),
                  ),
              ],
            ),
            ResourceInProgress() => const ShimmerWidget(width: 120, height: 14),
            ResourceError() => Text(
              AppMessage.current.common_error_fetch_failed,
              style: AppTextStyle.bodyMedium14.withError(),
            ),
          },
        ),
      ],
    ),
  );
  Widget _baseSectionView({
    required Widget child,
    required Future<void> Function()? onTap,
  }) => Material(
    color: Colors.transparent,
    child: InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppSpace.lg16,
          horizontal: AppSpace.lg16,
        ),
        child: child,
      ),
    ),
  );

  Widget _signOutView({required Future<void> Function() onTap}) =>
      _baseSectionView(
        onTap: onTap,
        child: Row(
          spacing: AppSpace.md12,
          children: [
            const Icon(Icons.logout),
            Flexible(child: Text(AppMessage.current.common_sign_out)),
          ],
        ),
      );
  Widget _changePasswordView({required Future<void> Function() onTap}) =>
      _baseSectionView(
        onTap: onTap,
        child: Row(
          spacing: AppSpace.md12,
          children: [
            const Icon(Icons.key),
            Flexible(child: Text(AppMessage.current.common_change_password)),
          ],
        ),
      );

  Widget _connectedServiceView({
    required Resource<ConnectToGoogleStatus> connectToGoogleStatus,
    required Future<void> Function() connectForGoogle,
    required Future<void> Function() disconnectForGoogle,
  }) => _baseSectionView(
    onTap: switch (connectToGoogleStatus) {
      ResourceDone(:final value) =>
        value.isConnected ? disconnectForGoogle : connectForGoogle,
      ResourceInProgress() => null,
      ResourceError() => null,
    },
    child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(FontAwesomeIcons.google, size: 18),
        const SizedBox(width: AppSpace.md12),
        Text(
          AppMessage.current.common_connect_for_google,
          style: AppTextStyle.bodyMedium14,
        ),
        const SizedBox(width: AppSpace.lg16),
        const Expanded(child: SizedBox(width: AppSpace.lg16)),
        switch (connectToGoogleStatus) {
          ResourceDone(:final value) => Text(
            value.isConnected
                ? AppMessage.current.common_connected
                : AppMessage.current.common_disconnected,
            style: AppTextStyle.bodySmall12.withGray60(),
          ),
          ResourceInProgress() => const ShimmerWidget(width: 40, height: 12),
          ResourceError() => Text(
            AppMessage.current.common_error_fetch_failed,
            style: AppTextStyle.bodySmall12.withError(),
          ),
        },
      ],
    ),
  );

  Widget _deleteAccountView({required Future<void> Function() deleteAccount}) =>
      _baseSectionView(
        onTap: deleteAccount,
        child: Row(
          spacing: AppSpace.md12,
          children: [
            Icon(Icons.delete, size: 18, color: AppColor.error),
            Text(
              AppMessage.current.common_delete_account,
              style: AppTextStyle.bodyMedium14.withError(),
            ),
          ],
        ),
      );
}
