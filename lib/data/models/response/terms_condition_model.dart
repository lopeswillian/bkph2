// ignore_for_file: invalid_annotation_target

import 'package:apph2/domain/entities/terms_conditions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'terms_condition_model.freezed.dart';
part 'terms_condition_model.g.dart';

@freezed
class TermsConditionModel with _$TermsConditionModel {
  const TermsConditionModel._();

  factory TermsConditionModel({
    @JsonKey(name: 'terms_and_conditions_id') required int termId,
    required String content,
  }) = _TermsConditionModel;

  factory TermsConditionModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TermsConditionModelFromJson(json);

  factory TermsConditionModel.fromEntity(
    TermsConditions params,
  ) {
    return TermsConditionModel(
      content: params.content,
      termId: params.termId
    );
  }

  TermsConditions toEntity() => TermsConditions(
    content: content,
    termId: termId
  );
}
