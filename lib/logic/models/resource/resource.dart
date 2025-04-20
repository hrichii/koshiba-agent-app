import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koshiba_agent_app/core/exceptions/app_exception.dart';

part 'resource.freezed.dart';
part 'resource.g.dart';

sealed class Resource<D> {
  const Resource();
}

@Freezed(genericArgumentFactories: true)
abstract class ResourceDone<D> extends Resource<D> with _$ResourceDone<D> {
  const factory ResourceDone({
    required D value,
  }) = _ResourceDone;
  const ResourceDone._();
  factory ResourceDone.fromJson(
    Map<String, dynamic> json,
    D Function(Object?) fromJsonD,
  ) =>
      _$ResourceDoneFromJson(
        json,
        fromJsonD,
      );
}

@Freezed(genericArgumentFactories: true)
abstract class ResourceInProgress<D> extends Resource<D>
    with _$ResourceInProgress<D> {
  const factory ResourceInProgress() = _ResourceInProgress;
  const ResourceInProgress._();

  factory ResourceInProgress.fromJson(
    Map<String, dynamic> json,
    D Function(Object?) fromJsonD,
  ) =>
      _$ResourceInProgressFromJson(json, fromJsonD);
}

@Freezed(genericArgumentFactories: true)
abstract class ResourceError<D> extends Resource<D> with _$ResourceError<D> {
  const factory ResourceError({
    required AppException value,
  }) = _ResourceError;
  const ResourceError._();

  factory ResourceError.fromJson(
    Map<String, dynamic> json,
    D Function(Object?) fromJsonD,
  ) =>
      _$ResourceErrorFromJson(
        json,
        fromJsonD,
      );
}
