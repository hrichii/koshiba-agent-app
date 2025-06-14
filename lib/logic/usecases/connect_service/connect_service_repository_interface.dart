import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';

abstract class ConnectServiceRepositoryInterface {
  Future<Result<void, AppMessageCode>> connectGoogleService();
}
