// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bco_cnpj_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BcoCnpjInfoModel _$BcoCnpjInfoModelFromJson(Map<String, dynamic> json) =>
    BcoCnpjInfoModel(
      cnpj: json['cnpj'] as String,
      address: json['address'] as String,
      businessName: json['businessName'] as String,
    );

Map<String, dynamic> _$BcoCnpjInfoModelToJson(BcoCnpjInfoModel instance) =>
    <String, dynamic>{
      'cnpj': instance.cnpj,
      'address': instance.address,
      'businessName': instance.businessName,
    };
