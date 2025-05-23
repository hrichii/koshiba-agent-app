// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meeting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Meeting _$MeetingFromJson(Map<String, dynamic> json) => _Meeting(
      id: json['id'] as String?,
      url: json['url'] == null ? null : Uri.parse(json['url'] as String),
      deployStatus: $enumDecode(_$DeployStatusEnumMap, json['deploy_status']),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      startAt: json['start_at'] == null
          ? null
          : DateTime.parse(json['start_at'] as String),
      completedAt: json['completed_at'] == null
          ? null
          : DateTime.parse(json['completed_at'] as String),
    );

Map<String, dynamic> _$MeetingToJson(_Meeting instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url?.toString(),
      'deploy_status': _$DeployStatusEnumMap[instance.deployStatus]!,
      'created_at': instance.createdAt?.toIso8601String(),
      'start_at': instance.startAt?.toIso8601String(),
      'completed_at': instance.completedAt?.toIso8601String(),
    };

const _$DeployStatusEnumMap = {
  DeployStatus.initialized: 'initialized',
  DeployStatus.deploying: 'deploying',
  DeployStatus.running: 'running',
  DeployStatus.failed: 'failed',
  DeployStatus.terminating: 'terminating',
  DeployStatus.notFound: 'not_found',
  DeployStatus.unknown: 'unknown',
};
