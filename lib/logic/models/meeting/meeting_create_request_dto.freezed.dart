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

 Uri get url;@JsonKey(name: 'start_at') DateTime? get startAt;@JsonKey(name: 'google_calendar_id') String? get googleCalendarId; MeetingCreateSource get source;
/// Create a copy of MeetingCreateRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MeetingCreateRequestDtoCopyWith<MeetingCreateRequestDto> get copyWith => _$MeetingCreateRequestDtoCopyWithImpl<MeetingCreateRequestDto>(this as MeetingCreateRequestDto, _$identity);

  /// Serializes this MeetingCreateRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeetingCreateRequestDto&&(identical(other.url, url) || other.url == url)&&(identical(other.startAt, startAt) || other.startAt == startAt)&&(identical(other.googleCalendarId, googleCalendarId) || other.googleCalendarId == googleCalendarId)&&(identical(other.source, source) || other.source == source));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,startAt,googleCalendarId,source);

@override
String toString() {
  return 'MeetingCreateRequestDto(url: $url, startAt: $startAt, googleCalendarId: $googleCalendarId, source: $source)';
}


}

/// @nodoc
abstract mixin class $MeetingCreateRequestDtoCopyWith<$Res>  {
  factory $MeetingCreateRequestDtoCopyWith(MeetingCreateRequestDto value, $Res Function(MeetingCreateRequestDto) _then) = _$MeetingCreateRequestDtoCopyWithImpl;
@useResult
$Res call({
 Uri url,@JsonKey(name: 'start_at') DateTime? startAt,@JsonKey(name: 'google_calendar_id') String? googleCalendarId, MeetingCreateSource source
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
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,Object? startAt = freezed,Object? googleCalendarId = freezed,Object? source = null,}) {
  return _then(_self.copyWith(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as Uri,startAt: freezed == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as DateTime?,googleCalendarId: freezed == googleCalendarId ? _self.googleCalendarId : googleCalendarId // ignore: cast_nullable_to_non_nullable
as String?,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as MeetingCreateSource,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _MeetingCreateRequestDto implements MeetingCreateRequestDto {
  const _MeetingCreateRequestDto({required this.url, @JsonKey(name: 'start_at') required this.startAt, @JsonKey(name: 'google_calendar_id') this.googleCalendarId, required this.source});
  factory _MeetingCreateRequestDto.fromJson(Map<String, dynamic> json) => _$MeetingCreateRequestDtoFromJson(json);

@override final  Uri url;
@override@JsonKey(name: 'start_at') final  DateTime? startAt;
@override@JsonKey(name: 'google_calendar_id') final  String? googleCalendarId;
@override final  MeetingCreateSource source;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MeetingCreateRequestDto&&(identical(other.url, url) || other.url == url)&&(identical(other.startAt, startAt) || other.startAt == startAt)&&(identical(other.googleCalendarId, googleCalendarId) || other.googleCalendarId == googleCalendarId)&&(identical(other.source, source) || other.source == source));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,startAt,googleCalendarId,source);

@override
String toString() {
  return 'MeetingCreateRequestDto(url: $url, startAt: $startAt, googleCalendarId: $googleCalendarId, source: $source)';
}


}

/// @nodoc
abstract mixin class _$MeetingCreateRequestDtoCopyWith<$Res> implements $MeetingCreateRequestDtoCopyWith<$Res> {
  factory _$MeetingCreateRequestDtoCopyWith(_MeetingCreateRequestDto value, $Res Function(_MeetingCreateRequestDto) _then) = __$MeetingCreateRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 Uri url,@JsonKey(name: 'start_at') DateTime? startAt,@JsonKey(name: 'google_calendar_id') String? googleCalendarId, MeetingCreateSource source
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
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,Object? startAt = freezed,Object? googleCalendarId = freezed,Object? source = null,}) {
  return _then(_MeetingCreateRequestDto(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as Uri,startAt: freezed == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as DateTime?,googleCalendarId: freezed == googleCalendarId ? _self.googleCalendarId : googleCalendarId // ignore: cast_nullable_to_non_nullable
as String?,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as MeetingCreateSource,
  ));
}


}

// dart format on
