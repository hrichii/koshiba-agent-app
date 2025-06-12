// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meeting_schedule_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MeetingScheduleForm {

@JsonKey(name: 'url')@RfControl(validators: AppValidation.meetingUri) String? get uri;@JsonKey(name: 'start_at')@RfControl(validators: AppValidation.meetingStartAt) DateTime? get startAt;
/// Create a copy of MeetingScheduleForm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MeetingScheduleFormCopyWith<MeetingScheduleForm> get copyWith => _$MeetingScheduleFormCopyWithImpl<MeetingScheduleForm>(this as MeetingScheduleForm, _$identity);

  /// Serializes this MeetingScheduleForm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeetingScheduleForm&&(identical(other.uri, uri) || other.uri == uri)&&(identical(other.startAt, startAt) || other.startAt == startAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uri,startAt);

@override
String toString() {
  return 'MeetingScheduleForm(uri: $uri, startAt: $startAt)';
}


}

/// @nodoc
abstract mixin class $MeetingScheduleFormCopyWith<$Res>  {
  factory $MeetingScheduleFormCopyWith(MeetingScheduleForm value, $Res Function(MeetingScheduleForm) _then) = _$MeetingScheduleFormCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'url')@RfControl(validators: AppValidation.meetingUri) String? uri,@JsonKey(name: 'start_at')@RfControl(validators: AppValidation.meetingStartAt) DateTime? startAt
});




}
/// @nodoc
class _$MeetingScheduleFormCopyWithImpl<$Res>
    implements $MeetingScheduleFormCopyWith<$Res> {
  _$MeetingScheduleFormCopyWithImpl(this._self, this._then);

  final MeetingScheduleForm _self;
  final $Res Function(MeetingScheduleForm) _then;

/// Create a copy of MeetingScheduleForm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uri = freezed,Object? startAt = freezed,}) {
  return _then(_self.copyWith(
uri: freezed == uri ? _self.uri : uri // ignore: cast_nullable_to_non_nullable
as String?,startAt: freezed == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _MeetingScheduleForm extends MeetingScheduleForm {
  const _MeetingScheduleForm({@JsonKey(name: 'url')@RfControl(validators: AppValidation.meetingUri) this.uri, @JsonKey(name: 'start_at')@RfControl(validators: AppValidation.meetingStartAt) this.startAt}): super._();
  factory _MeetingScheduleForm.fromJson(Map<String, dynamic> json) => _$MeetingScheduleFormFromJson(json);

@override@JsonKey(name: 'url')@RfControl(validators: AppValidation.meetingUri) final  String? uri;
@override@JsonKey(name: 'start_at')@RfControl(validators: AppValidation.meetingStartAt) final  DateTime? startAt;

/// Create a copy of MeetingScheduleForm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MeetingScheduleFormCopyWith<_MeetingScheduleForm> get copyWith => __$MeetingScheduleFormCopyWithImpl<_MeetingScheduleForm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MeetingScheduleFormToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MeetingScheduleForm&&(identical(other.uri, uri) || other.uri == uri)&&(identical(other.startAt, startAt) || other.startAt == startAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uri,startAt);

@override
String toString() {
  return 'MeetingScheduleForm(uri: $uri, startAt: $startAt)';
}


}

/// @nodoc
abstract mixin class _$MeetingScheduleFormCopyWith<$Res> implements $MeetingScheduleFormCopyWith<$Res> {
  factory _$MeetingScheduleFormCopyWith(_MeetingScheduleForm value, $Res Function(_MeetingScheduleForm) _then) = __$MeetingScheduleFormCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'url')@RfControl(validators: AppValidation.meetingUri) String? uri,@JsonKey(name: 'start_at')@RfControl(validators: AppValidation.meetingStartAt) DateTime? startAt
});




}
/// @nodoc
class __$MeetingScheduleFormCopyWithImpl<$Res>
    implements _$MeetingScheduleFormCopyWith<$Res> {
  __$MeetingScheduleFormCopyWithImpl(this._self, this._then);

  final _MeetingScheduleForm _self;
  final $Res Function(_MeetingScheduleForm) _then;

/// Create a copy of MeetingScheduleForm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uri = freezed,Object? startAt = freezed,}) {
  return _then(_MeetingScheduleForm(
uri: freezed == uri ? _self.uri : uri // ignore: cast_nullable_to_non_nullable
as String?,startAt: freezed == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
