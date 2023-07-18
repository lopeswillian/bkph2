import 'package:freezed_annotation/freezed_annotation.dart';

part 'terms_conditions.freezed.dart';

@freezed
class TermsConditions with _$TermsConditions {
  factory TermsConditions({
    required int termId,
    required String content,
  }) = _TermsConditions;
}
