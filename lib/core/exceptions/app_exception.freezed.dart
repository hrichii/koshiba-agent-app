// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppException implements DiagnosticableTreeMixin {
  /// Serializes this AppException to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'AppException'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AppException);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppException()';
  }
}

/// @nodoc
class $AppExceptionCopyWith<$Res> {
  $AppExceptionCopyWith(AppException _, $Res Function(AppException) __);
}

/// @nodoc
@JsonSerializable()
class _AppException extends AppException with DiagnosticableTreeMixin {
  const _AppException() : super._();
  factory _AppException.fromJson(Map<String, dynamic> json) =>
      _$AppExceptionFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    return _$AppExceptionToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'AppException'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AppException);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppException()';
  }
}

/// @nodoc
mixin _$UnknownException implements DiagnosticableTreeMixin {
  String? get description;

  /// Create a copy of UnknownException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UnknownExceptionCopyWith<UnknownException> get copyWith =>
      _$UnknownExceptionCopyWithImpl<UnknownException>(
          this as UnknownException, _$identity);

  /// Serializes this UnknownException to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'UnknownException'))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnknownException &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, description);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UnknownException(description: $description)';
  }
}

/// @nodoc
abstract mixin class $UnknownExceptionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory $UnknownExceptionCopyWith(
          UnknownException value, $Res Function(UnknownException) _then) =
      _$UnknownExceptionCopyWithImpl;
  @useResult
  $Res call({String? description});
}

/// @nodoc
class _$UnknownExceptionCopyWithImpl<$Res>
    implements $UnknownExceptionCopyWith<$Res> {
  _$UnknownExceptionCopyWithImpl(this._self, this._then);

  final UnknownException _self;
  final $Res Function(UnknownException) _then;

  /// Create a copy of UnknownException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_self.copyWith(
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _UnknownException extends UnknownException with DiagnosticableTreeMixin {
  const _UnknownException({this.description}) : super._();
  factory _UnknownException.fromJson(Map<String, dynamic> json) =>
      _$UnknownExceptionFromJson(json);

  @override
  final String? description;

  /// Create a copy of UnknownException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UnknownExceptionCopyWith<_UnknownException> get copyWith =>
      __$UnknownExceptionCopyWithImpl<_UnknownException>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UnknownExceptionToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'UnknownException'))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UnknownException &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, description);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UnknownException(description: $description)';
  }
}

/// @nodoc
abstract mixin class _$UnknownExceptionCopyWith<$Res>
    implements $UnknownExceptionCopyWith<$Res> {
  factory _$UnknownExceptionCopyWith(
          _UnknownException value, $Res Function(_UnknownException) _then) =
      __$UnknownExceptionCopyWithImpl;
  @override
  @useResult
  $Res call({String? description});
}

/// @nodoc
class __$UnknownExceptionCopyWithImpl<$Res>
    implements _$UnknownExceptionCopyWith<$Res> {
  __$UnknownExceptionCopyWithImpl(this._self, this._then);

  final _UnknownException _self;
  final $Res Function(_UnknownException) _then;

  /// Create a copy of UnknownException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_UnknownException(
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$InvalidCredentialException implements DiagnosticableTreeMixin {
  /// Serializes this InvalidCredentialException to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'InvalidCredentialException'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InvalidCredentialException);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InvalidCredentialException()';
  }
}

/// @nodoc
class $InvalidCredentialExceptionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  $InvalidCredentialExceptionCopyWith(InvalidCredentialException _,
      $Res Function(InvalidCredentialException) __);
}

/// @nodoc
@JsonSerializable()
class _InvalidCredentialException extends InvalidCredentialException
    with DiagnosticableTreeMixin {
  const _InvalidCredentialException() : super._();
  factory _InvalidCredentialException.fromJson(Map<String, dynamic> json) =>
      _$InvalidCredentialExceptionFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    return _$InvalidCredentialExceptionToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'InvalidCredentialException'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InvalidCredentialException);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InvalidCredentialException()';
  }
}

/// @nodoc
mixin _$EmailAlreadyInUseException implements DiagnosticableTreeMixin {
  /// Serializes this EmailAlreadyInUseException to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'EmailAlreadyInUseException'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmailAlreadyInUseException);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EmailAlreadyInUseException()';
  }
}

/// @nodoc
class $EmailAlreadyInUseExceptionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  $EmailAlreadyInUseExceptionCopyWith(EmailAlreadyInUseException _,
      $Res Function(EmailAlreadyInUseException) __);
}

/// @nodoc
@JsonSerializable()
class _EmailAlreadyInUseException extends EmailAlreadyInUseException
    with DiagnosticableTreeMixin {
  const _EmailAlreadyInUseException() : super._();
  factory _EmailAlreadyInUseException.fromJson(Map<String, dynamic> json) =>
      _$EmailAlreadyInUseExceptionFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    return _$EmailAlreadyInUseExceptionToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'EmailAlreadyInUseException'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmailAlreadyInUseException);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EmailAlreadyInUseException()';
  }
}

/// @nodoc
mixin _$InvalidEmailException implements DiagnosticableTreeMixin {
  /// Serializes this InvalidEmailException to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'InvalidEmailException'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InvalidEmailException);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InvalidEmailException()';
  }
}

/// @nodoc
class $InvalidEmailExceptionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  $InvalidEmailExceptionCopyWith(
      InvalidEmailException _, $Res Function(InvalidEmailException) __);
}

/// @nodoc
@JsonSerializable()
class _InvalidEmailException extends InvalidEmailException
    with DiagnosticableTreeMixin {
  const _InvalidEmailException() : super._();
  factory _InvalidEmailException.fromJson(Map<String, dynamic> json) =>
      _$InvalidEmailExceptionFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    return _$InvalidEmailExceptionToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'InvalidEmailException'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _InvalidEmailException);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InvalidEmailException()';
  }
}

