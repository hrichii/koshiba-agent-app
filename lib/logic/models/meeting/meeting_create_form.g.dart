// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meeting_create_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MeetingCreateForm _$MeetingCreateFormFromJson(Map<String, dynamic> json) =>
    _MeetingCreateForm(
      uri: json['url'] as String?,
      startAt: json['start_at'] == null
          ? null
          : DateTime.parse(json['start_at'] as String),
    );

Map<String, dynamic> _$MeetingCreateFormToJson(_MeetingCreateForm instance) =>
    <String, dynamic>{
      'url': instance.uri,
      'start_at': instance.startAt?.toIso8601String(),
    };
