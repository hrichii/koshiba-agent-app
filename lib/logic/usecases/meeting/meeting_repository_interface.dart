import 'package:koshiba_agent_app/core/exceptions/app_exception.dart';
import 'package:koshiba_agent_app/logic/models/meeting/meeting.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';

/// チャットルーム一覧の操作を定義するインターフェース
abstract interface class MeetingRepositoryInterface {
  Future<Result<Meeting, AppException>> registerMeeting({
    required Meeting meeting,
  });
}
