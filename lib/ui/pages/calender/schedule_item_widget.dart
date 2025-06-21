import 'package:flutter/material.dart';
import 'package:koshiba_agent_app/core/extensions/date_time_ext.dart';
import 'package:koshiba_agent_app/core/extensions/text_style_extension.dart';
import 'package:koshiba_agent_app/core/themes/app_assets.dart';
import 'package:koshiba_agent_app/core/themes/app_color.dart';
import 'package:koshiba_agent_app/core/themes/app_radius.dart';
import 'package:koshiba_agent_app/core/themes/app_space.dart';
import 'package:koshiba_agent_app/core/themes/app_text_theme.dart';
import 'package:koshiba_agent_app/core/themes/button_style/outlined_button_style.dart';
import 'package:koshiba_agent_app/core/themes/button_style/text_button_style.dart';
import 'package:koshiba_agent_app/generated/l10n.dart';
import 'package:koshiba_agent_app/logic/models/calendar/calendar_event.dart';
import 'package:koshiba_agent_app/logic/models/meeting/meeting.dart';
import 'package:koshiba_agent_app/logic/models/meeting/meeting_bot_status.dart';
import 'package:koshiba_agent_app/ui/core/extensions/button_style_ext.dart';
import 'package:koshiba_agent_app/ui/core/mover/app_mover.dart';
import 'package:koshiba_agent_app/ui/core/shimmer/shimmer_wiget.dart';

class ScheduleItemWidget extends StatelessWidget {
  factory ScheduleItemWidget.loading() =>
      const ScheduleItemWidget._(child: _ScheduleItemLoading());
  factory ScheduleItemWidget.googleCalendarEvent({
    required CalendarEvent calendarEvent,
    required Meeting? scheduledBot,
    required bool isJoined,
    required ValueChanged<bool>? onChanged,
    required VoidCallback? onTap,
  }) => ScheduleItemWidget._(
    child: _BaseScheduleItem(
      title: calendarEvent.title,
      description: calendarEvent.description,
      botStatus: scheduledBot?.status,
      startAt: calendarEvent.startAt,
      endAt: calendarEvent.endAt,
      iconPath: AppAssets.imagesGoogleCalendarIcon,
      isJoined: isJoined,
      onChange: onChanged,
      onTap: onTap,
      showDescription: false,
      showUrl: false,
      showBotStatus: false,
      showJoinToggle: true,
      showDeleteButton: false,
      showDate: false,
      onDelete: null,
      url: calendarEvent.url,
    ),
  );
  factory ScheduleItemWidget.scheduledBot({
    required Meeting scheduledBot,
    required bool isJoined,
    required ValueChanged<bool>? onChanged,
    required VoidCallback? onTap,
  }) => ScheduleItemWidget._(
    child: _BaseScheduleItem(
      title: scheduledBot.title,
      description: scheduledBot.description,
      url: scheduledBot.url,
      botStatus: scheduledBot.status,
      startAt: scheduledBot.startAt,
      endAt: scheduledBot.endAt,
      iconPath: AppAssets.imagesAppIcon,
      isJoined: isJoined,
      onChange: onChanged,
      onTap: onTap,
      showDescription: false,
      showUrl: false,
      showJoinToggle: true,
      showDeleteButton: false,
      showDate: false,
      onDelete: null,
      showBotStatus: false,
    ),
  );

  factory ScheduleItemWidget.googleCalendarEventDetail({
    required CalendarEvent calendarEvent,
    required Meeting? scheduledBot,
    required bool isJoined,
    required ValueChanged<bool>? onChanged,
  }) => ScheduleItemWidget._(
    child: _BaseScheduleItem(
      title: calendarEvent.title,
      description: calendarEvent.description,
      url: calendarEvent.url,
      botStatus: scheduledBot?.status,
      startAt: calendarEvent.startAt,
      endAt: calendarEvent.endAt,
      iconPath: AppAssets.imagesGoogleCalendarIcon,
      isJoined: isJoined,
      onChange: onChanged,
      onTap: null,
      showDescription: true,
      showUrl: true,
      showJoinToggle: true,
      showDeleteButton: false,
      showBotStatus: true,
      showDate: true,
      onDelete: null,
    ),
  );

