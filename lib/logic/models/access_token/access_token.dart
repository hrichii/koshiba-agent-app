import 'package:freezed_annotation/freezed_annotation.dart';

part 'access_token.freezed.dart';
part 'access_token.g.dart';

@freezed
abstract class AccessToken with _$AccessToken {
  const factory AccessToken({
    required String token,
  }) = _AccessToken;

  const AccessToken._();

  factory AccessToken.fromJson(Map<String, dynamic> json) =>
      _$AccessTokenFromJson(json);
}
