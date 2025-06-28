import 'package:freezed_annotation/freezed_annotation.dart';

enum BotWakeStatus {
  @JsonValue('IDLE')
  idle,
  @JsonValue('ACTIVE')
  active,
}
