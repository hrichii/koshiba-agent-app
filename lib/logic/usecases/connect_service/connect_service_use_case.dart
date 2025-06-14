import 'package:koshiba_agent_app/data/repositories/connect_service_repository.dart';
import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:koshiba_agent_app/logic/usecases/connect_service/connect_service_repository_interface.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'connect_service_use_case.g.dart';

@riverpod
class ConnectServiceUseCase extends _$ConnectServiceUseCase {
  ConnectServiceRepositoryInterface get _connectServiceRepository =>
      ref.read(connectServiceRepositoryProvider);

  @override
  void build() {}

  Future<Result<void, AppMessageCode>> connectGoogleService() async =>
      _connectServiceRepository.connectGoogleService();
}
