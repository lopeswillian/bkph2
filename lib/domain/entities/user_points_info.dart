import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_points_info.freezed.dart';

@freezed
class UserPointsInfo with _$UserPointsInfo {
  factory UserPointsInfo({
    required double rewardsPoints,
  }) = _UserPointsInfo;
}
