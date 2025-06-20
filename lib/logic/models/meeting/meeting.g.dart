// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meeting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Meeting _$MeetingFromJson(Map<String, dynamic> json) => _Meeting(
  id: json['id'] as String,
  url: Uri.parse(json['url'] as String),
  meetingBaasId: json['meeting_baas_id'] as String,
  status: MeetingBotStatus.fromJson(json['status'] as Map<String, dynamic>),
  createdAt: const DateTimeConverter().fromJson(json['created_at'] as String),
  startAt: const DateTimeConverter().fromJson(json['start_at'] as String),
  endAt: _$JsonConverterFromJson<String, DateTime>(
    json['end_at'],
    const DateTimeConverter().fromJson,
  ),
  title: json['title'] as String?,
  description: json['description'] as String?,
);

Map<String, dynamic> _$MeetingToJson(_Meeting instance) => <String, dynamic>{
  'id': instance.id,
  'url': instance.url.toString(),
  'meeting_baas_id': instance.meetingBaasId,
  'status': instance.status.toJson(),
  'created_at': const DateTimeConverter().toJson(instance.createdAt),
  'start_at': const DateTimeConverter().toJson(instance.startAt),
  'end_at': _$JsonConverterToJson<String, DateTime>(
    instance.endAt,
    const DateTimeConverter().toJson,
  ),
  'title': instance.title,
  'description': instance.description,
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
