import 'package:freezed_annotation/freezed_annotation.dart';

/// 会議のデプロイ状態を表す列挙型
enum DeployStatus {
  initialized,
  deploying,
  running,
  failed,
  terminating,
  @JsonValue('not_found')
  notFound,
  unknown;

  const DeployStatus();
}
