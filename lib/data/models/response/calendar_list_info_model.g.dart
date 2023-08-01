// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_list_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CalendarListInfoModel _$$_CalendarListInfoModelFromJson(
        Map<String, dynamic> json) =>
    _$_CalendarListInfoModel(
      name: json['name'] as String,
      events: (json['events'] as List<dynamic>)
          .map((e) => CalendarEventModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CalendarListInfoModelToJson(
        _$_CalendarListInfoModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'events': instance.events,
    };
