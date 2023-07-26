import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_accordion_item_info.freezed.dart';

@freezed
class ProductAccordionItemInfo with _$ProductAccordionItemInfo {
  factory ProductAccordionItemInfo({
    required String itemId,
    required String bgImage,
    required String urlExternal,
  }) = _ProductAccordionItemInfo;
}
