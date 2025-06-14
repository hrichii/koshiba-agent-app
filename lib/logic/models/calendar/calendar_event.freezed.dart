// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CalendarEvent {
  String? get id;
  String? get title;
  String? get description;
  Uri? get url;
  @JsonKey(name: 'start_at')
  @DateTimeConverter()
  DateTime? get startAt;
  @JsonKey(name: 'end_at')
  @DateTimeConverter()
  DateTime? get endAt;

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CalendarEventCopyWith<CalendarEvent> get copyWith =>
      _$CalendarEventCopyWithImpl<CalendarEvent>(
          this as CalendarEvent, _$identity);

  /// Serializes this CalendarEvent to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CalendarEvent &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.endAt, endAt) || other.endAt == endAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, url, startAt, endAt);

  @override
  String toString() {
    return 'CalendarEvent(id: $id, title: $title, description: $description, url: $url, startAt: $startAt, endAt: $endAt)';
  }
}

/// @nodoc
abstract mixin class $CalendarEventCopyWith<$Res> {
  factory $CalendarEventCopyWith(
          CalendarEvent value, $Res Function(CalendarEvent) _then) =
      _$CalendarEventCopyWithImpl;
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? description,
      Uri? url,
      @JsonKey(name: 'start_at') @DateTimeConverter() DateTime? startAt,
      @JsonKey(name: 'end_at') @DateTimeConverter() DateTime? endAt});
}

/// @nodoc
class _$CalendarEventCopyWithImpl<$Res>
    implements $CalendarEventCopyWith<$Res> {
  _$CalendarEventCopyWithImpl(this._self, this._then);

  final CalendarEvent _self;
  final $Res Function(CalendarEvent) _then;

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? startAt = freezed,
    Object? endAt = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri?,
      startAt: freezed == startAt
          ? _self.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endAt: freezed == endAt
          ? _self.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CalendarEvent extends CalendarEvent {
  const _CalendarEvent(
      {required this.id,
      required this.title,
      required this.description,
      required this.url,
      @JsonKey(name: 'start_at') @DateTimeConverter() required this.startAt,
      @JsonKey(name: 'end_at') @DateTimeConverter() required this.endAt})
      : super._();
  factory _CalendarEvent.fromJson(Map<String, dynamic> json) =>
      _$CalendarEventFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final Uri? url;
  @override
  @JsonKey(name: 'start_at')
  @DateTimeConverter()
  final DateTime? startAt;
  @override
  @JsonKey(name: 'end_at')
  @DateTimeConverter()
  final DateTime? endAt;

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CalendarEventCopyWith<_CalendarEvent> get copyWith =>
      __$CalendarEventCopyWithImpl<_CalendarEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CalendarEventToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CalendarEvent &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.endAt, endAt) || other.endAt == endAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, url, startAt, endAt);

  @override
  String toString() {
    return 'CalendarEvent(id: $id, title: $title, description: $description, url: $url, startAt: $startAt, endAt: $endAt)';
  }
}

/// @nodoc
abstract mixin class _$CalendarEventCopyWith<$Res>
    implements $CalendarEventCopyWith<$Res> {
  factory _$CalendarEventCopyWith(
          _CalendarEvent value, $Res Function(_CalendarEvent) _then) =
      __$CalendarEventCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? description,
      Uri? url,
      @JsonKey(name: 'start_at') @DateTimeConverter() DateTime? startAt,
      @JsonKey(name: 'end_at') @DateTimeConverter() DateTime? endAt});
}

/// @nodoc
class __$CalendarEventCopyWithImpl<$Res>
    implements _$CalendarEventCopyWith<$Res> {
  __$CalendarEventCopyWithImpl(this._self, this._then);

  final _CalendarEvent _self;
  final $Res Function(_CalendarEvent) _then;

  /// Create a copy of CalendarEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? startAt = freezed,
    Object? endAt = freezed,
  }) {
    return _then(_CalendarEvent(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri?,
      startAt: freezed == startAt
          ? _self.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endAt: freezed == endAt
          ? _self.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
