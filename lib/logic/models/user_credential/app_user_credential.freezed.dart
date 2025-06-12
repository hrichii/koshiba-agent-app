// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_user_credential.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppUserCredential {

 User? get user; AccessToken? get accessToken;
/// Create a copy of AppUserCredential
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppUserCredentialCopyWith<AppUserCredential> get copyWith => _$AppUserCredentialCopyWithImpl<AppUserCredential>(this as AppUserCredential, _$identity);

  /// Serializes this AppUserCredential to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppUserCredential&&(identical(other.user, user) || other.user == user)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,accessToken);

@override
String toString() {
  return 'AppUserCredential(user: $user, accessToken: $accessToken)';
}


}

/// @nodoc
abstract mixin class $AppUserCredentialCopyWith<$Res>  {
  factory $AppUserCredentialCopyWith(AppUserCredential value, $Res Function(AppUserCredential) _then) = _$AppUserCredentialCopyWithImpl;
@useResult
$Res call({
 User? user, AccessToken? accessToken
});


$UserCopyWith<$Res>? get user;$AccessTokenCopyWith<$Res>? get accessToken;

}
/// @nodoc
class _$AppUserCredentialCopyWithImpl<$Res>
    implements $AppUserCredentialCopyWith<$Res> {
  _$AppUserCredentialCopyWithImpl(this._self, this._then);

  final AppUserCredential _self;
  final $Res Function(AppUserCredential) _then;

/// Create a copy of AppUserCredential
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = freezed,Object? accessToken = freezed,}) {
  return _then(_self.copyWith(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as AccessToken?,
  ));
}
/// Create a copy of AppUserCredential
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of AppUserCredential
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccessTokenCopyWith<$Res>? get accessToken {
    if (_self.accessToken == null) {
    return null;
  }

  return $AccessTokenCopyWith<$Res>(_self.accessToken!, (value) {
    return _then(_self.copyWith(accessToken: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _AppUserCredential extends AppUserCredential {
  const _AppUserCredential({required this.user, required this.accessToken}): super._();
  factory _AppUserCredential.fromJson(Map<String, dynamic> json) => _$AppUserCredentialFromJson(json);

@override final  User? user;
@override final  AccessToken? accessToken;

/// Create a copy of AppUserCredential
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppUserCredentialCopyWith<_AppUserCredential> get copyWith => __$AppUserCredentialCopyWithImpl<_AppUserCredential>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppUserCredentialToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppUserCredential&&(identical(other.user, user) || other.user == user)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,accessToken);

@override
String toString() {
  return 'AppUserCredential(user: $user, accessToken: $accessToken)';
}


}

/// @nodoc
abstract mixin class _$AppUserCredentialCopyWith<$Res> implements $AppUserCredentialCopyWith<$Res> {
  factory _$AppUserCredentialCopyWith(_AppUserCredential value, $Res Function(_AppUserCredential) _then) = __$AppUserCredentialCopyWithImpl;
@override @useResult
$Res call({
 User? user, AccessToken? accessToken
});


@override $UserCopyWith<$Res>? get user;@override $AccessTokenCopyWith<$Res>? get accessToken;

}
/// @nodoc
class __$AppUserCredentialCopyWithImpl<$Res>
    implements _$AppUserCredentialCopyWith<$Res> {
  __$AppUserCredentialCopyWithImpl(this._self, this._then);

  final _AppUserCredential _self;
  final $Res Function(_AppUserCredential) _then;

/// Create a copy of AppUserCredential
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = freezed,Object? accessToken = freezed,}) {
  return _then(_AppUserCredential(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as AccessToken?,
  ));
}

/// Create a copy of AppUserCredential
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of AppUserCredential
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccessTokenCopyWith<$Res>? get accessToken {
    if (_self.accessToken == null) {
    return null;
  }

  return $AccessTokenCopyWith<$Res>(_self.accessToken!, (value) {
    return _then(_self.copyWith(accessToken: value));
  });
}
}

// dart format on
