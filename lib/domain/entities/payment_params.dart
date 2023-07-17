import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_params.freezed.dart';

@freezed
class PaymentParams with _$PaymentParams {
  factory PaymentParams({
    required int typeOfPayerId,
    required int customerId,
    required int typeOfPaymentId,
    required double paymentValue,
    String? paymentImgFront,
    String? paymentImgBack,
    int? companyId,
    String? thirdPartCpf,
    String? thirdPartCnpj,
  }) = _PaymentParams;

  factory PaymentParams.withCustomer({
    required int typeOfPayerId,
    required int customerId,
    required int typeOfPaymentId,
    required double paymentValue,
    String? paymentImgFront,
    String? paymentImgBack,
  }) =>
      PaymentParams(
        typeOfPayerId: 1,
        customerId: customerId,
        typeOfPaymentId: typeOfPaymentId,
        paymentValue: paymentValue,
        paymentImgFront: paymentImgFront,
        paymentImgBack: paymentImgBack,
      );

  factory PaymentParams.withCustomerCompany({
    required int typeOfPayerId,
    required int customerId,
    required int typeOfPaymentId,
    required double paymentValue,
    String? paymentImgFront,
    String? paymentImgBack,
    required int companyId,
    required String thirdPartCpf,
  }) =>
      PaymentParams(
        typeOfPayerId: 2,
        customerId: customerId,
        typeOfPaymentId: typeOfPaymentId,
        paymentValue: paymentValue,
        paymentImgFront: paymentImgFront,
        paymentImgBack: paymentImgBack,
        companyId: companyId,
      );
}
