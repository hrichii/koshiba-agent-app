// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bot_wake.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BotWake {

@JsonKey(name: 'client_id') String? get meetingId; BotWakeStatus? get state;@JsonKey(name: 'old_state') BotWakeStatus? get oldState;@JsonKey(name: 'new_state') BotWakeStatus? get newState;
/// Create a copy of BotWake
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BotWakeCopyWith<BotWake> get copyWith => _$BotWakeCopyWithImpl<BotWake>(this as BotWake, _$identity);

  /// Serializes this BotWake to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BotWake&&(identical(other.meetingId, meetingId) || other.meetingId == meetingId)&&(identical(other.state, state) || other.state == state)&&(identical(other.oldState, oldState) || other.oldState == oldState)&&(identical(other.newState, newState) || other.newState == newState));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,meetingId,state,oldState,newState);

@override
String toString() {
  return 'BotWake(meetingId: $meetingId, state: $state, oldState: $oldState, newState: $newState)';
}


}

/// @nodoc
abstract mixin class $BotWakeCopyWith<$Res>  {
  factory $BotWakeCopyWith(BotWake value, $Res Function(BotWake) _then) = _$BotWakeCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'client_id') String? meetingId, BotWakeStatus? state,@JsonKey(name: 'old_state') BotWakeStatus? oldState,@JsonKey(name: 'new_state') BotWakeStatus? newState
});




}
/// @nodoc
class _$BotWakeCopyWithImpl<$Res>
    implements $BotWakeCopyWith<$Res> {
  _$BotWakeCopyWithImpl(this._self, this._then);

  final BotWake _self;
  final $Res Function(BotWake) _then;

/// Create a copy of BotWake
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? meetingId = freezed,Object? state = freezed,Object? oldState = freezed,Object? newState = freezed,}) {
  return _then(_self.copyWith(
meetingId: freezed == meetingId ? _self.meetingId : meetingId // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as BotWakeStatus?,oldState: freezed == oldState ? _self.oldState : oldState // ignore: cast_nullable_to_non_nullable
as BotWakeStatus?,newState: freezed == newState ? _self.newState : newState // ignore: cast_nullable_to_non_nullable
as BotWakeStatus?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _BotWake extends BotWake {
  const _BotWake({@JsonKey(name: 'client_id') this.meetingId, this.state, @JsonKey(name: 'old_state') this.oldState, @JsonKey(name: 'new_state') this.newState}): super._();
  factory _BotWake.fromJson(Map<String, dynamic> json) => _$BotWakeFromJson(json);

@override@JsonKey(name: 'client_id') final  String? meetingId;
@override final  BotWakeStatus? state;
@override@JsonKey(name: 'old_state') final  BotWakeStatus? oldState;
@override@JsonKey(name: 'new_state') final  BotWakeStatus? newState;

/// Create a copy of BotWake
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BotWakeCopyWith<_BotWake> get copyWith => __$BotWakeCopyWithImpl<_BotWake>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BotWakeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BotWake&&(identical(other.meetingId, meetingId) || other.meetingId == meetingId)&&(identical(other.state, state) || other.state == state)&&(identical(other.oldState, oldState) || other.oldState == oldState)&&(identical(other.newState, newState) || other.newState == newState));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,meetingId,state,oldState,newState);

@override
String toString() {
  return 'BotWake(meetingId: $meetingId, state: $state, oldState: $oldState, newState: $newState)';
}


}

/// @nodoc
abstract mixin class _$BotWakeCopyWith<$Res> implements $BotWakeCopyWith<$Res> {
  factory _$BotWakeCopyWith(_BotWake value, $Res Function(_BotWake) _then) = __$BotWakeCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'client_id') String? meetingId, BotWakeStatus? state,@JsonKey(name: 'old_state') BotWakeStatus? oldState,@JsonKey(name: 'new_state') BotWakeStatus? newState
});




}
/// @nodoc
class __$BotWakeCopyWithImpl<$Res>
    implements _$BotWakeCopyWith<$Res> {
  __$BotWakeCopyWithImpl(this._self, this._then);

  final _BotWake _self;
  final $Res Function(_BotWake) _then;

/// Create a copy of BotWake
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? meetingId = freezed,Object? state = freezed,Object? oldState = freezed,Object? newState = freezed,}) {
  return _then(_BotWake(
meetingId: freezed == meetingId ? _self.meetingId : meetingId // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as BotWakeStatus?,oldState: freezed == oldState ? _self.oldState : oldState // ignore: cast_nullable_to_non_nullable
as BotWakeStatus?,newState: freezed == newState ? _self.newState : newState // ignore: cast_nullable_to_non_nullable
as BotWakeStatus?,
  ));
}


}

// dart format on
