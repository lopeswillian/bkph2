import 'package:apph2/domain/entities/rewards_cashback_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rewards_cashback_object.freezed.dart';

@freezed
class RewardsCashbackObject with _$RewardsCashbackObject {
  factory RewardsCashbackObject({
    RewardsCashbackData? poker,
    RewardsCashbackData? cacheta,
  }) = _RewardsCashbackObject;
}
