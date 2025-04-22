import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter/foundation.dart';
import 'package:koshiba_agent_app/core/exceptions/app_exception.dart';
import 'package:koshiba_agent_app/data/data_sources/cache_data_source.dart';
import 'package:koshiba_agent_app/logic/models/access_token/access_token.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:koshiba_agent_app/logic/models/sign_in/sign_in.dart';
import 'package:koshiba_agent_app/logic/models/user/user.dart';
import 'package:koshiba_agent_app/logic/models/user_credential/user_credential.dart';
import 'package:koshiba_agent_app/logic/usecases/authentication/authentication_repository_interface.dart';
import 'package:riverpod/riverpod.dart';

final authenticationRepositoryProvider = Provider(
  (ref) => AuthrnticationRepository(
    clearCache: ref.read(cacheProvider).deleteAll,
  ),
);

class AuthrnticationRepository implements AuthenticationRepositoryInterface {
  AuthrnticationRepository({
    required VoidCallback clearCache,
  }) : _clearCache = clearCache;

  final _firebaseAuth = firebase_auth.FirebaseAuth.instance;
  final VoidCallback _clearCache;

  @override
  Future<Result<UserCredential, AppException>> signUp(SignIn signInModel) =>
      _handleAuth(
        () => _firebaseAuth.createUserWithEmailAndPassword(
          email: signInModel.email!,
          password: signInModel.password!,
        ),
      );

  @override
  Future<Result<UserCredential, AppException>> signIn(SignIn signInModel) =>
      _handleAuth(
        () => _firebaseAuth.signInWithEmailAndPassword(
          email: signInModel.email!,
          password: signInModel.password!,
        ),
      );

  @override
  Future<Result<void, AppException>> signOut() async {
    try {
      await _firebaseAuth.signOut();
      _clearCache();
      return const ResultSuccess(value: null);
    } on firebase_auth.FirebaseAuthException catch (e) {
      return ResultFailure(value: _mapFirebaseErrorToAppException(e.code));
    } catch (_) {
      return const ResultFailure(value: UnknownException());
    }
  }

  @override
  Result<User, AppException> getMe() {
    final user = _firebaseAuth.currentUser;
    if (user == null) {
      return const ResultFailure(value: AccountNotFoundException());
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

  @override
  Future<Result<void, AppException>> deleteMe() async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user == null) {
        return const ResultFailure(value: AccountNotFoundException());
      }
      await user.delete();
      _clearCache();
      return const ResultSuccess(value: null);
    } on firebase_auth.FirebaseAuthException catch (e) {
      return ResultFailure(value: _mapFirebaseErrorToAppException(e.code));
    } catch (_) {
      return const ResultFailure(value: UnknownException());
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
      return ResultFailure(value: _mapFirebaseErrorToAppException(e.code));
    } catch (_) {
      return const ResultFailure(value: UnknownException());
    }
  }

  AppException _mapFirebaseErrorToAppException(String code) {
    switch (code) {
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
        return const UnknownException();
    }
  }
}
