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
  String? get id;
  Uri? get url;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @JsonKey(name: 'start_at')
  DateTime? get startAt;
  @JsonKey(name: 'meeting_baas_id')
  String? get meetingBaasId;

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
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.meetingBaasId, meetingBaasId) ||
                other.meetingBaasId == meetingBaasId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, url, createdAt, startAt, meetingBaasId);

  @override
  String toString() {
    return 'Meeting(id: $id, url: $url, createdAt: $createdAt, startAt: $startAt, meetingBaasId: $meetingBaasId)';
  }
}

/// @nodoc
abstract mixin class $MeetingCopyWith<$Res> {
  factory $MeetingCopyWith(Meeting value, $Res Function(Meeting) _then) =
      _$MeetingCopyWithImpl;
  @useResult
  $Res call(
      {String? id,
      Uri? url,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'start_at') DateTime? startAt,
      @JsonKey(name: 'meeting_baas_id') String? meetingBaasId});
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
    Object? id = freezed,
    Object? url = freezed,
    Object? createdAt = freezed,
    Object? startAt = freezed,
    Object? meetingBaasId = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startAt: freezed == startAt
          ? _self.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      meetingBaasId: freezed == meetingBaasId
          ? _self.meetingBaasId
          : meetingBaasId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Meeting extends Meeting {
  const _Meeting(
      {this.id,
      this.url,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'start_at') this.startAt,
      @JsonKey(name: 'meeting_baas_id') this.meetingBaasId})
      : super._();
  factory _Meeting.fromJson(Map<String, dynamic> json) =>
      _$MeetingFromJson(json);

  @override
  final String? id;
  @override
  final Uri? url;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'start_at')
  final DateTime? startAt;
  @override
  @JsonKey(name: 'meeting_baas_id')
  final String? meetingBaasId;

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
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.meetingBaasId, meetingBaasId) ||
                other.meetingBaasId == meetingBaasId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, url, createdAt, startAt, meetingBaasId);

  @override
  String toString() {
    return 'Meeting(id: $id, url: $url, createdAt: $createdAt, startAt: $startAt, meetingBaasId: $meetingBaasId)';
  }
}

/// @nodoc
abstract mixin class _$MeetingCopyWith<$Res> implements $MeetingCopyWith<$Res> {
  factory _$MeetingCopyWith(_Meeting value, $Res Function(_Meeting) _then) =
      __$MeetingCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? id,
      Uri? url,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'start_at') DateTime? startAt,
      @JsonKey(name: 'meeting_baas_id') String? meetingBaasId});
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
    Object? id = freezed,
    Object? url = freezed,
    Object? createdAt = freezed,
    Object? startAt = freezed,
    Object? meetingBaasId = freezed,
  }) {
    return _then(_Meeting(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startAt: freezed == startAt
          ? _self.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      meetingBaasId: freezed == meetingBaasId
          ? _self.meetingBaasId
          : meetingBaasId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
