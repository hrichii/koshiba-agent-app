import 'package:koshiba_agent_app/core/exceptions/app_exception.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:koshiba_agent_app/logic/models/sign_in/sign_in.dart';
import 'package:koshiba_agent_app/logic/models/user/user.dart';
import 'package:koshiba_agent_app/logic/models/user_credential/user_credential.dart';

abstract class AuthenticationRepositoryInterface {
  Future<Result<UserCredential, AppException>> signUp(SignIn signInModel);

  Future<Result<UserCredential, AppException>> signIn(SignIn signInModel);

  Future<Result<void, AppException>> signOut();
  Result<User, AppException> getMe();
  Future<Result<void, AppException>> deleteMe();
}
