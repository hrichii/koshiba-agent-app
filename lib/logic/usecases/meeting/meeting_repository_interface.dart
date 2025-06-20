import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/meeting/meeting.dart';
import 'package:koshiba_agent_app/logic/models/meeting/meeting_create_request_dto.dart';
import 'package:koshiba_agent_app/logic/models/meeting/meeting_update_request_dto.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';

/// チャットルーム一覧の操作を定義するインターフェース
abstract interface class MeetingRepositoryInterface {
  Future<Result<Meeting, AppMessageCode>> registerMeeting({
    required MeetingCreateRequestDto dto,
  });

  Future<Result<List<Meeting>, AppMessageCode>> getMeetingList({
    String? meetingId,
    int? epochMs,
    int? pageSize,
  });

  Future<Result<Meeting, AppMessageCode>> getMeeting({
    required String meetingId,
  });

  Future<Result<void, AppMessageCode>> deleteMeeting({
    required String meetingId,
  });

  Future<Result<Meeting, AppMessageCode>> updateMeeting({
    required String meetingId,
    required MeetingUpdateRequestDto dto,
  });
}
