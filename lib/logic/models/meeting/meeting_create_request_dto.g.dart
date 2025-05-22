// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meeting_create_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MeetingCreateRequestDto _$MeetingCreateRequestDtoFromJson(
        Map<String, dynamic> json) =>
    _MeetingCreateRequestDto(
      url: Uri.parse(json['url'] as String),
      startedAt: DateTime.parse(json['started_at'] as String),
    );

Map<String, dynamic> _$MeetingCreateRequestDtoToJson(
        _MeetingCreateRequestDto instance) =>
    <String, dynamic>{
      'url': instance.url.toString(),
      'started_at': instance.startedAt.toIso8601String(),
    };
