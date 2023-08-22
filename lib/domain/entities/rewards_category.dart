import 'package:freezed_annotation/freezed_annotation.dart';

part 'rewards_category.freezed.dart';

@freezed
class RewardsCategory with _$RewardsCategory {
  factory RewardsCategory({
    required int id,
    required String title,
    required int points,
    required String description,
    double? valuePoint,
    int? minPoints,
    int? maxPoints,
    required bool isCashBack,
    required String bgUrl,
    required bool fixedValue,
  }) = _RewardsCategory;
}
