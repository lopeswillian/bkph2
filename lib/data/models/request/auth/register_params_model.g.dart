// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_params_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterParamsModel _$$_RegisterParamsModelFromJson(
        Map<String, dynamic> json) =>
    _$_RegisterParamsModel(
      nationality: json['nationality'] as int,
      name: json['name'] as String,
      nickname: json['nickname'] as String,
      gender: json['gender'] as String,
      email: json['email'] as String,
      cpf: json['cpf'] as String,
      cellphone: json['cellphone'] as String,
      birthdate: json['birthdate'] as String,
      zipcode: json['zipcode'] as String,
      address: json['address'] as String,
      number: json['number'] as String,
      complement: json['complement'] as String?,
      district: json['district'] as String,
      state: json['state'] as String,
      city: json['city'] as String,
      password: json['password'] as String,
      passwordConfirmation: json['password_confirmation'] as String,
    );

Map<String, dynamic> _$$_RegisterParamsModelToJson(
        _$_RegisterParamsModel instance) =>
    <String, dynamic>{
      'nationality': instance.nationality,
      'name': instance.name,
      'nickname': instance.nickname,
      'gender': instance.gender,
      'email': instance.email,
      'cpf': instance.cpf,
      'cellphone': instance.cellphone,
      'birthdate': instance.birthdate,
      'zipcode': instance.zipcode,
      'address': instance.address,
      'number': instance.number,
      'complement': instance.complement,
      'district': instance.district,
      'state': instance.state,
      'city': instance.city,
      'password': instance.password,
      'password_confirmation': instance.passwordConfirmation,
    };
