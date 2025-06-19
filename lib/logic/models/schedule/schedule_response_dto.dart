import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koshiba_agent_app/logic/models/schedule/schedule.dart';

part 'schedule_response_dto.freezed.dart';
part 'schedule_response_dto.g.dart';

@freezed
abstract class ScheduleResponseDto with _$ScheduleResponseDto {
  const factory ScheduleResponseDto({
    @JsonKey(name: 'data') required List<Schedule> data,
    @JsonKey(name: 'previous_page_token') String? previousPageToken,
    @JsonKey(name: 'next_page_token') String? nextPageToken,
  }) = _ScheduleResponseDto;

  factory ScheduleResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ScheduleResponseDtoFromJson(json);
}
