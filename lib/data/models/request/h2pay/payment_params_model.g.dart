// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_params_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentParamsModel _$$_PaymentParamsModelFromJson(
        Map<String, dynamic> json) =>
    _$_PaymentParamsModel(
      typeOfPayerId: json['type_of_payer_id'] as int,
      customerId: json['customer_id'] as int,
      typeOfPaymentId: json['type_of_payment_id'] as int,
      paymentValue: (json['payment_value'] as num).toDouble(),
      paymentImgFront: json['payment_img_front'] as String?,
      paymentImgBack: json['payment_img_back'] as String?,
      companyId: json['company_id'] as int?,
      thirdPartCpf: json['third_part_cpf'] as String?,
      thirdPartCnpj: json['third_part_cnpj'] as String?,
    );

Map<String, dynamic> _$$_PaymentParamsModelToJson(
        _$_PaymentParamsModel instance) =>
    <String, dynamic>{
      'type_of_payer_id': instance.typeOfPayerId,
      'customer_id': instance.customerId,
      'type_of_payment_id': instance.typeOfPaymentId,
      'payment_value': instance.paymentValue,
      'payment_img_front': instance.paymentImgFront,
      'payment_img_back': instance.paymentImgBack,
      'company_id': instance.companyId,
      'third_part_cpf': instance.thirdPartCpf,
      'third_part_cnpj': instance.thirdPartCnpj,
    };
