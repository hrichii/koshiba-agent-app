import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/access_token/access_token.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:koshiba_agent_app/logic/models/user/user.dart';
import 'package:koshiba_agent_app/logic/models/user_credential/user_credential.dart';
import 'package:riverpod/riverpod.dart';

final authenticationDataSourceProvider = Provider(
  (ref) => AuthenticationDataSource(),
);

class AuthenticationDataSource {
  final _firebaseAuth = firebase_auth.FirebaseAuth.instance;

  Future<Result<UserCredential, AppMessageCode>>
      createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) =>
          _handleAuth(
            () => _firebaseAuth.createUserWithEmailAndPassword(
              email: email,
              password: password,
            ),
          );

  Future<Result<UserCredential, AppMessageCode>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) =>
      _handleAuth(
        () => _firebaseAuth.signInWithEmailAndPassword(
          email: email,
          password: password,
        ),
      );

  Future<Result<void, AppMessageCode>> signOut() async {
    try {
      await _firebaseAuth.signOut();
      return const ResultOk(value: null);
    } on firebase_auth.FirebaseAuthException catch (e) {
      return ResultNg(value: _mapFirebaseErrorToAppMessageCode(e.code));
    } catch (_) {
      return const ResultNg(value: AppMessageCode.errorClientUnknown());
    }
  }

  Result<User, AppMessageCode> getCurrentUser() {
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

  Future<Result<void, AppMessageCode>> deleteCurrentUser() async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user == null) {
        return const ResultNg(value: AppMessageCode.errorApiAccountNotFound());
      }
      await user.delete();
      return const ResultOk(value: null);
    } on firebase_auth.FirebaseAuthException catch (e) {
      return ResultNg(value: _mapFirebaseErrorToAppMessageCode(e.code));
    } catch (_) {
      return const ResultNg(value: AppMessageCode.errorClientUnknown());
    }
  }

  Future<Result<UserCredential, AppMessageCode>> _handleAuth(
    Future<firebase_auth.UserCredential> Function() authMethod,
  ) async {
    try {
      final userCredential = await authMethod();
      final user = userCredential.user;

      return ResultOk(
        value: UserCredential(
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
    } on firebase_auth.FirebaseAuthException catch (e) {
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
