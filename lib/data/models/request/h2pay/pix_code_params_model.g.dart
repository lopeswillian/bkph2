// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pix_code_params_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PixCodeParamsModel _$$_PixCodeParamsModelFromJson(
        Map<String, dynamic> json) =>
    _$_PixCodeParamsModel(
      customerId: json['customer_id'] as int,
      paymentValue: (json['payment_value'] as num).toDouble(),
    );

Map<String, dynamic> _$$_PixCodeParamsModelToJson(
        _$_PixCodeParamsModel instance) =>
    <String, dynamic>{
      'customer_id': instance.customerId,
      'payment_value': instance.paymentValue,
    };
