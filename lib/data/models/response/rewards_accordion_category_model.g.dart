// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rewards_accordion_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RewardsAccordionCategoryModel _$$_RewardsAccordionCategoryModelFromJson(
        Map<String, dynamic> json) =>
    _$_RewardsAccordionCategoryModel(
      accordionTitle: json['name'] as String,
      prizes: (json['prizes'] as List<dynamic>)
          .map((e) => RewardsCategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RewardsAccordionCategoryModelToJson(
        _$_RewardsAccordionCategoryModel instance) =>
    <String, dynamic>{
      'name': instance.accordionTitle,
      'prizes': instance.prizes,
    };
