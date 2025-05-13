import 'package:flutter/foundation.dart';
import 'package:koshiba_agent_app/data/data_sources/account_data_soure.dart';
import 'package:koshiba_agent_app/data/data_sources/authentication_data_source.dart';
import 'package:koshiba_agent_app/data/data_sources/cache_data_source.dart';
import 'package:koshiba_agent_app/data/dtos/account_create_dto/account_create_dto.dart';
import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:koshiba_agent_app/logic/models/sign_in/sign_in.dart';
import 'package:koshiba_agent_app/logic/models/user/user.dart';
import 'package:koshiba_agent_app/logic/models/user_credential/user_credential.dart';
import 'package:koshiba_agent_app/logic/usecases/authentication/authentication_repository_interface.dart';
import 'package:riverpod/riverpod.dart';

final accountRepositoryProvider = Provider(
  (ref) => AccountRepository(
    accountDataSource: ref.read(accountDataSourceProvider),
    authenticationDataSource: ref.read(authenticationDataSourceProvider),
    clearCache: ref.read(cacheProvider).deleteAll,
  ),
);

class AccountRepository implements AuthenticationRepositoryInterface {
  AccountRepository({
    required AccountDataSource accountDataSource,
    required AuthenticationDataSource authenticationDataSource,
    required VoidCallback clearCache,
  })  : _accountDataSource = accountDataSource,
        _authenticationDataSource = authenticationDataSource,
        _clearCache = clearCache;

  final AccountDataSource _accountDataSource;
  final AuthenticationDataSource _authenticationDataSource;
  final VoidCallback _clearCache;

  @override
  Future<Result<UserCredential, AppMessageCode>> signUp(
    SignIn signUpModel,
  ) async {
    final authenticationResult =
        await _authenticationDataSource.createUserWithEmailAndPassword(
      email: signUpModel.email!,
      password: signUpModel.password!,
    );
    switch (authenticationResult) {
      case ResultOk<UserCredential, AppMessageCode>(
          value: final userCredential
        ):
        final accountCreateDto = AccountCreateDto(
          uid: userCredential.user!.id,
          email: userCredential.user!.email!,
          // TODO(hrichii): nameを追加する可能性がある
        );
        final createResult = await _accountDataSource.create(accountCreateDto);
        if (createResult case ResultNg<void, AppMessageCode>()) {
          return ResultNg(value: createResult.value);
        }
        return authenticationResult;
      case ResultNg<UserCredential, AppMessageCode>():
        return authenticationResult;
    }
  }

  @override
  Future<Result<UserCredential, AppMessageCode>> signIn(SignIn signInModel) =>
      _authenticationDataSource.signInWithEmailAndPassword(
        email: signInModel.email!,
        password: signInModel.password!,
      );

  @override
  Future<Result<void, AppMessageCode>> signOut() async {
    final result = await _authenticationDataSource.signOut();
    if (result case ResultOk<void, AppMessageCode>()) {
      _clearCache();
    }
    return result;
  }

  @override
  Result<User, AppMessageCode> getMe() =>
      _authenticationDataSource.getCurrentUser();

  @override
  Future<Result<void, AppMessageCode>> deleteMe() async {
    final uid = switch (getMe()) {
      ResultOk<User, AppMessageCode>(value: final user) => user.id,
      ResultNg<User, AppMessageCode>() => null,
    };
    if (uid == null) {
      return const ResultNg(value: AppMessageCode.errorApiAccountNotFound());
    }

    final authenticationResult =
        await _authenticationDataSource.deleteCurrentUser();
    switch (authenticationResult) {
      case ResultOk<void, AppMessageCode>():
        _clearCache();
        await _accountDataSource.delete(uid);
      case ResultNg<void, AppMessageCode>():
    }
    return authenticationResult;
  }
}
