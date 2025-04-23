import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koshiba_agent_app/data/dtos/account_create_dto/account_create_dto.dart';
import 'package:koshiba_agent_app/data/dtos/account_update_dto/account_update_dto.dart';
import 'package:koshiba_agent_app/data/json_converter/created_at_field.dart';
import 'package:koshiba_agent_app/data/json_converter/updated_at_field.dart';

part 'account_dto.freezed.dart';
part 'account_dto.g.dart';

@freezed
abstract class AccountDto with _$AccountDto {
  const factory AccountDto({
    required String uid,
    required String email,
    @CreatedAtField() required DateTime? createdAt,
    @UpdatedAtField() required DateTime? updatedAt,
    String? name,
    String? photoUrl,
  }) = _AccountDto;

  const AccountDto._();
  factory AccountDto.fromJson(Map<String, dynamic> json) =>
      _$AccountDtoFromJson(json);

  factory AccountDto.fromAccountCreateDto(AccountCreateDto dto) => AccountDto(
        uid: dto.uid,
        email: dto.email,
        name: dto.name,
        photoUrl: dto.photoUrl,
        createdAt: null,
        updatedAt: null,
      );

  AccountDto updated(AccountUpdateDto dto) => copyWith(
        email: dto.email ?? email,
        name: dto.name ?? name,
        photoUrl: dto.photoUrl ?? photoUrl,
        updatedAt: null,
      );
}
