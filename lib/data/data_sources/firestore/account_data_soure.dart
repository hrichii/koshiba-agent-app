import 'package:koshiba_agent_app/data/data_sources/firestore_util.dart';
import 'package:koshiba_agent_app/data/dtos/account_create_dto/account_create_dto.dart';
import 'package:koshiba_agent_app/data/dtos/account_dto/account_dto.dart';
import 'package:koshiba_agent_app/data/dtos/account_update_dto/account_update_dto.dart';
import 'package:koshiba_agent_app/data/extnsions/future_ext.dart';
import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:riverpod/riverpod.dart';

final accountDataSourceProvider = Provider((ref) => AccountDataSource());

class AccountDataSource {
  final _accountsRef = FirestoreUtil.collectionFromEnum(
    CollectionEnum.accounts,
  );

  /// アカウントを作成する
  Future<Result<void, AppMessageCode>> create(AccountCreateDto dto) =>
      _accountsRef
          .doc(dto.uid)
          .set(AccountDto.fromAccountCreateDto(dto).toJson())
          .toResult(map: (value) => value);

  /// アカウントを取得する
  Future<Result<AccountDto?, AppMessageCode>> get(String uid) => _accountsRef
      .doc(uid)
      .get()
      .toResult(
        map: (document) {
          final data = document.data();
          return data == null ? null : AccountDto.fromJson(data);
        },
      );

  /// アカウント情報を更新する
  Future<Result<void, AppMessageCode>> update(AccountUpdateDto dto) async {
    final getResult = await get(dto.uid);
    switch (getResult) {
      case ResultNg<AccountDto?, AppMessageCode>(:final value):
        return ResultNg(value: value);
      case ResultOk<AccountDto?, AppMessageCode>(:final value)
          when value == null:
        return const ResultNg(value: AppMessageCode.errorApiAccountNotFound());
      case ResultOk<AccountDto?, AppMessageCode>(:final value):
        return _accountsRef
            .doc(dto.uid)
            .update(value!.updated(dto).toJson())
            .toResult(map: (value) => value);
    }
  }

  /// アカウントを削除する
  Future<Result<void, AppMessageCode>> delete(String uid) =>
      _accountsRef.doc(uid).delete().toResult(map: (value) => value);
}
