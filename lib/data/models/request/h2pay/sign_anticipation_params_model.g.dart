// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_anticipation_params_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignAnticipationParamsModel _$$_SignAnticipationParamsModelFromJson(
        Map<String, dynamic> json) =>
    _$_SignAnticipationParamsModel(
      customerId: json['customer_id'] as String,
      anticipationId: json['anticipation_id'] as String,
      signed: json['signed'] as bool,
    );

Map<String, dynamic> _$$_SignAnticipationParamsModelToJson(
        _$_SignAnticipationParamsModel instance) =>
    <String, dynamic>{
      'customer_id': instance.customerId,
      'anticipation_id': instance.anticipationId,
      'signed': instance.signed,
    };
