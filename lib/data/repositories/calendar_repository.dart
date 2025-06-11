import 'package:http/http.dart';
import 'package:koshiba_agent_app/data/data_sources/authentication_data_source.dart';
import 'package:koshiba_agent_app/data/data_sources/google_calendar_data_source.dart';
import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/calendar/calendar_event.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:koshiba_agent_app/logic/usecases/calendar/calendar_repository_interface.dart';
import 'package:riverpod/riverpod.dart';

final calendarRepositoryProvider = Provider(
  (ref) => CalendarRepository(
    googleCalendarDataSource: ref.read(googleCalendarDataSourceProvider),
    authenticationDataSource: ref.read(authenticationDataSourceProvider),
  ),
);

class CalendarRepository implements CalendarRepositoryInterface {
  CalendarRepository({
    required GoogleCalendarDataSource googleCalendarDataSource,
    required AuthenticationDataSource authenticationDataSource,
  })  : _googleCalendarDataSource = googleCalendarDataSource,
        _authenticationDataSource = authenticationDataSource;

  final GoogleCalendarDataSource _googleCalendarDataSource;
  final AuthenticationDataSource _authenticationDataSource;

  @override
  Future<Result<List<CalendarEvent>, AppMessageCode>>
      fetchCalendarEventList() async {
    final clientResult =
        await _authenticationDataSource.getAuthenticatedClient();
    final Client client;
    switch (clientResult) {
      case ResultOk(:final value):
        client = value;
      case ResultNg(:final value):
        return ResultNg(value: value);
    }
    return _googleCalendarDataSource.fetchEventList(
      client: client,
    );
  }
}
