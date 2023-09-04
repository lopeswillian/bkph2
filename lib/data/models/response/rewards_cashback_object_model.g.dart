// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rewards_cashback_object_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RewardsCashbackObjectModel _$$_RewardsCashbackObjectModelFromJson(
        Map<String, dynamic> json) =>
    _$_RewardsCashbackObjectModel(
      cacheta: json['cacheta'] == null
          ? null
          : RewardsCashbackDataModel.fromJson(
              json['cacheta'] as Map<String, dynamic>),
      poker: json['poker'] == null
          ? null
          : RewardsCashbackDataModel.fromJson(
              json['poker'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RewardsCashbackObjectModelToJson(
        _$_RewardsCashbackObjectModel instance) =>
    <String, dynamic>{
      'cacheta': instance.cacheta,
      'poker': instance.poker,
    };
