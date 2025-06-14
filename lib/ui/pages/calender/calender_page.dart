import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:koshiba_agent_app/core/extensions/future_ext.dart';
import 'package:koshiba_agent_app/core/extensions/future_result_ext.dart';
import 'package:koshiba_agent_app/data/repositories/meeting_repository.dart';
import 'package:koshiba_agent_app/logic/models/calendar/calendar_event.dart';
import 'package:koshiba_agent_app/logic/models/meeting/meeting.dart';
import 'package:koshiba_agent_app/logic/models/meeting/meeting_create_request_dto.dart';
import 'package:koshiba_agent_app/logic/models/resource/resource.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:koshiba_agent_app/logic/usecases/calendar/calendar_list_use_case.dart';
import 'package:url_launcher/url_launcher.dart';

class CalendarPage extends HookConsumerWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // イベントとミーティングIDのマッピングを管理するState
    final eventMeetingMap = useState<Map<String, String>>({});

    // 初回レンダリング時にデータを取得
    useEffect(() {
      Future(() => _fetchCalendarEvents(ref));
      return null;
    }, const []);

    final calendarResources = ref.watch(calendarListUseCaseProvider);

    // 最新のリソース状態を取得
    final latestResource = calendarResources.isNotEmpty
        ? calendarResources.last
        : const ResourceInProgress<List<CalendarEvent>>();

    // トグルがOnになった時に実行
    Future<void> inviteBot(CalendarEvent event) => ref
            .read(meetingRepositoryProvider)
            .registerMeeting(
              dto: MeetingCreateRequestDto.fromGoogleCalendar(
                url: event.url!,
                startAt: event.startAt!,
                googleCalendarId: event.id!,
              ),
            )
            .withLoaderOverlay()
            .withToastAtError()
            .then((result) {
          // 成功した場合、meetingIdを保存
          if (result is ResultOk<void, dynamic>) {
            _fetchMeetingForEvent(ref, event, eventMeetingMap);
          }
        });

    // トグルがOffになった時に実行
    Future<void> cancelInviteBot(String meetingId) async {
      await ref
          .read(meetingRepositoryProvider)
          .deleteMeeting(meetingId: meetingId)
          .withLoaderOverlay()
          .withToastAtError()
          .then((result) {
        // 成功した場合、マッピングから削除
        if (result is ResultOk<void, dynamic>) {
          final newMap = Map<String, String>.from(eventMeetingMap.value);
          newMap.removeWhere((_, value) => value == meetingId);
          eventMeetingMap.value = newMap;
        }
      });
    }

    // カレンダーイベントを読み込んだ後、関連するミーティング情報も取得
    useEffect(() {
      if (latestResource is ResourceDone<List<CalendarEvent>>) {
        _fetchMeetingsForEvents(ref, latestResource.value, eventMeetingMap);
      }
      return null;
    }, [latestResource]);

    return Scaffold(
      appBar: AppBar(title: const Text('カレンダー')),
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
                ? const Center(child: Text('予定がありません'))
                : _buildCalendarEventsList(
                    context,
                    value,
                    eventMeetingMap.value,
                    inviteBot,
                    cancelInviteBot,
                  ),
          },
        ),
      ),
    );
  }

  Widget _buildCalendarEventsList(
    BuildContext context,
    List<CalendarEvent> events,
    Map<String, String> eventMeetingMap,
    Future<void> Function(CalendarEvent) inviteBot,
    Future<void> Function(String) cancelInviteBot,
  ) {
    final dateFormat = DateFormat('yyyy/MM/dd HH:mm');

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: events.length,
      itemBuilder: (context, index) {
        final event = events[index];
        final hasMeeting =
            event.id != null && eventMeetingMap.containsKey(event.id);

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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          event.title ?? '無題のイベント',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                      // Botを招待するトグル
                      if (event.url != null &&
                          event.id != null &&
                          event.startAt != null)
                        Row(
                          children: [
                            Text(
                              'Botを招待',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            const SizedBox(width: 8),
                            Switch(
                              value: hasMeeting,
                              onChanged: (value) {
                                if (value) {
                                  inviteBot(event);
                                } else if (hasMeeting) {
                                  cancelInviteBot(eventMeetingMap[event.id]!);
                                }
                              },
                            ),
                          ],
                        ),
                    ],
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

  // イベントに関連するミーティングを取得する
  Future<void> _fetchMeetingsForEvents(
    WidgetRef ref,
    List<CalendarEvent> events,
    ValueNotifier<Map<String, String>> eventMeetingMap,
  ) async {
    final meetingRepository = ref.read(meetingRepositoryProvider);
    final result = await meetingRepository.getMeetingList();

    switch (result) {
      case ResultOk<List<Meeting>, dynamic>(:final value):
        final meetings = value;
        final map = <String, String>{};

        // Google CalendarのIDとミーティングIDのマッピングを作成
        for (final event in events) {
          if (event.id == null || event.url == null) continue;

          // 同じURLを持つミーティングを探す
          for (final meeting in meetings) {
            if (meeting.url.toString() == event.url.toString()) {
              map[event.id!] = meeting.id;
              break;
            }
          }
        }

        eventMeetingMap.value = map;

      case ResultNg<List<Meeting>, dynamic>():
        // エラー時は何もしない
        break;
    }
  }

  // 単一のイベントに関連するミーティングを取得する
  Future<void> _fetchMeetingForEvent(
    WidgetRef ref,
    CalendarEvent event,
    ValueNotifier<Map<String, String>> eventMeetingMap,
  ) async {
    if (event.id == null || event.url == null) return;

    final meetingRepository = ref.read(meetingRepositoryProvider);
    final result = await meetingRepository.getMeetingList();

    switch (result) {
      case ResultOk<List<Meeting>, dynamic>(:final value):
        final meetings = value;

        // 同じURLを持つミーティングを探す
        for (final meeting in meetings) {
          if (meeting.url.toString() == event.url.toString()) {
            final newMap = Map<String, String>.from(eventMeetingMap.value);
            newMap[event.id!] = meeting.id;
            eventMeetingMap.value = newMap;
            break;
          }
        }

      case ResultNg<List<Meeting>, dynamic>():
        // エラー時は何もしない
        break;
    }
  }

  Future<void> _launchUrl(BuildContext context, Uri url) async {
    if (!await launchUrl(url)) {
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('URLを開けませんでした: $url')));
      }
    }
  }
}
