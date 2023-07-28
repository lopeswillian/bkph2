import 'package:freezed_annotation/freezed_annotation.dart';

part 'rewards_id_param.freezed.dart';

@freezed
class RewardsIdParam with _$RewardsIdParam {
  factory RewardsIdParam({
    required String rewardsId,
  }) = _RewardsIdParam;
}
