extension ListExt<T> on List<T> {
  void updateFirstWhere({
    required bool Function(T element) where,
    required T value,
  }) {
    final index = indexWhere(where);
    if (index != -1) {
      this[index] = value;
    }
  }
}
