import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:koshiba_agent_app/logic/models/sign_in/sign_in.dart';
import 'package:koshiba_agent_app/logic/models/user/user.dart';
import 'package:koshiba_agent_app/logic/models/user_credential/user_credential.dart';

abstract class AuthenticationRepositoryInterface {
  Future<Result<UserCredential, AppMessageCode>> signUp(SignIn signInModel);

  Future<Result<UserCredential, AppMessageCode>> signIn(SignIn signInModel);

  Future<Result<void, AppMessageCode>> signOut();
  Result<User, AppMessageCode> getMe();
  Future<Result<void, AppMessageCode>> deleteMe();
}
