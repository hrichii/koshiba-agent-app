// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ScheduleResponseDto {

@JsonKey(name: 'data') List<Schedule> get data;@JsonKey(name: 'previous_page_token') String? get previousPageToken;@JsonKey(name: 'next_page_token') String? get nextPageToken;
/// Create a copy of ScheduleResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScheduleResponseDtoCopyWith<ScheduleResponseDto> get copyWith => _$ScheduleResponseDtoCopyWithImpl<ScheduleResponseDto>(this as ScheduleResponseDto, _$identity);

  /// Serializes this ScheduleResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScheduleResponseDto&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.previousPageToken, previousPageToken) || other.previousPageToken == previousPageToken)&&(identical(other.nextPageToken, nextPageToken) || other.nextPageToken == nextPageToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),previousPageToken,nextPageToken);

@override
String toString() {
  return 'ScheduleResponseDto(data: $data, previousPageToken: $previousPageToken, nextPageToken: $nextPageToken)';
}


}

/// @nodoc
abstract mixin class $ScheduleResponseDtoCopyWith<$Res>  {
  factory $ScheduleResponseDtoCopyWith(ScheduleResponseDto value, $Res Function(ScheduleResponseDto) _then) = _$ScheduleResponseDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'data') List<Schedule> data,@JsonKey(name: 'previous_page_token') String? previousPageToken,@JsonKey(name: 'next_page_token') String? nextPageToken
});




}
/// @nodoc
class _$ScheduleResponseDtoCopyWithImpl<$Res>
    implements $ScheduleResponseDtoCopyWith<$Res> {
  _$ScheduleResponseDtoCopyWithImpl(this._self, this._then);

  final ScheduleResponseDto _self;
  final $Res Function(ScheduleResponseDto) _then;

/// Create a copy of ScheduleResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? previousPageToken = freezed,Object? nextPageToken = freezed,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<Schedule>,previousPageToken: freezed == previousPageToken ? _self.previousPageToken : previousPageToken // ignore: cast_nullable_to_non_nullable
as String?,nextPageToken: freezed == nextPageToken ? _self.nextPageToken : nextPageToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ScheduleResponseDto implements ScheduleResponseDto {
  const _ScheduleResponseDto({@JsonKey(name: 'data') required final  List<Schedule> data, @JsonKey(name: 'previous_page_token') this.previousPageToken, @JsonKey(name: 'next_page_token') this.nextPageToken}): _data = data;
  factory _ScheduleResponseDto.fromJson(Map<String, dynamic> json) => _$ScheduleResponseDtoFromJson(json);

 final  List<Schedule> _data;
@override@JsonKey(name: 'data') List<Schedule> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override@JsonKey(name: 'previous_page_token') final  String? previousPageToken;
@override@JsonKey(name: 'next_page_token') final  String? nextPageToken;

/// Create a copy of ScheduleResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScheduleResponseDtoCopyWith<_ScheduleResponseDto> get copyWith => __$ScheduleResponseDtoCopyWithImpl<_ScheduleResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScheduleResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScheduleResponseDto&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.previousPageToken, previousPageToken) || other.previousPageToken == previousPageToken)&&(identical(other.nextPageToken, nextPageToken) || other.nextPageToken == nextPageToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),previousPageToken,nextPageToken);

@override
String toString() {
  return 'ScheduleResponseDto(data: $data, previousPageToken: $previousPageToken, nextPageToken: $nextPageToken)';
}


}

/// @nodoc
abstract mixin class _$ScheduleResponseDtoCopyWith<$Res> implements $ScheduleResponseDtoCopyWith<$Res> {
  factory _$ScheduleResponseDtoCopyWith(_ScheduleResponseDto value, $Res Function(_ScheduleResponseDto) _then) = __$ScheduleResponseDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'data') List<Schedule> data,@JsonKey(name: 'previous_page_token') String? previousPageToken,@JsonKey(name: 'next_page_token') String? nextPageToken
});




}
/// @nodoc
class __$ScheduleResponseDtoCopyWithImpl<$Res>
    implements _$ScheduleResponseDtoCopyWith<$Res> {
  __$ScheduleResponseDtoCopyWithImpl(this._self, this._then);

  final _ScheduleResponseDto _self;
  final $Res Function(_ScheduleResponseDto) _then;

/// Create a copy of ScheduleResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? previousPageToken = freezed,Object? nextPageToken = freezed,}) {
  return _then(_ScheduleResponseDto(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<Schedule>,previousPageToken: freezed == previousPageToken ? _self.previousPageToken : previousPageToken // ignore: cast_nullable_to_non_nullable
as String?,nextPageToken: freezed == nextPageToken ? _self.nextPageToken : nextPageToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
