// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_message_code.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
AppMessageCode _$AppMessageCodeFromJson(
  Map<String, dynamic> json
) {
        switch (json['code']) {
                  case 'infoApiRequestSuccess':
          return _InfoApiRequestSuccess.fromJson(
            json
          );
                case 'infoGoogleSignInCanceled':
          return _InfoGoogleSignInCanceled.fromJson(
            json
          );
                case 'errorApiAuthenticationInvalid':
          return _ErrorApiAuthenticationInvalid.fromJson(
            json
          );
                case 'errorApiTokenExpired':
          return _ErrorApiTokenExpired.fromJson(
            json
          );
                case 'errorApiAccountNotFound':
          return _ErrorApiAccountNotFound.fromJson(
            json
          );
                case 'errorApiOperationNotAllowed':
          return _ErrorApiOperationNotAllowed.fromJson(
            json
          );
                case 'errorApiInvalidEmail':
          return _ErrorApiInvalidEmail.fromJson(
            json
          );
                case 'errorApiEmailAlreadyUsed':
          return _ErrorApiEmailAlreadyUsed.fromJson(
            json
          );
                case 'errorApiWeakPassword':
          return _ErrorApiWeakPassword.fromJson(
            json
          );
                case 'errorApiUnexpectedResponse':
          return _ErrorApiUnexpectedResponse.fromJson(
            json
          );
                case 'errorApiNetworkRequestFailed':
          return _ErrorApiNetworkRequestFailed.fromJson(
            json
          );
                case 'errorApiTooManyRequests':
          return _ErrorApiTooManyRequests.fromJson(
            json
          );
                case 'errorApiBadRequest':
          return _ErrorApiBadRequest.fromJson(
            json
          );
                case 'errorApiNotFound':
          return _ErrorApiNotFound.fromJson(
            json
          );
                case 'errorApiResourceAlreadyExists':
          return _ErrorApiResourceAlreadyExists.fromJson(
            json
          );
                case 'errorApiResourceUnauthorized':
          return _ErrorApiResourceUnauthorized.fromJson(
            json
          );
                case 'errorApiServerIssue':
          return _ErrorApiServerIssue.fromJson(
            json
          );
                case 'errorApiBotOperationIssue':
          return _ErrorApiBotOperationIssue.fromJson(
            json
          );
                case 'errorApiBotStartTimePast':
          return _ErrorApiBotStartTimePast.fromJson(
            json
          );
                case 'errorClientUnknown':
          return _ErrorClientUnknown.fromJson(
            json
          );
                case 'errorClientUnexpectedResponse':
          return _ErrorClientUnexpectedResponse.fromJson(
            json
          );
                case 'errorClientDioTimeout':
          return _ErrorClientDioTimeout.fromJson(
            json
          );
                case 'errorClientDioCancel':
          return _ErrorClientDioCancel.fromJson(
            json
          );
                case 'errorClientDioConnection':
          return _ErrorClientDioConnection.fromJson(
            json
          );
                case 'errorClientStatusCode2XX':
          return _ErrorClientStatusCode2XX.fromJson(
            json
          );
                case 'errorClientStatusCode4XX':
          return _ErrorClientStatusCode4XX.fromJson(
            json
          );
                case 'errorClientStatusCode401':
          return _ErrorClientStatusCode401.fromJson(
            json
          );
                case 'errorClientStatusCode407':
          return _ErrorClientStatusCode407.fromJson(
            json
          );
                case 'errorClientStatusCode408':
          return _ErrorClientStatusCode408.fromJson(
            json
          );
                case 'errorClientStatusCode409':
          return _ErrorClientStatusCode409.fromJson(
            json
          );
                case 'errorClientStatusCode413':
          return _ErrorClientStatusCode413.fromJson(
            json
          );
                case 'errorClientStatusCode414':
          return _ErrorClientStatusCode414.fromJson(
            json
          );
                case 'errorClientStatusCode429':
          return _ErrorClientStatusCode429.fromJson(
            json
          );
                case 'errorClientStatusCode5XX':
          return _ErrorClientStatusCode5XX.fromJson(
            json
          );
                case 'errorClientStatusCode504':
          return _ErrorClientStatusCode504.fromJson(
            json
          );
                case 'errorClientGooleNotYetAuthenticated':
          return _ErrorClientGooleNotYetAuthenticated.fromJson(
            json
          );
                case 'errorClientGooleAuthentication':
          return _ErrorClientGooleAuthentication.fromJson(
            json
          );
                case 'errorClientWebNotSupported':
          return _ErrorClientWebNotSupported.fromJson(
            json
          );
                case 'errorClientMobileNotSupported':
          return _ErrorClientMobileNotSupported.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'code',
  'AppMessageCode',
  'Invalid union type "${json['code']}"!'
);
        }
      
}

/// @nodoc
mixin _$AppMessageCode {

 String? get message;
/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppMessageCodeCopyWith<AppMessageCode> get copyWith => _$AppMessageCodeCopyWithImpl<AppMessageCode>(this as AppMessageCode, _$identity);

  /// Serializes this AppMessageCode to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppMessageCode&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppMessageCode(message: $message)';
}


}

