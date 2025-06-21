import 'package:koshiba_agent_app/data/repositories/account_repository.dart';
import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/connect_to_google/connect_to_google_status.dart';
import 'package:koshiba_agent_app/logic/models/resource/resource.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:koshiba_agent_app/logic/usecases/connect_service/connect_service_repository_interface.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'connect_service_use_case.g.dart';

@Riverpod(keepAlive: true)
class ConnectServiceUseCase extends _$ConnectServiceUseCase {
  ConnectServiceRepositoryInterface get _connectServiceRepository =>
      ref.read(accountRepositoryProvider);

  @override
  Resource<ConnectToGoogleStatus> build() => const Resource.inProgress();

  Future<Result<Uri, AppMessageCode>> getAuthUrlForConnectGoogleServiceForWeb({
    required Uri fromUri,
  }) async {
    final preState = state;
    state = const ResourceInProgress();
    final result = await _connectServiceRepository
        .getAuthUrlForConnectGoogleServiceForWeb(fromUri: fromUri);
    switch (result) {
      case ResultOk<Uri, AppMessageCode>():
        state = const ResourceDone(
          value: ConnectToGoogleStatus(isConnected: true),
        );
        return result;
      case ResultNg<Uri, AppMessageCode>(:final value):
        state = ResourceError(value: value);
        if (preState is ResourceDone) {
          state = preState;
        } else {
          state = ResourceError(value: value);
        }
        return result;
    }
  }

  Future<Result<void, AppMessageCode>> connectGoogleServiceForMobile() async {
    final preState = state;
    state = const ResourceInProgress();
    final result = await _connectServiceRepository
        .connectGoogleServiceForMobile();
    switch (result) {
      case ResultOk<void, AppMessageCode>():
        state = const ResourceDone(
          value: ConnectToGoogleStatus(isConnected: true),
        );
        return result;
      case ResultNg<void, AppMessageCode>(:final value):
        state = ResourceError(value: value);
        if (preState is ResourceDone) {
          state = preState;
        } else {
          state = ResourceError(value: value);
        }
        return result;
    }
  }

  Future<Result<void, AppMessageCode>> disconnectGoogleService() async {
    final preState = state;
    state = const ResourceInProgress();
    final result = await _connectServiceRepository.disconnectGoogleService();
    switch (result) {
      case ResultOk<void, AppMessageCode>():
        state = const ResourceDone(
          value: ConnectToGoogleStatus(isConnected: false),
        );
        return result;
      case ResultNg<void, AppMessageCode>(:final value):
        state = ResourceError(value: value);
        if (preState is ResourceDone) {
          state = preState;
        } else {
          state = ResourceError(value: value);
        }
        return result;
    }
  }

  Future<Result<ConnectToGoogleStatus, AppMessageCode>>
  getGoogleConnectStatus() async {
    final preState = state;
    state = const ResourceInProgress();
    final result = await _connectServiceRepository.getGoogleConnectStatus();
    switch (result) {
      case ResultOk<ConnectToGoogleStatus, AppMessageCode>(:final value):
        state = ResourceDone(value: value);
        return result;
      case ResultNg<ConnectToGoogleStatus, AppMessageCode>(:final value):
        state = ResourceError(value: value);
        if (preState is ResourceDone) {
          state = preState;
        } else {
          state = ResourceError(value: value);
        }
        return result;
    }
  }
}
