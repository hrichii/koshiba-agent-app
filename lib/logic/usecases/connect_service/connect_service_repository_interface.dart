import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/connect_to_google/connect_to_google_status.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';

abstract class ConnectServiceRepositoryInterface {
  Future<Result<ConnectToGoogleStatus, AppMessageCode>>
  getGoogleConnectStatus();
  Future<Result<void, AppMessageCode>> connectGoogleService();
  Future<Result<void, AppMessageCode>> disconnectGoogleService();
}
