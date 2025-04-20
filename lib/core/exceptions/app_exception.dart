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
