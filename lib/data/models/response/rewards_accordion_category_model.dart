// ignore_for_file: invalid_annotation_target

import 'package:apph2/data/models/response/rewards_category_model.dart';
import 'package:apph2/domain/entities/rewards_accordion_category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rewards_accordion_category_model.freezed.dart';
part 'rewards_accordion_category_model.g.dart';

@freezed
class RewardsAccordionCategoryModel with _$RewardsAccordionCategoryModel {
  const RewardsAccordionCategoryModel._();

  factory RewardsAccordionCategoryModel({
    // required String accordionIconSvg,
    @JsonKey(name: 'name') required String accordionTitle,
    required List<RewardsCategoryModel> prizes,
  }) = _RewardsAccordionCategoryModel;

  factory RewardsAccordionCategoryModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RewardsAccordionCategoryModelFromJson(json);

  RewardsAccordionCategory toEntity() => RewardsAccordionCategory(
        // accordionIconSvg: accordionIconSvg,
        accordionIconSvg: '',
        accordionTitle: accordionTitle,
        prizes: prizes.map((prize) => prize.toEntity()).toList(),
      );
}
