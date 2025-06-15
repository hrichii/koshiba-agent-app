import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';

part 'api_response.g.dart';
part 'api_response.freezed.dart';

@Freezed(genericArgumentFactories: true)
sealed class ApiResponse<S> with _$ApiResponse<S> {
  const ApiResponse._();
  const factory ApiResponse.ok({
    required S data,
    @JsonKey(name: 'meta') required AppMessageCode messageCode,
  }) = ApiResponseOk<S>;
  const factory ApiResponse.ng({
    @JsonKey(name: 'meta') required AppMessageCode messageCode,
  }) = ApiResponseNg<S>;

  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    S Function(Object?) fromJsonS,
  ) => _$ApiResponseFromJson(json, fromJsonS);
}