  factory ScheduleItemWidget.scheduledBotDetail({
    required Meeting scheduledBot,
    required bool isJoined,
    required ValueChanged<bool>? onChanged,
    required VoidCallback? onDelete,
  }) => ScheduleItemWidget._(
    child: _BaseScheduleItem(
      title: scheduledBot.title,
      description: scheduledBot.description,
      url: scheduledBot.url,
      botStatus: scheduledBot.status,
      startAt: scheduledBot.startAt,
      endAt: scheduledBot.endAt,
      iconPath: AppAssets.imagesAppIcon,
      isJoined: isJoined,
      onChange: onChanged,
      onTap: null,
      showDescription: true,
      showUrl: true,
      showJoinToggle: true,
      showDeleteButton: true,
      showBotStatus: true,
      showDate: true,
      onDelete: onDelete,
    ),
  );
  const ScheduleItemWidget._({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) => child;
}

class _BaseScheduleItem extends StatelessWidget {
  const _BaseScheduleItem({
    required this.showDescription,
    required this.showUrl,
    required this.showJoinToggle,
    required this.showDeleteButton,
    required this.showBotStatus,
    required this.showDate,
    required this.title,
    required this.description,
    required this.url,
    required this.botStatus,
    required this.startAt,
    required this.endAt,
    required this.iconPath,
    required this.isJoined,
    required this.onChange,
    required this.onDelete,
    required this.onTap,
  });

  final bool showDescription;
  final bool showUrl;
  final bool showJoinToggle;
  final bool showDeleteButton;
  final bool showBotStatus;
  final bool showDate;
  final String? title;
  final String? description;
  final Uri? url;
  final DateTime? startAt;
  final DateTime? endAt;
  final MeetingBotStatus? botStatus;
  final AppAsset iconPath;
  final bool isJoined;
  final ValueChanged<bool>? onChange;
  final VoidCallback? onDelete;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => DecoratedBox(
    decoration: BoxDecoration(
      color: AppColor.gray100,
      borderRadius: BorderRadius.circular(AppRadius.lg12),
      border: Border.all(color: AppColor.gray90, width: 1),
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _buildContent(
          title: title,
          startAt: startAt,
          endAt: endAt,
          onTap: onTap,
          showUri: showUrl,
          showDescription: showDescription,
          url: url,
          description: description,
        ),
        Container(color: AppColor.gray90, height: 1),
        if (showJoinToggle)
          _buildBotJoin(
            isJoined: isJoined,
            onChanged: onChange,
            showBotStatus: showBotStatus,
            botStatus: botStatus,
          ),
        if (showDeleteButton) _buildDeleteButton(onDelete: onDelete),
      ],
    ),
  );