/// @nodoc
abstract mixin class $AppMessageCodeCopyWith<$Res>  {
  factory $AppMessageCodeCopyWith(AppMessageCode value, $Res Function(AppMessageCode) _then) = _$AppMessageCodeCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$AppMessageCodeCopyWithImpl<$Res>
    implements $AppMessageCodeCopyWith<$Res> {
  _$AppMessageCodeCopyWithImpl(this._self, this._then);

  final AppMessageCode _self;
  final $Res Function(AppMessageCode) _then;

/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = freezed,}) {
  return _then(_self.copyWith(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _InfoApiRequestSuccess implements AppMessageCode {
  const _InfoApiRequestSuccess({this.message, final  String? $type}): $type = $type ?? 'infoApiRequestSuccess';
  factory _InfoApiRequestSuccess.fromJson(Map<String, dynamic> json) => _$InfoApiRequestSuccessFromJson(json);

@override final  String? message;

@JsonKey(name: 'code')
final String $type;


/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InfoApiRequestSuccessCopyWith<_InfoApiRequestSuccess> get copyWith => __$InfoApiRequestSuccessCopyWithImpl<_InfoApiRequestSuccess>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InfoApiRequestSuccessToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InfoApiRequestSuccess&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppMessageCode.infoApiRequestSuccess(message: $message)';
}


}

/// @nodoc
abstract mixin class _$InfoApiRequestSuccessCopyWith<$Res> implements $AppMessageCodeCopyWith<$Res> {
  factory _$InfoApiRequestSuccessCopyWith(_InfoApiRequestSuccess value, $Res Function(_InfoApiRequestSuccess) _then) = __$InfoApiRequestSuccessCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$InfoApiRequestSuccessCopyWithImpl<$Res>
    implements _$InfoApiRequestSuccessCopyWith<$Res> {
  __$InfoApiRequestSuccessCopyWithImpl(this._self, this._then);

  final _InfoApiRequestSuccess _self;
  final $Res Function(_InfoApiRequestSuccess) _then;

/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_InfoApiRequestSuccess(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _InfoGoogleSignInCanceled implements AppMessageCode {
  const _InfoGoogleSignInCanceled({this.message, final  String? $type}): $type = $type ?? 'infoGoogleSignInCanceled';
  factory _InfoGoogleSignInCanceled.fromJson(Map<String, dynamic> json) => _$InfoGoogleSignInCanceledFromJson(json);

@override final  String? message;

@JsonKey(name: 'code')
final String $type;


/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InfoGoogleSignInCanceledCopyWith<_InfoGoogleSignInCanceled> get copyWith => __$InfoGoogleSignInCanceledCopyWithImpl<_InfoGoogleSignInCanceled>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InfoGoogleSignInCanceledToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InfoGoogleSignInCanceled&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppMessageCode.infoGoogleSignInCanceled(message: $message)';
}


}

/// @nodoc
abstract mixin class _$InfoGoogleSignInCanceledCopyWith<$Res> implements $AppMessageCodeCopyWith<$Res> {
  factory _$InfoGoogleSignInCanceledCopyWith(_InfoGoogleSignInCanceled value, $Res Function(_InfoGoogleSignInCanceled) _then) = __$InfoGoogleSignInCanceledCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$InfoGoogleSignInCanceledCopyWithImpl<$Res>
    implements _$InfoGoogleSignInCanceledCopyWith<$Res> {
  __$InfoGoogleSignInCanceledCopyWithImpl(this._self, this._then);

  final _InfoGoogleSignInCanceled _self;
  final $Res Function(_InfoGoogleSignInCanceled) _then;

/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_InfoGoogleSignInCanceled(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _ErrorApiAuthenticationInvalid implements AppMessageCode {
  const _ErrorApiAuthenticationInvalid({this.message, final  String? $type}): $type = $type ?? 'errorApiAuthenticationInvalid';
  factory _ErrorApiAuthenticationInvalid.fromJson(Map<String, dynamic> json) => _$ErrorApiAuthenticationInvalidFromJson(json);

@override final  String? message;

@JsonKey(name: 'code')
final String $type;


/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorApiAuthenticationInvalidCopyWith<_ErrorApiAuthenticationInvalid> get copyWith => __$ErrorApiAuthenticationInvalidCopyWithImpl<_ErrorApiAuthenticationInvalid>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorApiAuthenticationInvalidToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorApiAuthenticationInvalid&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppMessageCode.errorApiAuthenticationInvalid(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorApiAuthenticationInvalidCopyWith<$Res> implements $AppMessageCodeCopyWith<$Res> {
  factory _$ErrorApiAuthenticationInvalidCopyWith(_ErrorApiAuthenticationInvalid value, $Res Function(_ErrorApiAuthenticationInvalid) _then) = __$ErrorApiAuthenticationInvalidCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$ErrorApiAuthenticationInvalidCopyWithImpl<$Res>
    implements _$ErrorApiAuthenticationInvalidCopyWith<$Res> {
  __$ErrorApiAuthenticationInvalidCopyWithImpl(this._self, this._then);

  final _ErrorApiAuthenticationInvalid _self;
  final $Res Function(_ErrorApiAuthenticationInvalid) _then;

/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_ErrorApiAuthenticationInvalid(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _ErrorApiTokenExpired implements AppMessageCode {
  const _ErrorApiTokenExpired({this.message, final  String? $type}): $type = $type ?? 'errorApiTokenExpired';
  factory _ErrorApiTokenExpired.fromJson(Map<String, dynamic> json) => _$ErrorApiTokenExpiredFromJson(json);

@override final  String? message;

@JsonKey(name: 'code')
final String $type;


/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorApiTokenExpiredCopyWith<_ErrorApiTokenExpired> get copyWith => __$ErrorApiTokenExpiredCopyWithImpl<_ErrorApiTokenExpired>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorApiTokenExpiredToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorApiTokenExpired&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppMessageCode.errorApiTokenExpired(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorApiTokenExpiredCopyWith<$Res> implements $AppMessageCodeCopyWith<$Res> {
  factory _$ErrorApiTokenExpiredCopyWith(_ErrorApiTokenExpired value, $Res Function(_ErrorApiTokenExpired) _then) = __$ErrorApiTokenExpiredCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$ErrorApiTokenExpiredCopyWithImpl<$Res>
    implements _$ErrorApiTokenExpiredCopyWith<$Res> {
  __$ErrorApiTokenExpiredCopyWithImpl(this._self, this._then);

  final _ErrorApiTokenExpired _self;
  final $Res Function(_ErrorApiTokenExpired) _then;

/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_ErrorApiTokenExpired(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _ErrorApiAccountNotFound implements AppMessageCode {
  const _ErrorApiAccountNotFound({this.message, final  String? $type}): $type = $type ?? 'errorApiAccountNotFound';
  factory _ErrorApiAccountNotFound.fromJson(Map<String, dynamic> json) => _$ErrorApiAccountNotFoundFromJson(json);

@override final  String? message;

@JsonKey(name: 'code')
final String $type;


/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorApiAccountNotFoundCopyWith<_ErrorApiAccountNotFound> get copyWith => __$ErrorApiAccountNotFoundCopyWithImpl<_ErrorApiAccountNotFound>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorApiAccountNotFoundToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorApiAccountNotFound&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppMessageCode.errorApiAccountNotFound(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorApiAccountNotFoundCopyWith<$Res> implements $AppMessageCodeCopyWith<$Res> {
  factory _$ErrorApiAccountNotFoundCopyWith(_ErrorApiAccountNotFound value, $Res Function(_ErrorApiAccountNotFound) _then) = __$ErrorApiAccountNotFoundCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$ErrorApiAccountNotFoundCopyWithImpl<$Res>
    implements _$ErrorApiAccountNotFoundCopyWith<$Res> {
  __$ErrorApiAccountNotFoundCopyWithImpl(this._self, this._then);

  final _ErrorApiAccountNotFound _self;
  final $Res Function(_ErrorApiAccountNotFound) _then;

/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_ErrorApiAccountNotFound(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _ErrorApiOperationNotAllowed implements AppMessageCode {
  const _ErrorApiOperationNotAllowed({this.message, final  String? $type}): $type = $type ?? 'errorApiOperationNotAllowed';
  factory _ErrorApiOperationNotAllowed.fromJson(Map<String, dynamic> json) => _$ErrorApiOperationNotAllowedFromJson(json);

@override final  String? message;

@JsonKey(name: 'code')
final String $type;


/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorApiOperationNotAllowedCopyWith<_ErrorApiOperationNotAllowed> get copyWith => __$ErrorApiOperationNotAllowedCopyWithImpl<_ErrorApiOperationNotAllowed>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorApiOperationNotAllowedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorApiOperationNotAllowed&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppMessageCode.errorApiOperationNotAllowed(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorApiOperationNotAllowedCopyWith<$Res> implements $AppMessageCodeCopyWith<$Res> {
  factory _$ErrorApiOperationNotAllowedCopyWith(_ErrorApiOperationNotAllowed value, $Res Function(_ErrorApiOperationNotAllowed) _then) = __$ErrorApiOperationNotAllowedCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$ErrorApiOperationNotAllowedCopyWithImpl<$Res>
    implements _$ErrorApiOperationNotAllowedCopyWith<$Res> {
  __$ErrorApiOperationNotAllowedCopyWithImpl(this._self, this._then);

  final _ErrorApiOperationNotAllowed _self;
  final $Res Function(_ErrorApiOperationNotAllowed) _then;

/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_ErrorApiOperationNotAllowed(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _ErrorApiInvalidEmail implements AppMessageCode {
  const _ErrorApiInvalidEmail({this.message, final  String? $type}): $type = $type ?? 'errorApiInvalidEmail';
  factory _ErrorApiInvalidEmail.fromJson(Map<String, dynamic> json) => _$ErrorApiInvalidEmailFromJson(json);

@override final  String? message;

@JsonKey(name: 'code')
final String $type;


/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorApiInvalidEmailCopyWith<_ErrorApiInvalidEmail> get copyWith => __$ErrorApiInvalidEmailCopyWithImpl<_ErrorApiInvalidEmail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorApiInvalidEmailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorApiInvalidEmail&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppMessageCode.errorApiInvalidEmail(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorApiInvalidEmailCopyWith<$Res> implements $AppMessageCodeCopyWith<$Res> {
  factory _$ErrorApiInvalidEmailCopyWith(_ErrorApiInvalidEmail value, $Res Function(_ErrorApiInvalidEmail) _then) = __$ErrorApiInvalidEmailCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$ErrorApiInvalidEmailCopyWithImpl<$Res>
    implements _$ErrorApiInvalidEmailCopyWith<$Res> {
  __$ErrorApiInvalidEmailCopyWithImpl(this._self, this._then);

  final _ErrorApiInvalidEmail _self;
  final $Res Function(_ErrorApiInvalidEmail) _then;

/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_ErrorApiInvalidEmail(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _ErrorApiEmailAlreadyUsed implements AppMessageCode {
  const _ErrorApiEmailAlreadyUsed({this.message, final  String? $type}): $type = $type ?? 'errorApiEmailAlreadyUsed';
  factory _ErrorApiEmailAlreadyUsed.fromJson(Map<String, dynamic> json) => _$ErrorApiEmailAlreadyUsedFromJson(json);

@override final  String? message;

@JsonKey(name: 'code')
final String $type;


/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorApiEmailAlreadyUsedCopyWith<_ErrorApiEmailAlreadyUsed> get copyWith => __$ErrorApiEmailAlreadyUsedCopyWithImpl<_ErrorApiEmailAlreadyUsed>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorApiEmailAlreadyUsedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorApiEmailAlreadyUsed&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppMessageCode.errorApiEmailAlreadyUsed(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorApiEmailAlreadyUsedCopyWith<$Res> implements $AppMessageCodeCopyWith<$Res> {
  factory _$ErrorApiEmailAlreadyUsedCopyWith(_ErrorApiEmailAlreadyUsed value, $Res Function(_ErrorApiEmailAlreadyUsed) _then) = __$ErrorApiEmailAlreadyUsedCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$ErrorApiEmailAlreadyUsedCopyWithImpl<$Res>
    implements _$ErrorApiEmailAlreadyUsedCopyWith<$Res> {
  __$ErrorApiEmailAlreadyUsedCopyWithImpl(this._self, this._then);

  final _ErrorApiEmailAlreadyUsed _self;
  final $Res Function(_ErrorApiEmailAlreadyUsed) _then;

/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_ErrorApiEmailAlreadyUsed(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _ErrorApiWeakPassword implements AppMessageCode {
  const _ErrorApiWeakPassword({this.message, final  String? $type}): $type = $type ?? 'errorApiWeakPassword';
  factory _ErrorApiWeakPassword.fromJson(Map<String, dynamic> json) => _$ErrorApiWeakPasswordFromJson(json);

@override final  String? message;

@JsonKey(name: 'code')
final String $type;


/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorApiWeakPasswordCopyWith<_ErrorApiWeakPassword> get copyWith => __$ErrorApiWeakPasswordCopyWithImpl<_ErrorApiWeakPassword>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorApiWeakPasswordToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorApiWeakPassword&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppMessageCode.errorApiWeakPassword(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorApiWeakPasswordCopyWith<$Res> implements $AppMessageCodeCopyWith<$Res> {
  factory _$ErrorApiWeakPasswordCopyWith(_ErrorApiWeakPassword value, $Res Function(_ErrorApiWeakPassword) _then) = __$ErrorApiWeakPasswordCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$ErrorApiWeakPasswordCopyWithImpl<$Res>
    implements _$ErrorApiWeakPasswordCopyWith<$Res> {
  __$ErrorApiWeakPasswordCopyWithImpl(this._self, this._then);

  final _ErrorApiWeakPassword _self;
  final $Res Function(_ErrorApiWeakPassword) _then;

/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_ErrorApiWeakPassword(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _ErrorApiUnexpectedResponse implements AppMessageCode {
  const _ErrorApiUnexpectedResponse({this.message, final  String? $type}): $type = $type ?? 'errorApiUnexpectedResponse';
  factory _ErrorApiUnexpectedResponse.fromJson(Map<String, dynamic> json) => _$ErrorApiUnexpectedResponseFromJson(json);

@override final  String? message;

@JsonKey(name: 'code')
final String $type;


/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorApiUnexpectedResponseCopyWith<_ErrorApiUnexpectedResponse> get copyWith => __$ErrorApiUnexpectedResponseCopyWithImpl<_ErrorApiUnexpectedResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorApiUnexpectedResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorApiUnexpectedResponse&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppMessageCode.errorApiUnexpectedResponse(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorApiUnexpectedResponseCopyWith<$Res> implements $AppMessageCodeCopyWith<$Res> {
  factory _$ErrorApiUnexpectedResponseCopyWith(_ErrorApiUnexpectedResponse value, $Res Function(_ErrorApiUnexpectedResponse) _then) = __$ErrorApiUnexpectedResponseCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$ErrorApiUnexpectedResponseCopyWithImpl<$Res>
    implements _$ErrorApiUnexpectedResponseCopyWith<$Res> {
  __$ErrorApiUnexpectedResponseCopyWithImpl(this._self, this._then);

  final _ErrorApiUnexpectedResponse _self;
  final $Res Function(_ErrorApiUnexpectedResponse) _then;

/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_ErrorApiUnexpectedResponse(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _ErrorApiNetworkRequestFailed implements AppMessageCode {
  const _ErrorApiNetworkRequestFailed({this.message, final  String? $type}): $type = $type ?? 'errorApiNetworkRequestFailed';
  factory _ErrorApiNetworkRequestFailed.fromJson(Map<String, dynamic> json) => _$ErrorApiNetworkRequestFailedFromJson(json);

@override final  String? message;

@JsonKey(name: 'code')
final String $type;


/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorApiNetworkRequestFailedCopyWith<_ErrorApiNetworkRequestFailed> get copyWith => __$ErrorApiNetworkRequestFailedCopyWithImpl<_ErrorApiNetworkRequestFailed>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorApiNetworkRequestFailedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorApiNetworkRequestFailed&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppMessageCode.errorApiNetworkRequestFailed(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorApiNetworkRequestFailedCopyWith<$Res> implements $AppMessageCodeCopyWith<$Res> {
  factory _$ErrorApiNetworkRequestFailedCopyWith(_ErrorApiNetworkRequestFailed value, $Res Function(_ErrorApiNetworkRequestFailed) _then) = __$ErrorApiNetworkRequestFailedCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$ErrorApiNetworkRequestFailedCopyWithImpl<$Res>
    implements _$ErrorApiNetworkRequestFailedCopyWith<$Res> {
  __$ErrorApiNetworkRequestFailedCopyWithImpl(this._self, this._then);

  final _ErrorApiNetworkRequestFailed _self;
  final $Res Function(_ErrorApiNetworkRequestFailed) _then;

/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_ErrorApiNetworkRequestFailed(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _ErrorApiTooManyRequests implements AppMessageCode {
  const _ErrorApiTooManyRequests({this.message, final  String? $type}): $type = $type ?? 'errorApiTooManyRequests';
  factory _ErrorApiTooManyRequests.fromJson(Map<String, dynamic> json) => _$ErrorApiTooManyRequestsFromJson(json);

@override final  String? message;

@JsonKey(name: 'code')
final String $type;


/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorApiTooManyRequestsCopyWith<_ErrorApiTooManyRequests> get copyWith => __$ErrorApiTooManyRequestsCopyWithImpl<_ErrorApiTooManyRequests>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorApiTooManyRequestsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorApiTooManyRequests&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppMessageCode.errorApiTooManyRequests(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorApiTooManyRequestsCopyWith<$Res> implements $AppMessageCodeCopyWith<$Res> {
  factory _$ErrorApiTooManyRequestsCopyWith(_ErrorApiTooManyRequests value, $Res Function(_ErrorApiTooManyRequests) _then) = __$ErrorApiTooManyRequestsCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$ErrorApiTooManyRequestsCopyWithImpl<$Res>
    implements _$ErrorApiTooManyRequestsCopyWith<$Res> {
  __$ErrorApiTooManyRequestsCopyWithImpl(this._self, this._then);

  final _ErrorApiTooManyRequests _self;
  final $Res Function(_ErrorApiTooManyRequests) _then;

/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_ErrorApiTooManyRequests(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _ErrorApiBadRequest implements AppMessageCode {
  const _ErrorApiBadRequest({this.message, final  String? $type}): $type = $type ?? 'errorApiBadRequest';
  factory _ErrorApiBadRequest.fromJson(Map<String, dynamic> json) => _$ErrorApiBadRequestFromJson(json);

@override final  String? message;

@JsonKey(name: 'code')
final String $type;


/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorApiBadRequestCopyWith<_ErrorApiBadRequest> get copyWith => __$ErrorApiBadRequestCopyWithImpl<_ErrorApiBadRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorApiBadRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorApiBadRequest&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppMessageCode.errorApiBadRequest(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorApiBadRequestCopyWith<$Res> implements $AppMessageCodeCopyWith<$Res> {
  factory _$ErrorApiBadRequestCopyWith(_ErrorApiBadRequest value, $Res Function(_ErrorApiBadRequest) _then) = __$ErrorApiBadRequestCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$ErrorApiBadRequestCopyWithImpl<$Res>
    implements _$ErrorApiBadRequestCopyWith<$Res> {
  __$ErrorApiBadRequestCopyWithImpl(this._self, this._then);

  final _ErrorApiBadRequest _self;
  final $Res Function(_ErrorApiBadRequest) _then;

/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_ErrorApiBadRequest(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _ErrorApiNotFound implements AppMessageCode {
  const _ErrorApiNotFound({this.message, final  String? $type}): $type = $type ?? 'errorApiNotFound';
  factory _ErrorApiNotFound.fromJson(Map<String, dynamic> json) => _$ErrorApiNotFoundFromJson(json);

@override final  String? message;

@JsonKey(name: 'code')
final String $type;


/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorApiNotFoundCopyWith<_ErrorApiNotFound> get copyWith => __$ErrorApiNotFoundCopyWithImpl<_ErrorApiNotFound>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorApiNotFoundToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorApiNotFound&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppMessageCode.errorApiNotFound(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorApiNotFoundCopyWith<$Res> implements $AppMessageCodeCopyWith<$Res> {
  factory _$ErrorApiNotFoundCopyWith(_ErrorApiNotFound value, $Res Function(_ErrorApiNotFound) _then) = __$ErrorApiNotFoundCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$ErrorApiNotFoundCopyWithImpl<$Res>
    implements _$ErrorApiNotFoundCopyWith<$Res> {
  __$ErrorApiNotFoundCopyWithImpl(this._self, this._then);

  final _ErrorApiNotFound _self;
  final $Res Function(_ErrorApiNotFound) _then;

/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_ErrorApiNotFound(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _ErrorApiResourceAlreadyExists implements AppMessageCode {
  const _ErrorApiResourceAlreadyExists({this.message, final  String? $type}): $type = $type ?? 'errorApiResourceAlreadyExists';
  factory _ErrorApiResourceAlreadyExists.fromJson(Map<String, dynamic> json) => _$ErrorApiResourceAlreadyExistsFromJson(json);

@override final  String? message;

@JsonKey(name: 'code')
final String $type;


/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorApiResourceAlreadyExistsCopyWith<_ErrorApiResourceAlreadyExists> get copyWith => __$ErrorApiResourceAlreadyExistsCopyWithImpl<_ErrorApiResourceAlreadyExists>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorApiResourceAlreadyExistsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorApiResourceAlreadyExists&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppMessageCode.errorApiResourceAlreadyExists(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorApiResourceAlreadyExistsCopyWith<$Res> implements $AppMessageCodeCopyWith<$Res> {
  factory _$ErrorApiResourceAlreadyExistsCopyWith(_ErrorApiResourceAlreadyExists value, $Res Function(_ErrorApiResourceAlreadyExists) _then) = __$ErrorApiResourceAlreadyExistsCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$ErrorApiResourceAlreadyExistsCopyWithImpl<$Res>
    implements _$ErrorApiResourceAlreadyExistsCopyWith<$Res> {
  __$ErrorApiResourceAlreadyExistsCopyWithImpl(this._self, this._then);

  final _ErrorApiResourceAlreadyExists _self;
  final $Res Function(_ErrorApiResourceAlreadyExists) _then;

/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_ErrorApiResourceAlreadyExists(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _ErrorApiResourceUnauthorized implements AppMessageCode {
  const _ErrorApiResourceUnauthorized({this.message, final  String? $type}): $type = $type ?? 'errorApiResourceUnauthorized';
  factory _ErrorApiResourceUnauthorized.fromJson(Map<String, dynamic> json) => _$ErrorApiResourceUnauthorizedFromJson(json);

@override final  String? message;

@JsonKey(name: 'code')
final String $type;


/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorApiResourceUnauthorizedCopyWith<_ErrorApiResourceUnauthorized> get copyWith => __$ErrorApiResourceUnauthorizedCopyWithImpl<_ErrorApiResourceUnauthorized>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorApiResourceUnauthorizedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorApiResourceUnauthorized&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppMessageCode.errorApiResourceUnauthorized(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorApiResourceUnauthorizedCopyWith<$Res> implements $AppMessageCodeCopyWith<$Res> {
  factory _$ErrorApiResourceUnauthorizedCopyWith(_ErrorApiResourceUnauthorized value, $Res Function(_ErrorApiResourceUnauthorized) _then) = __$ErrorApiResourceUnauthorizedCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$ErrorApiResourceUnauthorizedCopyWithImpl<$Res>
    implements _$ErrorApiResourceUnauthorizedCopyWith<$Res> {
  __$ErrorApiResourceUnauthorizedCopyWithImpl(this._self, this._then);

  final _ErrorApiResourceUnauthorized _self;
  final $Res Function(_ErrorApiResourceUnauthorized) _then;

/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_ErrorApiResourceUnauthorized(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _ErrorApiServerIssue implements AppMessageCode {
  const _ErrorApiServerIssue({this.message, final  String? $type}): $type = $type ?? 'errorApiServerIssue';
  factory _ErrorApiServerIssue.fromJson(Map<String, dynamic> json) => _$ErrorApiServerIssueFromJson(json);

@override final  String? message;

@JsonKey(name: 'code')
final String $type;


/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorApiServerIssueCopyWith<_ErrorApiServerIssue> get copyWith => __$ErrorApiServerIssueCopyWithImpl<_ErrorApiServerIssue>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorApiServerIssueToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorApiServerIssue&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppMessageCode.errorApiServerIssue(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorApiServerIssueCopyWith<$Res> implements $AppMessageCodeCopyWith<$Res> {
  factory _$ErrorApiServerIssueCopyWith(_ErrorApiServerIssue value, $Res Function(_ErrorApiServerIssue) _then) = __$ErrorApiServerIssueCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$ErrorApiServerIssueCopyWithImpl<$Res>
    implements _$ErrorApiServerIssueCopyWith<$Res> {
  __$ErrorApiServerIssueCopyWithImpl(this._self, this._then);

  final _ErrorApiServerIssue _self;
  final $Res Function(_ErrorApiServerIssue) _then;

/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_ErrorApiServerIssue(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _ErrorApiBotOperationIssue implements AppMessageCode {
  const _ErrorApiBotOperationIssue({this.message, final  String? $type}): $type = $type ?? 'errorApiBotOperationIssue';
  factory _ErrorApiBotOperationIssue.fromJson(Map<String, dynamic> json) => _$ErrorApiBotOperationIssueFromJson(json);

@override final  String? message;

@JsonKey(name: 'code')
final String $type;


/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorApiBotOperationIssueCopyWith<_ErrorApiBotOperationIssue> get copyWith => __$ErrorApiBotOperationIssueCopyWithImpl<_ErrorApiBotOperationIssue>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorApiBotOperationIssueToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorApiBotOperationIssue&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppMessageCode.errorApiBotOperationIssue(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorApiBotOperationIssueCopyWith<$Res> implements $AppMessageCodeCopyWith<$Res> {
  factory _$ErrorApiBotOperationIssueCopyWith(_ErrorApiBotOperationIssue value, $Res Function(_ErrorApiBotOperationIssue) _then) = __$ErrorApiBotOperationIssueCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$ErrorApiBotOperationIssueCopyWithImpl<$Res>
    implements _$ErrorApiBotOperationIssueCopyWith<$Res> {
  __$ErrorApiBotOperationIssueCopyWithImpl(this._self, this._then);

  final _ErrorApiBotOperationIssue _self;
  final $Res Function(_ErrorApiBotOperationIssue) _then;

/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_ErrorApiBotOperationIssue(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _ErrorApiBotStartTimePast implements AppMessageCode {
  const _ErrorApiBotStartTimePast({this.message, final  String? $type}): $type = $type ?? 'errorApiBotStartTimePast';
  factory _ErrorApiBotStartTimePast.fromJson(Map<String, dynamic> json) => _$ErrorApiBotStartTimePastFromJson(json);

@override final  String? message;

@JsonKey(name: 'code')
final String $type;


/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorApiBotStartTimePastCopyWith<_ErrorApiBotStartTimePast> get copyWith => __$ErrorApiBotStartTimePastCopyWithImpl<_ErrorApiBotStartTimePast>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorApiBotStartTimePastToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorApiBotStartTimePast&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppMessageCode.errorApiBotStartTimePast(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorApiBotStartTimePastCopyWith<$Res> implements $AppMessageCodeCopyWith<$Res> {
  factory _$ErrorApiBotStartTimePastCopyWith(_ErrorApiBotStartTimePast value, $Res Function(_ErrorApiBotStartTimePast) _then) = __$ErrorApiBotStartTimePastCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$ErrorApiBotStartTimePastCopyWithImpl<$Res>
    implements _$ErrorApiBotStartTimePastCopyWith<$Res> {
  __$ErrorApiBotStartTimePastCopyWithImpl(this._self, this._then);

  final _ErrorApiBotStartTimePast _self;
  final $Res Function(_ErrorApiBotStartTimePast) _then;

/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_ErrorApiBotStartTimePast(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _ErrorClientUnknown implements AppMessageCode {
  const _ErrorClientUnknown({this.message, final  String? $type}): $type = $type ?? 'errorClientUnknown';
  factory _ErrorClientUnknown.fromJson(Map<String, dynamic> json) => _$ErrorClientUnknownFromJson(json);

@override final  String? message;

@JsonKey(name: 'code')
final String $type;


/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorClientUnknownCopyWith<_ErrorClientUnknown> get copyWith => __$ErrorClientUnknownCopyWithImpl<_ErrorClientUnknown>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorClientUnknownToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorClientUnknown&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppMessageCode.errorClientUnknown(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorClientUnknownCopyWith<$Res> implements $AppMessageCodeCopyWith<$Res> {
  factory _$ErrorClientUnknownCopyWith(_ErrorClientUnknown value, $Res Function(_ErrorClientUnknown) _then) = __$ErrorClientUnknownCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$ErrorClientUnknownCopyWithImpl<$Res>
    implements _$ErrorClientUnknownCopyWith<$Res> {
  __$ErrorClientUnknownCopyWithImpl(this._self, this._then);

  final _ErrorClientUnknown _self;
  final $Res Function(_ErrorClientUnknown) _then;

/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_ErrorClientUnknown(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _ErrorClientUnexpectedResponse implements AppMessageCode {
  const _ErrorClientUnexpectedResponse({this.message, final  String? $type}): $type = $type ?? 'errorClientUnexpectedResponse';
  factory _ErrorClientUnexpectedResponse.fromJson(Map<String, dynamic> json) => _$ErrorClientUnexpectedResponseFromJson(json);

@override final  String? message;

@JsonKey(name: 'code')
final String $type;


/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorClientUnexpectedResponseCopyWith<_ErrorClientUnexpectedResponse> get copyWith => __$ErrorClientUnexpectedResponseCopyWithImpl<_ErrorClientUnexpectedResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorClientUnexpectedResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorClientUnexpectedResponse&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppMessageCode.errorClientUnexpectedResponse(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorClientUnexpectedResponseCopyWith<$Res> implements $AppMessageCodeCopyWith<$Res> {
  factory _$ErrorClientUnexpectedResponseCopyWith(_ErrorClientUnexpectedResponse value, $Res Function(_ErrorClientUnexpectedResponse) _then) = __$ErrorClientUnexpectedResponseCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$ErrorClientUnexpectedResponseCopyWithImpl<$Res>
    implements _$ErrorClientUnexpectedResponseCopyWith<$Res> {
  __$ErrorClientUnexpectedResponseCopyWithImpl(this._self, this._then);

  final _ErrorClientUnexpectedResponse _self;
  final $Res Function(_ErrorClientUnexpectedResponse) _then;

/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_ErrorClientUnexpectedResponse(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _ErrorClientDioTimeout implements AppMessageCode {
  const _ErrorClientDioTimeout({this.message, final  String? $type}): $type = $type ?? 'errorClientDioTimeout';
  factory _ErrorClientDioTimeout.fromJson(Map<String, dynamic> json) => _$ErrorClientDioTimeoutFromJson(json);

@override final  String? message;

@JsonKey(name: 'code')
final String $type;


/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorClientDioTimeoutCopyWith<_ErrorClientDioTimeout> get copyWith => __$ErrorClientDioTimeoutCopyWithImpl<_ErrorClientDioTimeout>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorClientDioTimeoutToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorClientDioTimeout&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppMessageCode.errorClientDioTimeout(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorClientDioTimeoutCopyWith<$Res> implements $AppMessageCodeCopyWith<$Res> {
  factory _$ErrorClientDioTimeoutCopyWith(_ErrorClientDioTimeout value, $Res Function(_ErrorClientDioTimeout) _then) = __$ErrorClientDioTimeoutCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$ErrorClientDioTimeoutCopyWithImpl<$Res>
    implements _$ErrorClientDioTimeoutCopyWith<$Res> {
  __$ErrorClientDioTimeoutCopyWithImpl(this._self, this._then);

  final _ErrorClientDioTimeout _self;
  final $Res Function(_ErrorClientDioTimeout) _then;

/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_ErrorClientDioTimeout(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _ErrorClientDioCancel implements AppMessageCode {
  const _ErrorClientDioCancel({this.message, final  String? $type}): $type = $type ?? 'errorClientDioCancel';
  factory _ErrorClientDioCancel.fromJson(Map<String, dynamic> json) => _$ErrorClientDioCancelFromJson(json);

@override final  String? message;

@JsonKey(name: 'code')
final String $type;


/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorClientDioCancelCopyWith<_ErrorClientDioCancel> get copyWith => __$ErrorClientDioCancelCopyWithImpl<_ErrorClientDioCancel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorClientDioCancelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorClientDioCancel&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppMessageCode.errorClientDioCancel(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorClientDioCancelCopyWith<$Res> implements $AppMessageCodeCopyWith<$Res> {
  factory _$ErrorClientDioCancelCopyWith(_ErrorClientDioCancel value, $Res Function(_ErrorClientDioCancel) _then) = __$ErrorClientDioCancelCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$ErrorClientDioCancelCopyWithImpl<$Res>
    implements _$ErrorClientDioCancelCopyWith<$Res> {
  __$ErrorClientDioCancelCopyWithImpl(this._self, this._then);

  final _ErrorClientDioCancel _self;
  final $Res Function(_ErrorClientDioCancel) _then;

/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_ErrorClientDioCancel(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _ErrorClientDioConnection implements AppMessageCode {
  const _ErrorClientDioConnection({this.message, final  String? $type}): $type = $type ?? 'errorClientDioConnection';
  factory _ErrorClientDioConnection.fromJson(Map<String, dynamic> json) => _$ErrorClientDioConnectionFromJson(json);

@override final  String? message;

@JsonKey(name: 'code')
final String $type;


/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorClientDioConnectionCopyWith<_ErrorClientDioConnection> get copyWith => __$ErrorClientDioConnectionCopyWithImpl<_ErrorClientDioConnection>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorClientDioConnectionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorClientDioConnection&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppMessageCode.errorClientDioConnection(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorClientDioConnectionCopyWith<$Res> implements $AppMessageCodeCopyWith<$Res> {
  factory _$ErrorClientDioConnectionCopyWith(_ErrorClientDioConnection value, $Res Function(_ErrorClientDioConnection) _then) = __$ErrorClientDioConnectionCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$ErrorClientDioConnectionCopyWithImpl<$Res>
    implements _$ErrorClientDioConnectionCopyWith<$Res> {
  __$ErrorClientDioConnectionCopyWithImpl(this._self, this._then);

  final _ErrorClientDioConnection _self;
  final $Res Function(_ErrorClientDioConnection) _then;

/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_ErrorClientDioConnection(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _ErrorClientStatusCode2XX implements AppMessageCode {
  const _ErrorClientStatusCode2XX({this.message, final  String? $type}): $type = $type ?? 'errorClientStatusCode2XX';
  factory _ErrorClientStatusCode2XX.fromJson(Map<String, dynamic> json) => _$ErrorClientStatusCode2XXFromJson(json);

@override final  String? message;

@JsonKey(name: 'code')
final String $type;


/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorClientStatusCode2XXCopyWith<_ErrorClientStatusCode2XX> get copyWith => __$ErrorClientStatusCode2XXCopyWithImpl<_ErrorClientStatusCode2XX>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorClientStatusCode2XXToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorClientStatusCode2XX&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppMessageCode.errorClientStatusCode2XX(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorClientStatusCode2XXCopyWith<$Res> implements $AppMessageCodeCopyWith<$Res> {
  factory _$ErrorClientStatusCode2XXCopyWith(_ErrorClientStatusCode2XX value, $Res Function(_ErrorClientStatusCode2XX) _then) = __$ErrorClientStatusCode2XXCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$ErrorClientStatusCode2XXCopyWithImpl<$Res>
    implements _$ErrorClientStatusCode2XXCopyWith<$Res> {
  __$ErrorClientStatusCode2XXCopyWithImpl(this._self, this._then);

  final _ErrorClientStatusCode2XX _self;
  final $Res Function(_ErrorClientStatusCode2XX) _then;

/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_ErrorClientStatusCode2XX(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _ErrorClientStatusCode4XX implements AppMessageCode {
  const _ErrorClientStatusCode4XX({this.message, final  String? $type}): $type = $type ?? 'errorClientStatusCode4XX';
  factory _ErrorClientStatusCode4XX.fromJson(Map<String, dynamic> json) => _$ErrorClientStatusCode4XXFromJson(json);

@override final  String? message;

@JsonKey(name: 'code')
final String $type;


/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorClientStatusCode4XXCopyWith<_ErrorClientStatusCode4XX> get copyWith => __$ErrorClientStatusCode4XXCopyWithImpl<_ErrorClientStatusCode4XX>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorClientStatusCode4XXToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorClientStatusCode4XX&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppMessageCode.errorClientStatusCode4XX(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorClientStatusCode4XXCopyWith<$Res> implements $AppMessageCodeCopyWith<$Res> {
  factory _$ErrorClientStatusCode4XXCopyWith(_ErrorClientStatusCode4XX value, $Res Function(_ErrorClientStatusCode4XX) _then) = __$ErrorClientStatusCode4XXCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$ErrorClientStatusCode4XXCopyWithImpl<$Res>
    implements _$ErrorClientStatusCode4XXCopyWith<$Res> {
  __$ErrorClientStatusCode4XXCopyWithImpl(this._self, this._then);

  final _ErrorClientStatusCode4XX _self;
  final $Res Function(_ErrorClientStatusCode4XX) _then;

/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_ErrorClientStatusCode4XX(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _ErrorClientStatusCode401 implements AppMessageCode {
  const _ErrorClientStatusCode401({this.message, final  String? $type}): $type = $type ?? 'errorClientStatusCode401';
  factory _ErrorClientStatusCode401.fromJson(Map<String, dynamic> json) => _$ErrorClientStatusCode401FromJson(json);

@override final  String? message;

@JsonKey(name: 'code')
final String $type;


/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorClientStatusCode401CopyWith<_ErrorClientStatusCode401> get copyWith => __$ErrorClientStatusCode401CopyWithImpl<_ErrorClientStatusCode401>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorClientStatusCode401ToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorClientStatusCode401&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppMessageCode.errorClientStatusCode401(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorClientStatusCode401CopyWith<$Res> implements $AppMessageCodeCopyWith<$Res> {
  factory _$ErrorClientStatusCode401CopyWith(_ErrorClientStatusCode401 value, $Res Function(_ErrorClientStatusCode401) _then) = __$ErrorClientStatusCode401CopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$ErrorClientStatusCode401CopyWithImpl<$Res>
    implements _$ErrorClientStatusCode401CopyWith<$Res> {
  __$ErrorClientStatusCode401CopyWithImpl(this._self, this._then);

  final _ErrorClientStatusCode401 _self;
  final $Res Function(_ErrorClientStatusCode401) _then;

/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_ErrorClientStatusCode401(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _ErrorClientStatusCode407 implements AppMessageCode {
  const _ErrorClientStatusCode407({this.message, final  String? $type}): $type = $type ?? 'errorClientStatusCode407';
  factory _ErrorClientStatusCode407.fromJson(Map<String, dynamic> json) => _$ErrorClientStatusCode407FromJson(json);

@override final  String? message;

@JsonKey(name: 'code')
final String $type;


/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorClientStatusCode407CopyWith<_ErrorClientStatusCode407> get copyWith => __$ErrorClientStatusCode407CopyWithImpl<_ErrorClientStatusCode407>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorClientStatusCode407ToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorClientStatusCode407&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppMessageCode.errorClientStatusCode407(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorClientStatusCode407CopyWith<$Res> implements $AppMessageCodeCopyWith<$Res> {
  factory _$ErrorClientStatusCode407CopyWith(_ErrorClientStatusCode407 value, $Res Function(_ErrorClientStatusCode407) _then) = __$ErrorClientStatusCode407CopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$ErrorClientStatusCode407CopyWithImpl<$Res>
    implements _$ErrorClientStatusCode407CopyWith<$Res> {
  __$ErrorClientStatusCode407CopyWithImpl(this._self, this._then);

  final _ErrorClientStatusCode407 _self;
  final $Res Function(_ErrorClientStatusCode407) _then;

/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_ErrorClientStatusCode407(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _ErrorClientStatusCode408 implements AppMessageCode {
  const _ErrorClientStatusCode408({this.message, final  String? $type}): $type = $type ?? 'errorClientStatusCode408';
  factory _ErrorClientStatusCode408.fromJson(Map<String, dynamic> json) => _$ErrorClientStatusCode408FromJson(json);

@override final  String? message;

@JsonKey(name: 'code')
final String $type;


/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorClientStatusCode408CopyWith<_ErrorClientStatusCode408> get copyWith => __$ErrorClientStatusCode408CopyWithImpl<_ErrorClientStatusCode408>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorClientStatusCode408ToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorClientStatusCode408&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppMessageCode.errorClientStatusCode408(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorClientStatusCode408CopyWith<$Res> implements $AppMessageCodeCopyWith<$Res> {
  factory _$ErrorClientStatusCode408CopyWith(_ErrorClientStatusCode408 value, $Res Function(_ErrorClientStatusCode408) _then) = __$ErrorClientStatusCode408CopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$ErrorClientStatusCode408CopyWithImpl<$Res>
    implements _$ErrorClientStatusCode408CopyWith<$Res> {
  __$ErrorClientStatusCode408CopyWithImpl(this._self, this._then);

  final _ErrorClientStatusCode408 _self;
  final $Res Function(_ErrorClientStatusCode408) _then;

/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_ErrorClientStatusCode408(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _ErrorClientStatusCode409 implements AppMessageCode {
  const _ErrorClientStatusCode409({this.message, final  String? $type}): $type = $type ?? 'errorClientStatusCode409';
  factory _ErrorClientStatusCode409.fromJson(Map<String, dynamic> json) => _$ErrorClientStatusCode409FromJson(json);

@override final  String? message;

@JsonKey(name: 'code')
final String $type;


/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorClientStatusCode409CopyWith<_ErrorClientStatusCode409> get copyWith => __$ErrorClientStatusCode409CopyWithImpl<_ErrorClientStatusCode409>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorClientStatusCode409ToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorClientStatusCode409&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppMessageCode.errorClientStatusCode409(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorClientStatusCode409CopyWith<$Res> implements $AppMessageCodeCopyWith<$Res> {
  factory _$ErrorClientStatusCode409CopyWith(_ErrorClientStatusCode409 value, $Res Function(_ErrorClientStatusCode409) _then) = __$ErrorClientStatusCode409CopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$ErrorClientStatusCode409CopyWithImpl<$Res>
    implements _$ErrorClientStatusCode409CopyWith<$Res> {
  __$ErrorClientStatusCode409CopyWithImpl(this._self, this._then);

  final _ErrorClientStatusCode409 _self;
  final $Res Function(_ErrorClientStatusCode409) _then;

/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_ErrorClientStatusCode409(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _ErrorClientStatusCode413 implements AppMessageCode {
  const _ErrorClientStatusCode413({this.message, final  String? $type}): $type = $type ?? 'errorClientStatusCode413';
  factory _ErrorClientStatusCode413.fromJson(Map<String, dynamic> json) => _$ErrorClientStatusCode413FromJson(json);

@override final  String? message;

@JsonKey(name: 'code')
final String $type;


/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorClientStatusCode413CopyWith<_ErrorClientStatusCode413> get copyWith => __$ErrorClientStatusCode413CopyWithImpl<_ErrorClientStatusCode413>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorClientStatusCode413ToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorClientStatusCode413&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppMessageCode.errorClientStatusCode413(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorClientStatusCode413CopyWith<$Res> implements $AppMessageCodeCopyWith<$Res> {
  factory _$ErrorClientStatusCode413CopyWith(_ErrorClientStatusCode413 value, $Res Function(_ErrorClientStatusCode413) _then) = __$ErrorClientStatusCode413CopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$ErrorClientStatusCode413CopyWithImpl<$Res>
    implements _$ErrorClientStatusCode413CopyWith<$Res> {
  __$ErrorClientStatusCode413CopyWithImpl(this._self, this._then);

  final _ErrorClientStatusCode413 _self;
  final $Res Function(_ErrorClientStatusCode413) _then;

/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_ErrorClientStatusCode413(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _ErrorClientStatusCode414 implements AppMessageCode {
  const _ErrorClientStatusCode414({this.message, final  String? $type}): $type = $type ?? 'errorClientStatusCode414';
  factory _ErrorClientStatusCode414.fromJson(Map<String, dynamic> json) => _$ErrorClientStatusCode414FromJson(json);

@override final  String? message;

@JsonKey(name: 'code')
final String $type;


/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorClientStatusCode414CopyWith<_ErrorClientStatusCode414> get copyWith => __$ErrorClientStatusCode414CopyWithImpl<_ErrorClientStatusCode414>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorClientStatusCode414ToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorClientStatusCode414&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppMessageCode.errorClientStatusCode414(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorClientStatusCode414CopyWith<$Res> implements $AppMessageCodeCopyWith<$Res> {
  factory _$ErrorClientStatusCode414CopyWith(_ErrorClientStatusCode414 value, $Res Function(_ErrorClientStatusCode414) _then) = __$ErrorClientStatusCode414CopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$ErrorClientStatusCode414CopyWithImpl<$Res>
    implements _$ErrorClientStatusCode414CopyWith<$Res> {
  __$ErrorClientStatusCode414CopyWithImpl(this._self, this._then);

  final _ErrorClientStatusCode414 _self;
  final $Res Function(_ErrorClientStatusCode414) _then;

/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_ErrorClientStatusCode414(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _ErrorClientStatusCode429 implements AppMessageCode {
  const _ErrorClientStatusCode429({this.message, final  String? $type}): $type = $type ?? 'errorClientStatusCode429';
  factory _ErrorClientStatusCode429.fromJson(Map<String, dynamic> json) => _$ErrorClientStatusCode429FromJson(json);

@override final  String? message;

@JsonKey(name: 'code')
final String $type;


/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorClientStatusCode429CopyWith<_ErrorClientStatusCode429> get copyWith => __$ErrorClientStatusCode429CopyWithImpl<_ErrorClientStatusCode429>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorClientStatusCode429ToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorClientStatusCode429&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppMessageCode.errorClientStatusCode429(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorClientStatusCode429CopyWith<$Res> implements $AppMessageCodeCopyWith<$Res> {
  factory _$ErrorClientStatusCode429CopyWith(_ErrorClientStatusCode429 value, $Res Function(_ErrorClientStatusCode429) _then) = __$ErrorClientStatusCode429CopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$ErrorClientStatusCode429CopyWithImpl<$Res>
    implements _$ErrorClientStatusCode429CopyWith<$Res> {
  __$ErrorClientStatusCode429CopyWithImpl(this._self, this._then);

  final _ErrorClientStatusCode429 _self;
  final $Res Function(_ErrorClientStatusCode429) _then;

/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_ErrorClientStatusCode429(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _ErrorClientStatusCode5XX implements AppMessageCode {
  const _ErrorClientStatusCode5XX({this.message, final  String? $type}): $type = $type ?? 'errorClientStatusCode5XX';
  factory _ErrorClientStatusCode5XX.fromJson(Map<String, dynamic> json) => _$ErrorClientStatusCode5XXFromJson(json);

@override final  String? message;

@JsonKey(name: 'code')
final String $type;


/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorClientStatusCode5XXCopyWith<_ErrorClientStatusCode5XX> get copyWith => __$ErrorClientStatusCode5XXCopyWithImpl<_ErrorClientStatusCode5XX>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorClientStatusCode5XXToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorClientStatusCode5XX&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppMessageCode.errorClientStatusCode5XX(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorClientStatusCode5XXCopyWith<$Res> implements $AppMessageCodeCopyWith<$Res> {
  factory _$ErrorClientStatusCode5XXCopyWith(_ErrorClientStatusCode5XX value, $Res Function(_ErrorClientStatusCode5XX) _then) = __$ErrorClientStatusCode5XXCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$ErrorClientStatusCode5XXCopyWithImpl<$Res>
    implements _$ErrorClientStatusCode5XXCopyWith<$Res> {
  __$ErrorClientStatusCode5XXCopyWithImpl(this._self, this._then);

  final _ErrorClientStatusCode5XX _self;
  final $Res Function(_ErrorClientStatusCode5XX) _then;

/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_ErrorClientStatusCode5XX(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _ErrorClientStatusCode504 implements AppMessageCode {
  const _ErrorClientStatusCode504({this.message, final  String? $type}): $type = $type ?? 'errorClientStatusCode504';
  factory _ErrorClientStatusCode504.fromJson(Map<String, dynamic> json) => _$ErrorClientStatusCode504FromJson(json);

@override final  String? message;

@JsonKey(name: 'code')
final String $type;


/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorClientStatusCode504CopyWith<_ErrorClientStatusCode504> get copyWith => __$ErrorClientStatusCode504CopyWithImpl<_ErrorClientStatusCode504>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorClientStatusCode504ToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorClientStatusCode504&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppMessageCode.errorClientStatusCode504(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorClientStatusCode504CopyWith<$Res> implements $AppMessageCodeCopyWith<$Res> {
  factory _$ErrorClientStatusCode504CopyWith(_ErrorClientStatusCode504 value, $Res Function(_ErrorClientStatusCode504) _then) = __$ErrorClientStatusCode504CopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$ErrorClientStatusCode504CopyWithImpl<$Res>
    implements _$ErrorClientStatusCode504CopyWith<$Res> {
  __$ErrorClientStatusCode504CopyWithImpl(this._self, this._then);

  final _ErrorClientStatusCode504 _self;
  final $Res Function(_ErrorClientStatusCode504) _then;

/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_ErrorClientStatusCode504(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _ErrorClientGooleNotYetAuthenticated implements AppMessageCode {
  const _ErrorClientGooleNotYetAuthenticated({this.message, final  String? $type}): $type = $type ?? 'errorClientGooleNotYetAuthenticated';
  factory _ErrorClientGooleNotYetAuthenticated.fromJson(Map<String, dynamic> json) => _$ErrorClientGooleNotYetAuthenticatedFromJson(json);

@override final  String? message;

@JsonKey(name: 'code')
final String $type;


/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorClientGooleNotYetAuthenticatedCopyWith<_ErrorClientGooleNotYetAuthenticated> get copyWith => __$ErrorClientGooleNotYetAuthenticatedCopyWithImpl<_ErrorClientGooleNotYetAuthenticated>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorClientGooleNotYetAuthenticatedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorClientGooleNotYetAuthenticated&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppMessageCode.errorClientGooleNotYetAuthenticated(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorClientGooleNotYetAuthenticatedCopyWith<$Res> implements $AppMessageCodeCopyWith<$Res> {
  factory _$ErrorClientGooleNotYetAuthenticatedCopyWith(_ErrorClientGooleNotYetAuthenticated value, $Res Function(_ErrorClientGooleNotYetAuthenticated) _then) = __$ErrorClientGooleNotYetAuthenticatedCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$ErrorClientGooleNotYetAuthenticatedCopyWithImpl<$Res>
    implements _$ErrorClientGooleNotYetAuthenticatedCopyWith<$Res> {
  __$ErrorClientGooleNotYetAuthenticatedCopyWithImpl(this._self, this._then);

  final _ErrorClientGooleNotYetAuthenticated _self;
  final $Res Function(_ErrorClientGooleNotYetAuthenticated) _then;

/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_ErrorClientGooleNotYetAuthenticated(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _ErrorClientGooleAuthentication implements AppMessageCode {
  const _ErrorClientGooleAuthentication({this.message, final  String? $type}): $type = $type ?? 'errorClientGooleAuthentication';
  factory _ErrorClientGooleAuthentication.fromJson(Map<String, dynamic> json) => _$ErrorClientGooleAuthenticationFromJson(json);

@override final  String? message;

@JsonKey(name: 'code')
final String $type;


/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorClientGooleAuthenticationCopyWith<_ErrorClientGooleAuthentication> get copyWith => __$ErrorClientGooleAuthenticationCopyWithImpl<_ErrorClientGooleAuthentication>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorClientGooleAuthenticationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorClientGooleAuthentication&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppMessageCode.errorClientGooleAuthentication(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorClientGooleAuthenticationCopyWith<$Res> implements $AppMessageCodeCopyWith<$Res> {
  factory _$ErrorClientGooleAuthenticationCopyWith(_ErrorClientGooleAuthentication value, $Res Function(_ErrorClientGooleAuthentication) _then) = __$ErrorClientGooleAuthenticationCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$ErrorClientGooleAuthenticationCopyWithImpl<$Res>
    implements _$ErrorClientGooleAuthenticationCopyWith<$Res> {
  __$ErrorClientGooleAuthenticationCopyWithImpl(this._self, this._then);

  final _ErrorClientGooleAuthentication _self;
  final $Res Function(_ErrorClientGooleAuthentication) _then;

/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_ErrorClientGooleAuthentication(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _ErrorClientWebNotSupported implements AppMessageCode {
  const _ErrorClientWebNotSupported({this.message, final  String? $type}): $type = $type ?? 'errorClientWebNotSupported';
  factory _ErrorClientWebNotSupported.fromJson(Map<String, dynamic> json) => _$ErrorClientWebNotSupportedFromJson(json);

@override final  String? message;

@JsonKey(name: 'code')
final String $type;


/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorClientWebNotSupportedCopyWith<_ErrorClientWebNotSupported> get copyWith => __$ErrorClientWebNotSupportedCopyWithImpl<_ErrorClientWebNotSupported>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorClientWebNotSupportedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorClientWebNotSupported&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppMessageCode.errorClientWebNotSupported(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorClientWebNotSupportedCopyWith<$Res> implements $AppMessageCodeCopyWith<$Res> {
  factory _$ErrorClientWebNotSupportedCopyWith(_ErrorClientWebNotSupported value, $Res Function(_ErrorClientWebNotSupported) _then) = __$ErrorClientWebNotSupportedCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$ErrorClientWebNotSupportedCopyWithImpl<$Res>
    implements _$ErrorClientWebNotSupportedCopyWith<$Res> {
  __$ErrorClientWebNotSupportedCopyWithImpl(this._self, this._then);

  final _ErrorClientWebNotSupported _self;
  final $Res Function(_ErrorClientWebNotSupported) _then;

/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_ErrorClientWebNotSupported(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _ErrorClientMobileNotSupported implements AppMessageCode {
  const _ErrorClientMobileNotSupported({this.message, final  String? $type}): $type = $type ?? 'errorClientMobileNotSupported';
  factory _ErrorClientMobileNotSupported.fromJson(Map<String, dynamic> json) => _$ErrorClientMobileNotSupportedFromJson(json);

@override final  String? message;

@JsonKey(name: 'code')
final String $type;


/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorClientMobileNotSupportedCopyWith<_ErrorClientMobileNotSupported> get copyWith => __$ErrorClientMobileNotSupportedCopyWithImpl<_ErrorClientMobileNotSupported>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorClientMobileNotSupportedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorClientMobileNotSupported&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppMessageCode.errorClientMobileNotSupported(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorClientMobileNotSupportedCopyWith<$Res> implements $AppMessageCodeCopyWith<$Res> {
  factory _$ErrorClientMobileNotSupportedCopyWith(_ErrorClientMobileNotSupported value, $Res Function(_ErrorClientMobileNotSupported) _then) = __$ErrorClientMobileNotSupportedCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$ErrorClientMobileNotSupportedCopyWithImpl<$Res>
    implements _$ErrorClientMobileNotSupportedCopyWith<$Res> {
  __$ErrorClientMobileNotSupportedCopyWithImpl(this._self, this._then);

  final _ErrorClientMobileNotSupported _self;
  final $Res Function(_ErrorClientMobileNotSupported) _then;

/// Create a copy of AppMessageCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_ErrorClientMobileNotSupported(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
