// ignore_for_file: invalid_annotation_target
import 'package:apph2/domain/entities/product_accordion_item_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_accordion_item_info_model.freezed.dart';
part 'product_accordion_item_info_model.g.dart';

@freezed
class ProductAccordionItemInfoModel with _$ProductAccordionItemInfoModel {
  const ProductAccordionItemInfoModel._();

  factory ProductAccordionItemInfoModel({
    required String itemId,
    required String bgImage,
    required String urlExternal,
  }) = _ProductAccordionItemInfoModel;

  factory ProductAccordionItemInfoModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductAccordionItemInfoModelFromJson(json);

  ProductAccordionItemInfo toEntity() => ProductAccordionItemInfo(
        itemId: itemId,
        bgImage: bgImage,
        urlExternal: urlExternal,
      );
}