/// @nodoc
mixin _$OperationNotAllowedException implements DiagnosticableTreeMixin {
  /// Serializes this OperationNotAllowedException to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'OperationNotAllowedException'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OperationNotAllowedException);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OperationNotAllowedException()';
  }
}

/// @nodoc
class $OperationNotAllowedExceptionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  $OperationNotAllowedExceptionCopyWith(OperationNotAllowedException _,
      $Res Function(OperationNotAllowedException) __);
}

/// @nodoc
@JsonSerializable()
class _OperationNotAllowedException extends OperationNotAllowedException
    with DiagnosticableTreeMixin {
  const _OperationNotAllowedException() : super._();
  factory _OperationNotAllowedException.fromJson(Map<String, dynamic> json) =>
      _$OperationNotAllowedExceptionFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    return _$OperationNotAllowedExceptionToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'OperationNotAllowedException'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OperationNotAllowedException);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OperationNotAllowedException()';
  }
}

/// @nodoc
mixin _$WeakPasswordException implements DiagnosticableTreeMixin {
  /// Serializes this WeakPasswordException to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'WeakPasswordException'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WeakPasswordException);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WeakPasswordException()';
  }
}

/// @nodoc
class $WeakPasswordExceptionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  $WeakPasswordExceptionCopyWith(
      WeakPasswordException _, $Res Function(WeakPasswordException) __);
}

/// @nodoc
@JsonSerializable()
class _WeakPasswordException extends WeakPasswordException
    with DiagnosticableTreeMixin {
  const _WeakPasswordException() : super._();
  factory _WeakPasswordException.fromJson(Map<String, dynamic> json) =>
      _$WeakPasswordExceptionFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    return _$WeakPasswordExceptionToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'WeakPasswordException'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _WeakPasswordException);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WeakPasswordException()';
  }
}

/// @nodoc
mixin _$TooManyRequestsException implements DiagnosticableTreeMixin {
  /// Serializes this TooManyRequestsException to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'TooManyRequestsException'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TooManyRequestsException);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TooManyRequestsException()';
  }
}

/// @nodoc
class $TooManyRequestsExceptionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  $TooManyRequestsExceptionCopyWith(
      TooManyRequestsException _, $Res Function(TooManyRequestsException) __);
}

/// @nodoc
@JsonSerializable()
class _TooManyRequestsException extends TooManyRequestsException
    with DiagnosticableTreeMixin {
  const _TooManyRequestsException() : super._();
  factory _TooManyRequestsException.fromJson(Map<String, dynamic> json) =>
      _$TooManyRequestsExceptionFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    return _$TooManyRequestsExceptionToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'TooManyRequestsException'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TooManyRequestsException);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TooManyRequestsException()';
  }
}

/// @nodoc
mixin _$UserTokenExpiredException implements DiagnosticableTreeMixin {
  /// Serializes this UserTokenExpiredException to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'UserTokenExpiredException'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserTokenExpiredException);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserTokenExpiredException()';
  }
}

/// @nodoc
class $UserTokenExpiredExceptionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  $UserTokenExpiredExceptionCopyWith(
      UserTokenExpiredException _, $Res Function(UserTokenExpiredException) __);
}

/// @nodoc
@JsonSerializable()
class _UserTokenExpiredException extends UserTokenExpiredException
    with DiagnosticableTreeMixin {
  const _UserTokenExpiredException() : super._();
  factory _UserTokenExpiredException.fromJson(Map<String, dynamic> json) =>
      _$UserTokenExpiredExceptionFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    return _$UserTokenExpiredExceptionToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'UserTokenExpiredException'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserTokenExpiredException);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserTokenExpiredException()';
  }
}

/// @nodoc
mixin _$NetworkRequestFailedException implements DiagnosticableTreeMixin {
  /// Serializes this NetworkRequestFailedException to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'NetworkRequestFailedException'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NetworkRequestFailedException);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkRequestFailedException()';
  }
}

/// @nodoc
class $NetworkRequestFailedExceptionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  $NetworkRequestFailedExceptionCopyWith(NetworkRequestFailedException _,
      $Res Function(NetworkRequestFailedException) __);
}

/// @nodoc
@JsonSerializable()
class _NetworkRequestFailedException extends NetworkRequestFailedException
    with DiagnosticableTreeMixin {
  const _NetworkRequestFailedException() : super._();
  factory _NetworkRequestFailedException.fromJson(Map<String, dynamic> json) =>
      _$NetworkRequestFailedExceptionFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    return _$NetworkRequestFailedExceptionToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'NetworkRequestFailedException'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NetworkRequestFailedException);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkRequestFailedException()';
  }
}

/// @nodoc
mixin _$AccountNotFoundException implements DiagnosticableTreeMixin {
  /// Serializes this AccountNotFoundException to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'AccountNotFoundException'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AccountNotFoundException);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountNotFoundException()';
  }
}

/// @nodoc
class $AccountNotFoundExceptionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  $AccountNotFoundExceptionCopyWith(
      AccountNotFoundException _, $Res Function(AccountNotFoundException) __);
}

/// @nodoc
@JsonSerializable()
class _AccountNotFoundException extends AccountNotFoundException
    with DiagnosticableTreeMixin {
  const _AccountNotFoundException() : super._();
  factory _AccountNotFoundException.fromJson(Map<String, dynamic> json) =>
      _$AccountNotFoundExceptionFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    return _$AccountNotFoundExceptionToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'AccountNotFoundException'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AccountNotFoundException);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountNotFoundException()';
  }
}

// dart format on
