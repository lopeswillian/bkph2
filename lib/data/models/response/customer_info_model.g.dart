// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerInfoModel _$CustomerInfoModelFromJson(Map<String, dynamic> json) =>
    CustomerInfoModel(
      id: json['id'] as int?,
      h2PayUser: json['h2PayUser'] as bool,
      rewardsId: json['rewardsId'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
      birthdate: json['birthdate'] as String,
      cpf: json['cpf'] as String,
      cellphone: json['cellphone'] as String,
    );

Map<String, dynamic> _$CustomerInfoModelToJson(CustomerInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'h2PayUser': instance.h2PayUser,
      'rewardsId': instance.rewardsId,
      'name': instance.name,
      'email': instance.email,
      'birthdate': instance.birthdate,
      'cpf': instance.cpf,
      'cellphone': instance.cellphone,
    };
