// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_statement_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserStatementInfoModel _$$_UserStatementInfoModelFromJson(
        Map<String, dynamic> json) =>
    _$_UserStatementInfoModel(
      id: json['id'] as int,
      description: json['description'] as String,
      date: json['date'] as String,
      formattedDate: json['formatted_date'] as String,
      type: json['type'] as String,
      rewardsPoints: (json['rewards_points'] as num).toDouble(),
      dateCountingEnd: json['date_counting_end'] as String?,
    );

Map<String, dynamic> _$$_UserStatementInfoModelToJson(
        _$_UserStatementInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'date': instance.date,
      'formatted_date': instance.formattedDate,
      'type': instance.type,
      'rewards_points': instance.rewardsPoints,
      'date_counting_end': instance.dateCountingEnd,
    };
