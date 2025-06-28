import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/bot_wake/bot_wake.dart';
import 'package:koshiba_agent_app/logic/models/bot_wake/bot_wake_status.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';

/// チャットルーム一覧の操作を定義するインターフェース
abstract interface class BotWakeRepositoryInterface {
  Future<Result<BotWake, AppMessageCode>> getBotWake({
    required String meetingId,
  });

  Future<Result<BotWake, AppMessageCode>> setBotWake({
    required String meetingId,
    required BotWakeStatus botWakeStatus,
  });
}
