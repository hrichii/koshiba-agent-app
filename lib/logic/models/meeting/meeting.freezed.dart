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

 String get id; Uri get url;@JsonKey(name: 'meeting_baas_id') String get meetingBaasId; MeetingBotStatus get status;@DateTimeConverter()@JsonKey(name: 'created_at') DateTime get createdAt;@DateTimeConverter()@JsonKey(name: 'start_at') DateTime get startAt;@DateTimeConverter()@JsonKey(name: 'end_at') DateTime? get endAt; String? get title; String? get description;
/// Create a copy of Meeting
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MeetingCopyWith<Meeting> get copyWith => _$MeetingCopyWithImpl<Meeting>(this as Meeting, _$identity);

  /// Serializes this Meeting to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Meeting&&(identical(other.id, id) || other.id == id)&&(identical(other.url, url) || other.url == url)&&(identical(other.meetingBaasId, meetingBaasId) || other.meetingBaasId == meetingBaasId)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.startAt, startAt) || other.startAt == startAt)&&(identical(other.endAt, endAt) || other.endAt == endAt)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,url,meetingBaasId,status,createdAt,startAt,endAt,title,description);

@override
String toString() {
  return 'Meeting(id: $id, url: $url, meetingBaasId: $meetingBaasId, status: $status, createdAt: $createdAt, startAt: $startAt, endAt: $endAt, title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class $MeetingCopyWith<$Res>  {
  factory $MeetingCopyWith(Meeting value, $Res Function(Meeting) _then) = _$MeetingCopyWithImpl;
@useResult
$Res call({
 String id, Uri url,@JsonKey(name: 'meeting_baas_id') String meetingBaasId, MeetingBotStatus status,@DateTimeConverter()@JsonKey(name: 'created_at') DateTime createdAt,@DateTimeConverter()@JsonKey(name: 'start_at') DateTime startAt,@DateTimeConverter()@JsonKey(name: 'end_at') DateTime? endAt, String? title, String? description
});


$MeetingBotStatusCopyWith<$Res> get status;

}
/// @nodoc
class _$MeetingCopyWithImpl<$Res>
    implements $MeetingCopyWith<$Res> {
  _$MeetingCopyWithImpl(this._self, this._then);

  final Meeting _self;
  final $Res Function(Meeting) _then;

/// Create a copy of Meeting
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? url = null,Object? meetingBaasId = null,Object? status = null,Object? createdAt = null,Object? startAt = null,Object? endAt = freezed,Object? title = freezed,Object? description = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as Uri,meetingBaasId: null == meetingBaasId ? _self.meetingBaasId : meetingBaasId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MeetingBotStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,startAt: null == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as DateTime,endAt: freezed == endAt ? _self.endAt : endAt // ignore: cast_nullable_to_non_nullable
as DateTime?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Meeting
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MeetingBotStatusCopyWith<$Res> get status {
  
  return $MeetingBotStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _Meeting extends Meeting {
  const _Meeting({required this.id, required this.url, @JsonKey(name: 'meeting_baas_id') required this.meetingBaasId, required this.status, @DateTimeConverter()@JsonKey(name: 'created_at') required this.createdAt, @DateTimeConverter()@JsonKey(name: 'start_at') required this.startAt, @DateTimeConverter()@JsonKey(name: 'end_at') this.endAt, this.title, this.description}): super._();
  factory _Meeting.fromJson(Map<String, dynamic> json) => _$MeetingFromJson(json);

@override final  String id;
@override final  Uri url;
@override@JsonKey(name: 'meeting_baas_id') final  String meetingBaasId;
@override final  MeetingBotStatus status;
@override@DateTimeConverter()@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@DateTimeConverter()@JsonKey(name: 'start_at') final  DateTime startAt;
@override@DateTimeConverter()@JsonKey(name: 'end_at') final  DateTime? endAt;
@override final  String? title;
@override final  String? description;

/// Create a copy of Meeting
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MeetingCopyWith<_Meeting> get copyWith => __$MeetingCopyWithImpl<_Meeting>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MeetingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Meeting&&(identical(other.id, id) || other.id == id)&&(identical(other.url, url) || other.url == url)&&(identical(other.meetingBaasId, meetingBaasId) || other.meetingBaasId == meetingBaasId)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.startAt, startAt) || other.startAt == startAt)&&(identical(other.endAt, endAt) || other.endAt == endAt)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,url,meetingBaasId,status,createdAt,startAt,endAt,title,description);

@override
String toString() {
  return 'Meeting(id: $id, url: $url, meetingBaasId: $meetingBaasId, status: $status, createdAt: $createdAt, startAt: $startAt, endAt: $endAt, title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class _$MeetingCopyWith<$Res> implements $MeetingCopyWith<$Res> {
  factory _$MeetingCopyWith(_Meeting value, $Res Function(_Meeting) _then) = __$MeetingCopyWithImpl;
@override @useResult
$Res call({
 String id, Uri url,@JsonKey(name: 'meeting_baas_id') String meetingBaasId, MeetingBotStatus status,@DateTimeConverter()@JsonKey(name: 'created_at') DateTime createdAt,@DateTimeConverter()@JsonKey(name: 'start_at') DateTime startAt,@DateTimeConverter()@JsonKey(name: 'end_at') DateTime? endAt, String? title, String? description
});


@override $MeetingBotStatusCopyWith<$Res> get status;

}
/// @nodoc
class __$MeetingCopyWithImpl<$Res>
    implements _$MeetingCopyWith<$Res> {
  __$MeetingCopyWithImpl(this._self, this._then);

  final _Meeting _self;
  final $Res Function(_Meeting) _then;

/// Create a copy of Meeting
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? url = null,Object? meetingBaasId = null,Object? status = null,Object? createdAt = null,Object? startAt = null,Object? endAt = freezed,Object? title = freezed,Object? description = freezed,}) {
  return _then(_Meeting(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as Uri,meetingBaasId: null == meetingBaasId ? _self.meetingBaasId : meetingBaasId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MeetingBotStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,startAt: null == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as DateTime,endAt: freezed == endAt ? _self.endAt : endAt // ignore: cast_nullable_to_non_nullable
as DateTime?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Meeting
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MeetingBotStatusCopyWith<$Res> get status {
  
  return $MeetingBotStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}

// dart format on
