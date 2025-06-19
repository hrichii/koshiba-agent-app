import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koshiba_agent_app/logic/models/calendar/calendar_event.dart';
import 'package:koshiba_agent_app/logic/models/meeting/meeting.dart';
import 'package:koshiba_agent_app/logic/usecases/schedule/schedule_list_use_case.dart';
import 'package:koshiba_agent_app/ui/core/shimmer/shimmer_wiget.dart';
import 'package:koshiba_agent_app/ui/pages/calender/schedule_item_widget.dart';

class CalendarPage extends HookConsumerWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future<void> fetchInitial() =>
        ref.read(scheduleListUseCaseProvider.notifier).getInitialScheduleList();
    final loadingPrevious = ref
        .watch(scheduleListUseCaseProvider)
        .loadingPrevious;
    final loadingInitial = ref
        .watch(scheduleListUseCaseProvider)
        .loadingInitial;
    final loadingNext = ref.watch(scheduleListUseCaseProvider).loadingNext;

    final scheduleList = ref.watch(
      scheduleListUseCaseProvider.select((state) => state.data),
    );

    useEffect(() {
      Future(fetchInitial);
      return null;
    }, const []);

    return Scaffold(
      appBar: AppBar(title: const Text('Calendar')),
      body: ListView(
        children: [
          ..._buildShimmer(loadingPrevious),
          ..._buildShimmer(loadingInitial),
          ...scheduleList
              .map(
                (schedule) => buildScheduleItem(
                  calendarEvent: schedule.googleCalendarEvent,
                  scheduledBot: schedule.scheduledBot,
                ),
              )
              .whereType<Widget>(),
          ..._buildShimmer(loadingNext),
        ],
      ),
    );
  }

  List<Widget> _buildShimmer(bool isLoading) {
    if (!isLoading) {
      return [];
    } else {
      return List.generate(5, (_) => const ShimmerWidget());
    }
  }

  Widget? buildScheduleItem({
    required Meeting? scheduledBot,
    required CalendarEvent? calendarEvent,
  }) {
    if (calendarEvent != null) {
      return ScheduleItemWidget.googleCalendarEvent(
        calendarEvent: calendarEvent,
        scheduledBot: scheduledBot,
      );
    }
    if (scheduledBot != null) {
      return ScheduleItemWidget.scheduledBot(scheduledBot: scheduledBot);
    }
    return null;
  }
}
