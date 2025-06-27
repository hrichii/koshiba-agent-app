import 'package:flutter/material.dart';
import 'package:koshiba_agent_app/core/themes/app_assets.dart';
import 'package:koshiba_agent_app/core/themes/app_color.dart';
import 'package:koshiba_agent_app/core/themes/app_space.dart';
import 'package:koshiba_agent_app/core/themes/button_style/filled_button_style.dart';
import 'package:koshiba_agent_app/generated/l10n.dart';
import 'package:koshiba_agent_app/logic/models/connect_to_google/connect_to_google_status.dart';
import 'package:koshiba_agent_app/logic/models/resource/resource.dart';
import 'package:koshiba_agent_app/logic/models/schedule/schedule.dart';
import 'package:koshiba_agent_app/logic/models/user/user.dart';
import 'package:koshiba_agent_app/logic/usecases/schedule/schedule_list_use_case.dart';
import 'package:koshiba_agent_app/ui/core/extensions/button_style_ext.dart';
import 'package:koshiba_agent_app/ui/core/extensions/list_widget_ext.dart';
import 'package:koshiba_agent_app/ui/core/pagination/auto_pagination_listener.dart';
import 'package:koshiba_agent_app/ui/pages/schedule/schedule_item_widget.dart';
import 'package:koshiba_agent_app/ui/pages/setting/account_button.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({
    required this.scrollController,
    required this.accountResource,
    required this.connectServiceResource,
    required this.scheduleListState,
    required this.canFetchPrevious,
    required this.onSignOut,
    required this.onDeleteAccount,
    required this.onConnectToGoogle,
    required this.onDisconnectToGoogle,
    required this.onRefresh,
    required this.onFetchPrevious,
    required this.onFetchNext,
    required this.onChangeBotJoin,
    required this.onPushScheduleAdd,
    required this.onPushScheduleDetail,
    required this.loadingItemCount,
    required this.shimmerHeight,
    required this.topPadding,
    super.key,
  });

  final ScrollController scrollController;
  final Resource<User> accountResource;
  final Resource<ConnectToGoogleStatus> connectServiceResource;
  final ScheduleListState scheduleListState;
  final bool canFetchPrevious;
  final Future<void> Function() onSignOut;
  final Future<void> Function() onDeleteAccount;
  final Future<void> Function() onConnectToGoogle;
  final Future<void> Function() onDisconnectToGoogle;
  final Future<void> Function() onRefresh;
  final Future<void> Function() onFetchPrevious;
  final Future<void> Function() onFetchNext;
  final Future<void> Function({
    required String? googleCalendarEventId,
    required bool isBotJoin,
  })
  onChangeBotJoin;
  final Future<void> Function() onPushScheduleAdd;
  final Future<void> Function(Schedule) onPushScheduleDetail;
  final int loadingItemCount;
  final double shimmerHeight;
  final double topPadding;

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      flexibleSpace: SizedBox(
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpace.lg16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: AppSpace.lg16,
            children: [
              Image.asset(AppAssets.imagesAppHeaderLogo.value, width: 100),
              const Expanded(child: SizedBox.shrink()),
              FilledButton(
                style: FilledButtonStyle.primary.withPadding(
                  const EdgeInsets.all(AppSpace.lg16),
                ),
                onPressed: onPushScheduleAdd,
                child: Text(AppMessage.current.common_invite_bot),
              ),
              AccountButton(
                accountResource: accountResource,
                connectToGoogleResource: connectServiceResource,
                onSignOut: onSignOut,
                onDeleteAccount: onDeleteAccount,
                onConnectToGoogle: onConnectToGoogle,
                onDisconnectToGoogle: onDisconnectToGoogle,
                onChangePassword: () async {},
              ),
            ],
          ),
        ),
      ),
      centerTitle: true,
      elevation: 0,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1),
        child: Container(height: 1, color: AppColor.gray90),
      ),
    ),
    body: RefreshIndicator(
      onRefresh: onRefresh,
      child: AutoPaginationListener(
        topPadding: topPadding,
        loadingPrevious: scheduleListState.loadingPrevious,
        loadingNext: scheduleListState.loadingNext,
        onFetchPrevious: onFetchPrevious,
        onFetchNext: onFetchNext,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: AppSpace.lg16),
          physics: const AlwaysScrollableScrollPhysics(),
          controller: scrollController,
          shrinkWrap: true,
          children: [
            const SizedBox(height: AppSpace.sm8),
            ...[
                  // 上方向スクロール用に上部に余白を追加
                  ..._buildShimmer(canFetchPrevious),
                  ..._buildShimmer(scheduleListState.loadingPrevious),
                  ..._buildShimmer(scheduleListState.loadingInitial),
                  ...scheduleListState.data
                      .map(
                        (schedule) => _buildScheduleItem(
                          schedule: schedule,
                          onChanged: schedule.canJoin
                              ? (isJoined) {
                                  onChangeBotJoin(
                                    googleCalendarEventId:
                                        schedule.googleCalendarEvent?.id,
                                    isBotJoin: isJoined,
                                  );
                                }
                              : null,
                          onTap: () => onPushScheduleDetail(schedule),
                        ),
                      )
                      .whereType<Widget>(),
                  ..._buildShimmer(scheduleListState.loadingNext),
                ]
                .map(
                  (child) => Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 600),
                      child: child,
                    ),
                  ),
                )
                .toList()
                .withGap(AppSpace.sm8),
            const SizedBox(height: AppSpace.sm8),
          ],
        ),
      ),
    ),
  );

  List<Widget> _buildShimmer(bool isLoading) {
    if (!isLoading) {
      return [];
    } else {
      return [
        Column(
          mainAxisSize: MainAxisSize.min,
          spacing: AppSpace.sm8,
          children: List.generate(
            loadingItemCount,
            (_) => ScheduleItemWidget.loading(),
          ),
        ),
      ];
    }
  }

  Widget? _buildScheduleItem({
    required ValueChanged<bool>? onChanged,
    required Schedule schedule,
    required VoidCallback onTap,
  }) {
    final scheduledBot = schedule.scheduledBot;
    final calendarEvent = schedule.googleCalendarEvent;
    final isJoined = scheduledBot != null;
    if (calendarEvent != null) {
      return ScheduleItemWidget.googleCalendarEvent(
        onChanged: onChanged,
        scheduledBot: scheduledBot,
        calendarEvent: calendarEvent,
        isJoined: isJoined,
        onTap: onTap,
      );
    }
    if (scheduledBot != null) {
      return ScheduleItemWidget.scheduledBot(
        scheduledBot: scheduledBot,
        isJoined: isJoined,
        onChanged: null,
        onTap: onTap,
      );
    }
    return null;
  }
}
