import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_create_dto.freezed.dart';
part 'account_create_dto.g.dart';

@freezed
abstract class AccountCreateDto with _$AccountCreateDto {
  const factory AccountCreateDto({
    required String uid,
    required String email,
    String? name,
    String? photoUrl,
  }) = _AccountCreateDto;
  const AccountCreateDto._();
  factory AccountCreateDto.fromJson(Map<String, dynamic> json) =>
      _$AccountCreateDtoFromJson(json);
}
