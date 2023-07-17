// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bco_cpf_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BcoCpfInfoModel _$BcoCpfInfoModelFromJson(Map<String, dynamic> json) =>
    BcoCpfInfoModel(
      document: json['document'] as String,
      name: json['name'] as String,
      birthdate: DateTime.parse(json['birthdate'] as String),
    );

Map<String, dynamic> _$BcoCpfInfoModelToJson(BcoCpfInfoModel instance) =>
    <String, dynamic>{
      'document': instance.document,
      'name': instance.name,
      'birthdate': instance.birthdate.toIso8601String(),
    };
