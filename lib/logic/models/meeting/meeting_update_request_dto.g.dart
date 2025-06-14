// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meeting_update_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MeetingUpdateRequestDto _$MeetingUpdateRequestDtoFromJson(
  Map<String, dynamic> json,
) =>
    _MeetingUpdateRequestDto(
      startAt: json['start_at'] == null
          ? null
          : DateTime.parse(json['start_at'] as String),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$MeetingUpdateRequestDtoToJson(
  _MeetingUpdateRequestDto instance,
) =>
    <String, dynamic>{
      'start_at': instance.startAt?.toIso8601String(),
      'url': instance.url,
    };
