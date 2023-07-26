import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_user_h2pay_params.freezed.dart';

@freezed
class VerifyUserH2PayParams with _$VerifyUserH2PayParams {
  factory VerifyUserH2PayParams({
    required String rewardsClientId,
    required String monthlyIncomeId,
    required String jobId,
    required String termsAndConditionsId,
    required bool termsAndConditions,
    required String docValidationId,
    required String faceValidationId,
    required String cellphone,
  }) = _VerifyUserH2PayParams;
}
