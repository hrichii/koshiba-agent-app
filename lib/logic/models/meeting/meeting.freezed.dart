// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meeting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Meeting {
  @RfControl(validators: AppValidation.meetingUri)
  String? get uri;
  @RfControl(validators: AppValidation.meetingStartedAt)
  DateTime? get startedAt;

  /// Create a copy of Meeting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MeetingCopyWith<Meeting> get copyWith =>
      _$MeetingCopyWithImpl<Meeting>(this as Meeting, _$identity);

  /// Serializes this Meeting to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Meeting &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uri, startedAt);

  @override
  String toString() {
    return 'Meeting(uri: $uri, startedAt: $startedAt)';
  }
}

/// @nodoc
abstract mixin class $MeetingCopyWith<$Res> {
  factory $MeetingCopyWith(Meeting value, $Res Function(Meeting) _then) =
      _$MeetingCopyWithImpl;
  @useResult
  $Res call(
      {@RfControl(validators: AppValidation.meetingUri) String? uri,
      @RfControl(validators: AppValidation.meetingStartedAt)
      DateTime? startedAt});
}

/// @nodoc
class _$MeetingCopyWithImpl<$Res> implements $MeetingCopyWith<$Res> {
  _$MeetingCopyWithImpl(this._self, this._then);

  final Meeting _self;
  final $Res Function(Meeting) _then;

  /// Create a copy of Meeting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? startedAt = freezed,
  }) {
    return _then(_self.copyWith(
      uri: freezed == uri
          ? _self.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      startedAt: freezed == startedAt
          ? _self.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Meeting extends Meeting {
  const _Meeting(
      {@RfControl(validators: AppValidation.meetingUri) this.uri,
      @RfControl(validators: AppValidation.meetingStartedAt) this.startedAt})
      : super._();
  factory _Meeting.fromJson(Map<String, dynamic> json) =>
      _$MeetingFromJson(json);

  @override
  @RfControl(validators: AppValidation.meetingUri)
  final String? uri;
  @override
  @RfControl(validators: AppValidation.meetingStartedAt)
  final DateTime? startedAt;

  /// Create a copy of Meeting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MeetingCopyWith<_Meeting> get copyWith =>
      __$MeetingCopyWithImpl<_Meeting>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MeetingToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Meeting &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uri, startedAt);

  @override
  String toString() {
    return 'Meeting(uri: $uri, startedAt: $startedAt)';
  }
}

/// @nodoc
abstract mixin class _$MeetingCopyWith<$Res> implements $MeetingCopyWith<$Res> {
  factory _$MeetingCopyWith(_Meeting value, $Res Function(_Meeting) _then) =
      __$MeetingCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@RfControl(validators: AppValidation.meetingUri) String? uri,
      @RfControl(validators: AppValidation.meetingStartedAt)
      DateTime? startedAt});
}

/// @nodoc
class __$MeetingCopyWithImpl<$Res> implements _$MeetingCopyWith<$Res> {
  __$MeetingCopyWithImpl(this._self, this._then);

  final _Meeting _self;
  final $Res Function(_Meeting) _then;

  /// Create a copy of Meeting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? uri = freezed,
    Object? startedAt = freezed,
  }) {
    return _then(_Meeting(
      uri: freezed == uri
          ? _self.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      startedAt: freezed == startedAt
          ? _self.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
