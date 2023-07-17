// ignore_for_file: invalid_annotation_target

import 'package:apph2/domain/entities/payment_params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_params_model.freezed.dart';
part 'payment_params_model.g.dart';

@freezed
class PaymentParamsModel with _$PaymentParamsModel {
  const PaymentParamsModel._();

  factory PaymentParamsModel({
    @JsonKey(name: 'type_of_payer_id') required int typeOfPayerId,
    @JsonKey(name: 'customer_id') required int customerId,
    @JsonKey(name: 'type_of_payment_id') required int typeOfPaymentId,
    @JsonKey(name: 'payment_value') required double paymentValue,
    @JsonKey(name: 'payment_img_front') String? paymentImgFront,
    @JsonKey(name: 'payment_img_back') String? paymentImgBack,
    @JsonKey(name: 'company_id') int? companyId,
    @JsonKey(name: 'third_part_cpf') String? thirdPartCpf,
    @JsonKey(name: 'third_part_cnpj') String? thirdPartCnpj,
  }) = _PaymentParamsModel;

  factory PaymentParamsModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PaymentParamsModelFromJson(json);

  factory PaymentParamsModel.fromEntity(
    PaymentParams params,
  ) {
    return PaymentParamsModel(
      typeOfPayerId:params.typeOfPayerId,
      customerId:params.customerId,
      typeOfPaymentId:params.typeOfPaymentId,
      paymentValue:params.paymentValue,
      paymentImgFront:params.paymentImgFront,
      paymentImgBack:params.paymentImgBack,
      companyId:params.companyId,
      thirdPartCpf:params.thirdPartCpf,
      thirdPartCnpj:params.thirdPartCnpj,
    );
  }
}
