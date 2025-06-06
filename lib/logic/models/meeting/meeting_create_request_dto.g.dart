// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meeting_create_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MeetingCreateRequestDto _$MeetingCreateRequestDtoFromJson(
        Map<String, dynamic> json) =>
    _MeetingCreateRequestDto(
      url: Uri.parse(json['url'] as String),
      startAt: json['start_at'] == null
          ? null
          : DateTime.parse(json['start_at'] as String),
    );

Map<String, dynamic> _$MeetingCreateRequestDtoToJson(
        _MeetingCreateRequestDto instance) =>
    <String, dynamic>{
      'url': instance.url.toString(),
      'start_at': instance.startAt?.toIso8601String(),
    };
