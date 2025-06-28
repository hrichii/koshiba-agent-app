import 'package:koshiba_agent_app/data/repositories/bot_wake_repository.dart';
import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/bot_wake/bot_wake.dart';
import 'package:koshiba_agent_app/logic/models/bot_wake/bot_wake_status.dart';
import 'package:koshiba_agent_app/logic/models/resource/resource.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:koshiba_agent_app/logic/usecases/bot/bot_repository_interface.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bot_wake_use_case.g.dart';

@riverpod
class BotWakeUseCase extends _$BotWakeUseCase {
  BotWakeRepositoryInterface get _botWakeRepository =>
      ref.read(botWakeRepositoryProvider);

  @override
  Resource<bool> build() => const ResourceInProgress<bool>();

  /// ボットのウェイクステータスを取得する
  Future<Result<bool, AppMessageCode>> getBotWake({
    required String? meetingId,
  }) async {
    if (meetingId == null) {
      state = const ResourceError(value: AppMessageCode.errorApiNotFound());
      return const ResultNg<bool, AppMessageCode>(
        value: AppMessageCode.errorApiNotFound(),
      );
    }

    final result = await _botWakeRepository.getBotWake(meetingId: meetingId);
    switch (result) {
      case ResultOk<BotWake, AppMessageCode>(:final value):
        bool isActive = false;
        if (value.state != null) {
          isActive = value.state == BotWakeStatus.active;
        } else if (value.newState != null) {
          isActive = value.newState == BotWakeStatus.active;
        }
        state = ResourceDone<bool>(value: isActive);
        return ResultOk<bool, AppMessageCode>(value: isActive);
      case ResultNg<BotWake, AppMessageCode>(:final value):
        state = ResourceError<bool>(value: value);
        return ResultNg<bool, AppMessageCode>(value: value);
    }
  }

  /// ボットのウェイクステータスを設定する
  Future<Result<bool, AppMessageCode>> _setBotWake({
    required String meetingId,
    required BotWakeStatus botWakeStatus,
  }) async {
    state = const ResourceInProgress<bool>();
    final result = await _botWakeRepository.setBotWake(
      meetingId: meetingId,
      botWakeStatus: botWakeStatus,
    );
    switch (result) {
      case ResultOk<BotWake, AppMessageCode>(:final value):
        bool isActive = false;
        if (value.state != null) {
          isActive = value.state == BotWakeStatus.active;
        } else if (value.newState != null) {
          isActive = value.newState == BotWakeStatus.active;
        }
        state = ResourceDone<bool>(value: isActive);
        return ResultOk<bool, AppMessageCode>(value: isActive);
      case ResultNg<BotWake, AppMessageCode>(:final value):
        state = ResourceError<bool>(value: value);
        return ResultNg<bool, AppMessageCode>(value: value);
    }
  }

  /// ボットをアクティブ状態にする
  Future<Result<bool, AppMessageCode>> activateBot({
    required String meetingId,
  }) async =>
      _setBotWake(meetingId: meetingId, botWakeStatus: BotWakeStatus.active);

  /// ボットをアイドル状態にする
  Future<Result<bool, AppMessageCode>> idleBot({
    required String meetingId,
  }) async =>
      _setBotWake(meetingId: meetingId, botWakeStatus: BotWakeStatus.idle);
}
