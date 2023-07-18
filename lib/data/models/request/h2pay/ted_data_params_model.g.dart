// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ted_data_params_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TedDataParamsModel _$$_TedDataParamsModelFromJson(
        Map<String, dynamic> json) =>
    _$_TedDataParamsModel(
      customerId: json['customer_id'] as int,
      paymentValue: (json['payment_value'] as num).toDouble(),
    );

Map<String, dynamic> _$$_TedDataParamsModelToJson(
        _$_TedDataParamsModel instance) =>
    <String, dynamic>{
      'customer_id': instance.customerId,
      'payment_value': instance.paymentValue,
    };
