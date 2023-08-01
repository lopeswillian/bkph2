// ignore_for_file: invalid_annotation_target
import 'package:apph2/data/models/response/calendar_event_model.dart';
import 'package:apph2/domain/entities/calendar_list_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_list_info_model.freezed.dart';
part 'calendar_list_info_model.g.dart';

@freezed
class CalendarListInfoModel with _$CalendarListInfoModel {
  const CalendarListInfoModel._();

  factory CalendarListInfoModel({
    required String name,
    required List<CalendarEventModel> events,
  }) = _CalendarListInfoModel;

  factory CalendarListInfoModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CalendarListInfoModelFromJson(json);

  CalendarListInfo toEntity() => CalendarListInfo(
        name: name,
        events: events
            .map(
              (event) => event.toEntity(),
            )
            .toList(),
      );
}
