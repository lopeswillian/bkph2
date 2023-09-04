// ignore_for_file: invalid_annotation_target
import 'package:apph2/data/models/response/rewards_cashback_object_model.dart';
import 'package:apph2/domain/entities/rewards_category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rewards_category_model.freezed.dart';
part 'rewards_category_model.g.dart';

@freezed
class RewardsCategoryModel with _$RewardsCategoryModel {
  const RewardsCategoryModel._();

  factory RewardsCategoryModel({
    required int id,
    @JsonKey(name: 'name') required String title,
    @JsonKey(name: 'points') required int points,
    @JsonKey(name: 'complete_description') required String description,
    @JsonKey(name: 'value_per_point') double? valuePoint,
    @JsonKey(name: 'min_points') int? minPoints,
    @JsonKey(name: 'max_points') int? maxPoints,
    @JsonKey(name: 'is_cashback') bool? isCashBack,
    @JsonKey(name: 'image') required String bgUrl,
    @JsonKey(name: 'fixed_value') required bool fixedValue,
    @JsonKey(name: 'cashback_data') RewardsCashbackObjectModel? cashbackObject,
  }) = _RewardsCategoryModel;

  factory RewardsCategoryModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RewardsCategoryModelFromJson(json);

  RewardsCategory toEntity() => RewardsCategory(
        id: id,
        title: title,
        points: points,
        valuePoint: valuePoint,
        description: description,
        minPoints: minPoints,
        maxPoints: maxPoints,
        isCashBack: isCashBack ?? false,
        bgUrl: bgUrl,
        fixedValue: fixedValue,
        cashbackObject: cashbackObject?.toEntity(),
      );
}
