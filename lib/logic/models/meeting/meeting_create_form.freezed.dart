// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meeting_create_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MeetingCreateForm {
  @JsonKey(name: 'url')
  @RfControl(validators: AppValidation.meetingUri)
  String? get uri;
  @JsonKey(name: 'start_at')
  @RfControl(validators: AppValidation.meetingStartAt)
  DateTime? get startAt;

  /// Create a copy of MeetingCreateForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MeetingCreateFormCopyWith<MeetingCreateForm> get copyWith =>
      _$MeetingCreateFormCopyWithImpl<MeetingCreateForm>(
          this as MeetingCreateForm, _$identity);

  /// Serializes this MeetingCreateForm to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MeetingCreateForm &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.startAt, startAt) || other.startAt == startAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uri, startAt);

  @override
  String toString() {
    return 'MeetingCreateForm(uri: $uri, startAt: $startAt)';
  }
}

/// @nodoc
abstract mixin class $MeetingCreateFormCopyWith<$Res> {
  factory $MeetingCreateFormCopyWith(
          MeetingCreateForm value, $Res Function(MeetingCreateForm) _then) =
      _$MeetingCreateFormCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'url')
      @RfControl(validators: AppValidation.meetingUri)
      String? uri,
      @JsonKey(name: 'start_at')
      @RfControl(validators: AppValidation.meetingStartAt)
      DateTime? startAt});
}

/// @nodoc
class _$MeetingCreateFormCopyWithImpl<$Res>
    implements $MeetingCreateFormCopyWith<$Res> {
  _$MeetingCreateFormCopyWithImpl(this._self, this._then);

  final MeetingCreateForm _self;
  final $Res Function(MeetingCreateForm) _then;

  /// Create a copy of MeetingCreateForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? startAt = freezed,
  }) {
    return _then(_self.copyWith(
      uri: freezed == uri
          ? _self.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      startAt: freezed == startAt
          ? _self.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _MeetingCreateForm extends MeetingCreateForm {
  const _MeetingCreateForm(
      {@JsonKey(name: 'url')
      @RfControl(validators: AppValidation.meetingUri)
      this.uri,
      @JsonKey(name: 'start_at')
      @RfControl(validators: AppValidation.meetingStartAt)
      this.startAt})
      : super._();
  factory _MeetingCreateForm.fromJson(Map<String, dynamic> json) =>
      _$MeetingCreateFormFromJson(json);

  @override
  @JsonKey(name: 'url')
  @RfControl(validators: AppValidation.meetingUri)
  final String? uri;
  @override
  @JsonKey(name: 'start_at')
  @RfControl(validators: AppValidation.meetingStartAt)
  final DateTime? startAt;

  /// Create a copy of MeetingCreateForm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MeetingCreateFormCopyWith<_MeetingCreateForm> get copyWith =>
      __$MeetingCreateFormCopyWithImpl<_MeetingCreateForm>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MeetingCreateFormToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MeetingCreateForm &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.startAt, startAt) || other.startAt == startAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uri, startAt);

  @override
  String toString() {
    return 'MeetingCreateForm(uri: $uri, startAt: $startAt)';
  }
}

/// @nodoc
abstract mixin class _$MeetingCreateFormCopyWith<$Res>
    implements $MeetingCreateFormCopyWith<$Res> {
  factory _$MeetingCreateFormCopyWith(
          _MeetingCreateForm value, $Res Function(_MeetingCreateForm) _then) =
      __$MeetingCreateFormCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'url')
      @RfControl(validators: AppValidation.meetingUri)
      String? uri,
      @JsonKey(name: 'start_at')
      @RfControl(validators: AppValidation.meetingStartAt)
      DateTime? startAt});
}

/// @nodoc
class __$MeetingCreateFormCopyWithImpl<$Res>
    implements _$MeetingCreateFormCopyWith<$Res> {
  __$MeetingCreateFormCopyWithImpl(this._self, this._then);

  final _MeetingCreateForm _self;
  final $Res Function(_MeetingCreateForm) _then;

  /// Create a copy of MeetingCreateForm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? uri = freezed,
    Object? startAt = freezed,
  }) {
    return _then(_MeetingCreateForm(
      uri: freezed == uri
          ? _self.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      startAt: freezed == startAt
          ? _self.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
