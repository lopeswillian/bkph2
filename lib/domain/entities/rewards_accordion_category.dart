import 'package:apph2/domain/entities/rewards_category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rewards_accordion_category.freezed.dart';

@freezed
class RewardsAccordionCategory with _$RewardsAccordionCategory {
  factory RewardsAccordionCategory({
    required String accordionIconSvg,
    required String accordionTitle,
    required List<RewardsCategory> prizes,
  }) = _RewardsAccordionCategory;
}
