// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  id: json['id'] as String,
  name: json['name'] as String,
  email: json['email'] as String?,
  photoURL: json['photoURL'] as String?,
  isEmailVerified: json['isEmailVerified'] as bool,
  useProvider: $enumDecode(_$UseProviderEnumEnumMap, json['useProvider']),
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'email': instance.email,
  'photoURL': instance.photoURL,
  'isEmailVerified': instance.isEmailVerified,
  'useProvider': _$UseProviderEnumEnumMap[instance.useProvider]!,
};

const _$UseProviderEnumEnumMap = {
  UseProviderEnum.firebaseAuth: 'firebaseAuth',
  UseProviderEnum.googleSignIn: 'googleSignIn',
};
