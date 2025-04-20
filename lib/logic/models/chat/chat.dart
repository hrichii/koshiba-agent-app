import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat.freezed.dart';
part 'chat.g.dart';

@freezed
abstract class Chat with _$Chat {
  const factory Chat({
    required String id,
    required String content,
    required SenderType senderId,
    required DateTime createdAt,
  }) = _Chat;

  const Chat._();

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);
}

@JsonEnum(alwaysCreate: true)
enum SenderType {
  @JsonValue('me')
  me,
  @JsonValue('assistant')
  assistant,
}
