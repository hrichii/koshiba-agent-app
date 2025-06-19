import 'package:flutter/material.dart';
import 'package:koshiba_agent_app/logic/models/calendar/calendar_event.dart';
import 'package:koshiba_agent_app/logic/models/meeting/meeting.dart';

class ScheduleItemWidget extends StatelessWidget {
  factory ScheduleItemWidget.googleCalendarEvent({
    required CalendarEvent calendarEvent,
    required Meeting? scheduledBot,
  }) => ScheduleItemWidget._(
    child: _ScheduleItemGoogleCalendarWidget(
      calendarEvent: calendarEvent,
      scheduledBot: scheduledBot,
    ),
  );
  factory ScheduleItemWidget.scheduledBot({required Meeting scheduledBot}) =>
      ScheduleItemWidget._(
        child: _ScheduleItemScheduledBotWidget(scheduledBot: scheduledBot),
      );
  const ScheduleItemWidget._({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) => child;
}

class _ScheduleItemScheduledBotWidget extends StatelessWidget {
  const _ScheduleItemScheduledBotWidget({required this.scheduledBot});
  final Meeting scheduledBot;

  @override
  Widget build(BuildContext context) =>
      Text('Scheduled Bot: ${scheduledBot.url}');
}

class _ScheduleItemGoogleCalendarWidget extends StatelessWidget {
  const _ScheduleItemGoogleCalendarWidget({
    required this.calendarEvent,
    required this.scheduledBot,
  });

  final CalendarEvent calendarEvent;
  final Meeting? scheduledBot;

  @override
  Widget build(BuildContext context) =>
      Text('Google Calendar: ${calendarEvent.url}');
}
