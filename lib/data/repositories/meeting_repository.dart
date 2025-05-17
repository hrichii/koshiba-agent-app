import 'package:koshiba_agent_app/data/data_sources/api_data_source.dart';
import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/api_response/api_response.dart';
import 'package:koshiba_agent_app/logic/models/meeting/meeting.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:koshiba_agent_app/logic/usecases/meeting/meeting_repository_interface.dart';
import 'package:riverpod/riverpod.dart';

final meetingRepositoryProvider = Provider(
  (ref) => MeetingRepository(
    apiDataSource: ref.read(apiDataSourceProvider),
  ),
);

class MeetingRepository implements MeetingRepositoryInterface {
  MeetingRepository({
    required ApiDataSource apiDataSource,
  }) : _apiDataSource = apiDataSource;

  final ApiDataSource _apiDataSource;

  @override
  Future<Result<Meeting, AppMessageCode>> registerMeeting({
    required Meeting meeting,
  }) async {
    switch (await _apiDataSource.registerMeeting()) {
      case ApiResponseOk<Meeting>(:final data):
        return ResultOk(value: data);
      case ApiResponseNg<Meeting>(:final messageCode):
        return ResultNg(value: messageCode);
    }
  }
}
