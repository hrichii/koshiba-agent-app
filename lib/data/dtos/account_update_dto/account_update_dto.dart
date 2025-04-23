import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_update_dto.freezed.dart';
part 'account_update_dto.g.dart';

@freezed
abstract class AccountUpdateDto with _$AccountUpdateDto {
  const factory AccountUpdateDto({
    required String uid,
    String? email,
    String? name,
    String? photoUrl,
  }) = _AccountUpdateDto;
  const AccountUpdateDto._();
  factory AccountUpdateDto.fromJson(Map<String, dynamic> json) =>
      _$AccountUpdateDtoFromJson(json);
}
