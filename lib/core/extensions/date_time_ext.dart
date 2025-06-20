extension DateTimeExt on DateTime {
  /// hh:mm の形式で時間を表す文字列を返す。
  String toTimeString() =>
      '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}';
}
