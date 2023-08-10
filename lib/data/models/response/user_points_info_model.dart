// ignore_for_file: invalid_annotation_target
import 'package:apph2/domain/entities/user_points_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_points_info_model.freezed.dart';
part 'user_points_info_model.g.dart';

@freezed
class UserPointsInfoModel with _$UserPointsInfoModel {
  const UserPointsInfoModel._();
  factory UserPointsInfoModel({
    @JsonKey(name: 'rewards_points') String? rewardsPoints,
  }) = _UserPointsInfoModel;

  factory UserPointsInfoModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$UserPointsInfoModelFromJson(json);

  UserPointsInfo toEntity() => UserPointsInfo(
        rewardsPoints: rewardsPoints != null ? double.parse(rewardsPoints!) : 0,
      );
}
