import 'package:koshiba_agent_app/data/data_sources/bot_api/bot_api_data_source.dart';
import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/bot_wake/bot_wake.dart';
import 'package:koshiba_agent_app/logic/models/bot_wake/bot_wake_request_dto.dart';
import 'package:koshiba_agent_app/logic/models/bot_wake/bot_wake_status.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:koshiba_agent_app/logic/usecases/bot/bot_repository_interface.dart';
import 'package:riverpod/riverpod.dart';

final botWakeRepositoryProvider = Provider(
  (ref) =>
      BotWakeRepository(botApiDataSource: ref.read(botApiDataSourceProvider)),
);

class BotWakeRepository implements BotWakeRepositoryInterface {
  BotWakeRepository({required BotApiDataSource botApiDataSource})
    : _botApiDataSource = botApiDataSource;

  final BotApiDataSource _botApiDataSource;

  @override
  Future<Result<BotWake, AppMessageCode>> getBotWake({
    required String meetingId,
  }) async {
    try {
      final botWakeStatus = await _botApiDataSource.getBotWakeStatus(
        meetingId: meetingId,
      );
      return ResultOk(value: botWakeStatus);
    } catch (e) {
      return const ResultNg(value: AppMessageCode.errorApiServerIssue());
    }
  }

  @override
  Future<Result<BotWake, AppMessageCode>> setBotWake({
    required String meetingId,
    required BotWakeStatus botWakeStatus,
  }) async {
    try {
      final botWake = await _botApiDataSource.setBotWakeStatus(
        meetingId: meetingId,
        dto: BotWakeRequestDto(state: botWakeStatus),
      );
      return ResultOk(value: botWake);
    } catch (e) {
      return ResultNg(
        value: AppMessageCode.errorApiServerIssue(message: e.toString()),
      );
    }
  }
}
