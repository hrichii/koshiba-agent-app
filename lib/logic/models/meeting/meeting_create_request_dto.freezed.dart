// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meeting_create_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MeetingCreateRequestDto {

 String get title; Uri get url; MeetingCreateSource get source;@DateTimeConverter()@JsonKey(name: 'start_at') DateTime? get startAt;@DateTimeConverter()@JsonKey(name: 'end_at') DateTime? get endAt; String? get description;@JsonKey(name: 'google_calendar_id') String? get googleCalendarId;
/// Create a copy of MeetingCreateRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MeetingCreateRequestDtoCopyWith<MeetingCreateRequestDto> get copyWith => _$MeetingCreateRequestDtoCopyWithImpl<MeetingCreateRequestDto>(this as MeetingCreateRequestDto, _$identity);

  /// Serializes this MeetingCreateRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeetingCreateRequestDto&&(identical(other.title, title) || other.title == title)&&(identical(other.url, url) || other.url == url)&&(identical(other.source, source) || other.source == source)&&(identical(other.startAt, startAt) || other.startAt == startAt)&&(identical(other.endAt, endAt) || other.endAt == endAt)&&(identical(other.description, description) || other.description == description)&&(identical(other.googleCalendarId, googleCalendarId) || other.googleCalendarId == googleCalendarId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,url,source,startAt,endAt,description,googleCalendarId);

@override
String toString() {
  return 'MeetingCreateRequestDto(title: $title, url: $url, source: $source, startAt: $startAt, endAt: $endAt, description: $description, googleCalendarId: $googleCalendarId)';
}


}

/// @nodoc
abstract mixin class $MeetingCreateRequestDtoCopyWith<$Res>  {
  factory $MeetingCreateRequestDtoCopyWith(MeetingCreateRequestDto value, $Res Function(MeetingCreateRequestDto) _then) = _$MeetingCreateRequestDtoCopyWithImpl;
@useResult
$Res call({
 String title, Uri url, MeetingCreateSource source,@DateTimeConverter()@JsonKey(name: 'start_at') DateTime? startAt,@DateTimeConverter()@JsonKey(name: 'end_at') DateTime? endAt, String? description,@JsonKey(name: 'google_calendar_id') String? googleCalendarId
});




}
/// @nodoc
class _$MeetingCreateRequestDtoCopyWithImpl<$Res>
    implements $MeetingCreateRequestDtoCopyWith<$Res> {
  _$MeetingCreateRequestDtoCopyWithImpl(this._self, this._then);

  final MeetingCreateRequestDto _self;
  final $Res Function(MeetingCreateRequestDto) _then;

/// Create a copy of MeetingCreateRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? url = null,Object? source = null,Object? startAt = freezed,Object? endAt = freezed,Object? description = freezed,Object? googleCalendarId = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as Uri,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as MeetingCreateSource,startAt: freezed == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as DateTime?,endAt: freezed == endAt ? _self.endAt : endAt // ignore: cast_nullable_to_non_nullable
as DateTime?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,googleCalendarId: freezed == googleCalendarId ? _self.googleCalendarId : googleCalendarId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _MeetingCreateRequestDto extends MeetingCreateRequestDto {
  const _MeetingCreateRequestDto({required this.title, required this.url, required this.source, @DateTimeConverter()@JsonKey(name: 'start_at') required this.startAt, @DateTimeConverter()@JsonKey(name: 'end_at') required this.endAt, required this.description, @JsonKey(name: 'google_calendar_id') required this.googleCalendarId}): super._();
  factory _MeetingCreateRequestDto.fromJson(Map<String, dynamic> json) => _$MeetingCreateRequestDtoFromJson(json);

@override final  String title;
@override final  Uri url;
@override final  MeetingCreateSource source;
@override@DateTimeConverter()@JsonKey(name: 'start_at') final  DateTime? startAt;
@override@DateTimeConverter()@JsonKey(name: 'end_at') final  DateTime? endAt;
@override final  String? description;
@override@JsonKey(name: 'google_calendar_id') final  String? googleCalendarId;

/// Create a copy of MeetingCreateRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MeetingCreateRequestDtoCopyWith<_MeetingCreateRequestDto> get copyWith => __$MeetingCreateRequestDtoCopyWithImpl<_MeetingCreateRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MeetingCreateRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MeetingCreateRequestDto&&(identical(other.title, title) || other.title == title)&&(identical(other.url, url) || other.url == url)&&(identical(other.source, source) || other.source == source)&&(identical(other.startAt, startAt) || other.startAt == startAt)&&(identical(other.endAt, endAt) || other.endAt == endAt)&&(identical(other.description, description) || other.description == description)&&(identical(other.googleCalendarId, googleCalendarId) || other.googleCalendarId == googleCalendarId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,url,source,startAt,endAt,description,googleCalendarId);

@override
String toString() {
  return 'MeetingCreateRequestDto(title: $title, url: $url, source: $source, startAt: $startAt, endAt: $endAt, description: $description, googleCalendarId: $googleCalendarId)';
}


}

/// @nodoc
abstract mixin class _$MeetingCreateRequestDtoCopyWith<$Res> implements $MeetingCreateRequestDtoCopyWith<$Res> {
  factory _$MeetingCreateRequestDtoCopyWith(_MeetingCreateRequestDto value, $Res Function(_MeetingCreateRequestDto) _then) = __$MeetingCreateRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String title, Uri url, MeetingCreateSource source,@DateTimeConverter()@JsonKey(name: 'start_at') DateTime? startAt,@DateTimeConverter()@JsonKey(name: 'end_at') DateTime? endAt, String? description,@JsonKey(name: 'google_calendar_id') String? googleCalendarId
});




}
/// @nodoc
class __$MeetingCreateRequestDtoCopyWithImpl<$Res>
    implements _$MeetingCreateRequestDtoCopyWith<$Res> {
  __$MeetingCreateRequestDtoCopyWithImpl(this._self, this._then);

  final _MeetingCreateRequestDto _self;
  final $Res Function(_MeetingCreateRequestDto) _then;

/// Create a copy of MeetingCreateRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? url = null,Object? source = null,Object? startAt = freezed,Object? endAt = freezed,Object? description = freezed,Object? googleCalendarId = freezed,}) {
  return _then(_MeetingCreateRequestDto(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as Uri,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as MeetingCreateSource,startAt: freezed == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as DateTime?,endAt: freezed == endAt ? _self.endAt : endAt // ignore: cast_nullable_to_non_nullable
as DateTime?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,googleCalendarId: freezed == googleCalendarId ? _self.googleCalendarId : googleCalendarId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
