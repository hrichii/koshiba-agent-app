// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connect_to_google_authorization_url_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ConnectToGoogleAuthorizationUrlDto {

@JsonKey(name: 'authorization_url') Uri get authorizationUri;
/// Create a copy of ConnectToGoogleAuthorizationUrlDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConnectToGoogleAuthorizationUrlDtoCopyWith<ConnectToGoogleAuthorizationUrlDto> get copyWith => _$ConnectToGoogleAuthorizationUrlDtoCopyWithImpl<ConnectToGoogleAuthorizationUrlDto>(this as ConnectToGoogleAuthorizationUrlDto, _$identity);

  /// Serializes this ConnectToGoogleAuthorizationUrlDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectToGoogleAuthorizationUrlDto&&(identical(other.authorizationUri, authorizationUri) || other.authorizationUri == authorizationUri));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,authorizationUri);

@override
String toString() {
  return 'ConnectToGoogleAuthorizationUrlDto(authorizationUri: $authorizationUri)';
}


}

/// @nodoc
abstract mixin class $ConnectToGoogleAuthorizationUrlDtoCopyWith<$Res>  {
  factory $ConnectToGoogleAuthorizationUrlDtoCopyWith(ConnectToGoogleAuthorizationUrlDto value, $Res Function(ConnectToGoogleAuthorizationUrlDto) _then) = _$ConnectToGoogleAuthorizationUrlDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'authorization_url') Uri authorizationUri
});




}
/// @nodoc
class _$ConnectToGoogleAuthorizationUrlDtoCopyWithImpl<$Res>
    implements $ConnectToGoogleAuthorizationUrlDtoCopyWith<$Res> {
  _$ConnectToGoogleAuthorizationUrlDtoCopyWithImpl(this._self, this._then);

  final ConnectToGoogleAuthorizationUrlDto _self;
  final $Res Function(ConnectToGoogleAuthorizationUrlDto) _then;

/// Create a copy of ConnectToGoogleAuthorizationUrlDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? authorizationUri = null,}) {
  return _then(_self.copyWith(
authorizationUri: null == authorizationUri ? _self.authorizationUri : authorizationUri // ignore: cast_nullable_to_non_nullable
as Uri,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ConnectToGoogleAuthorizationUrlDto implements ConnectToGoogleAuthorizationUrlDto {
  const _ConnectToGoogleAuthorizationUrlDto({@JsonKey(name: 'authorization_url') required this.authorizationUri});
  factory _ConnectToGoogleAuthorizationUrlDto.fromJson(Map<String, dynamic> json) => _$ConnectToGoogleAuthorizationUrlDtoFromJson(json);

@override@JsonKey(name: 'authorization_url') final  Uri authorizationUri;

/// Create a copy of ConnectToGoogleAuthorizationUrlDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConnectToGoogleAuthorizationUrlDtoCopyWith<_ConnectToGoogleAuthorizationUrlDto> get copyWith => __$ConnectToGoogleAuthorizationUrlDtoCopyWithImpl<_ConnectToGoogleAuthorizationUrlDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConnectToGoogleAuthorizationUrlDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConnectToGoogleAuthorizationUrlDto&&(identical(other.authorizationUri, authorizationUri) || other.authorizationUri == authorizationUri));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,authorizationUri);

@override
String toString() {
  return 'ConnectToGoogleAuthorizationUrlDto(authorizationUri: $authorizationUri)';
}


}

/// @nodoc
abstract mixin class _$ConnectToGoogleAuthorizationUrlDtoCopyWith<$Res> implements $ConnectToGoogleAuthorizationUrlDtoCopyWith<$Res> {
  factory _$ConnectToGoogleAuthorizationUrlDtoCopyWith(_ConnectToGoogleAuthorizationUrlDto value, $Res Function(_ConnectToGoogleAuthorizationUrlDto) _then) = __$ConnectToGoogleAuthorizationUrlDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'authorization_url') Uri authorizationUri
});




}
/// @nodoc
class __$ConnectToGoogleAuthorizationUrlDtoCopyWithImpl<$Res>
    implements _$ConnectToGoogleAuthorizationUrlDtoCopyWith<$Res> {
  __$ConnectToGoogleAuthorizationUrlDtoCopyWithImpl(this._self, this._then);

  final _ConnectToGoogleAuthorizationUrlDto _self;
  final $Res Function(_ConnectToGoogleAuthorizationUrlDto) _then;

/// Create a copy of ConnectToGoogleAuthorizationUrlDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? authorizationUri = null,}) {
  return _then(_ConnectToGoogleAuthorizationUrlDto(
authorizationUri: null == authorizationUri ? _self.authorizationUri : authorizationUri // ignore: cast_nullable_to_non_nullable
as Uri,
  ));
}


}

// dart format on
