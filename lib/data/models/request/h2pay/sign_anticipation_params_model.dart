// ignore_for_file: invalid_annotation_target

import 'package:apph2/domain/entities/sign_anticipation_params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_anticipation_params_model.freezed.dart';
part 'sign_anticipation_params_model.g.dart';

@freezed
class SignAnticipationParamsModel with _$SignAnticipationParamsModel {
  const SignAnticipationParamsModel._();

  factory SignAnticipationParamsModel({
    @JsonKey(name: 'customer_id') required String customerId,
    @JsonKey(name: 'anticipation_id') required String anticipationId,
    required bool signed,
  }) = _SignAnticipationParamsModel;

  factory SignAnticipationParamsModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SignAnticipationParamsModelFromJson(json);

  factory SignAnticipationParamsModel.fromEntity(
    SignAnticipationParams params,
  ) {
    return SignAnticipationParamsModel(
      anticipationId: params.anticipationId,
      customerId: params.customerId,
      signed: params.signed,
    );
  }
}
