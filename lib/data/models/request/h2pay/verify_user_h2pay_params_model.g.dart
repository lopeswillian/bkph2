// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_user_h2pay_params_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VerifyUserH2PayParamsModel _$$_VerifyUserH2PayParamsModelFromJson(
        Map<String, dynamic> json) =>
    _$_VerifyUserH2PayParamsModel(
      rewardsClientId: json['rewards_client_id'] as String,
      monthlyIncomeId: json['monthly_income_id'] as String,
      jobId: json['job_id'] as String,
      termsAndConditionsId: json['terms_and_conditions_id'] as String,
      termsAndConditions: json['terms_and_conditions'] as bool,
      docValidationId: json['doc_validation_id'] as String,
      cellphone: json['cellphone'] as String,
    );

Map<String, dynamic> _$$_VerifyUserH2PayParamsModelToJson(
        _$_VerifyUserH2PayParamsModel instance) =>
    <String, dynamic>{
      'rewards_client_id': instance.rewardsClientId,
      'monthly_income_id': instance.monthlyIncomeId,
      'job_id': instance.jobId,
      'terms_and_conditions_id': instance.termsAndConditionsId,
      'terms_and_conditions': instance.termsAndConditions,
      'doc_validation_id': instance.docValidationId,
      'cellphone': instance.cellphone,
    };
