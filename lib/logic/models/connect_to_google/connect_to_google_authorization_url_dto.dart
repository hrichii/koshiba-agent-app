import 'package:freezed_annotation/freezed_annotation.dart';

part 'connect_to_google_authorization_url_dto.freezed.dart';
part 'connect_to_google_authorization_url_dto.g.dart';

@freezed
abstract class ConnectToGoogleAuthorizationUrlDto
    with _$ConnectToGoogleAuthorizationUrlDto {
  const factory ConnectToGoogleAuthorizationUrlDto({
    @JsonKey(name: 'authorization_url') required Uri authorizationUri,
  }) = _ConnectToGoogleAuthorizationUrlDto;

  factory ConnectToGoogleAuthorizationUrlDto.fromJson(
    Map<String, dynamic> json,
  ) => _$ConnectToGoogleAuthorizationUrlDtoFromJson(json);
}
