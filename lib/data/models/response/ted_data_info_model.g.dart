// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ted_data_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TedDataInfoModel _$TedDataInfoModelFromJson(Map<String, dynamic> json) =>
    TedDataInfoModel(
      bank: json['bank'] as String,
      agency: json['agency'] as String,
      account: json['account'] as String,
      favoured: json['favoured'] as String,
    );

Map<String, dynamic> _$TedDataInfoModelToJson(TedDataInfoModel instance) =>
    <String, dynamic>{
      'bank': instance.bank,
      'agency': instance.agency,
      'account': instance.account,
      'favoured': instance.favoured,
    };
