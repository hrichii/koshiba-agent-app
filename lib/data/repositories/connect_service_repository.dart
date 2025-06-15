import 'package:flutter/foundation.dart';
import 'package:koshiba_agent_app/data/data_sources/api_data_source.dart';
import 'package:koshiba_agent_app/data/data_sources/authentication_data_source.dart';
import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/api_response/api_response.dart';
import 'package:koshiba_agent_app/logic/models/connect_to_google/connect_to_google_request_dto.dart';
import 'package:koshiba_agent_app/logic/models/connect_to_google/connect_to_google_status.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:koshiba_agent_app/logic/usecases/connect_service/connect_service_repository_interface.dart';
import 'package:riverpod/riverpod.dart';

final connectServiceRepositoryProvider = Provider(
  (ref) => ConnectServiceRepository(
    apiDataSource: ref.read(apiDataSourceProvider),
    authenticationDataSource: ref.read(authenticationDataSourceProvider),
  ),
);

class ConnectServiceRepository implements ConnectServiceRepositoryInterface {
  ConnectServiceRepository({
    required ApiDataSource apiDataSource,
    required AuthenticationDataSource authenticationDataSource,
  }) : _apiDataSource = apiDataSource,
       _authenticationDataSource = authenticationDataSource;

  final ApiDataSource _apiDataSource;
  final AuthenticationDataSource _authenticationDataSource;

  @override
  Future<Result<ConnectToGoogleStatus, AppMessageCode>>
  getGoogleConnectStatus() async {
    final response = await _apiDataSource.getGoogleConnect();
    return switch (response) {
      ApiResponseOk(:final data) => ResultOk(value: data),
      ApiResponseNg(:final messageCode) => ResultNg(value: messageCode),
    };
  }

  @override
  Future<Result<Uri, AppMessageCode>> getAuthUrlForConnectGoogleServiceForWeb({
    required Uri fromUri,
  }) async {
    if (!kIsWeb) {
      return const ResultNg(
        value: AppMessageCode.errorClientMobileNotSupported(),
      );
    }
    final response = await _apiDataSource.getAuthUrlForGoogleConnect(
      fromUri: fromUri.toString(),
    );
    return switch (response) {
      ApiResponseOk(:final data) => ResultOk(value: data.authorizationUri),
      ApiResponseNg(:final messageCode) => ResultNg(value: messageCode),
    };
  }

  @override
  Future<Result<void, AppMessageCode>> connectGoogleServiceForMobile() async {
    if (kIsWeb) {
      return const ResultNg(value: AppMessageCode.errorClientWebNotSupported());
    }
    final result = await _authenticationDataSource.getAuthCode();
    switch (result) {
      case ResultOk(value: final authCode):
        final response = await _apiDataSource.saveGoogleConnect(
          ConnectToGoogleRequestDto(authCode: authCode),
        );
        return switch (response) {
          ApiResponseOk<void>() => const ResultOk(value: null),
          ApiResponseNg<void>(:final messageCode) => ResultNg(
            value: messageCode,
          ),
        };
      case ResultNg(value: final value):
        return ResultNg(value: value);
    }
  }

  @override
  Future<Result<void, AppMessageCode>> disconnectGoogleService() async {
    final response = await _apiDataSource.deleteGoogleConnect();
    return switch (response) {
      ApiResponseOk<void>() => const ResultOk(value: null),
      ApiResponseNg<void>(:final messageCode) => ResultNg(value: messageCode),
    };
  }
}
