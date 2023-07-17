// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompanyInfoModel _$CompanyInfoModelFromJson(Map<String, dynamic> json) =>
    CompanyInfoModel(
      companyId: json['companyId'] as int,
      cnpj: json['cnpj'] as String,
      address: json['address'] as String,
      businessName: json['businessName'] as String,
    );

Map<String, dynamic> _$CompanyInfoModelToJson(CompanyInfoModel instance) =>
    <String, dynamic>{
      'companyId': instance.companyId,
      'cnpj': instance.cnpj,
      'address': instance.address,
      'businessName': instance.businessName,
    };
