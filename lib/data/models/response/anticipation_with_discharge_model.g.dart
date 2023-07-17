// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anticipation_with_discharge_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnticipationWithDischargeModel _$AnticipationWithDischargeModelFromJson(
        Map<String, dynamic> json) =>
    AnticipationWithDischargeModel(
      discharge: (json['discharge'] as num).toDouble(),
      listAnticipation: (json['listAnticipation'] as List<dynamic>)
          .map((e) => AnticipationInfoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AnticipationWithDischargeModelToJson(
        AnticipationWithDischargeModel instance) =>
    <String, dynamic>{
      'discharge': instance.discharge,
      'listAnticipation': instance.listAnticipation,
    };
