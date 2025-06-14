// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connect_to_google_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ConnectToGoogleStatus {

@JsonKey(name: 'is_connected') bool get isConnected;
/// Create a copy of ConnectToGoogleStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConnectToGoogleStatusCopyWith<ConnectToGoogleStatus> get copyWith => _$ConnectToGoogleStatusCopyWithImpl<ConnectToGoogleStatus>(this as ConnectToGoogleStatus, _$identity);

  /// Serializes this ConnectToGoogleStatus to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectToGoogleStatus&&(identical(other.isConnected, isConnected) || other.isConnected == isConnected));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isConnected);

@override
String toString() {
  return 'ConnectToGoogleStatus(isConnected: $isConnected)';
}


}

/// @nodoc
abstract mixin class $ConnectToGoogleStatusCopyWith<$Res>  {
  factory $ConnectToGoogleStatusCopyWith(ConnectToGoogleStatus value, $Res Function(ConnectToGoogleStatus) _then) = _$ConnectToGoogleStatusCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'is_connected') bool isConnected
});




}
/// @nodoc
class _$ConnectToGoogleStatusCopyWithImpl<$Res>
    implements $ConnectToGoogleStatusCopyWith<$Res> {
  _$ConnectToGoogleStatusCopyWithImpl(this._self, this._then);

  final ConnectToGoogleStatus _self;
  final $Res Function(ConnectToGoogleStatus) _then;

/// Create a copy of ConnectToGoogleStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isConnected = null,}) {
  return _then(_self.copyWith(
isConnected: null == isConnected ? _self.isConnected : isConnected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ConnectToGoogleStatus implements ConnectToGoogleStatus {
  const _ConnectToGoogleStatus({@JsonKey(name: 'is_connected') required this.isConnected});
  factory _ConnectToGoogleStatus.fromJson(Map<String, dynamic> json) => _$ConnectToGoogleStatusFromJson(json);

@override@JsonKey(name: 'is_connected') final  bool isConnected;

/// Create a copy of ConnectToGoogleStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConnectToGoogleStatusCopyWith<_ConnectToGoogleStatus> get copyWith => __$ConnectToGoogleStatusCopyWithImpl<_ConnectToGoogleStatus>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConnectToGoogleStatusToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConnectToGoogleStatus&&(identical(other.isConnected, isConnected) || other.isConnected == isConnected));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isConnected);

@override
String toString() {
  return 'ConnectToGoogleStatus(isConnected: $isConnected)';
}


}

/// @nodoc
abstract mixin class _$ConnectToGoogleStatusCopyWith<$Res> implements $ConnectToGoogleStatusCopyWith<$Res> {
  factory _$ConnectToGoogleStatusCopyWith(_ConnectToGoogleStatus value, $Res Function(_ConnectToGoogleStatus) _then) = __$ConnectToGoogleStatusCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'is_connected') bool isConnected
});




}
/// @nodoc
class __$ConnectToGoogleStatusCopyWithImpl<$Res>
    implements _$ConnectToGoogleStatusCopyWith<$Res> {
  __$ConnectToGoogleStatusCopyWithImpl(this._self, this._then);

  final _ConnectToGoogleStatus _self;
  final $Res Function(_ConnectToGoogleStatus) _then;

/// Create a copy of ConnectToGoogleStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isConnected = null,}) {
  return _then(_ConnectToGoogleStatus(
isConnected: null == isConnected ? _self.isConnected : isConnected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
