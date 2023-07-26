import 'package:apph2/domain/entities/product_accordion_item_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_accordion_info.freezed.dart';

@freezed
class ProductAccordionInfo with _$ProductAccordionInfo {
  factory ProductAccordionInfo({
    required String accordionIconSvg,
    required String accordionTitle,
    required String accordionSubTitle,
    required int gridItemSpacing,
    required List<ProductAccordionItemInfo> accordionItems,
  }) = _ProductAccordionInfo;
}
