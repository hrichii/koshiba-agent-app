import 'package:freezed_annotation/freezed_annotation.dart';

part 'connect_to_google_status.freezed.dart';
part 'connect_to_google_status.g.dart';

@freezed
abstract class ConnectToGoogleStatus with _$ConnectToGoogleStatus {
  const factory ConnectToGoogleStatus({
    @JsonKey(name: 'is_connected') required bool isConnected,
  }) = _ConnectToGoogleStatus;

  factory ConnectToGoogleStatus.fromJson(Map<String, dynamic> json) =>
      _$ConnectToGoogleStatusFromJson(json);
}
