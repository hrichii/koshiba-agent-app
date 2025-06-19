import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:koshiba_agent_app/logic/models/schedule/schedule_response_dto.dart';

abstract interface class ScheduleRepositoryInterface {
  Future<Result<ScheduleResponseDto, AppMessageCode>>
  fetchScheduleListAtInitial({required DateTime? timeBase});
  Future<Result<ScheduleResponseDto, AppMessageCode>> fetchScheduleListForNext({
    required String pageToken,
  });
  Future<Result<ScheduleResponseDto, AppMessageCode>>
  fetchScheduleListForPrevoius({required String pageToken});
}
