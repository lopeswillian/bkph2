// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_update_params_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileUpdateParamsModel _$$_ProfileUpdateParamsModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProfileUpdateParamsModel(
      customerId: json['customer_id'] as String,
      nickname: json['nickname'] as String,
      email: json['email'] as String,
      ddd: json['ddd'] as String,
      cellphone: json['cellphone'] as String,
      zipCode: json['zipcode'] as String,
      address: json['address'] as String,
      number: json['number'] as String,
      complement: json['complement'] as String,
      state: json['state'] as String,
      city: json['city'] as String,
      district: json['district'] as String,
      gender: json['gender'] as String,
      notifyScore: json['notify_score'] as bool,
      notifyRedemption: json['notify_redemption'] as bool,
      notifyPromotion: json['notify_promotion'] as bool,
      notifyCategory: json['notify_category'] as bool,
    );

Map<String, dynamic> _$$_ProfileUpdateParamsModelToJson(
        _$_ProfileUpdateParamsModel instance) =>
    <String, dynamic>{
      'customer_id': instance.customerId,
      'nickname': instance.nickname,
      'email': instance.email,
      'ddd': instance.ddd,
      'cellphone': instance.cellphone,
      'zipcode': instance.zipCode,
      'address': instance.address,
      'number': instance.number,
      'complement': instance.complement,
      'state': instance.state,
      'city': instance.city,
      'district': instance.district,
      'gender': instance.gender,
      'notify_score': instance.notifyScore,
      'notify_redemption': instance.notifyRedemption,
      'notify_promotion': instance.notifyPromotion,
      'notify_category': instance.notifyCategory,
    };
