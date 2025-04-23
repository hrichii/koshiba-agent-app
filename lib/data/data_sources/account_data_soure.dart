import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:koshiba_agent_app/core/exceptions/app_exception.dart';
import 'package:koshiba_agent_app/data/dtos/account_create_dto/account_create_dto.dart';
import 'package:koshiba_agent_app/data/dtos/account_dto/account_dto.dart';
import 'package:koshiba_agent_app/data/dtos/account_update_dto/account_update_dto.dart';
import 'package:koshiba_agent_app/data/extnsions/firestore_ext.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:riverpod/riverpod.dart';

final accountDataSourceProvider = Provider(
  (ref) => AccountDataSource(),
);

class AccountDataSource {
  final _accountsRef =
      FirebaseFirestore.instance.collectionFromEnum(CollectionEnum.accounts);

  /// 共通のエラーハンドリングを行うヘルパーメソッド
  Future<Result<T, AppException>> _handleFirestoreOperation<T>(
    Future<T> Function() operation,
  ) async {
    try {
      final result = await operation();
      return ResultSuccess(value: result);
    } on FirebaseException catch (e) {
      return ResultError(
        value: ServerException(description: e.code + (e.message ?? '')),
      );
    } catch (e) {
      return ResultError(value: UnknownException(description: e.toString()));
    }
  }

  /// アカウントを作成する
  Future<Result<void, AppException>> create(AccountCreateDto dto) =>
      _handleFirestoreOperation(() async {
        await _accountsRef.doc(dto.uid).set(
              AccountDto.fromAccountCreateDto(dto).toJson(),
            );
      });

  /// アカウントを取得する
  Future<Result<AccountDto?, AppException>> get(String uid) =>
      _handleFirestoreOperation(() async {
        final doc = await _accountsRef.doc(uid).get();
        final data = doc.data();
        return data == null ? null : AccountDto.fromJson(data);
      });

  /// アカウント情報を更新する
  Future<Result<void, AppException>> update(AccountUpdateDto dto) async {
    final getResult = await get(dto.uid);
    switch (getResult) {
      case ResultError<AccountDto?, AppException>(:final value):
        return ResultError(value: value);
      case ResultSuccess<AccountDto?, AppException>(:final value)
          when value == null:
        return const ResultError(value: AccountNotFoundException());
      case ResultSuccess<AccountDto?, AppException>(:final value):
        return _handleFirestoreOperation(() async {
          await _accountsRef.doc(dto.uid).update(value!.updated(dto).toJson());
        });
    }
  }

  /// アカウントを削除する
  Future<Result<void, AppException>> delete(String uid) =>
      _handleFirestoreOperation(() async {
        await _accountsRef.doc(uid).delete();
      });
}
