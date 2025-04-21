import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_exception.freezed.dart';
part 'app_exception.g.dart';

@freezed
abstract interface class AppException with _$AppException {
  const factory AppException() = _AppException;

  const AppException._();

  factory AppException.fromJson(Map<String, dynamic> json) =>
      _$AppExceptionFromJson(json);
}

// 不明な例外
@freezed
abstract class UnknownException
    with _$UnknownException
    implements AppException {
  const factory UnknownException() = _UnknownException;
  const UnknownException._();

  factory UnknownException.fromJson(Map<String, dynamic> json) =>
      _$UnknownExceptionFromJson(json);
}

// 認証関連の例外
@freezed
abstract class EmailAlreadyInUseException
    with _$EmailAlreadyInUseException
    implements AppException {
  const factory EmailAlreadyInUseException() = _EmailAlreadyInUseException;
  const EmailAlreadyInUseException._();

  factory EmailAlreadyInUseException.fromJson(Map<String, dynamic> json) =>
      _$EmailAlreadyInUseExceptionFromJson(json);
}

@freezed
abstract class InvalidEmailException
    with _$InvalidEmailException
    implements AppException {
  const factory InvalidEmailException() = _InvalidEmailException;
  const InvalidEmailException._();

  factory InvalidEmailException.fromJson(Map<String, dynamic> json) =>
      _$InvalidEmailExceptionFromJson(json);
}

@freezed
abstract class OperationNotAllowedException
    with _$OperationNotAllowedException
    implements AppException {
  const factory OperationNotAllowedException() = _OperationNotAllowedException;
  const OperationNotAllowedException._();

  factory OperationNotAllowedException.fromJson(Map<String, dynamic> json) =>
      _$OperationNotAllowedExceptionFromJson(json);
}

@freezed
abstract class WeakPasswordException
    with _$WeakPasswordException
    implements AppException {
  const factory WeakPasswordException() = _WeakPasswordException;
  const WeakPasswordException._();

  factory WeakPasswordException.fromJson(Map<String, dynamic> json) =>
      _$WeakPasswordExceptionFromJson(json);
}

@freezed
abstract class TooManyRequestsException
    with _$TooManyRequestsException
    implements AppException {
  const factory TooManyRequestsException() = _TooManyRequestsException;
  const TooManyRequestsException._();

  factory TooManyRequestsException.fromJson(Map<String, dynamic> json) =>
      _$TooManyRequestsExceptionFromJson(json);
}

@freezed
abstract class UserTokenExpiredException
    with _$UserTokenExpiredException
    implements AppException {
  const factory UserTokenExpiredException() = _UserTokenExpiredException;
  const UserTokenExpiredException._();

  factory UserTokenExpiredException.fromJson(Map<String, dynamic> json) =>
      _$UserTokenExpiredExceptionFromJson(json);
}

@freezed
abstract class NetworkRequestFailedException
    with _$NetworkRequestFailedException
    implements AppException {
  const factory NetworkRequestFailedException() =
      _NetworkRequestFailedException;
  const NetworkRequestFailedException._();

  factory NetworkRequestFailedException.fromJson(Map<String, dynamic> json) =>
      _$NetworkRequestFailedExceptionFromJson(json);
}

// アカウント関連の例外
@freezed
abstract class AccountNotFoundException
    with _$AccountNotFoundException
    implements AppException {
  const factory AccountNotFoundException() = _AccountNotFoundException;
  const AccountNotFoundException._();

  factory AccountNotFoundException.fromJson(Map<String, dynamic> json) =>
      _$AccountNotFoundExceptionFromJson(json);
}
