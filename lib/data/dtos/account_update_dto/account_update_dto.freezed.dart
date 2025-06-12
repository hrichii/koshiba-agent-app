// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_update_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AccountUpdateDto {

 String get uid; String? get email; String? get name; String? get photoUrl;
/// Create a copy of AccountUpdateDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountUpdateDtoCopyWith<AccountUpdateDto> get copyWith => _$AccountUpdateDtoCopyWithImpl<AccountUpdateDto>(this as AccountUpdateDto, _$identity);

  /// Serializes this AccountUpdateDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountUpdateDto&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uid,email,name,photoUrl);

@override
String toString() {
  return 'AccountUpdateDto(uid: $uid, email: $email, name: $name, photoUrl: $photoUrl)';
}


}

/// @nodoc
abstract mixin class $AccountUpdateDtoCopyWith<$Res>  {
  factory $AccountUpdateDtoCopyWith(AccountUpdateDto value, $Res Function(AccountUpdateDto) _then) = _$AccountUpdateDtoCopyWithImpl;
@useResult
$Res call({
 String uid, String? email, String? name, String? photoUrl
});




}
/// @nodoc
class _$AccountUpdateDtoCopyWithImpl<$Res>
    implements $AccountUpdateDtoCopyWith<$Res> {
  _$AccountUpdateDtoCopyWithImpl(this._self, this._then);

  final AccountUpdateDto _self;
  final $Res Function(AccountUpdateDto) _then;

/// Create a copy of AccountUpdateDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? email = freezed,Object? name = freezed,Object? photoUrl = freezed,}) {
  return _then(_self.copyWith(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AccountUpdateDto extends AccountUpdateDto {
  const _AccountUpdateDto({required this.uid, this.email, this.name, this.photoUrl}): super._();
  factory _AccountUpdateDto.fromJson(Map<String, dynamic> json) => _$AccountUpdateDtoFromJson(json);

@override final  String uid;
@override final  String? email;
@override final  String? name;
@override final  String? photoUrl;

/// Create a copy of AccountUpdateDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountUpdateDtoCopyWith<_AccountUpdateDto> get copyWith => __$AccountUpdateDtoCopyWithImpl<_AccountUpdateDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccountUpdateDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountUpdateDto&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uid,email,name,photoUrl);

@override
String toString() {
  return 'AccountUpdateDto(uid: $uid, email: $email, name: $name, photoUrl: $photoUrl)';
}


}

/// @nodoc
abstract mixin class _$AccountUpdateDtoCopyWith<$Res> implements $AccountUpdateDtoCopyWith<$Res> {
  factory _$AccountUpdateDtoCopyWith(_AccountUpdateDto value, $Res Function(_AccountUpdateDto) _then) = __$AccountUpdateDtoCopyWithImpl;
@override @useResult
$Res call({
 String uid, String? email, String? name, String? photoUrl
});




}
/// @nodoc
class __$AccountUpdateDtoCopyWithImpl<$Res>
    implements _$AccountUpdateDtoCopyWith<$Res> {
  __$AccountUpdateDtoCopyWithImpl(this._self, this._then);

  final _AccountUpdateDto _self;
  final $Res Function(_AccountUpdateDto) _then;

/// Create a copy of AccountUpdateDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? email = freezed,Object? name = freezed,Object? photoUrl = freezed,}) {
  return _then(_AccountUpdateDto(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
