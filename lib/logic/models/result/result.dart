import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';
part 'result.g.dart';

sealed class Result<S, E> {
  const Result();
}

@Freezed(genericArgumentFactories: true)
abstract class ResultSuccess<S, E> extends Result<S, E>
    with _$ResultSuccess<S, E> {
  const factory ResultSuccess({
    required S value,
  }) = _ResultSuccess;
  const ResultSuccess._();
  factory ResultSuccess.fromJson(
    Map<String, dynamic> json,
    S Function(Object?) fromJsonS,
    E Function(Object?) fromJsonE,
  ) =>
      _$ResultSuccessFromJson(
        json,
        fromJsonS,
        fromJsonE,
      );
}

@Freezed(genericArgumentFactories: true)
abstract class ResultError<S, E> extends Result<S, E> with _$ResultError<S, E> {
  const factory ResultError({
    required E value,
  }) = _ResultError;
  const ResultError._();

  factory ResultError.fromJson(
    Map<String, dynamic> json,
    S Function(Object?) fromJsonS,
    E Function(Object?) fromJsonE,
  ) =>
      _$ResultErrorFromJson(
        json,
        fromJsonS,
        fromJsonE,
      );
}
