// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meeting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Meeting _$MeetingFromJson(Map<String, dynamic> json) => _Meeting(
      id: json['id'] as String,
      url: Uri.parse(json['url'] as String),
      createdAt:
          const DateTimeConverter().fromJson(json['created_at'] as String),
      startAt: const DateTimeConverter().fromJson(json['start_at'] as String),
      meetingBaasId: json['meeting_baas_id'] as String,
      status: MeetingBotStatus.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MeetingToJson(_Meeting instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url.toString(),
      'created_at': const DateTimeConverter().toJson(instance.createdAt),
      'start_at': const DateTimeConverter().toJson(instance.startAt),
      'meeting_baas_id': instance.meetingBaasId,
      'status': instance.status.toJson(),
    };
