import 'package:googleapis/calendar/v3.dart';
import 'package:http/http.dart';
import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/calendar/calendar_event.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:riverpod/riverpod.dart';

final googleCalendarDataSourceProvider = Provider(
  (_) => GoogleCalendarDataSource(),
);

class GoogleCalendarDataSource {
  /// Google Calendar APIを使用して、指定されたカレンダーのイベントリストを取得します。
  Future<Result<List<CalendarEvent>, AppMessageCode>> fetchEventList({
    required Client client,
    String calendarId = 'primary',
  }) async {
    try {
      final calendarApi = CalendarApi(client);
      final events = await calendarApi.events.list(
        calendarId,
        maxResults: 100,
        singleEvents: true,
        orderBy: 'startTime',
      );
      final calendarEvents = events.items
              ?.map(
                (event) => CalendarEvent(
                  id: event.id,
                  title: event.summary,
                  description: event.description,
                  url: Uri.tryParse(event.hangoutLink ?? ''),
                  startAt: event.start?.dateTime?.toLocal(),
                  endAt: event.end?.dateTime?.toLocal(),
                ),
              )
              .toList() ??
          [];
      return ResultOk<List<CalendarEvent>, AppMessageCode>(
        value: calendarEvents,
      );
    } catch (e) {
      // TODO(hrichii): エラーハンドリングを適切に行う
      return const ResultNg<List<CalendarEvent>, AppMessageCode>(
        value: AppMessageCode.errorClientUnknown(),
      );
    }
  }
}
