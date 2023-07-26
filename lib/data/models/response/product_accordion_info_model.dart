// ignore_for_file: invalid_annotation_target

import 'package:apph2/data/models/response/product_accordion_item_info_model.dart';
import 'package:apph2/domain/entities/product_accordion_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_accordion_info_model.freezed.dart';
part 'product_accordion_info_model.g.dart';

@freezed
class ProductAccordionInfoModel with _$ProductAccordionInfoModel {
  const ProductAccordionInfoModel._();

  factory ProductAccordionInfoModel({
    required String accordionIconSvg,
    required String accordionTitle,
    required String accordionSubTitle,
    required int gridItemSpacing,
    required List<ProductAccordionItemInfoModel> accordionItems,
  }) = _ProductAccordionInfoModel;

  factory ProductAccordionInfoModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductAccordionInfoModelFromJson(json);

  ProductAccordionInfo toEntity() => ProductAccordionInfo(
        accordionIconSvg: accordionIconSvg,
        accordionTitle: accordionTitle,
        accordionSubTitle: accordionSubTitle,
        gridItemSpacing: gridItemSpacing,
        accordionItems: accordionItems.map((e) => e.toEntity()).toList(),
      );
}
