import 'dart:io';

import 'package:extension_google_sign_in_as_googleapis_auth/extension_google_sign_in_as_googleapis_auth.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart';
import 'package:koshiba_agent_app/core/themes/app_env.dart';
import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/access_token/access_token.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:koshiba_agent_app/logic/models/user/user.dart';
import 'package:koshiba_agent_app/logic/models/user_credential/app_user_credential.dart';
import 'package:riverpod/riverpod.dart';

final authenticationDataSourceProvider = Provider(
  (ref) => AuthenticationDataSource(),
);

class AuthenticationDataSource {
  final _firebaseAuth = FirebaseAuth.instance;
  final _googleSignInForMobile = GoogleSignIn(
    serverClientId: AppEnv.serverClientId,
    clientId: () {
      if (kIsWeb) {
        return '545963589750-il9l5579kf7up5l10dub9pg232r9396o.apps.googleusercontent.com';
      }
      if (Platform.isAndroid) {
        return null;
      }
      if (Platform.isIOS) {
        return AppEnv.clientId;
      }
    }(),
    scopes: [
      'email',
      'profile',
      'https://www.googleapis.com/auth/calendar.events.readonly',
    ],
  );

  Future<Result<String, AppMessageCode>> getAuthCode() async {
    try {
      final GoogleSignInAccount googleSignInAccount;
      await _googleSignInForMobile.signOut();
      switch (await _googleSignInForMobile.signIn()) {
        case final GoogleSignInAccount account:
          googleSignInAccount = account;
        case null:
          return const ResultNg(
            value: AppMessageCode.infoGoogleSignInCanceled(),
          );
      }

      final authCode = googleSignInAccount.serverAuthCode;
      if (authCode == null) {
        return const ResultNg(value: AppMessageCode.errorClientUnknown());
      }
      return ResultOk(value: authCode);
    } on FirebaseAuthException catch (e) {
      return ResultNg(value: _mapFirebaseErrorToAppMessageCode(e.code));
    } catch (e) {
      return const ResultNg(value: AppMessageCode.errorClientUnknown());
    }
  }

  Future<Result<Client, AppMessageCode>> getAuthenticatedClient() async {
    //
    final authenticatedClient = await _googleSignInForMobile
        .authenticatedClient();
    if (authenticatedClient == null) {
      return const ResultNg(
        value: AppMessageCode.errorClientGooleAuthentication(),
      );
    }
    return ResultOk(value: authenticatedClient);
  }

  Future<Result<AppUserCredential, AppMessageCode>> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) => _handleAuth(
    () => _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    ),
  );

  Future<Result<AppUserCredential, AppMessageCode>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) => _handleAuth(
    () => _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    ),
  );

  Future<Result<SignInOrSignUpWithGoogle<AppUserCredential>, AppMessageCode>>
  signInOrSignUpWithGoogle() async {
    try {
      final googleUser = await _googleSignInForMobile.signIn();
      if (googleUser == null) {
        return const ResultNg(value: AppMessageCode.infoGoogleSignInCanceled());
      }

      final googleAuth = await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      final userCredential = await FirebaseAuth.instance.signInWithCredential(
        credential,
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
            ? SignUpWithGoogle(appUserCredential)
            : SignInWithGoogle(appUserCredential),
      );
    } on FirebaseAuthException catch (e) {
      return ResultNg(value: _mapFirebaseErrorToAppMessageCode(e.code));
    } catch (_) {
      return const ResultNg(value: AppMessageCode.errorClientUnknown());
    }
  }

  Future<Result<void, AppMessageCode>> signOut() async {
    try {
      await _signOutWithGoogleIfNeeded();
      await _firebaseAuth.signOut();
      return const ResultOk(value: null);
    } on FirebaseAuthException catch (e) {
      return ResultNg(value: _mapFirebaseErrorToAppMessageCode(e.code));
    } catch (_) {
      return const ResultNg(value: AppMessageCode.errorClientUnknown());
    }
  }

  Future<void> _signOutWithGoogleIfNeeded() async {
    if (!kIsWeb && _googleSignInForMobile.currentUser != null) {
      await _googleSignInForMobile.signOut();
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
      return signOut();
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

sealed class SignInOrSignUpWithGoogle<T> {
  const SignInOrSignUpWithGoogle(this.value);
  final T value;
}

class SignUpWithGoogle<T> extends SignInOrSignUpWithGoogle<T> {
  const SignUpWithGoogle(super.value);
}

class SignInWithGoogle<T> extends SignInOrSignUpWithGoogle<T> {
  const SignInWithGoogle(super.value);
}
