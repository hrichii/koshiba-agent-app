import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:flutter/foundation.dart';
import 'package:koshiba_agent_app/data/data_sources/api_data_source.dart';
import 'package:koshiba_agent_app/data/data_sources/cache_data_source.dart';
import 'package:koshiba_agent_app/data/data_sources/firebase_auth/firebase_auth_data_source.dart';
import 'package:koshiba_agent_app/data/data_sources/firestore/account_data_soure.dart';
import 'package:koshiba_agent_app/data/data_sources/google_sign_in/google_sign_in_data_source.dart';
import 'package:koshiba_agent_app/data/dtos/account_create_dto/account_create_dto.dart';
import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/api_response/api_response.dart';
import 'package:koshiba_agent_app/logic/models/connect_to_google/connect_to_google_request_dto.dart';
import 'package:koshiba_agent_app/logic/models/connect_to_google/connect_to_google_status.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:koshiba_agent_app/logic/models/sign_in/sign_in.dart';
import 'package:koshiba_agent_app/logic/models/user/user.dart';
import 'package:koshiba_agent_app/logic/models/user_credential/app_user_credential.dart';
import 'package:koshiba_agent_app/logic/usecases/authentication/authentication_repository_interface.dart';
import 'package:koshiba_agent_app/logic/usecases/connect_service/connect_service_repository_interface.dart';
import 'package:riverpod/riverpod.dart';

final accountRepositoryProvider = Provider(
  (ref) => AccountRepository(
    apiDataSource: ref.read(apiDataSourceProvider),
    accountDataSource: ref.read(accountDataSourceProvider),
    firebaseAuthDataSource: ref.read(firebaseAuthDataSourceProvider),
    googleSignInDataSource: ref.read(googleSignInDataSourceProvider),
    clearCache: ref.read(cacheProvider).deleteAll,
  ),
);

