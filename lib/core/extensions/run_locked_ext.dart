mixin RunLockedMixin {
  final Map<Object, Future> _inFlights = {};

  /// 指定された [key] がすでに実行中であれば、それを返す。
  /// 実行中でなければ新たに実行し、完了後にキャッシュを削除する。
  ///
  /// [key] を省略した場合は `runtimeType` がキーになる（= クラスごとに1つ）
  Future<T> runLocked<T>(
    Future<T> Function() action, {
    Object? key,
  }) {
    final k = key ?? _defaultKey;
    if (_inFlights.containsKey(k)) {
      return _inFlights[k] as Future<T>;
    }

    final future = (() async {
      try {
        return await action();
      } finally {
        await _inFlights.remove(k);
      }
    })();

    _inFlights[k] = future;
    return future;
  }

  Object get _defaultKey => '$runtimeType-default';
}
