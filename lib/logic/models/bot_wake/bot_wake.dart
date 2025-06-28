import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koshiba_agent_app/logic/models/bot_wake/bot_wake_status.dart';

part 'bot_wake.freezed.dart';
part 'bot_wake.g.dart';

@freezed
abstract class BotWake with _$BotWake {
  const factory BotWake({
    @JsonKey(name: 'client_id') String? meetingId,
    BotWakeStatus? state,
    @JsonKey(name: 'old_state') BotWakeStatus? oldState,
    @JsonKey(name: 'new_state') BotWakeStatus? newState,
  }) = _BotWake;

  const BotWake._();

  factory BotWake.fromJson(Map<String, dynamic> json) =>
      _$BotWakeFromJson(json);
}
