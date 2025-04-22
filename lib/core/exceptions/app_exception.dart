import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koshiba_agent_app/generated/l10n.dart';

part 'app_exception.freezed.dart';
part 'app_exception.g.dart';

@freezed
abstract interface class AppException with _$AppException {
  const factory AppException() = _AppException;

  factory AppException.fromJson(Map<String, dynamic> json) =>
      _$AppExceptionFromJson(json);

  const AppException._();

  String get message => AppMessage.current.exception_unknown;
}

// 不明な例外
@freezed
abstract class UnknownException
    with _$UnknownException
    implements AppException {
  const factory UnknownException({
    String? description,
  }) = _UnknownException;
  const UnknownException._();

  factory UnknownException.fromJson(Map<String, dynamic> json) =>
      _$UnknownExceptionFromJson(json);

  @override
  String get message =>
      AppMessage.current.exception_unknown +
      (kDebugMode ? 'description $description' : '');
}

// 認証関連の例外
@freezed
abstract class InvalidCredentialException
    with _$InvalidCredentialException
    implements AppException {
  const factory InvalidCredentialException() = _InvalidCredentialException;
  const InvalidCredentialException._();

  factory InvalidCredentialException.fromJson(Map<String, dynamic> json) =>
      _$InvalidCredentialExceptionFromJson(json);

  @override
  String get message => AppMessage.current.exception_invalid_credential;
}

@freezed
abstract class EmailAlreadyInUseException
    with _$EmailAlreadyInUseException
    implements AppException {
  const factory EmailAlreadyInUseException() = _EmailAlreadyInUseException;
  const EmailAlreadyInUseException._();

  factory EmailAlreadyInUseException.fromJson(Map<String, dynamic> json) =>
      _$EmailAlreadyInUseExceptionFromJson(json);

  @override
  String get message => AppMessage.current.exception_email_already_in_use;
}

@freezed
abstract class InvalidEmailException
    with _$InvalidEmailException
    implements AppException {
  const factory InvalidEmailException() = _InvalidEmailException;
  const InvalidEmailException._();

  factory InvalidEmailException.fromJson(Map<String, dynamic> json) =>
      _$InvalidEmailExceptionFromJson(json);

  @override
  String get message => AppMessage.current.exception_invalid_email;
}

@freezed
abstract class OperationNotAllowedException
    with _$OperationNotAllowedException
    implements AppException {
  const factory OperationNotAllowedException() = _OperationNotAllowedException;
  const OperationNotAllowedException._();

  factory OperationNotAllowedException.fromJson(Map<String, dynamic> json) =>
      _$OperationNotAllowedExceptionFromJson(json);

  @override
  String get message => AppMessage.current.exception_operation_not_allowed;
}

@freezed
abstract class WeakPasswordException
    with _$WeakPasswordException
    implements AppException {
  const factory WeakPasswordException() = _WeakPasswordException;
  const WeakPasswordException._();

  factory WeakPasswordException.fromJson(Map<String, dynamic> json) =>
      _$WeakPasswordExceptionFromJson(json);

  @override
  String get message => AppMessage.current.exception_weak_password;
}

@freezed
abstract class TooManyRequestsException
    with _$TooManyRequestsException
    implements AppException {
  const factory TooManyRequestsException() = _TooManyRequestsException;
  const TooManyRequestsException._();

  factory TooManyRequestsException.fromJson(Map<String, dynamic> json) =>
      _$TooManyRequestsExceptionFromJson(json);

  @override
  String get message => AppMessage.current.exception_too_many_requests;
}

@freezed
abstract class UserTokenExpiredException
    with _$UserTokenExpiredException
    implements AppException {
  const factory UserTokenExpiredException() = _UserTokenExpiredException;
  const UserTokenExpiredException._();

  factory UserTokenExpiredException.fromJson(Map<String, dynamic> json) =>
      _$UserTokenExpiredExceptionFromJson(json);

  @override
  String get message => AppMessage.current.exception_user_token_expired;
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

  @override
  String get message => AppMessage.current.exception_network_request_failed;
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

  @override
  String get message => AppMessage.current.exception_account_not_found;
}
