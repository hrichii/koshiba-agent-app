import 'package:koshiba_agent_app/data/data_sources/api_data_source.dart';
import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/api_response/api_response.dart';
import 'package:koshiba_agent_app/logic/models/meeting/meeting.dart';
import 'package:koshiba_agent_app/logic/models/meeting/meeting_create_request_dto.dart';
import 'package:koshiba_agent_app/logic/models/meeting/meeting_update_request_dto.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:koshiba_agent_app/logic/usecases/meeting/meeting_repository_interface.dart';
import 'package:riverpod/riverpod.dart';

final meetingRepositoryProvider = Provider(
  (ref) => MeetingRepository(apiDataSource: ref.read(apiDataSourceProvider)),
);

class MeetingRepository implements MeetingRepositoryInterface {
  MeetingRepository({required ApiDataSource apiDataSource})
    : _apiDataSource = apiDataSource;

  final ApiDataSource _apiDataSource;

  @override
  Future<Result<Meeting, AppMessageCode>> registerMeeting({
    required MeetingCreateRequestDto dto,
  }) async {
    switch (await _apiDataSource.registerMeeting(dto)) {
      case ApiResponseOk(data: final value):
        return ResultOk(value: value);
      case ApiResponseNg(:final messageCode):
        return ResultNg(value: messageCode);
    }
  }

  @override
  Future<Result<List<Meeting>, AppMessageCode>> getMeetingList({
    String? meetingId,
    int? epochMs,
    int? pageSize,
  }) async {
    switch (await _apiDataSource.getMeetingList(
      meetingId: meetingId,
      epochMs: epochMs,
      pageSize: pageSize,
    )) {
      case ApiResponseOk<List<Meeting>>(:final data):
        return ResultOk(value: data);
      case ApiResponseNg<List<Meeting>>(:final messageCode):
        return ResultNg(value: messageCode);
    }
  }

  @override
  Future<Result<Meeting, AppMessageCode>> getMeeting({
    required String meetingId,
  }) async {
    switch (await _apiDataSource.getMeeting(meetingId)) {
      case ApiResponseOk<Meeting>(:final data):
        return ResultOk(value: data);
      case ApiResponseNg<Meeting>(:final messageCode):
        return ResultNg(value: messageCode);
    }
  }

  @override
  Future<Result<void, AppMessageCode>> deleteMeeting({
    required String meetingId,
  }) async {
    switch (await _apiDataSource.deleteMeeting(meetingId)) {
      case ApiResponseOk<void>():
        return const ResultOk(value: null);
      case ApiResponseNg<void>(:final messageCode):
        return ResultNg(value: messageCode);
    }
  }

  @override
  Future<Result<Meeting, AppMessageCode>> updateMeeting({
    required String meetingId,
    required MeetingUpdateRequestDto dto,
  }) async {
    switch (await _apiDataSource.updateMeeting(meetingId, dto)) {
      case ApiResponseOk<Meeting>(:final data):
        return ResultOk(value: data);
      case ApiResponseNg<Meeting>(:final messageCode):
        return ResultNg(value: messageCode);
    }
  }
}
