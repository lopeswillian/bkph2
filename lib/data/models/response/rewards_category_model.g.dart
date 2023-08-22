// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rewards_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RewardsCategoryModel _$$_RewardsCategoryModelFromJson(
        Map<String, dynamic> json) =>
    _$_RewardsCategoryModel(
      id: json['id'] as int,
      title: json['name'] as String,
      points: json['points'] as int,
      description: json['complete_description'] as String,
      valuePoint: (json['value_per_point'] as num?)?.toDouble(),
      minPoints: json['min_points'] as int?,
      maxPoints: json['max_points'] as int?,
      isCashBack: json['is_cashback'] as bool?,
      bgUrl: json['image'] as String,
      fixedValue: json['fixed_value'] as int,
    );

Map<String, dynamic> _$$_RewardsCategoryModelToJson(
        _$_RewardsCategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.title,
      'points': instance.points,
      'complete_description': instance.description,
      'value_per_point': instance.valuePoint,
      'min_points': instance.minPoints,
      'max_points': instance.maxPoints,
      'is_cashback': instance.isCashBack,
      'image': instance.bgUrl,
      'fixed_value': instance.fixedValue,
    };
