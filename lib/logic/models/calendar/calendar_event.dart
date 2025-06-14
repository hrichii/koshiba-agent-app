import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koshiba_agent_app/core/utils/converter/date_time_converter.dart';

part 'calendar_event.freezed.dart';
part 'calendar_event.g.dart';

@freezed
abstract class CalendarEvent with _$CalendarEvent {
  const factory CalendarEvent({
    required String? id,
    required String? title,
    required String? description,
    required Uri? url,
    @JsonKey(name: 'start_at') @DateTimeConverter() required DateTime? startAt,
    @JsonKey(name: 'end_at') @DateTimeConverter() required DateTime? endAt,
  }) = _CalendarEvent;

  const CalendarEvent._();

  factory CalendarEvent.fromJson(Map<String, dynamic> json) =>
      _$CalendarEventFromJson(json);
}
