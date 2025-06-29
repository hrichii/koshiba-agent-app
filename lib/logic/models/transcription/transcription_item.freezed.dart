// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transcription_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TranscriptionItem {

 String get id; String get meetingId; TranscriptionRoleEnum get role; DateTime? get timestamp; String? get content; TranscriptionSourceEnum? get source; String? get errorCode;
/// Create a copy of TranscriptionItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TranscriptionItemCopyWith<TranscriptionItem> get copyWith => _$TranscriptionItemCopyWithImpl<TranscriptionItem>(this as TranscriptionItem, _$identity);

  /// Serializes this TranscriptionItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TranscriptionItem&&(identical(other.id, id) || other.id == id)&&(identical(other.meetingId, meetingId) || other.meetingId == meetingId)&&(identical(other.role, role) || other.role == role)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.content, content) || other.content == content)&&(identical(other.source, source) || other.source == source)&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,meetingId,role,timestamp,content,source,errorCode);

@override
String toString() {
  return 'TranscriptionItem(id: $id, meetingId: $meetingId, role: $role, timestamp: $timestamp, content: $content, source: $source, errorCode: $errorCode)';
}


}

/// @nodoc
abstract mixin class $TranscriptionItemCopyWith<$Res>  {
  factory $TranscriptionItemCopyWith(TranscriptionItem value, $Res Function(TranscriptionItem) _then) = _$TranscriptionItemCopyWithImpl;
@useResult
$Res call({
 String id, String meetingId, TranscriptionRoleEnum role, DateTime? timestamp, String? content, TranscriptionSourceEnum? source, String? errorCode
});




}
/// @nodoc
class _$TranscriptionItemCopyWithImpl<$Res>
    implements $TranscriptionItemCopyWith<$Res> {
  _$TranscriptionItemCopyWithImpl(this._self, this._then);

  final TranscriptionItem _self;
  final $Res Function(TranscriptionItem) _then;

/// Create a copy of TranscriptionItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? meetingId = null,Object? role = null,Object? timestamp = freezed,Object? content = freezed,Object? source = freezed,Object? errorCode = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,meetingId: null == meetingId ? _self.meetingId : meetingId // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as TranscriptionRoleEnum,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as TranscriptionSourceEnum?,errorCode: freezed == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TranscriptionItem extends TranscriptionItem {
  const _TranscriptionItem({required this.id, required this.meetingId, required this.role, this.timestamp, this.content, this.source, this.errorCode}): super._();
  factory _TranscriptionItem.fromJson(Map<String, dynamic> json) => _$TranscriptionItemFromJson(json);

@override final  String id;
@override final  String meetingId;
@override final  TranscriptionRoleEnum role;
@override final  DateTime? timestamp;
@override final  String? content;
@override final  TranscriptionSourceEnum? source;
@override final  String? errorCode;

/// Create a copy of TranscriptionItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TranscriptionItemCopyWith<_TranscriptionItem> get copyWith => __$TranscriptionItemCopyWithImpl<_TranscriptionItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TranscriptionItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TranscriptionItem&&(identical(other.id, id) || other.id == id)&&(identical(other.meetingId, meetingId) || other.meetingId == meetingId)&&(identical(other.role, role) || other.role == role)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.content, content) || other.content == content)&&(identical(other.source, source) || other.source == source)&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,meetingId,role,timestamp,content,source,errorCode);

@override
String toString() {
  return 'TranscriptionItem(id: $id, meetingId: $meetingId, role: $role, timestamp: $timestamp, content: $content, source: $source, errorCode: $errorCode)';
}


}

/// @nodoc
abstract mixin class _$TranscriptionItemCopyWith<$Res> implements $TranscriptionItemCopyWith<$Res> {
  factory _$TranscriptionItemCopyWith(_TranscriptionItem value, $Res Function(_TranscriptionItem) _then) = __$TranscriptionItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String meetingId, TranscriptionRoleEnum role, DateTime? timestamp, String? content, TranscriptionSourceEnum? source, String? errorCode
});




}
/// @nodoc
class __$TranscriptionItemCopyWithImpl<$Res>
    implements _$TranscriptionItemCopyWith<$Res> {
  __$TranscriptionItemCopyWithImpl(this._self, this._then);

  final _TranscriptionItem _self;
  final $Res Function(_TranscriptionItem) _then;

/// Create a copy of TranscriptionItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? meetingId = null,Object? role = null,Object? timestamp = freezed,Object? content = freezed,Object? source = freezed,Object? errorCode = freezed,}) {
  return _then(_TranscriptionItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,meetingId: null == meetingId ? _self.meetingId : meetingId // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as TranscriptionRoleEnum,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as TranscriptionSourceEnum?,errorCode: freezed == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
