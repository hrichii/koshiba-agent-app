import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:koshiba_agent_app/logic/models/calendar/calendar_event.dart';
import 'package:koshiba_agent_app/logic/models/resource/resource.dart';
import 'package:koshiba_agent_app/logic/usecases/calendar/calendar_list_use_case.dart';
import 'package:url_launcher/url_launcher.dart';

class CalendarPage extends HookConsumerWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 初回レンダリング時にデータを取得
    useEffect(
      () {
        Future(() => _fetchCalendarEvents(ref));
        return null;
      },
      const [],
    );

    final calendarResources = ref.watch(calendarListUseCaseProvider);

    // 最新のリソース状態を取得
    final latestResource = calendarResources.isNotEmpty
        ? calendarResources.last
        : const ResourceInProgress<List<CalendarEvent>>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('カレンダー'),
      ),
      body: RefreshIndicator(
        onRefresh: () => _fetchCalendarEvents(ref),
        child: Builder(
          builder: (context) => switch (latestResource) {
            ResourceInProgress() => const Center(
                child: CircularProgressIndicator(),
              ),
            ResourceError(:final value) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('エラーが発生しました: ${value.message}'),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () => _fetchCalendarEvents(ref),
                      child: const Text('再試行'),
                    ),
                  ],
                ),
              ),
            ResourceDone(:final value) => value.isEmpty
                ? const Center(
                    child: Text('予定がありません'),
                  )
                : _buildCalendarEventsList(context, value),
          },
        ),
      ),
    );
  }

  Widget _buildCalendarEventsList(
    BuildContext context,
    List<CalendarEvent> events,
  ) {
    final dateFormat = DateFormat('yyyy/MM/dd HH:mm');

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: events.length,
      itemBuilder: (context, index) {
        final event = events[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 16),
          child: InkWell(
            onTap: event.url != null
                ? () => _launchUrl(context, event.url!)
                : null,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    event.title ?? '無題のイベント',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.access_time, size: 16),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          event.startAt != null && event.endAt != null
                              ? '${dateFormat.format(event.startAt!)} - ${dateFormat.format(event.endAt!)}'
                              : event.startAt != null
                                  ? dateFormat.format(event.startAt!)
                                  : '日時不明',
                        ),
                      ),
                    ],
                  ),
                  if (event.description != null &&
                      event.description!.isNotEmpty) ...[
                    const SizedBox(height: 8),
                    Text(
                      event.description!,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                  if (event.url != null) ...[
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Icon(Icons.link, size: 16),
                        const SizedBox(width: 4),
                        Text(
                          'リンクを開く',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Future<void> _fetchCalendarEvents(WidgetRef ref) async {
    await ref.read(calendarListUseCaseProvider.notifier).getCalendarEventList();
  }

  Future<void> _launchUrl(BuildContext context, Uri url) async {
    if (!await launchUrl(url)) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('URLを開けませんでした: $url')),
        );
      }
    }
  }
}
