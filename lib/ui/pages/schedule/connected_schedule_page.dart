import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koshiba_agent_app/core/extensions/future_ext.dart';
import 'package:koshiba_agent_app/core/extensions/future_result_ext.dart';
import 'package:koshiba_agent_app/core/platform/web/web.dart';
import 'package:koshiba_agent_app/core/themes/app_space.dart';
import 'package:koshiba_agent_app/generated/l10n.dart';
import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:koshiba_agent_app/logic/usecases/account/account_use_case.dart';
import 'package:koshiba_agent_app/logic/usecases/connect_service/connect_service_use_case.dart';
import 'package:koshiba_agent_app/logic/usecases/schedule/schedule_list_use_case.dart';
import 'package:koshiba_agent_app/ui/core/alert/app_alert.dart';
import 'package:koshiba_agent_app/ui/core/mover/app_mover.dart';
import 'package:koshiba_agent_app/ui/core/toast/toast.dart';
import 'package:koshiba_agent_app/ui/pages/schedule/schedule_page.dart';

class ConnectedSchedulePage extends HookConsumerWidget {
  const ConnectedSchedulePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = useScrollController();
    const int loadingItemCount = 10;
    const double shimmerHeight = 124;
    const double topPadding = (shimmerHeight + AppSpace.sm8) * loadingItemCount;

    _initializeData(ref, scrollController, topPadding);

