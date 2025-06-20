import 'package:flutter/material.dart';
import 'package:koshiba_agent_app/core/extensions/date_time_ext.dart';
import 'package:koshiba_agent_app/core/themes/app_assets.dart';
import 'package:koshiba_agent_app/core/themes/app_color.dart';
import 'package:koshiba_agent_app/core/themes/app_radius.dart';
import 'package:koshiba_agent_app/core/themes/app_space.dart';
import 'package:koshiba_agent_app/core/themes/app_text_theme.dart';
import 'package:koshiba_agent_app/logic/models/calendar/calendar_event.dart';
import 'package:koshiba_agent_app/logic/models/meeting/meeting.dart';
import 'package:koshiba_agent_app/ui/core/shimmer/shimmer_wiget.dart';

class ScheduleItemWidget extends StatelessWidget {
  factory ScheduleItemWidget.loading() =>
      const ScheduleItemWidget._(child: _ScheduleItemLoading());
  factory ScheduleItemWidget.googleCalendarEvent({
    required CalendarEvent calendarEvent,
    required bool isJoined,
    required ValueChanged<bool>? onChanged,
    required VoidCallback? onTap,
  }) => ScheduleItemWidget._(
    child: _BaseScheduleItem(
      title: calendarEvent.title,
      startAt: calendarEvent.startAt,
      endAt: calendarEvent.endAt,
      iconPath: AppAssets.imagesGoogleCalendarIcon,
      isJoined: isJoined,
      onChanged: onChanged,
      onTap: onTap,
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
      startAt: scheduledBot.startAt,
      endAt: scheduledBot.endAt,
      iconPath: AppAssets.imagesAppIcon,
      isJoined: isJoined,
      onChanged: onChanged,
      onTap: onTap,
    ),
  );
  const ScheduleItemWidget._({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) => child;
}

class _BaseScheduleItem extends StatelessWidget {
  const _BaseScheduleItem({
    required this.title,
    required this.startAt,
    required this.endAt,
    required this.iconPath,
    required this.isJoined,
    required this.onChanged,
    required this.onTap,
  });

  final String? title;
  final DateTime? startAt;
  final DateTime? endAt;
  final AppAsset iconPath;
  final bool isJoined;
  final ValueChanged<bool>? onChanged;
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
        ),
        Container(color: AppColor.gray90, height: 1),
        _buildBotJoin(isJoined: isJoined, onChanged: onChanged),
      ],
    ),
  );

  Widget _buildContent({
    required String? title,
    required DateTime? startAt,
    required DateTime? endAt,
    required VoidCallback? onTap,
  }) => Material(
    color: AppColor.gray100,
    borderRadius: const BorderRadius.vertical(
      top: Radius.circular(AppRadius.lg12),
    ),
    child: InkWell(
      onTap: onTap,
      borderRadius: const BorderRadius.vertical(
        top: Radius.circular(AppRadius.lg12),
      ),
      child: Container(
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
                  Text(
                    title ?? 'No Title',
                    style: AppTextStyle.bodyLarge16,
                    overflow: TextOverflow.ellipsis,
                  ),
                  _buildTimeText(
                    iconPath: iconPath,
                    startAt: startAt,
                    endAt: endAt,
                  ),
                ],
              ),
            ),
            Icon(Icons.arrow_forward_ios, size: 16, color: AppColor.gray50),
          ],
        ),
      ),
    ),
  );

  Widget _buildTimeText({
    required AppAsset iconPath,
    required DateTime? startAt,
    required DateTime? endAt,
  }) => Row(
    mainAxisSize: MainAxisSize.min,
    spacing: AppSpace.sm8,
    children: [
      Image.asset(iconPath.value, width: 18, height: 18),
      Text.rich(
        TextSpan(
          style: AppTextStyle.bodyMedium14,
          children: [
            TextSpan(text: startAt?.toTimeString() ?? '--:--'),
            const TextSpan(text: ' ~ '),
            if (endAt != null) TextSpan(text: endAt.toTimeString()),
          ],
        ),
      ),
    ],
  );

  Widget _buildBotJoin({
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
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      spacing: AppSpace.sm8,
      children: [
        Text('Bot参加', style: AppTextStyle.bodyMedium14),
        SizedBox(
          height: 32,
          child: Switch(value: isJoined, onChanged: onChanged),
        ),
      ],
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
