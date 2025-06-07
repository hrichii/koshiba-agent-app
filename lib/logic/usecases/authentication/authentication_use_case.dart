import 'package:koshiba_agent_app/data/repositories/account_repository.dart';
import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:koshiba_agent_app/logic/models/sign_in/sign_in.dart';
import 'package:koshiba_agent_app/logic/models/user/user.dart';
import 'package:koshiba_agent_app/logic/models/user_credential/app_user_credential.dart';
import 'package:koshiba_agent_app/logic/usecases/authentication/authentication_repository_interface.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authentication_use_case.g.dart';

@riverpod
class AuthenticationUseCase extends _$AuthenticationUseCase {
  AuthenticationRepositoryInterface get _authenticationRepository =>
      ref.read(accountRepositoryProvider);

  @override
  void build() {}

  Future<Result<AppUserCredential, AppMessageCode>> signIn(
    SignIn signInModel,
  ) async =>
      _authenticationRepository.signIn(signInModel);

  Future<Result<AppUserCredential, AppMessageCode>> signUp(
    SignIn signInModel,
  ) async =>
      _authenticationRepository.signUp(signInModel);

  Future<Result<AppUserCredential, AppMessageCode>>
      signInOrSignUpWithGoogle() async =>
          _authenticationRepository.signInOrSignUpWithGoogle();

  Future<Result<void, AppMessageCode>> signOut() async =>
      _authenticationRepository.signOut();

  Result<User, AppMessageCode> getMe() => _authenticationRepository.getMe();

  Future<Result<void, AppMessageCode>> deleteMe() async =>
      _authenticationRepository.deleteMe();
}
