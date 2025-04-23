import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:koshiba_agent_app/core/exceptions/app_exception.dart';
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

  Future<Result<UserCredential, AppException>> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) =>
      _handleAuth(
        () => _firebaseAuth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        ),
      );

  Future<Result<UserCredential, AppException>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) =>
      _handleAuth(
        () => _firebaseAuth.signInWithEmailAndPassword(
          email: email,
          password: password,
        ),
      );

  Future<Result<void, AppException>> signOut() async {
    try {
      await _firebaseAuth.signOut();
      return const ResultSuccess(value: null);
    } on firebase_auth.FirebaseAuthException catch (e) {
      return ResultError(value: _mapFirebaseErrorToAppException(e.code));
    } catch (_) {
      return const ResultError(value: UnknownException());
    }
  }

  Result<User, AppException> getCurrentUser() {
    final user = _firebaseAuth.currentUser;
    if (user == null) {
      return const ResultError(value: AccountNotFoundException());
    }
    return ResultSuccess(
      value: User(
        id: user.uid,
        email: user.email,
        name: user.displayName ?? '',
        isEmailVerified: user.emailVerified,
      ),
    );
  }

  Future<Result<void, AppException>> deleteCurrentUser() async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user == null) {
        return const ResultError(value: AccountNotFoundException());
      }
      await user.delete();
      return const ResultSuccess(value: null);
    } on firebase_auth.FirebaseAuthException catch (e) {
      return ResultError(value: _mapFirebaseErrorToAppException(e.code));
    } catch (_) {
      return const ResultError(value: UnknownException());
    }
  }

  Future<Result<UserCredential, AppException>> _handleAuth(
    Future<firebase_auth.UserCredential> Function() authMethod,
  ) async {
    try {
      final userCredential = await authMethod();
      final user = userCredential.user;

      return ResultSuccess(
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
      return ResultError(value: _mapFirebaseErrorToAppException(e.code));
    } catch (e) {
      return ResultError(value: UnknownException(description: e.toString()));
    }
  }

  AppException _mapFirebaseErrorToAppException(String code) {
    switch (code) {
      case 'invalid-credential':
        return const InvalidCredentialException();
      case 'email-already-in-use':
        return const EmailAlreadyInUseException();
      case 'invalid-email':
        return const InvalidEmailException();
      case 'operation-not-allowed':
        return const OperationNotAllowedException();
      case 'weak-password':
        return const WeakPasswordException();
      case 'too-many-requests':
        return const TooManyRequestsException();
      case 'user-token-expired':
        return const UserTokenExpiredException();
      case 'network-request-failed':
        return const NetworkRequestFailedException();
      default:
        return UnknownException(description: code);
    }
  }
}
