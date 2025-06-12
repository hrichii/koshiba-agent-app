// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meeting_invite_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MeetingInviteForm {

@JsonKey(name: 'url')@RfControl(validators: AppValidation.meetingUri) String? get uri;
/// Create a copy of MeetingInviteForm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MeetingInviteFormCopyWith<MeetingInviteForm> get copyWith => _$MeetingInviteFormCopyWithImpl<MeetingInviteForm>(this as MeetingInviteForm, _$identity);

  /// Serializes this MeetingInviteForm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeetingInviteForm&&(identical(other.uri, uri) || other.uri == uri));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uri);

@override
String toString() {
  return 'MeetingInviteForm(uri: $uri)';
}


}

/// @nodoc
abstract mixin class $MeetingInviteFormCopyWith<$Res>  {
  factory $MeetingInviteFormCopyWith(MeetingInviteForm value, $Res Function(MeetingInviteForm) _then) = _$MeetingInviteFormCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'url')@RfControl(validators: AppValidation.meetingUri) String? uri
});




}
/// @nodoc
class _$MeetingInviteFormCopyWithImpl<$Res>
    implements $MeetingInviteFormCopyWith<$Res> {
  _$MeetingInviteFormCopyWithImpl(this._self, this._then);

  final MeetingInviteForm _self;
  final $Res Function(MeetingInviteForm) _then;

/// Create a copy of MeetingInviteForm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uri = freezed,}) {
  return _then(_self.copyWith(
uri: freezed == uri ? _self.uri : uri // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _MeetingInviteForm extends MeetingInviteForm {
  const _MeetingInviteForm({@JsonKey(name: 'url')@RfControl(validators: AppValidation.meetingUri) this.uri}): super._();
  factory _MeetingInviteForm.fromJson(Map<String, dynamic> json) => _$MeetingInviteFormFromJson(json);

@override@JsonKey(name: 'url')@RfControl(validators: AppValidation.meetingUri) final  String? uri;

/// Create a copy of MeetingInviteForm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MeetingInviteFormCopyWith<_MeetingInviteForm> get copyWith => __$MeetingInviteFormCopyWithImpl<_MeetingInviteForm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MeetingInviteFormToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MeetingInviteForm&&(identical(other.uri, uri) || other.uri == uri));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uri);

@override
String toString() {
  return 'MeetingInviteForm(uri: $uri)';
}


}

/// @nodoc
abstract mixin class _$MeetingInviteFormCopyWith<$Res> implements $MeetingInviteFormCopyWith<$Res> {
  factory _$MeetingInviteFormCopyWith(_MeetingInviteForm value, $Res Function(_MeetingInviteForm) _then) = __$MeetingInviteFormCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'url')@RfControl(validators: AppValidation.meetingUri) String? uri
});




}
/// @nodoc
class __$MeetingInviteFormCopyWithImpl<$Res>
    implements _$MeetingInviteFormCopyWith<$Res> {
  __$MeetingInviteFormCopyWithImpl(this._self, this._then);

  final _MeetingInviteForm _self;
  final $Res Function(_MeetingInviteForm) _then;

/// Create a copy of MeetingInviteForm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uri = freezed,}) {
  return _then(_MeetingInviteForm(
uri: freezed == uri ? _self.uri : uri // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
