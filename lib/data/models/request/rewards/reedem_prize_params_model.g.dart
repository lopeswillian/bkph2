// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reedem_prize_params_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReedemPrizeParamsModel _$$_ReedemPrizeParamsModelFromJson(
        Map<String, dynamic> json) =>
    _$_ReedemPrizeParamsModel(
      clientId: json['client_id'] as int,
      prizeId: json['prize_id'] as int,
      value: (json['value'] as num).toDouble(),
      points: json['points'] as int,
      receiptDifference: json['receipt_difference'] as bool,
      idApp: json['id_app'] as int?,
      unityId: json['unity_id'] as int?,
      clubId: json['club_id'] as int?,
    );

Map<String, dynamic> _$$_ReedemPrizeParamsModelToJson(
        _$_ReedemPrizeParamsModel instance) =>
    <String, dynamic>{
      'client_id': instance.clientId,
      'prize_id': instance.prizeId,
      'value': instance.value,
      'points': instance.points,
      'receipt_difference': instance.receiptDifference,
      'id_app': instance.idApp,
      'unity_id': instance.unityId,
      'club_id': instance.clubId,
    };