class AccountRepository
    implements
        AuthenticationRepositoryInterface,
        ConnectServiceRepositoryInterface {
  AccountRepository({
    required ApiDataSource apiDataSource,
    required AccountDataSource accountDataSource,
    required FirebaseAuthDataSource firebaseAuthDataSource,
    required GoogleSignInDataSource googleSignInDataSource,
    required VoidCallback clearCache,
  }) : _apiDataSource = apiDataSource,
       _accountDataSource = accountDataSource,
       _firebaseAuthDataSource = firebaseAuthDataSource,
       _googleSignInDataSource = googleSignInDataSource,
       _clearCache = clearCache;

  final ApiDataSource _apiDataSource;
  final AccountDataSource _accountDataSource;
  final FirebaseAuthDataSource _firebaseAuthDataSource;
  final GoogleSignInDataSource _googleSignInDataSource;
  final VoidCallback _clearCache;

  /// メールアドレスとパスワードでサインインする。
  @override
  Future<Result<AppUserCredential, AppMessageCode>> signIn(
    SignIn signInModel,
  ) => _firebaseAuthDataSource.signIn(
    email: signInModel.email!,
    password: signInModel.password!,
  );

  /// メールアドレスとパスワードでサインアップする。
  @override
  Future<Result<AppUserCredential, AppMessageCode>> signUp(
    SignIn signUpModel,
  ) async {
    final authenticationResult = await _firebaseAuthDataSource.signUp(
      email: signUpModel.email!,
      password: signUpModel.password!,
    );
    switch (authenticationResult) {
      case ResultOk(value: final userCredential):
        return _createAccount(userCredential);
      case ResultNg(:final value):
        return ResultNg(value: value);
    }
  }

  /// Googleサインインを行い、サインインまたは必要に応じてサインアップを行う。
  @override
  Future<Result<AppUserCredential, AppMessageCode>>
  signInOrUpWithGoogleForMobile() async {
    // Googleサインインを行い結果を取得
    // サインインならそのまま返す
    // サインアップならアカウント作成を行う
    final AppUserCredential userCredentialForSignUp;
    final OAuthCredential oAuthCredential;
    // Googleサインインを行う
    switch (await _googleSignInDataSource.getOAuthCredentialWithSignIn()) {
      case ResultOk(:final value):
        oAuthCredential = value;
        break;
      case ResultNg(:final value):
        return ResultNg(value: value);
    }

    // Googleサインインの結果をFirebaseに渡してサインインまたはサインアップを行う
    final signInOrUpResult = await _firebaseAuthDataSource
        .signInOrUpWithCredential(oauthcredential: oAuthCredential);
    switch (signInOrUpResult) {
      case ResultOk(:final value):
        switch (value) {
          case SignInWithGoogle(:final userCredential):
            // サインインの場合はそのまま返す
            return ResultOk(value: userCredential);
          case SignUpWithGoogle(:final userCredential):
            userCredentialForSignUp = userCredential;
        }
      case ResultNg(:final value):
        return ResultNg(value: value);
    }
    // サインアップの場合アカウント作成を行う
    final result = await _createAccount(userCredentialForSignUp);
    switch (result) {
      case ResultOk():
        break;
      case ResultNg():
        return result;
    }
    return result;
  }

  Future<Result<AppUserCredential, AppMessageCode>> _createAccount(
    AppUserCredential appUserCredential,
  ) async {
    final accountCreateDto = AccountCreateDto(
      uid: appUserCredential.user!.id,
      email: appUserCredential.user!.email!,
      // TODO(hrichii): nameを追加する可能性がある
    );
    final createResult = await _accountDataSource.create(accountCreateDto);
    if (createResult case ResultNg<void, AppMessageCode>()) {
      return ResultNg(value: createResult.value);
    }
    return ResultOk(value: appUserCredential);
  }

  /// サインアウトする。
  @override
  Future<Result<void, AppMessageCode>> signOut() async {
    final resultTuple = await (
      _googleSignInDataSource.signOut(),
      _firebaseAuthDataSource.signOut(),
    ).wait;
    switch (resultTuple) {
      case (ResultOk(), ResultOk()):
        _clearCache();
        return const ResultOk(value: null);
      case (ResultNg(:final AppMessageCode value), _) ||
          (_, ResultNg(:final AppMessageCode value)):
        return ResultNg(value: value);
    }
  }

  /// サインインしているユーザーの情報を取得する。
  @override
  Result<User, AppMessageCode> getMe() => _firebaseAuthDataSource.getMe();

  /// 退会する。
  @override
  Future<Result<void, AppMessageCode>> deleteMe() async {
    final uid = switch (getMe()) {
      ResultOk<User, AppMessageCode>(value: final user) => user.id,
      ResultNg<User, AppMessageCode>() => null,
    };
    if (uid == null) {
      return const ResultNg(value: AppMessageCode.errorApiAccountNotFound());
    }
    // TODO(hrichii): Backend側での退会処理を行う
    final authenticationResult = await _firebaseAuthDataSource.deleteMe();
    switch (authenticationResult) {
      case ResultOk<void, AppMessageCode>():
        _clearCache();
        await _accountDataSource.delete(uid);
      case ResultNg<void, AppMessageCode>():
    }
    return authenticationResult;
  }

  /// Googleサービスとの連携状態を取得する。
  @override
  Future<Result<ConnectToGoogleStatus, AppMessageCode>>
  getGoogleConnectStatus() async {
    final response = await _apiDataSource.getGoogleConnectStatus();
    return switch (response) {
      ApiResponseOk(:final data) => ResultOk(value: data),
      ApiResponseNg(:final messageCode) => ResultNg(value: messageCode),
    };
  }

  /// Web用。Googleサービスとの連携を行うための認証URLを取得する。
  /// Webでは、Googleの認証URLを取得するために、OAuth 2.0の認証フローを使用する。
  @override
  Future<Result<Uri, AppMessageCode>> getAuthUrlForConnectGoogleServiceForWeb({
    required Uri fromUri,
  }) async {
    if (!kIsWeb) {
      return const ResultNg(
        value: AppMessageCode.errorClientMobileNotSupported(),
      );
    }
    final response = await _apiDataSource.getAuthUrlForGoogleConnect(
      fromUri: fromUri.toString(),
    );
    return switch (response) {
      ApiResponseOk(:final data) => ResultOk(value: data.authorizationUri),
      ApiResponseNg(:final messageCode) => ResultNg(value: messageCode),
    };
  }

  /// モバイル用。Googleサービスとの連携を行うための認証コードを取得し、保存する。
  /// モバイルでは、Googleの認証コードを取得するために、Googleサインインを行う。
  @override
  Future<Result<void, AppMessageCode>> connectGoogleServiceForMobile() async {
    if (kIsWeb) {
      return const ResultNg(value: AppMessageCode.errorClientWebNotSupported());
    }
    final result = await _googleSignInDataSource
        .requestScopeWithSignInForMobile();
    switch (result) {
      case ResultOk(value: final serverAuthCode):
        return _saveGoogleCredential(authCode: serverAuthCode);
      case ResultNg(value: final value):
        return ResultNg(value: value);
    }
  }

  Future<Result<void, AppMessageCode>> _saveGoogleCredential({
    required String authCode,
  }) async {
    final response = await _apiDataSource.saveGoogleCredential(
      ConnectToGoogleRequestDto(authCode: authCode),
    );
    return switch (response) {
      ApiResponseOk() => const ResultOk(value: null),
      ApiResponseNg(:final messageCode) => ResultNg(value: messageCode),
    };
  }

  /// Googleサービスとの連携を解除する。
  @override
  Future<Result<void, AppMessageCode>> disconnectGoogleService() async {
    final response = await _apiDataSource.deleteGoogleCredential();
    return switch (response) {
      ApiResponseOk<void>() => const ResultOk(value: null),
      ApiResponseNg<void>(:final messageCode) => ResultNg(value: messageCode),
    };
  }
}
