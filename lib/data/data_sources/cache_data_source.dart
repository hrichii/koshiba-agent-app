import 'package:flutter/foundation.dart';
import 'package:koshiba_agent_app/logic/models/chat_room/chat_room.dart';
import 'package:riverpod/riverpod.dart';

final _cacheProvider = Provider<Cache>((ref) => Cache());

@visibleForTesting
class Cache {
  Cache();

  final Map<CacheKeyType, dynamic> _cache = {};
  // キャッシュに保存
  void save<T>(CacheKeyType<T> key, dynamic value) {
    _cache[key] = value;
  }

  /// キャッシュから取得
  T? get<T>(CacheKeyType<T> key) => _cache[key] as T?;

  /// キャッシュをクリア
  void delete(CacheKeyType key) => _cache.remove(key);

  /// キャッシュを全てクリア
  void deleteAll() => _cache.clear();
}

@visibleForTesting
extension type CacheKeyType<T>._(String value) {
  CacheKeyType(this.value);
}

abstract class _SingleKeyCacheDataSource<T> {
  _SingleKeyCacheDataSource({
    required CacheKeyType<T> key,
    required Cache cache,
  })  : _key = key,
        _cache = cache;
  final CacheKeyType<T> _key;
  final Cache _cache;

  void save(T value) => _cache.save(_key, value);
  T? get() => _cache.get(_key);
  void delete() => _cache.delete(_key);
}

class _CacheKey {
  static final chatRoomList = CacheKeyType<List<ChatRoom>>('chatRoomList');
  static final accessToken = CacheKeyType<String>('accessToken');
}

final chatRoomListCacheDataSourceProvider = Provider(
  (ref) => ChatRoomListCacheDataSource(
    ref.read(_cacheProvider),
  ),
);

class ChatRoomListCacheDataSource
    extends _SingleKeyCacheDataSource<List<ChatRoom>> {
  ChatRoomListCacheDataSource(Cache cache)
      : super(key: _CacheKey.chatRoomList, cache: cache);
}

final accessTokenCacheDataSourceProvider = Provider(
  (ref) => ChatRoomListCacheDataSource(
    ref.read(_cacheProvider),
  ),
);

class AccessTokenCacheDataSource extends _SingleKeyCacheDataSource<String> {
  AccessTokenCacheDataSource(Cache cache)
      : super(key: _CacheKey.accessToken, cache: cache);
}
