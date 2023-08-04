import 'package:apph2/domain/entities/anticipation_with_discharge.dart';
import 'package:apph2/domain/entities/bco_cnpj_info.dart';
import 'package:apph2/domain/entities/bco_cpf_info.dart';
import 'package:apph2/domain/entities/company_info.dart';
import 'package:apph2/domain/entities/pix_code_info.dart';
import 'package:apph2/domain/entities/ted_data_info.dart';
import 'package:apph2/infraestructure/mvvm/mvvm.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_state.freezed.dart';

@freezed
class PaymentState extends ViewModelState with _$PaymentState {
  const factory PaymentState({
    @Default(false) bool loading,
    @Default('') String error,
    @Default(0) double valueToPay,
    @Default(1) int typeOfPayment,
    @Default('') String paymentImgFront,
    @Default('') String paymentImgBack,
    @Default('') String thirdPartCpf,
    @Default('') String thirdPartCnpj,
    @Default(false) bool successAnticipation,
    PixCodeInfo? pixCodeInfo,
    TedDataInfo? tedDataInfo,
    CompanyInfo? selectedCustomerCompany,
    AnticipationWithDischarge? anticipationWithDischarge,
    BcoCnpjInfo? bcoCnpjInfo,
    BcoCpfInfo? bcoCpfInfo,
  }) = _PaymentState;

  factory PaymentState.initial() => const PaymentState();
}
