// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_create_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AccountCreateDto {

 String get uid; String get email; String? get name; String? get photoUrl;
/// Create a copy of AccountCreateDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountCreateDtoCopyWith<AccountCreateDto> get copyWith => _$AccountCreateDtoCopyWithImpl<AccountCreateDto>(this as AccountCreateDto, _$identity);

  /// Serializes this AccountCreateDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountCreateDto&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uid,email,name,photoUrl);

@override
String toString() {
  return 'AccountCreateDto(uid: $uid, email: $email, name: $name, photoUrl: $photoUrl)';
}


}

/// @nodoc
abstract mixin class $AccountCreateDtoCopyWith<$Res>  {
  factory $AccountCreateDtoCopyWith(AccountCreateDto value, $Res Function(AccountCreateDto) _then) = _$AccountCreateDtoCopyWithImpl;
@useResult
$Res call({
 String uid, String email, String? name, String? photoUrl
});




}
/// @nodoc
class _$AccountCreateDtoCopyWithImpl<$Res>
    implements $AccountCreateDtoCopyWith<$Res> {
  _$AccountCreateDtoCopyWithImpl(this._self, this._then);

  final AccountCreateDto _self;
  final $Res Function(AccountCreateDto) _then;

/// Create a copy of AccountCreateDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? email = null,Object? name = freezed,Object? photoUrl = freezed,}) {
  return _then(_self.copyWith(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AccountCreateDto extends AccountCreateDto {
  const _AccountCreateDto({required this.uid, required this.email, this.name, this.photoUrl}): super._();
  factory _AccountCreateDto.fromJson(Map<String, dynamic> json) => _$AccountCreateDtoFromJson(json);

@override final  String uid;
@override final  String email;
@override final  String? name;
@override final  String? photoUrl;

/// Create a copy of AccountCreateDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountCreateDtoCopyWith<_AccountCreateDto> get copyWith => __$AccountCreateDtoCopyWithImpl<_AccountCreateDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccountCreateDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountCreateDto&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uid,email,name,photoUrl);

@override
String toString() {
  return 'AccountCreateDto(uid: $uid, email: $email, name: $name, photoUrl: $photoUrl)';
}


}

/// @nodoc
abstract mixin class _$AccountCreateDtoCopyWith<$Res> implements $AccountCreateDtoCopyWith<$Res> {
  factory _$AccountCreateDtoCopyWith(_AccountCreateDto value, $Res Function(_AccountCreateDto) _then) = __$AccountCreateDtoCopyWithImpl;
@override @useResult
$Res call({
 String uid, String email, String? name, String? photoUrl
});




}
/// @nodoc
class __$AccountCreateDtoCopyWithImpl<$Res>
    implements _$AccountCreateDtoCopyWith<$Res> {
  __$AccountCreateDtoCopyWithImpl(this._self, this._then);

  final _AccountCreateDto _self;
  final $Res Function(_AccountCreateDto) _then;

/// Create a copy of AccountCreateDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? email = null,Object? name = freezed,Object? photoUrl = freezed,}) {
  return _then(_AccountCreateDto(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
