import 'package:apph2/domain/entities/calendar_event.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_list_info.freezed.dart';

@freezed
class CalendarListInfo with _$CalendarListInfo {
  factory CalendarListInfo({
    required String name,
    required List<CalendarEvent> events,
  }) = _CalendarListInfo;
}
