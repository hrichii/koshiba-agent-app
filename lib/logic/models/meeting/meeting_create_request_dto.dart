import 'package:freezed_annotation/freezed_annotation.dart';

part 'meeting_create_request_dto.freezed.dart';
part 'meeting_create_request_dto.g.dart';

@freezed
abstract class MeetingCreateRequestDto with _$MeetingCreateRequestDto {
  const factory MeetingCreateRequestDto({
    required Uri url,
    @JsonKey(name: 'start_at') required DateTime? startAt,
  }) = _MeetingCreateRequestDto;

  factory MeetingCreateRequestDto.fromJson(Map<String, dynamic> json) =>
      _$MeetingCreateRequestDtoFromJson(json);
}
