// ignore_for_file: invalid_annotation_target
import 'package:apph2/data/models/response/rewards_cashback_data_model.dart';
import 'package:apph2/domain/entities/rewards_cashback_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rewards_cashback_object_model.freezed.dart';
part 'rewards_cashback_object_model.g.dart';

@freezed
class RewardsCashbackObjectModel with _$RewardsCashbackObjectModel {
  const RewardsCashbackObjectModel._();

  factory RewardsCashbackObjectModel({
    RewardsCashbackDataModel? cacheta,
    RewardsCashbackDataModel? poker,
  }) = _RewardsCashbackObjectModel;

  factory RewardsCashbackObjectModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RewardsCashbackObjectModelFromJson(json);

  RewardsCashbackObject toEntity() => RewardsCashbackObject(
        cacheta: cacheta?.toEntity(),
        poker: poker?.toEntity(),
      );
}
