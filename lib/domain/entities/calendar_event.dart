import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_event.freezed.dart';

@freezed
class CalendarEvent with _$CalendarEvent {
  factory CalendarEvent({
    required int id,
    required String title,
    required String banner,
    required String fullDate,
    required String dateFormatted,
    required String dateShort,
    required String start,
    required String end,
    required double buyin,
    required double prize,
    required double rebuy,
    required double addon,
    required int chipCount,
  }) = _CalendarEvent;
}
