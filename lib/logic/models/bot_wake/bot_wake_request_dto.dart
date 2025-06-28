import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koshiba_agent_app/logic/models/bot_wake/bot_wake_status.dart';

part 'bot_wake_request_dto.freezed.dart';
part 'bot_wake_request_dto.g.dart';

@freezed
abstract class BotWakeRequestDto with _$BotWakeRequestDto {
  const factory BotWakeRequestDto({required BotWakeStatus state}) =
      _BotWakeRequestDto;

  const BotWakeRequestDto._();

  factory BotWakeRequestDto.fromJson(Map<String, dynamic> json) =>
      _$BotWakeRequestDtoFromJson(json);
}
