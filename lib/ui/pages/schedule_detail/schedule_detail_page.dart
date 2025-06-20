import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koshiba_agent_app/core/extensions/date_time_ext.dart';
import 'package:koshiba_agent_app/core/extensions/future_ext.dart';
import 'package:koshiba_agent_app/core/extensions/future_result_ext.dart';
import 'package:koshiba_agent_app/core/extensions/text_style_extension.dart';
import 'package:koshiba_agent_app/core/themes/app_assets.dart';
import 'package:koshiba_agent_app/core/themes/app_color.dart';
import 'package:koshiba_agent_app/core/themes/app_space.dart';
import 'package:koshiba_agent_app/core/themes/app_text_theme.dart';
import 'package:koshiba_agent_app/generated/l10n.dart';
import 'package:koshiba_agent_app/logic/models/schedule/schedule.dart';
import 'package:koshiba_agent_app/logic/models/transcription/transcription_item.dart';
import 'package:koshiba_agent_app/logic/models/transcription/transcription_role_enum.dart';
import 'package:koshiba_agent_app/logic/usecases/schedule/schedule_list_use_case.dart';
import 'package:koshiba_agent_app/logic/usecases/transcription/transcription_use_case.dart';
import 'package:koshiba_agent_app/ui/core/extensions/list_widget_ext.dart';
import 'package:koshiba_agent_app/ui/core/mover/app_mover.dart';
import 'package:koshiba_agent_app/ui/pages/calender/schedule_item_widget.dart';

class ScheduleDetailPage extends HookConsumerWidget {
  const ScheduleDetailPage({
    required this.schedule,
    required this.googleCalendarEventId,
    required this.scheduleId,
    super.key,
  });
  final Schedule? schedule;
  final String? googleCalendarEventId;
  final String? scheduleId;
  // schedule==null かつ googleCalendarEventId = null かつ scheduleId=nullならエラーページにする
  // Scheduleが存在する場合、googleCalendarEventIdとscheduleIdが一致しないならエラーページにする

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (!_hasValidData()) {
      return _buildErrorPage();
    }
    void onBack() {
      if (Navigator.of(context).canPop()) {
        Navigator.of(context).pop();
      } else {
        AppMover.goCalendar();
      }
    }

    Future<void> changeBotJoin({
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
            .withToastAtError()
            .withToastAtSuccess(
              (_) => AppMessage.current.schedule_bot_join_success,
            );
      } else {
        // Bot参加をキャンセルする
        await ref
            .read(scheduleListUseCaseProvider.notifier)
            .deleteBotJoinByGoogleCalendar(
              googleCalendarEventId: googleCalendarEventId,
            )
            .withLoaderOverlay()
            .withToastAtError()
            .withToastAtSuccess(
              (_) => AppMessage.current.delete_bot_join_success,
            );
      }
    }

    Future<void> deleteScheduledBot() => ref
        .read(scheduleListUseCaseProvider.notifier)
        .deleteScheduledBot(scheduledBotId: schedule!.scheduledBot?.id)
        .withLoaderOverlay()
        .onSuccessWithoutValue((_) => onBack())
        .withToastAtError()
        .withToastAtSuccess((_) => AppMessage.current.delete_bot_join_success);

