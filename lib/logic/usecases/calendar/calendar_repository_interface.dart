import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/calendar/calendar_event.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';

/// カレンダー操作をするインターフェース
abstract interface class CalendarRepositoryInterface {
  /// カレンダーのリストを取得
  Future<Result<List<CalendarEvent>, AppMessageCode>> fetchCalendarEventList();
}
