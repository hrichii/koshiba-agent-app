import 'package:koshiba_agent_app/data/repositories/account_repository.dart';
import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/resource/resource.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:koshiba_agent_app/logic/models/user/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'account_use_case.g.dart';

@Riverpod(keepAlive: true)
class AccountUseCase extends _$AccountUseCase {
  AccountRepository get _accountRepository =>
      ref.read(accountRepositoryProvider);

  @override
  Resource<User> build() => const ResourceInProgress();

  Result<User, AppMessageCode> getMe() {
    final preState = state;
    final result = _accountRepository.getMe();
    switch (result) {
      case ResultOk<User, AppMessageCode>(:final value):
        state = ResourceDone(value: value);
      case ResultNg<User, AppMessageCode>(:final value):
        if (preState is ResourceDone) {
          state = preState;
        }
        state = ResourceError(value: value);
    }
    return result;
  }
}
