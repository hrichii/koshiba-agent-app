// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ScheduleResponseDto _$ScheduleResponseDtoFromJson(Map<String, dynamic> json) =>
    _ScheduleResponseDto(
      data: (json['data'] as List<dynamic>)
          .map((e) => Schedule.fromJson(e as Map<String, dynamic>))
          .toList(),
      previousPageToken: json['previous_page_token'] as String?,
      nextPageToken: json['next_page_token'] as String?,
    );

Map<String, dynamic> _$ScheduleResponseDtoToJson(
  _ScheduleResponseDto instance,
) => <String, dynamic>{
  'data': instance.data.map((e) => e.toJson()).toList(),
  'previous_page_token': instance.previousPageToken,
  'next_page_token': instance.nextPageToken,
};
