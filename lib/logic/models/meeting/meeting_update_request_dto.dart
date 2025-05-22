import 'package:freezed_annotation/freezed_annotation.dart';

part 'meeting_update_request_dto.freezed.dart';
part 'meeting_update_request_dto.g.dart';

@freezed
abstract class MeetingUpdateRequestDto with _$MeetingUpdateRequestDto {
  const factory MeetingUpdateRequestDto({
    @JsonKey(name: 'start_at') DateTime? startAt,
    String? url,
  }) = _MeetingUpdateRequestDto;

  factory MeetingUpdateRequestDto.fromJson(Map<String, dynamic> json) =>
      _$MeetingUpdateRequestDtoFromJson(json);
}
