// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Schedule {

@JsonKey(name: 'google_calendar_event') CalendarEvent? get googleCalendarEvent;@JsonKey(name: 'scheduled_bot') Meeting? get scheduledBot;
/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScheduleCopyWith<Schedule> get copyWith => _$ScheduleCopyWithImpl<Schedule>(this as Schedule, _$identity);

  /// Serializes this Schedule to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Schedule&&(identical(other.googleCalendarEvent, googleCalendarEvent) || other.googleCalendarEvent == googleCalendarEvent)&&(identical(other.scheduledBot, scheduledBot) || other.scheduledBot == scheduledBot));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,googleCalendarEvent,scheduledBot);

@override
String toString() {
  return 'Schedule(googleCalendarEvent: $googleCalendarEvent, scheduledBot: $scheduledBot)';
}


}

/// @nodoc
abstract mixin class $ScheduleCopyWith<$Res>  {
  factory $ScheduleCopyWith(Schedule value, $Res Function(Schedule) _then) = _$ScheduleCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'google_calendar_event') CalendarEvent? googleCalendarEvent,@JsonKey(name: 'scheduled_bot') Meeting? scheduledBot
});


$CalendarEventCopyWith<$Res>? get googleCalendarEvent;$MeetingCopyWith<$Res>? get scheduledBot;

}
/// @nodoc
class _$ScheduleCopyWithImpl<$Res>
    implements $ScheduleCopyWith<$Res> {
  _$ScheduleCopyWithImpl(this._self, this._then);

  final Schedule _self;
  final $Res Function(Schedule) _then;

/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? googleCalendarEvent = freezed,Object? scheduledBot = freezed,}) {
  return _then(_self.copyWith(
googleCalendarEvent: freezed == googleCalendarEvent ? _self.googleCalendarEvent : googleCalendarEvent // ignore: cast_nullable_to_non_nullable
as CalendarEvent?,scheduledBot: freezed == scheduledBot ? _self.scheduledBot : scheduledBot // ignore: cast_nullable_to_non_nullable
as Meeting?,
  ));
}
/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CalendarEventCopyWith<$Res>? get googleCalendarEvent {
    if (_self.googleCalendarEvent == null) {
    return null;
  }

  return $CalendarEventCopyWith<$Res>(_self.googleCalendarEvent!, (value) {
    return _then(_self.copyWith(googleCalendarEvent: value));
  });
}/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MeetingCopyWith<$Res>? get scheduledBot {
    if (_self.scheduledBot == null) {
    return null;
  }

  return $MeetingCopyWith<$Res>(_self.scheduledBot!, (value) {
    return _then(_self.copyWith(scheduledBot: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _Schedule implements Schedule {
  const _Schedule({@JsonKey(name: 'google_calendar_event') this.googleCalendarEvent, @JsonKey(name: 'scheduled_bot') this.scheduledBot});
  factory _Schedule.fromJson(Map<String, dynamic> json) => _$ScheduleFromJson(json);

@override@JsonKey(name: 'google_calendar_event') final  CalendarEvent? googleCalendarEvent;
@override@JsonKey(name: 'scheduled_bot') final  Meeting? scheduledBot;

/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScheduleCopyWith<_Schedule> get copyWith => __$ScheduleCopyWithImpl<_Schedule>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScheduleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Schedule&&(identical(other.googleCalendarEvent, googleCalendarEvent) || other.googleCalendarEvent == googleCalendarEvent)&&(identical(other.scheduledBot, scheduledBot) || other.scheduledBot == scheduledBot));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,googleCalendarEvent,scheduledBot);

@override
String toString() {
  return 'Schedule(googleCalendarEvent: $googleCalendarEvent, scheduledBot: $scheduledBot)';
}


}

/// @nodoc
abstract mixin class _$ScheduleCopyWith<$Res> implements $ScheduleCopyWith<$Res> {
  factory _$ScheduleCopyWith(_Schedule value, $Res Function(_Schedule) _then) = __$ScheduleCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'google_calendar_event') CalendarEvent? googleCalendarEvent,@JsonKey(name: 'scheduled_bot') Meeting? scheduledBot
});


@override $CalendarEventCopyWith<$Res>? get googleCalendarEvent;@override $MeetingCopyWith<$Res>? get scheduledBot;

}
/// @nodoc
class __$ScheduleCopyWithImpl<$Res>
    implements _$ScheduleCopyWith<$Res> {
  __$ScheduleCopyWithImpl(this._self, this._then);

  final _Schedule _self;
  final $Res Function(_Schedule) _then;

/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? googleCalendarEvent = freezed,Object? scheduledBot = freezed,}) {
  return _then(_Schedule(
googleCalendarEvent: freezed == googleCalendarEvent ? _self.googleCalendarEvent : googleCalendarEvent // ignore: cast_nullable_to_non_nullable
as CalendarEvent?,scheduledBot: freezed == scheduledBot ? _self.scheduledBot : scheduledBot // ignore: cast_nullable_to_non_nullable
as Meeting?,
  ));
}

/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CalendarEventCopyWith<$Res>? get googleCalendarEvent {
    if (_self.googleCalendarEvent == null) {
    return null;
  }

  return $CalendarEventCopyWith<$Res>(_self.googleCalendarEvent!, (value) {
    return _then(_self.copyWith(googleCalendarEvent: value));
  });
}/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MeetingCopyWith<$Res>? get scheduledBot {
    if (_self.scheduledBot == null) {
    return null;
  }

  return $MeetingCopyWith<$Res>(_self.scheduledBot!, (value) {
    return _then(_self.copyWith(scheduledBot: value));
  });
}
}

// dart format on
