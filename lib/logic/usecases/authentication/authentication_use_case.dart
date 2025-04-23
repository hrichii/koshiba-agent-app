import 'package:koshiba_agent_app/core/exceptions/app_exception.dart';
import 'package:koshiba_agent_app/data/repositories/account_repository.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:koshiba_agent_app/logic/models/sign_in/sign_in.dart';
import 'package:koshiba_agent_app/logic/models/user/user.dart';
import 'package:koshiba_agent_app/logic/usecases/authentication/authentication_repository_interface.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authentication_use_case.g.dart';

@riverpod
class AuthenticationUseCase extends _$AuthenticationUseCase {
  AuthenticationRepositoryInterface get _authenticationRepository =>
      ref.read(accountRepositoryProvider);

  @override
  void build() {}

  Future<Result<void, AppException>> signIn(SignIn signInModel) async =>
      _authenticationRepository.signIn(signInModel);

  Future<Result<void, AppException>> signUp(SignIn signInModel) async =>
      _authenticationRepository.signUp(signInModel);

  Future<Result<void, AppException>> signOut() async =>
      _authenticationRepository.signOut();

  Result<User, AppException> getMe() => _authenticationRepository.getMe();

  Future<Result<void, AppException>> deleteMe() async =>
      _authenticationRepository.deleteMe();
}
