// ignore_for_file: invalid_annotation_target

import 'package:apph2/domain/entities/reedem_prize_params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reedem_prize_params_model.freezed.dart';
part 'reedem_prize_params_model.g.dart';

@freezed
class ReedemPrizeParamsModel with _$ReedemPrizeParamsModel {
  const ReedemPrizeParamsModel._();

  factory ReedemPrizeParamsModel({
    @JsonKey(name: 'client_id') required int clientId,
    @JsonKey(name: 'prize_id') required int prizeId,
    required double value,
    required int points,
    @JsonKey(name: 'receipt_difference') required bool receiptDifference,
    @JsonKey(name: 'id_app') int? idApp,
    @JsonKey(name: 'unity_id') int? unityId,
    @JsonKey(name: 'club_id') int? clubId,
  }) = _ReedemPrizeParamsModel;

  factory ReedemPrizeParamsModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ReedemPrizeParamsModelFromJson(json);

  factory ReedemPrizeParamsModel.fromEntity(
    ReedemPrizeParams params,
  ) {
    return ReedemPrizeParamsModel(
      clientId: params.clientId,
      prizeId: params.prizeId,
      value: params.value,
      points: params.points,
      receiptDifference: params.receiptDifference,
      idApp: params.idApp,
      unityId: params.unityId,
      clubId: params.clubId,
    );
  }
}
