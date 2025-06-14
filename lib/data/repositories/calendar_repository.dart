import 'package:koshiba_agent_app/data/data_sources/api_data_source.dart';
import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/api_response/api_response.dart';
import 'package:koshiba_agent_app/logic/models/calendar/calendar_event.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:koshiba_agent_app/logic/usecases/calendar/calendar_repository_interface.dart';
import 'package:riverpod/riverpod.dart';

final calendarRepositoryProvider = Provider(
  (ref) => CalendarRepository(apiDataSource: ref.read(apiDataSourceProvider)),
);

class CalendarRepository implements CalendarRepositoryInterface {
  CalendarRepository({required ApiDataSource apiDataSource})
      : _apiDataSource = apiDataSource;

  final ApiDataSource _apiDataSource;

  @override
  Future<Result<List<CalendarEvent>, AppMessageCode>>
      fetchCalendarEventList() async {
    final response = await _apiDataSource.getCalendarList();
    switch (response) {
      case ApiResponseOk<List<CalendarEvent>>(:final data):
        return ResultOk(value: data);
      case ApiResponseNg<List<CalendarEvent>>():
        return ResultNg(value: response.messageCode);
    }
  }
}
