import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_anticipation_params.freezed.dart';

@freezed
class SignAnticipationParams with _$SignAnticipationParams {
  factory SignAnticipationParams({
    required String customerId,
    required String anticipationId,
    required bool signed,
  }) = _SignAnticipationParams;
}
