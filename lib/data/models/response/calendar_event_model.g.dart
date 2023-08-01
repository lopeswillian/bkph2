// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CalendarEventModel _$$_CalendarEventModelFromJson(
        Map<String, dynamic> json) =>
    _$_CalendarEventModel(
      id: json['id'] as int,
      title: json['title'] as String,
      banner: json['banner'] as String,
      fullDate: json['full_date'] as String,
      dateFormatted: json['date_formatted'] as String,
      dateShort: json['date_short'] as String,
      start: json['start'] as String,
      end: json['end'] as String?,
      buyin: (json['buyin'] as num).toDouble(),
      prize: (json['prize'] as num).toDouble(),
      rebuy: (json['rebuy'] as num).toDouble(),
      addon: (json['addon'] as num).toDouble(),
      chipCount: json['chip_count'] as int,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_CalendarEventModelToJson(
        _$_CalendarEventModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'banner': instance.banner,
      'full_date': instance.fullDate,
      'date_formatted': instance.dateFormatted,
      'date_short': instance.dateShort,
      'start': instance.start,
      'end': instance.end,
      'buyin': instance.buyin,
      'prize': instance.prize,
      'rebuy': instance.rebuy,
      'addon': instance.addon,
      'chip_count': instance.chipCount,
      'description': instance.description,
    };
