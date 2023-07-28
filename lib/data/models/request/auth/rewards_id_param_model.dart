import 'package:apph2/domain/entities/rewards_id_param.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rewards_id_param_model.freezed.dart';
part 'rewards_id_param_model.g.dart';

@freezed
class RewardsIdParamModel with _$RewardsIdParamModel {
  const RewardsIdParamModel._();

  factory RewardsIdParamModel({
    required String rewardsId,
  }) = _RewardsIdParamModel;

  factory RewardsIdParamModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RewardsIdParamModelFromJson(json);

  factory RewardsIdParamModel.fromEntity(
    RewardsIdParam params,
  ) {
    return RewardsIdParamModel(
      rewardsId: params.rewardsId,
    );
  }
}
