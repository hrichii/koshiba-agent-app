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

@RfControl(validators: AppValidation.meetingTitle)@JsonKey(name: 'title')@RfControl() String? get title;@JsonKey(name: 'url')@RfControl(validators: AppValidation.meetingUri) String? get uri;@JsonKey(name: 'is_join_right_now', defaultValue: true)@RfControl(validators: AppValidation.meetingBotJoinTiming) bool? get isJoinRightNow;@DateTimeConverter()@JsonKey(name: 'start_at')@RfControl(validators: AppValidation.meetingStartAt) DateTime? get startAt;@JsonKey(name: 'end_at')@RfControl() DateTime? get endAt;@JsonKey(name: 'description')@RfControl() String? get description;
/// Create a copy of MeetingScheduleForm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MeetingScheduleFormCopyWith<MeetingScheduleForm> get copyWith => _$MeetingScheduleFormCopyWithImpl<MeetingScheduleForm>(this as MeetingScheduleForm, _$identity);

  /// Serializes this MeetingScheduleForm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeetingScheduleForm&&(identical(other.title, title) || other.title == title)&&(identical(other.uri, uri) || other.uri == uri)&&(identical(other.isJoinRightNow, isJoinRightNow) || other.isJoinRightNow == isJoinRightNow)&&(identical(other.startAt, startAt) || other.startAt == startAt)&&(identical(other.endAt, endAt) || other.endAt == endAt)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,uri,isJoinRightNow,startAt,endAt,description);

@override
String toString() {
  return 'MeetingScheduleForm(title: $title, uri: $uri, isJoinRightNow: $isJoinRightNow, startAt: $startAt, endAt: $endAt, description: $description)';
}


}

/// @nodoc
abstract mixin class $MeetingScheduleFormCopyWith<$Res>  {
  factory $MeetingScheduleFormCopyWith(MeetingScheduleForm value, $Res Function(MeetingScheduleForm) _then) = _$MeetingScheduleFormCopyWithImpl;
@useResult
$Res call({
@RfControl(validators: AppValidation.meetingTitle)@JsonKey(name: 'title')@RfControl() String? title,@JsonKey(name: 'url')@RfControl(validators: AppValidation.meetingUri) String? uri,@JsonKey(name: 'is_join_right_now', defaultValue: true)@RfControl(validators: AppValidation.meetingBotJoinTiming) bool? isJoinRightNow,@DateTimeConverter()@JsonKey(name: 'start_at')@RfControl(validators: AppValidation.meetingStartAt) DateTime? startAt,@JsonKey(name: 'end_at')@RfControl() DateTime? endAt,@JsonKey(name: 'description')@RfControl() String? description
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
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? uri = freezed,Object? isJoinRightNow = freezed,Object? startAt = freezed,Object? endAt = freezed,Object? description = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,uri: freezed == uri ? _self.uri : uri // ignore: cast_nullable_to_non_nullable
as String?,isJoinRightNow: freezed == isJoinRightNow ? _self.isJoinRightNow : isJoinRightNow // ignore: cast_nullable_to_non_nullable
as bool?,startAt: freezed == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as DateTime?,endAt: freezed == endAt ? _self.endAt : endAt // ignore: cast_nullable_to_non_nullable
as DateTime?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _MeetingScheduleForm extends MeetingScheduleForm {
  const _MeetingScheduleForm({@RfControl(validators: AppValidation.meetingTitle)@JsonKey(name: 'title')@RfControl() this.title, @JsonKey(name: 'url')@RfControl(validators: AppValidation.meetingUri) this.uri, @JsonKey(name: 'is_join_right_now', defaultValue: true)@RfControl(validators: AppValidation.meetingBotJoinTiming) this.isJoinRightNow, @DateTimeConverter()@JsonKey(name: 'start_at')@RfControl(validators: AppValidation.meetingStartAt) this.startAt, @JsonKey(name: 'end_at')@RfControl() this.endAt, @JsonKey(name: 'description')@RfControl() this.description}): super._();
  factory _MeetingScheduleForm.fromJson(Map<String, dynamic> json) => _$MeetingScheduleFormFromJson(json);

@override@RfControl(validators: AppValidation.meetingTitle)@JsonKey(name: 'title')@RfControl() final  String? title;
@override@JsonKey(name: 'url')@RfControl(validators: AppValidation.meetingUri) final  String? uri;
@override@JsonKey(name: 'is_join_right_now', defaultValue: true)@RfControl(validators: AppValidation.meetingBotJoinTiming) final  bool? isJoinRightNow;
@override@DateTimeConverter()@JsonKey(name: 'start_at')@RfControl(validators: AppValidation.meetingStartAt) final  DateTime? startAt;
@override@JsonKey(name: 'end_at')@RfControl() final  DateTime? endAt;
@override@JsonKey(name: 'description')@RfControl() final  String? description;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MeetingScheduleForm&&(identical(other.title, title) || other.title == title)&&(identical(other.uri, uri) || other.uri == uri)&&(identical(other.isJoinRightNow, isJoinRightNow) || other.isJoinRightNow == isJoinRightNow)&&(identical(other.startAt, startAt) || other.startAt == startAt)&&(identical(other.endAt, endAt) || other.endAt == endAt)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,uri,isJoinRightNow,startAt,endAt,description);

@override
String toString() {
  return 'MeetingScheduleForm(title: $title, uri: $uri, isJoinRightNow: $isJoinRightNow, startAt: $startAt, endAt: $endAt, description: $description)';
}


}

/// @nodoc
abstract mixin class _$MeetingScheduleFormCopyWith<$Res> implements $MeetingScheduleFormCopyWith<$Res> {
  factory _$MeetingScheduleFormCopyWith(_MeetingScheduleForm value, $Res Function(_MeetingScheduleForm) _then) = __$MeetingScheduleFormCopyWithImpl;
@override @useResult
$Res call({
@RfControl(validators: AppValidation.meetingTitle)@JsonKey(name: 'title')@RfControl() String? title,@JsonKey(name: 'url')@RfControl(validators: AppValidation.meetingUri) String? uri,@JsonKey(name: 'is_join_right_now', defaultValue: true)@RfControl(validators: AppValidation.meetingBotJoinTiming) bool? isJoinRightNow,@DateTimeConverter()@JsonKey(name: 'start_at')@RfControl(validators: AppValidation.meetingStartAt) DateTime? startAt,@JsonKey(name: 'end_at')@RfControl() DateTime? endAt,@JsonKey(name: 'description')@RfControl() String? description
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
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? uri = freezed,Object? isJoinRightNow = freezed,Object? startAt = freezed,Object? endAt = freezed,Object? description = freezed,}) {
  return _then(_MeetingScheduleForm(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,uri: freezed == uri ? _self.uri : uri // ignore: cast_nullable_to_non_nullable
as String?,isJoinRightNow: freezed == isJoinRightNow ? _self.isJoinRightNow : isJoinRightNow // ignore: cast_nullable_to_non_nullable
as bool?,startAt: freezed == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as DateTime?,endAt: freezed == endAt ? _self.endAt : endAt // ignore: cast_nullable_to_non_nullable
as DateTime?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
