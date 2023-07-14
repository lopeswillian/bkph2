import 'package:freezed_annotation/freezed_annotation.dart';

part 'anticipation_params.freezed.dart';

@freezed
class AnticipationParams with _$AnticipationParams {
  factory AnticipationParams({
    required int customerId,
  }) = _AnticipationParams;
}
