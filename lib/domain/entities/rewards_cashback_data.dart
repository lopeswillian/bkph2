import 'package:freezed_annotation/freezed_annotation.dart';

part 'rewards_cashback_data.freezed.dart';

@freezed
class RewardsCashbackData with _$RewardsCashbackData {
  factory RewardsCashbackData({
    required int clubId,
    required int unitId,
    required int app,
  }) = _RewardsCashbackData;
}
