import 'package:koshiba_agent_app/data/repositories/account_repository.dart';
import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
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

  Future<Result<void, AppMessageCode>> signIn(SignIn signInModel) async =>
      _authenticationRepository.signIn(signInModel);

  Future<Result<void, AppMessageCode>> signUp(SignIn signInModel) async =>
      _authenticationRepository.signUp(signInModel);

  Future<Result<void, AppMessageCode>> signOut() async =>
      _authenticationRepository.signOut();

  Result<User, AppMessageCode> getMe() => _authenticationRepository.getMe();

  Future<Result<void, AppMessageCode>> deleteMe() async =>
      _authenticationRepository.deleteMe();
}
