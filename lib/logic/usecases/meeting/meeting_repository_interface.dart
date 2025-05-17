import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/meeting/meeting.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';

/// チャットルーム一覧の操作を定義するインターフェース
abstract interface class MeetingRepositoryInterface {
  Future<Result<Meeting, AppMessageCode>> registerMeeting({
    required Meeting meeting,
  });
}
