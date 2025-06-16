import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/access_token/access_token.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:koshiba_agent_app/logic/models/user/user.dart';
import 'package:koshiba_agent_app/logic/models/user_credential/app_user_credential.dart';
import 'package:riverpod/riverpod.dart';

final firebaseAuthDataSourceProvider = Provider(
  (ref) => FirebaseAuthDataSource(),
);

class FirebaseAuthDataSource {
  final _firebaseAuth = FirebaseAuth.instance;

  Future<Result<AppUserCredential, AppMessageCode>> signUp({
    required String email,
    required String password,
  }) => _handleAuth(
    () => _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    ),
  );

  Future<Result<AppUserCredential, AppMessageCode>> signIn({
    required String email,
    required String password,
  }) => _handleAuth(
    () => _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    ),
  );

  Future<Result<SignInOrSignUpWithGoogle, AppMessageCode>>
  signInOrUpWithCredential({required OAuthCredential oauthcredential}) async {
    try {
      final userCredential = await _firebaseAuth.signInWithCredential(
        oauthcredential,
      );

      final user = userCredential.user;
      final appUserCredential = AppUserCredential(
        user: user == null
            ? null
            : User(
                id: user.uid,
                email: user.email,
                name: user.displayName ?? '',
                isEmailVerified: user.emailVerified,
              ),
        accessToken: userCredential.credential?.accessToken == null
            ? null
            : AccessToken(token: userCredential.credential!.accessToken!),
      );

      return ResultOk(
        value: userCredential.additionalUserInfo?.isNewUser == true
            ? SignUpWithGoogle(userCredential: appUserCredential)
            : SignInWithGoogle(userCredential: appUserCredential),
      );
    } on FirebaseAuthException catch (e) {
      return ResultNg(value: _mapFirebaseErrorToAppMessageCode(e.code));
    } catch (_) {
      return const ResultNg(value: AppMessageCode.errorClientUnknown());
    }
  }

  Future<Result<void, AppMessageCode>> signOut() async {
    try {
      await _firebaseAuth.signOut();
      return const ResultOk(value: null);
    } on FirebaseAuthException catch (e) {
      return ResultNg(value: _mapFirebaseErrorToAppMessageCode(e.code));
    } catch (_) {
      return const ResultNg(value: AppMessageCode.errorClientUnknown());
    }
  }

  Result<User, AppMessageCode> getMe() {
    final user = _firebaseAuth.currentUser;
    if (user == null) {
      return const ResultNg(value: AppMessageCode.errorApiAccountNotFound());
    }
    return ResultOk(
      value: User(
        id: user.uid,
        email: user.email,
        name: user.displayName ?? '',
        isEmailVerified: user.emailVerified,
      ),
    );
  }

  Future<Result<void, AppMessageCode>> deleteMe() async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user == null) {
        return const ResultNg(value: AppMessageCode.errorApiAccountNotFound());
      }
      await user.delete();
      return const ResultOk(value: null);
    } on FirebaseAuthException catch (e) {
      return ResultNg(value: _mapFirebaseErrorToAppMessageCode(e.code));
    } catch (_) {
      return const ResultNg(value: AppMessageCode.errorClientUnknown());
    }
  }

  Future<Result<AppUserCredential, AppMessageCode>> _handleAuth(
    Future<UserCredential> Function() authMethod,
  ) async {
    try {
      final userCredential = await authMethod();
      final user = userCredential.user;

      return ResultOk(
        value: AppUserCredential(
          user: user == null
              ? null
              : User(
                  id: user.uid,
                  email: user.email,
                  name: user.displayName ?? '',
                  isEmailVerified: user.emailVerified,
                ),
          accessToken: userCredential.credential?.accessToken == null
              ? null
              : AccessToken(token: userCredential.credential!.accessToken!),
        ),
      );
    } on FirebaseAuthException catch (e) {
      return ResultNg(value: _mapFirebaseErrorToAppMessageCode(e.code));
    } catch (e) {
      return ResultNg(
        value: AppMessageCode.errorClientUnknown(message: e.toString()),
      );
    }
  }

  AppMessageCode _mapFirebaseErrorToAppMessageCode(String code) {
    switch (code) {
      case 'invalid-credential':
        return const AppMessageCode.errorApiAuthenticationInvalid();
      case 'email-already-in-use':
        return const AppMessageCode.errorApiEmailAlreadyUsed();
      case 'invalid-email':
        return const AppMessageCode.errorApiInvalidEmail();
      case 'operation-not-allowed':
        return const AppMessageCode.errorApiOperationNotAllowed();
      case 'weak-password':
        return const AppMessageCode.errorApiWeakPassword();
      case 'too-many-requests':
        return const AppMessageCode.errorApiTooManyRequests();
      case 'user-token-expired':
        return const AppMessageCode.errorApiTokenExpired();
      case 'network-request-failed':
        return const AppMessageCode.errorApiNetworkRequestFailed();
      default:
        return const AppMessageCode.errorClientUnknown();
    }
  }
}

sealed class SignInOrSignUpWithGoogle {
  const SignInOrSignUpWithGoogle({required this.userCredential});
  final AppUserCredential userCredential;
}

class SignUpWithGoogle<T> extends SignInOrSignUpWithGoogle {
  const SignUpWithGoogle({required super.userCredential});
}

class SignInWithGoogle extends SignInOrSignUpWithGoogle {
  const SignInWithGoogle({required super.userCredential});
}