    return SchedulePage(
      scrollController: scrollController,
      accountResource: ref.watch(accountUseCaseProvider),
      connectServiceResource: ref.watch(connectServiceUseCaseProvider),
      scheduleListState: ref.watch(scheduleListUseCaseProvider),
      canFetchPrevious: ref
          .watch(scheduleListUseCaseProvider.notifier)
          .canFetchPrevious,
      onSignOut: () => _signOut(ref),
      onDeleteAccount: () => _deleteAccount(ref),
      onConnectToGoogle: () => _connectToGoogle(ref),
      onDisconnectToGoogle: () => _disconnectToGoogle(ref),
      onRefresh: () => _refresh(ref, scrollController, topPadding),
      onFetchPrevious: () => _fetchPrevious(ref),
      onFetchNext: () => _fetchNext(ref),
      onChangeBotJoin: ({required googleCalendarEventId, required isBotJoin}) =>
          _changeBotJoin(
            ref,
            googleCalendarEventId: googleCalendarEventId,
            isBotJoin: isBotJoin,
          ),
      onPushScheduleAdd: AppMover.pushScheduleAdd,
      onPushScheduleDetail: (schedule) =>
          AppMover.pushScheduleDetail(schedule: schedule),
      loadingItemCount: loadingItemCount,
      shimmerHeight: shimmerHeight,
      topPadding: topPadding,
    );
  }

  void _initializeData(
    WidgetRef ref,
    ScrollController scrollController,
    double topPadding,
  ) {
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback(
        (_) => _init(ref, scrollController, topPadding),
      );
      return null;
    }, const []);
  }

  Future<void> _init(
    WidgetRef ref,
    ScrollController scrollController,
    double topPadding,
  ) => (
    _getMe(ref),
    _fetchInitial(ref, scrollController, topPadding, useCache: true),
    _getConnectForGoogle(ref),
  ).wait;

  Future<void> _refresh(
    WidgetRef ref,
    ScrollController scrollController,
    double topPadding,
  ) => (
    _getMe(ref),
    _fetchInitial(ref, scrollController, topPadding, useCache: false),
    _getConnectForGoogle(ref),
  ).wait;

  Future<void> _signOut(WidgetRef ref) async {
    final isConfirmed = await AppAlert.showConfirm(
      title: AppMessage.current.sign_out_confirm_title,
      confirmText: AppMessage.current.common_sign_out,
    );
    if (isConfirmed != true) {
      return;
    }

    await ref
        .read(accountUseCaseProvider.notifier)
        .signOut()
        .withLoaderOverlay()
        .onSuccess((_) {
          Toast().showSuccess(AppMessage.current.sign_out_success);
          AppMover.goSignIn();
        })
        .onError(Toast().showErrorByMessagecode);
  }

  Future<void> _deleteAccount(WidgetRef ref) async {
    final isConfirmed = await AppAlert.showConfirm(
      title: AppMessage.current.account_delete_confirm_title,
      confirmText: AppMessage.current.account_delete_confirm_button_title,
      useRedForConfirmText: true,
    );
    if (isConfirmed != true) {
      return;
    }
    await ref
        .read(accountUseCaseProvider.notifier)
        .deleteMe()
        .withLoaderOverlay()
        .onSuccess((_) {
          Toast().showSuccess(AppMessage.current.account_delete_success);
          AppMover.goSignIn();
        })
        .onError(Toast().showErrorByMessagecode);
  }

  Future<void> _connectToGoogle(WidgetRef ref) {
    Future<void> getAuthUrlAndOpenUrlForWeb() async {
      final fromUri = Uri.parse(webWindow.location.href);
      await ref
          .read(connectServiceUseCaseProvider.notifier)
          .getAuthUrlForConnectGoogleServiceForWeb(fromUri: fromUri)
          .withLoaderOverlay()
          .onError(Toast().showErrorByMessagecode)
          .onSuccess(AppMover.openUrl);
    }

    Future<void> connectToGoogleForMobile() => ref
        .read(connectServiceUseCaseProvider.notifier)
        .connectGoogleServiceForMobile()
        .withLoaderOverlay()
        .onSuccess(
          (_) =>
              Toast().showSuccess(AppMessage.current.connect_to_google_success),
        )
        .onError(Toast().showErrorByMessagecode);

    if (kIsWeb) {
      return getAuthUrlAndOpenUrlForWeb();
    }
    return connectToGoogleForMobile();
  }

  Future<void> _disconnectToGoogle(WidgetRef ref) async {
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
        .onSuccess(
          (_) => Toast().showSuccess(
            AppMessage.current.disconnect_to_google_success,
          ),
        )
        .onError(Toast().showErrorByMessagecode);
  }

  Future<void> _getConnectForGoogle(WidgetRef ref) => ref
      .read(connectServiceUseCaseProvider.notifier)
      .getGoogleConnectStatus()
      .onError(Toast().showErrorByMessagecode);

  Future<void> _getMe(WidgetRef ref) async {
    final result = ref.read(accountUseCaseProvider.notifier).getMe();
    switch (result) {
      case ResultOk():
        break;
      case ResultNg(:final value):
        Toast().showError(value.localizedMessage);
    }
  }

  Future<void> _fetchInitial(
    WidgetRef ref,
    ScrollController scrollController,
    double topPadding, {
    bool useCache = false,
  }) async {
    // データ読み込み後、上部の余白分だけスクロール位置を調整
    await ref
        .read(scheduleListUseCaseProvider.notifier)
        .fetchInitial(useCache: useCache)
        .onError(Toast().showErrorByMessagecode);
    await Future.delayed(const Duration(milliseconds: 100));
    if (scrollController.hasClients &&
        ref.watch(scheduleListUseCaseProvider).previousPageToken != null) {
      scrollController.jumpTo(topPadding - 14); // 少し余白を見せる
    }
  }

  Future<void> _fetchPrevious(WidgetRef ref) => ref
      .read(scheduleListUseCaseProvider.notifier)
      .fetchPrevious()
      .onError(Toast().showErrorByMessagecode);

  Future<void> _fetchNext(WidgetRef ref) => ref
      .read(scheduleListUseCaseProvider.notifier)
      .fetchNext()
      .onError(Toast().showErrorByMessagecode);

  Future<void> _changeBotJoin(
    WidgetRef ref, {
    required String? googleCalendarEventId,
    required bool isBotJoin,
  }) async {
    if (isBotJoin) {
      // Botを参加させる
      await ref
          .read(scheduleListUseCaseProvider.notifier)
          .scheduleBotJoinByGoogleCalendar(
            googleCalendarEventId: googleCalendarEventId,
          )
          .withLoaderOverlay()
          .onSuccess(
            (_) => Toast().showSuccess(
              AppMessage.current.schedule_bot_join_success,
            ),
          )
          .onError(Toast().showErrorByMessagecode);
    } else {
      // Bot参加をキャンセルする
      await ref
          .read(scheduleListUseCaseProvider.notifier)
          .deleteBotJoinByGoogleCalendar(
            googleCalendarEventId: googleCalendarEventId,
          )
          .withLoaderOverlay()
          .onSuccess(
            (_) =>
                Toast().showSuccess(AppMessage.current.delete_bot_join_success),
          )
          .onError(Toast().showErrorByMessagecode);
    }
  }
}
