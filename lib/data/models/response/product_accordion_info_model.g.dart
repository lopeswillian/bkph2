// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_accordion_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductAccordionInfoModel _$$_ProductAccordionInfoModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProductAccordionInfoModel(
      accordionIconSvg: json['accordionIconSvg'] as String,
      accordionTitle: json['accordionTitle'] as String,
      accordionSubTitle: json['accordionSubTitle'] as String,
      gridItemSpacing: json['gridItemSpacing'] as int,
      accordionItems: (json['accordionItems'] as List<dynamic>)
          .map((e) =>
              ProductAccordionItemInfoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProductAccordionInfoModelToJson(
        _$_ProductAccordionInfoModel instance) =>
    <String, dynamic>{
      'accordionIconSvg': instance.accordionIconSvg,
      'accordionTitle': instance.accordionTitle,
      'accordionSubTitle': instance.accordionSubTitle,
      'gridItemSpacing': instance.gridItemSpacing,
      'accordionItems': instance.accordionItems,
    };
