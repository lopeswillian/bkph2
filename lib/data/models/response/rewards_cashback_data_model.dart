// ignore_for_file: invalid_annotation_target
import 'package:apph2/domain/entities/rewards_cashback_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rewards_cashback_data_model.freezed.dart';
part 'rewards_cashback_data_model.g.dart';

@freezed
class RewardsCashbackDataModel with _$RewardsCashbackDataModel {
  const RewardsCashbackDataModel._();

  factory RewardsCashbackDataModel({
    @JsonKey(name: 'club_id') required int clubId,
    @JsonKey(name: 'unit_id') required int unitId,
    required int app,
  }) = _RewardsCashbackDataModel;

  factory RewardsCashbackDataModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RewardsCashbackDataModelFromJson(json);

  RewardsCashbackData toEntity() => RewardsCashbackData(
        clubId: clubId,
        unitId: unitId,
        app: app,
      );
}
