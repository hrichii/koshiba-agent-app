import 'package:koshiba_agent_app/core/extensions/list_resource_extension.dart';
import 'package:koshiba_agent_app/data/repositories/calendar_repository.dart';
import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/calendar/calendar_event.dart';
import 'package:koshiba_agent_app/logic/models/resource/resource.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:koshiba_agent_app/logic/usecases/calendar/calendar_repository_interface.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'calendar_list_use_case.g.dart';

@riverpod
class CalendarListUseCase extends _$CalendarListUseCase {
  CalendarRepositoryInterface get _calendarRepository =>
      ref.read(calendarRepositoryProvider);

  @override
  List<Resource<List<CalendarEvent>>> build() => const [];

  Future<Result<void, AppMessageCode>> getCalendarEventList() async {
    if (state.hasInProgress) {
      return const ResultOk(value: null);
    }
    final preState = state;
    state = [...state, const ResourceInProgress()];
    switch (await _calendarRepository.fetchCalendarEventList()) {
      case ResultOk(:final value):
        state = [...preState, ResourceDone(value: value)];
        return const ResultOk(value: null);
      case ResultNg(:final value):
        state = [...preState, ResourceError(value: value)];
        return ResultNg(value: value);
    }
  }
}
