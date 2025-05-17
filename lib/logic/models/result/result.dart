import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';
part 'result.g.dart';

@Freezed(genericArgumentFactories: true)
sealed class Result<S, E> with _$Result<S, E> {
  const Result._();
  const factory Result.ok({required S value}) = ResultOk<S, E>;
  const factory Result.ng({required E value}) = ResultNg<S, E>;

  factory Result.fromJson(
    Map<String, dynamic> json,
    S Function(Object?) fromJsonS,
    E Function(Object?) fromJsonE,
  ) =>
      _$ResultFromJson(json, fromJsonS, fromJsonE);
}