  Widget _buildContent({
    required bool showUri,
    required bool showDescription,
    required String? title,
    required Uri? url,
    required String? description,
    required DateTime? startAt,
    required DateTime? endAt,
    required VoidCallback? onTap,
  }) {
    final content = Container(
      padding: const EdgeInsets.only(
        top: AppSpace.lg16,
        left: AppSpace.lg16,
        right: AppSpace.lg16,
        bottom: AppSpace.sm8,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: AppSpace.sm8,
              children: [
                Text(
                  title ?? 'No Title',
                  style: AppTextStyle.bodyLarge16,
                  overflow: TextOverflow.ellipsis,
                ),
                _buildTimeText(
                  showDate: showDate,
                  iconPath: iconPath,
                  startAt: startAt,
                  endAt: endAt,
                ),
                if (url != null && showUri)
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: AppSpace.sm8,
                    children: [
                      Icon(Icons.link, size: 16, color: AppColor.primary),
                      TextButton(
                        style: TextButtonStyle.primary
                            .withPadding(const EdgeInsets.all(AppSpace.xs4))
                            .withBorderRadius(
                              BorderRadius.circular(AppRadius.sm4),
                            ),
                        child: Text(
                          url.toString(),
                          overflow: TextOverflow.visible,
                        ),
                        onPressed: () => AppMover.openExternalUrl(url),
                        // style: AppTextStyle.bodyMedium14,
                      ),
                    ],
                  ),
                if (description != null && showDescription)
                  Text(
                    description,
                    style: AppTextStyle.bodyMedium14.withGray30(),
                    overflow: TextOverflow.visible,
                  ),
              ],
            ),
          ),
          if (onTap != null)
            Icon(Icons.arrow_forward_ios, size: 16, color: AppColor.gray50),
        ],
      ),
    );
    if (onTap == null) {
      return DecoratedBox(
        decoration: BoxDecoration(
          color: AppColor.gray100,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(AppRadius.lg12),
          ),
        ),
        child: content,
      );
    }
    return Material(
      color: AppColor.gray100,
      borderRadius: const BorderRadius.vertical(
        top: Radius.circular(AppRadius.lg12),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(AppRadius.lg12),
        ),
        child: content,
      ),
    );
  }

  Widget _buildTimeText({
    required bool showDate,
    required AppAsset iconPath,
    required DateTime? startAt,
    required DateTime? endAt,
  }) {
    final dateStr = startAt?.toDateString() ?? '--年--月--日';
    final weekdayStr = startAt?.toWeekdayString() ?? '--曜日';
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: AppSpace.sm8,
      children: [
        if (showDate)
          Text(
            '$dateStr $weekdayStr',
            style: AppTextStyle.bodyMedium14.withGray30(),
          ),
        Row(
          mainAxisSize: MainAxisSize.min,
          spacing: AppSpace.sm8,
          children: [
            Image.asset(iconPath.value, width: 18, height: 18),
            Text.rich(
              TextSpan(
                style: AppTextStyle.bodyMedium14.withGray30(),
                children: [
                  TextSpan(text: startAt?.toTimeString() ?? '--:--'),
                  const TextSpan(text: ' ~ '),
                  if (endAt != null) TextSpan(text: endAt.toTimeString()),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildBotJoin({
    required bool showBotStatus,
    required MeetingBotStatus? botStatus,
    required bool isJoined,
    required ValueChanged<bool>? onChanged,
  }) => Padding(
    padding: const EdgeInsets.only(
      top: AppSpace.sm8,
      bottom: AppSpace.sm8,
      left: AppSpace.lg16,
      right: AppSpace.lg16,
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: AppSpace.sm8,
      children: [
        Text('Bot参加', style: AppTextStyle.bodyMedium14),
        const Expanded(child: SizedBox.shrink()),
        if (botStatus != null && showBotStatus)
          Text(
            botStatus.code.message,
            style: AppTextStyle.bodySmall12.withColor(switch (botStatus.level) {
              BotStatusLevel.ready => AppColor.primary,
              BotStatusLevel.active => AppColor.primary,
              BotStatusLevel.completed => AppColor.success,
              BotStatusLevel.failed => AppColor.error,
            }),
          ),
        SizedBox(
          height: 32,
          child: Switch(value: isJoined, onChanged: onChanged),
        ),
      ],
    ),
  );

  Widget _buildDeleteButton({required VoidCallback? onDelete}) => Padding(
    padding: const EdgeInsets.only(
      top: AppSpace.sm8,
      bottom: AppSpace.sm8,
      left: AppSpace.lg16,
      right: AppSpace.lg16,
    ),
    child: OutlinedButton(
      onPressed: onDelete,
      style: OutlinedButtonStyle.error,
      child: Padding(
        padding: const EdgeInsets.all(AppSpace.sm8),
        child: Text(AppMessage.current.common_delete),
      ),
    ),
  );
}

class _ScheduleItemLoading extends StatelessWidget {
  const _ScheduleItemLoading();

  @override
  Widget build(BuildContext context) => DecoratedBox(
    decoration: BoxDecoration(
      color: AppColor.gray100,
      borderRadius: BorderRadius.circular(AppRadius.lg12),
      border: Border.all(color: AppColor.gray90, width: 1),
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _buildContent(),
        Container(color: AppColor.gray90, height: 1),
        _buildBotJoin(),
      ],
    ),
  );

  Widget _buildContent() => Container(
    decoration: BoxDecoration(
      color: AppColor.gray100,
      borderRadius: BorderRadius.circular(AppRadius.lg12),
    ),
    padding: const EdgeInsets.only(
      top: AppSpace.lg16,
      left: AppSpace.lg16,
      right: AppSpace.lg16,
      bottom: AppSpace.sm8,
    ),
    child: Row(
      children: [
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: AppSpace.sm8,
            children: [
              Container(
                height: 23,
                alignment: Alignment.centerLeft,
                child: const ShimmerWidget(height: 16, width: 200),
              ),
              _buildTimeText(),
            ],
          ),
        ),
        Icon(Icons.arrow_forward_ios, size: 16, color: AppColor.gray50),
      ],
    ),
  );

  Widget _buildTimeText() => const Row(
    mainAxisSize: MainAxisSize.min,
    spacing: AppSpace.sm8,
    children: [
      ShimmerWidget(height: 18, width: 18),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 3),
        child: ShimmerWidget(height: 14, width: 100),
      ),
    ],
  );

  Widget _buildBotJoin() => Padding(
    padding: const EdgeInsets.only(
      top: AppSpace.sm8,
      bottom: AppSpace.sm8,
      left: AppSpace.lg16,
      right: AppSpace.lg16,
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      spacing: AppSpace.sm8,
      children: [
        Text('Bot参加', style: AppTextStyle.bodyMedium14),
        ShimmerWidget(
          height: 32,
          width: 52,
          borderRadius: BorderRadius.circular(AppRadius.full),
        ),
      ],
    ),
  );
}
