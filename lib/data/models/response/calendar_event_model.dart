// ignore_for_file: invalid_annotation_target
import 'package:apph2/domain/entities/calendar_event.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_event_model.freezed.dart';
part 'calendar_event_model.g.dart';

@freezed
class CalendarEventModel with _$CalendarEventModel {
  const CalendarEventModel._();

  factory CalendarEventModel({
    required int id,
    required String title,
    required String banner,
    @JsonKey(name: 'full_date') required String fullDate,
    @JsonKey(name: 'date_formatted') required String dateFormatted,
    @JsonKey(name: 'date_short') required String dateShort,
    required String start,
    String? end,
    required double buyin,
    required double prize,
    required double rebuy,
    required double addon,
    @JsonKey(name: 'chip_count') required int chipCount,
    String? description,
  }) = _CalendarEventModel;

  factory CalendarEventModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CalendarEventModelFromJson(json);

  CalendarEvent toEntity() => CalendarEvent(
        id: id,
        title: title,
        banner: banner,
        fullDate: fullDate,
        dateFormatted: dateFormatted,
        dateShort: dateShort,
        start: start,
        end: end ?? '',
        buyin: buyin,
        prize: prize,
        rebuy: rebuy,
        addon: addon,
        chipCount: chipCount,
        description: description ?? '',
      );
}
