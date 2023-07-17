// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_companies_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerCompaniesModel _$CustomerCompaniesModelFromJson(
        Map<String, dynamic> json) =>
    CustomerCompaniesModel(
      listCompanies: (json['listCompanies'] as List<dynamic>)
          .map((e) => CompanyInfoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CustomerCompaniesModelToJson(
        CustomerCompaniesModel instance) =>
    <String, dynamic>{
      'listCompanies': instance.listCompanies,
    };
