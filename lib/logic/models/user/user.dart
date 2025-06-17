import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koshiba_agent_app/generated/l10n.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required String id,
    required String name,
    required String? email,
    required String? photoURL,
    required bool isEmailVerified,
    required UseProviderEnum useProvider,
  }) = _User;

  const User._();

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

enum UseProviderEnum {
  firebaseAuth,
  googleSignIn;

  static UseProviderEnum fromProviderData(
    List<firebase_auth.UserInfo> providerData,
  ) {
    for (final userInfo in providerData) {
      switch (userInfo.providerId) {
        case 'google.com':
          return UseProviderEnum.googleSignIn;
        default:
          continue;
      }
    }
    return UseProviderEnum.firebaseAuth;
  }

  String? get label => switch (this) {
    UseProviderEnum.firebaseAuth => null,
    UseProviderEnum.googleSignIn => AppMessage.current.sign_in_by_google_label,
  };
}
