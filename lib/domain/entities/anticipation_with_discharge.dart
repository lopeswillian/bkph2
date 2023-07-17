import 'package:apph2/domain/entities/anticipation_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'anticipation_with_discharge.freezed.dart';

@freezed
class AnticipationWithDischarge with _$AnticipationWithDischarge {
  factory AnticipationWithDischarge({
    required double discharge,
    required List<AnticipationInfo> listAnticipation
  }) = _AnticipationWithDischarg;
}
