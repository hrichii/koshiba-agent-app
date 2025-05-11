import 'package:koshiba_agent_app/core/exceptions/app_exception.dart';
import 'package:koshiba_agent_app/data/data_sources/api_data_source.dart';
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
  Future<Result<Meeting, AppException>> registerMeeting({
    required Meeting meeting,
  }) async {
    switch (await _apiDataSource.registerMeeting()) {
      case ApiResponseOk<Meeting>(:final data):
        return ResultOk(value: data);
      case ApiResponseNg<Meeting>():
        // TODO(hrichii): エラーハンドリング
        return const ResultNg(value: UnknownException());
    }
  }
}
