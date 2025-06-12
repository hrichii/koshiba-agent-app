// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meeting_update_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MeetingUpdateRequestDto {

@JsonKey(name: 'start_at') DateTime? get startAt; String? get url;
/// Create a copy of MeetingUpdateRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MeetingUpdateRequestDtoCopyWith<MeetingUpdateRequestDto> get copyWith => _$MeetingUpdateRequestDtoCopyWithImpl<MeetingUpdateRequestDto>(this as MeetingUpdateRequestDto, _$identity);

  /// Serializes this MeetingUpdateRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeetingUpdateRequestDto&&(identical(other.startAt, startAt) || other.startAt == startAt)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,startAt,url);

@override
String toString() {
  return 'MeetingUpdateRequestDto(startAt: $startAt, url: $url)';
}


}

/// @nodoc
abstract mixin class $MeetingUpdateRequestDtoCopyWith<$Res>  {
  factory $MeetingUpdateRequestDtoCopyWith(MeetingUpdateRequestDto value, $Res Function(MeetingUpdateRequestDto) _then) = _$MeetingUpdateRequestDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'start_at') DateTime? startAt, String? url
});




}
/// @nodoc
class _$MeetingUpdateRequestDtoCopyWithImpl<$Res>
    implements $MeetingUpdateRequestDtoCopyWith<$Res> {
  _$MeetingUpdateRequestDtoCopyWithImpl(this._self, this._then);

  final MeetingUpdateRequestDto _self;
  final $Res Function(MeetingUpdateRequestDto) _then;

/// Create a copy of MeetingUpdateRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? startAt = freezed,Object? url = freezed,}) {
  return _then(_self.copyWith(
startAt: freezed == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as DateTime?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _MeetingUpdateRequestDto implements MeetingUpdateRequestDto {
  const _MeetingUpdateRequestDto({@JsonKey(name: 'start_at') this.startAt, this.url});
  factory _MeetingUpdateRequestDto.fromJson(Map<String, dynamic> json) => _$MeetingUpdateRequestDtoFromJson(json);

@override@JsonKey(name: 'start_at') final  DateTime? startAt;
@override final  String? url;

/// Create a copy of MeetingUpdateRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MeetingUpdateRequestDtoCopyWith<_MeetingUpdateRequestDto> get copyWith => __$MeetingUpdateRequestDtoCopyWithImpl<_MeetingUpdateRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MeetingUpdateRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MeetingUpdateRequestDto&&(identical(other.startAt, startAt) || other.startAt == startAt)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,startAt,url);

@override
String toString() {
  return 'MeetingUpdateRequestDto(startAt: $startAt, url: $url)';
}


}

/// @nodoc
abstract mixin class _$MeetingUpdateRequestDtoCopyWith<$Res> implements $MeetingUpdateRequestDtoCopyWith<$Res> {
  factory _$MeetingUpdateRequestDtoCopyWith(_MeetingUpdateRequestDto value, $Res Function(_MeetingUpdateRequestDto) _then) = __$MeetingUpdateRequestDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'start_at') DateTime? startAt, String? url
});




}
/// @nodoc
class __$MeetingUpdateRequestDtoCopyWithImpl<$Res>
    implements _$MeetingUpdateRequestDtoCopyWith<$Res> {
  __$MeetingUpdateRequestDtoCopyWithImpl(this._self, this._then);

  final _MeetingUpdateRequestDto _self;
  final $Res Function(_MeetingUpdateRequestDto) _then;

/// Create a copy of MeetingUpdateRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? startAt = freezed,Object? url = freezed,}) {
  return _then(_MeetingUpdateRequestDto(
startAt: freezed == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as DateTime?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
