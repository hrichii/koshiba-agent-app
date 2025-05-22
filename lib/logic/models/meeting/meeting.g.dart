// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meeting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Meeting _$MeetingFromJson(Map<String, dynamic> json) => _Meeting(
      uri: json['uri'] as String?,
      startedAt: json['startedAt'] == null
          ? null
          : DateTime.parse(json['startedAt'] as String),
    );

Map<String, dynamic> _$MeetingToJson(_Meeting instance) => <String, dynamic>{
      'uri': instance.uri,
      'startedAt': instance.startedAt?.toIso8601String(),
    };
