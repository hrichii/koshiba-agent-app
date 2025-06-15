import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:koshiba_agent_app/core/themes/app_env.dart';
import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:riverpod/riverpod.dart';

final googleSignInDataSourceProvider = Provider(
  (ref) => GoogleSignInDataSource(),
);

class GoogleSignInDataSource {
  final _googleSignInForAuthentication = GoogleSignIn(
    forceCodeForRefreshToken: true,
    serverClientId: kIsWeb ? null : AppEnv.serverClientId,
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
  );

  final _googleSignInForAuthorization = GoogleSignIn(
    forceCodeForRefreshToken: true,
    serverClientId: kIsWeb ? null : AppEnv.serverClientId,
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
      'openid',
      'https://www.googleapis.com/auth/userinfo.email',
      'https://www.googleapis.com/auth/userinfo.profile',
      'https://www.googleapis.com/auth/calendar',
      'https://www.googleapis.com/auth/calendar.events.readonly',
      'https://www.googleapis.com/auth/documents',
      'https://www.googleapis.com/auth/documents.readonly',
      'https://www.googleapis.com/auth/drive',
      'https://www.googleapis.com/auth/drive.readonly',
      'https://www.googleapis.com/auth/drive.file',
    ],
  );

  Future<Result<OAuthCredential, AppMessageCode>>
  getOAuthCredentialWithSignIn() async {
    try {
      final googleSignInAccount = await _googleSignInForAuthentication.signIn();
      if (googleSignInAccount == null) {
        return const ResultNg(value: AppMessageCode.infoGoogleSignInCanceled());
      }
      final googleAuth = await googleSignInAccount.authentication;
      return ResultOk(
        value: GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        ),
      );
    } catch (e) {
      return const ResultNg(value: AppMessageCode.errorClientUnknown());
    }
  }

  Future<Result<String, AppMessageCode>>
  requestScopeWithSignInForMobile() async {
    if (kIsWeb) {
      return const ResultNg(value: AppMessageCode.errorClientWebNotSupported());
    }
    try {
      final googleSignInAccount = await _googleSignInForAuthorization.signIn();
      if (googleSignInAccount == null) {
        return const ResultNg(value: AppMessageCode.infoGoogleSignInCanceled());
      }
      if (googleSignInAccount.serverAuthCode == null) {
        return const ResultNg(value: AppMessageCode.errorClientUnknown());
      }
      return ResultOk(value: googleSignInAccount.serverAuthCode!);
    } catch (e) {
      return const ResultNg(value: AppMessageCode.errorClientUnknown());
    }
  }

  Future<Result<void, AppMessageCode>> signOut() async {
    try {
      await _googleSignInForAuthentication.signOut();
      return const ResultOk(value: null);
    } catch (_) {
      return const ResultNg(value: AppMessageCode.errorClientUnknown());
    }
  }
}
