import 'package:freezed_annotation/freezed_annotation.dart';

part 'reedem_prize_params.freezed.dart';

@freezed
class ReedemPrizeParams with _$ReedemPrizeParams {
  factory ReedemPrizeParams({
    required int clientId,
    required int prizeId,
    required double value,
    required int points,
    required bool receiptDifference,
    int ? idApp,
    int ? unityId,
    int ? clubId,
  }) = _ReedemPrizeParams;
}
