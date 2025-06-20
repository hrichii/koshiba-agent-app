extension DateTimeExt on DateTime {
  /// hh:mm の形式で時間を表す文字列を返す。
  String toTimeString() =>
      '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}';

  /// yyyy年MM月dd日の形式で日時を表す文字列を返す。
  String toDateString() =>
      '$year年${month.toString().padLeft(2, '0')}月${day.toString().padLeft(2, '0')}日';

  /// X曜日の形式で曜日を表す文字列を返す。
  String toWeekdayString() =>
      '${['月', '火', '水', '木', '金', '土', '日'][weekday - 1]}曜日';
}
