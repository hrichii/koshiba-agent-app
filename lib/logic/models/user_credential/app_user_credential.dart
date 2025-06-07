import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koshiba_agent_app/logic/models/access_token/access_token.dart';
import 'package:koshiba_agent_app/logic/models/user/user.dart';

part 'app_user_credential.freezed.dart';
part 'app_user_credential.g.dart';

@freezed
abstract class AppUserCredential with _$AppUserCredential {
  const factory AppUserCredential({
    required User? user,
    required AccessToken? accessToken,
  }) = _AppUserCredential;

  const AppUserCredential._();

  factory AppUserCredential.fromJson(Map<String, dynamic> json) =>
      _$AppUserCredentialFromJson(json);
}
