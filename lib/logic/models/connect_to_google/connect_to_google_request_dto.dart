import 'package:freezed_annotation/freezed_annotation.dart';

part 'connect_to_google_request_dto.freezed.dart';
part 'connect_to_google_request_dto.g.dart';

@freezed
abstract class ConnectToGoogleRequestDto with _$ConnectToGoogleRequestDto {
  const factory ConnectToGoogleRequestDto({
    @JsonKey(name: 'auth_code') required String authCode,
  }) = _ConnectToGoogleRequestDto;

  factory ConnectToGoogleRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ConnectToGoogleRequestDtoFromJson(json);
}
