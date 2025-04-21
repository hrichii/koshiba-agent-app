import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koshiba_agent_app/logic/models/access_token/access_token.dart';
import 'package:koshiba_agent_app/logic/models/user/user.dart';

part 'user_credential.freezed.dart';
part 'user_credential.g.dart';

@freezed
abstract class UserCredential with _$UserCredential {
  const factory UserCredential({
    required User? user,
    required AccessToken? accessToken,
  }) = _UserCredential;

  const UserCredential._();

  factory UserCredential.fromJson(Map<String, dynamic> json) =>
      _$UserCredentialFromJson(json);
}
