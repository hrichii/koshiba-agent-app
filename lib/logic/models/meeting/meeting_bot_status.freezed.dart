// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meeting_bot_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MeetingBotStatus {
  BotStatusLevel get level;
  BotStatusCode get code;

  /// Create a copy of MeetingBotStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MeetingBotStatusCopyWith<MeetingBotStatus> get copyWith =>
      _$MeetingBotStatusCopyWithImpl<MeetingBotStatus>(
          this as MeetingBotStatus, _$identity);

  /// Serializes this MeetingBotStatus to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MeetingBotStatus &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, level, code);

  @override
  String toString() {
    return 'MeetingBotStatus(level: $level, code: $code)';
  }
}

/// @nodoc
abstract mixin class $MeetingBotStatusCopyWith<$Res> {
  factory $MeetingBotStatusCopyWith(
          MeetingBotStatus value, $Res Function(MeetingBotStatus) _then) =
      _$MeetingBotStatusCopyWithImpl;
  @useResult
  $Res call({BotStatusLevel level, BotStatusCode code});
}

/// @nodoc
class _$MeetingBotStatusCopyWithImpl<$Res>
    implements $MeetingBotStatusCopyWith<$Res> {
  _$MeetingBotStatusCopyWithImpl(this._self, this._then);

  final MeetingBotStatus _self;
  final $Res Function(MeetingBotStatus) _then;

  /// Create a copy of MeetingBotStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? code = null,
  }) {
    return _then(_self.copyWith(
      level: null == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as BotStatusLevel,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as BotStatusCode,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _MeetingBotStatus extends MeetingBotStatus {
  const _MeetingBotStatus({required this.level, required this.code})
      : super._();
  factory _MeetingBotStatus.fromJson(Map<String, dynamic> json) =>
      _$MeetingBotStatusFromJson(json);

  @override
  final BotStatusLevel level;
  @override
  final BotStatusCode code;

  /// Create a copy of MeetingBotStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MeetingBotStatusCopyWith<_MeetingBotStatus> get copyWith =>
      __$MeetingBotStatusCopyWithImpl<_MeetingBotStatus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MeetingBotStatusToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MeetingBotStatus &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, level, code);

  @override
  String toString() {
    return 'MeetingBotStatus(level: $level, code: $code)';
  }
}

/// @nodoc
abstract mixin class _$MeetingBotStatusCopyWith<$Res>
    implements $MeetingBotStatusCopyWith<$Res> {
  factory _$MeetingBotStatusCopyWith(
          _MeetingBotStatus value, $Res Function(_MeetingBotStatus) _then) =
      __$MeetingBotStatusCopyWithImpl;
  @override
  @useResult
  $Res call({BotStatusLevel level, BotStatusCode code});
}

/// @nodoc
class __$MeetingBotStatusCopyWithImpl<$Res>
    implements _$MeetingBotStatusCopyWith<$Res> {
  __$MeetingBotStatusCopyWithImpl(this._self, this._then);

  final _MeetingBotStatus _self;
  final $Res Function(_MeetingBotStatus) _then;

  /// Create a copy of MeetingBotStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? level = null,
    Object? code = null,
  }) {
    return _then(_MeetingBotStatus(
      level: null == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as BotStatusLevel,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as BotStatusCode,
    ));
  }
}

// dart format on
