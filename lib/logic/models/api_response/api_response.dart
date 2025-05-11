import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koshiba_agent_app/logic/enums/app_message_code_enum.dart';

part 'api_response.g.dart';
part 'api_response.freezed.dart';

@Freezed(genericArgumentFactories: true)
sealed class ApiResponse<S> with _$ApiResponse<S> {
  const ApiResponse._();
  const factory ApiResponse.ok({required S data, required Meta meta}) =
      ApiResponseOk<S>;
  const factory ApiResponse.ng({required Meta meta}) = ApiResponseNg<S>;

  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    S Function(Object?) fromJsonS,
  ) =>
      _$ApiResponseFromJson(json, fromJsonS);
}

@freezed
abstract class Meta with _$Meta {
  const factory Meta({
    required AppMessageCodeEnum code,
    required String? message,
  }) = _Meta;
  factory Meta.fromJson(Map<String, Object?> json) => _$MetaFromJson(json);
}