    return Scaffold(
      backgroundColor: AppColor.blue95,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: onBack,
        ),
        title: Text(
          schedule?.title ?? 'No Title',
          overflow: TextOverflow.ellipsis,
        ),
        centerTitle: true,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(height: 1, color: AppColor.gray90),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: AppSpace.lg16),
          physics: const AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          children:
              [
                    ...buildScheduleItem(
                      schedule: schedule,
                      onChanged: schedule?.canJoin == true
                          ? (isJoined) {
                              changeBotJoin(
                                googleCalendarEventId:
                                    schedule?.googleCalendarEvent?.id,
                                isBotJoin: isJoined,
                              );
                            }
                          : null,
                      onDelete: deleteScheduledBot,
                    ),
                    const SizedBox(height: AppSpace.xl24),
                    Text(
                      AppMessage.current.common_transcription,
                      style: AppTextStyle.titleSmall20,
                    ),
                    const SizedBox(height: AppSpace.md12),
                    if (scheduleId != null)
                      ...switch (ref.watch(
                        transcriptionUseCaseProvider(scheduleId!),
                      )) {
                        AsyncData<List<TranscriptionItem>>(:final value) =>
                          value.isEmpty
                              ? [
                                  Center(
                                    child: Text(
                                      AppMessage
                                          .current
                                          .schedule_detail_empyty_transcription,
                                    ),
                                  ),
                                ]
                              : value
                                    .map(_buildTranscriptionItemWidget)
                                    .whereType<Widget>()
                                    .toList()
                                    .withGap(AppSpace.md12),
                        AsyncError<List<TranscriptionItem>>() => [
                          Center(
                            child: Text(
                              AppMessage.current.common_error_fetch_failed,
                            ),
                          ),
                        ],
                        _ => [
                          const Center(
                            child: SizedBox(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator(),
                            ),
                          ),
                        ],
                      },
                  ]
                  .map(
                    (child) => Center(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 800),
                        child: SizedBox(width: double.infinity, child: child),
                      ),
                    ),
                  )
                  .toList(),
        ),
      ),
    );
  }

  List<Widget> buildScheduleItem({
    required ValueChanged<bool>? onChanged,
    required Schedule? schedule,
    required VoidCallback onDelete,
  }) {
    final scheduledBot = schedule?.scheduledBot;
    final calendarEvent = schedule?.googleCalendarEvent;
    final isJoined = scheduledBot != null;
    if (calendarEvent != null) {
      return [
        ScheduleItemWidget.googleCalendarEventDetail(
          onChanged: onChanged,
          scheduledBot: scheduledBot,
          calendarEvent: calendarEvent,
          isJoined: isJoined,
        ),
      ];
    }
    if (scheduledBot != null) {
      return [
        ScheduleItemWidget.scheduledBotDetail(
          scheduledBot: scheduledBot,
          isJoined: isJoined,
          onChanged: null,
          onDelete: onDelete,
        ),
      ];
    }
    return [];
  }

  bool _hasValidData() {
    // schedule==null かつ googleCalendarEventId = null かつ scheduleId=nullならエラー
    if (schedule == null &&
        googleCalendarEventId == null &&
        scheduleId == null) {
      return false;
    }

    // Scheduleが存在する場合、googleCalendarEventIdとscheduleIdが一致しないならエラー
    if (schedule != null) {
      if (googleCalendarEventId != null &&
          schedule!.googleCalendarEvent?.id != googleCalendarEventId) {
        return false;
      }
      if (scheduleId != null && schedule!.scheduledBot?.id != scheduleId) {
        return false;
      }
    }

    return true;
  }

  Widget _buildTranscriptionItemWidget(TranscriptionItem item) => Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    spacing: AppSpace.lg16,
    children: [
      Text(
        item.timestamp.toTimeString(),
        style: AppTextStyle.bodyMedium14.withGray40(),
      ),
      Flexible(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: AppSpace.xs4,
          children: [
            switch (item.role) {
              TranscriptionRoleEnum.user => Row(
                mainAxisSize: MainAxisSize.min,
                spacing: AppSpace.xs4,
                children: [
                  Icon(
                    size: 18,
                    Icons.account_circle_outlined,
                    color: AppColor.primary,
                  ),
                  Text(AppMessage.current.common_user),
                ],
              ),
              TranscriptionRoleEnum.assistant => Row(
                mainAxisSize: MainAxisSize.min,
                spacing: AppSpace.xs4,
                children: [
                  Image.asset(
                    AppAssets.imagesAppIcon.value,
                    width: 18,
                    height: 18,
                  ),
                  Text(AppMessage.current.common_bot),
                ],
              ),

              _ => Icon(size: 18, Icons.help, color: AppColor.gray50),
            },
            Text(
              item.content ?? '',
              style: const TextStyle(fontSize: 16, color: Colors.black87),
            ),
          ],
        ),
      ),
    ],
  );

  Widget _buildErrorPage() => Scaffold(
    appBar: AppBar(),
    body: const Center(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline, size: 64, color: Colors.red),
            SizedBox(height: 16),
            Text(
              'スケジュールの情報が正しくありません',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
            Text(
              '指定されたスケジュールが見つからないか、\n不正なパラメータが指定されています。',
              style: TextStyle(fontSize: 14, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    ),
  );
}
