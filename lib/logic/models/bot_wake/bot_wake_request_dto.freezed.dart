// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bot_wake_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BotWakeRequestDto {

 BotWakeStatus get state;
/// Create a copy of BotWakeRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BotWakeRequestDtoCopyWith<BotWakeRequestDto> get copyWith => _$BotWakeRequestDtoCopyWithImpl<BotWakeRequestDto>(this as BotWakeRequestDto, _$identity);

  /// Serializes this BotWakeRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BotWakeRequestDto&&(identical(other.state, state) || other.state == state));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,state);

@override
String toString() {
  return 'BotWakeRequestDto(state: $state)';
}


}

/// @nodoc
abstract mixin class $BotWakeRequestDtoCopyWith<$Res>  {
  factory $BotWakeRequestDtoCopyWith(BotWakeRequestDto value, $Res Function(BotWakeRequestDto) _then) = _$BotWakeRequestDtoCopyWithImpl;
@useResult
$Res call({
 BotWakeStatus state
});




}
/// @nodoc
class _$BotWakeRequestDtoCopyWithImpl<$Res>
    implements $BotWakeRequestDtoCopyWith<$Res> {
  _$BotWakeRequestDtoCopyWithImpl(this._self, this._then);

  final BotWakeRequestDto _self;
  final $Res Function(BotWakeRequestDto) _then;

/// Create a copy of BotWakeRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? state = null,}) {
  return _then(_self.copyWith(
state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as BotWakeStatus,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _BotWakeRequestDto extends BotWakeRequestDto {
  const _BotWakeRequestDto({required this.state}): super._();
  factory _BotWakeRequestDto.fromJson(Map<String, dynamic> json) => _$BotWakeRequestDtoFromJson(json);

@override final  BotWakeStatus state;

/// Create a copy of BotWakeRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BotWakeRequestDtoCopyWith<_BotWakeRequestDto> get copyWith => __$BotWakeRequestDtoCopyWithImpl<_BotWakeRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BotWakeRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BotWakeRequestDto&&(identical(other.state, state) || other.state == state));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,state);

@override
String toString() {
  return 'BotWakeRequestDto(state: $state)';
}


}

/// @nodoc
abstract mixin class _$BotWakeRequestDtoCopyWith<$Res> implements $BotWakeRequestDtoCopyWith<$Res> {
  factory _$BotWakeRequestDtoCopyWith(_BotWakeRequestDto value, $Res Function(_BotWakeRequestDto) _then) = __$BotWakeRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 BotWakeStatus state
});




}
/// @nodoc
class __$BotWakeRequestDtoCopyWithImpl<$Res>
    implements _$BotWakeRequestDtoCopyWith<$Res> {
  __$BotWakeRequestDtoCopyWithImpl(this._self, this._then);

  final _BotWakeRequestDto _self;
  final $Res Function(_BotWakeRequestDto) _then;

/// Create a copy of BotWakeRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? state = null,}) {
  return _then(_BotWakeRequestDto(
state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as BotWakeStatus,
  ));
}


}

// dart format on
