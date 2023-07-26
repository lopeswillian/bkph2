// ignore_for_file: invalid_annotation_target
import 'package:apph2/domain/entities/verify_user_h2pay_params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_user_h2pay_params_model.freezed.dart';
part 'verify_user_h2pay_params_model.g.dart';

@freezed
class VerifyUserH2PayParamsModel with _$VerifyUserH2PayParamsModel {
  const VerifyUserH2PayParamsModel._();

  factory VerifyUserH2PayParamsModel({
    @JsonKey(name: 'rewards_client_id') required String rewardsClientId,
    @JsonKey(name: 'monthly_income_id') required String monthlyIncomeId,
    @JsonKey(name: 'job_id') required String jobId,
    @JsonKey(name: 'terms_and_conditions_id')
    required String termsAndConditionsId,
    @JsonKey(name: 'terms_and_conditions') required bool termsAndConditions,
    @JsonKey(name: 'doc_validation_id') required String docValidationId,
    @JsonKey(name: 'face_validation_id') required String faceValidationId,
    required String cellphone,
  }) = _VerifyUserH2PayParamsModel;

  factory VerifyUserH2PayParamsModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$VerifyUserH2PayParamsModelFromJson(json);

  factory VerifyUserH2PayParamsModel.fromEntity(
    VerifyUserH2PayParams params,
  ) {
    return VerifyUserH2PayParamsModel(
      rewardsClientId: params.rewardsClientId,
      monthlyIncomeId: params.monthlyIncomeId,
      jobId: params.jobId,
      termsAndConditionsId: params.termsAndConditionsId,
      termsAndConditions: params.termsAndConditions,
      docValidationId: params.docValidationId,
      faceValidationId: params.faceValidationId,
      cellphone: params.cellphone,
    );
  }
}
