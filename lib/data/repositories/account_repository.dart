import 'package:flutter/foundation.dart';
import 'package:koshiba_agent_app/core/exceptions/app_exception.dart';
import 'package:koshiba_agent_app/data/data_sources/account_data_soure.dart';
import 'package:koshiba_agent_app/data/data_sources/authentication_data_source.dart';
import 'package:koshiba_agent_app/data/data_sources/cache_data_source.dart';
import 'package:koshiba_agent_app/data/dtos/account_create_dto/account_create_dto.dart';
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
  Future<Result<UserCredential, AppException>> signUp(
    SignIn signUpModel,
  ) async {
    final authenticationResult =
        await _authenticationDataSource.createUserWithEmailAndPassword(
      email: signUpModel.email!,
      password: signUpModel.password!,
    );
    switch (authenticationResult) {
      case ResultSuccess<UserCredential, AppException>(
          value: final userCredential
        ):
        final accountCreateDto = AccountCreateDto(
          uid: userCredential.user!.id,
          email: userCredential.user!.email!,
          //name:
        );
        final createResult = await _accountDataSource.create(accountCreateDto);
        if (createResult case ResultError<void, AppException>()) {
          return ResultError(value: createResult.value);
        }
        return authenticationResult;
      case ResultError<UserCredential, AppException>():
        return authenticationResult;
    }
  }

  @override
  Future<Result<UserCredential, AppException>> signIn(SignIn signInModel) =>
      _authenticationDataSource.signInWithEmailAndPassword(
        email: signInModel.email!,
        password: signInModel.password!,
      );

  @override
  Future<Result<void, AppException>> signOut() async {
    final result = await _authenticationDataSource.signOut();
    if (result case ResultSuccess<void, AppException>()) {
      _clearCache();
    }
    return result;
  }

  @override
  Result<User, AppException> getMe() =>
      _authenticationDataSource.getCurrentUser();

  @override
  Future<Result<void, AppException>> deleteMe() async {
    final uid = switch (getMe()) {
      ResultSuccess<User, AppException>(value: final user) => user.id,
      ResultError<User, AppException>() => null,
    };
    if (uid == null) {
      return const ResultError(value: AccountNotFoundException());
    }

    final authenticationResult =
        await _authenticationDataSource.deleteCurrentUser();
    switch (authenticationResult) {
      case ResultSuccess<void, AppException>():
        _clearCache();
        await _accountDataSource.delete(uid);
      case ResultError<void, AppException>():
    }
    return authenticationResult;
  }
}
