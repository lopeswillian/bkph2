// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileInfoModel _$$_ProfileInfoModelFromJson(Map<String, dynamic> json) =>
    _$_ProfileInfoModel(
      id: json['id'] as int,
      nationality: json['nationality'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
      nickname: json['nickname'] as String,
      cpf: json['cpf'] as String,
      photo: json['photo'] as String,
      birthdate: json['birthdate'] as String,
      zipCode: json['zip_code'] as String,
      address: json['address'] as String,
      number: json['number'] as String,
      complement: json['complement'] as String,
      stateId: json['state_id'] as int,
      stateName: json['state_name'] as String,
      stateAbbreviation: json['state_abbreviation'] as String,
      cityId: json['city_id'] as int,
      cityName: json['city_name'] as String,
      district: json['district'] as String,
      gender: json['gender'] as String,
      notifyScore: json['notify_score'] as int,
      notifyRedemption: json['notify_redemption'] as int,
      notifyPromotion: json['notify_promotion'] as int,
      notifyCategory: json['notify_category'] as int,
      cellphone: json['cellphone'] as String,
      ddd: json['ddd'] as String,
      cpfMasked: json['cpf_masked'] as String,
      birthdateMasked: json['birthdate_masked'] as String,
      vipLiveId: json['vip_level_live_id'] as int,
      vipOnlineId: json['vip_level_online_id'] as int,
      vipLive: json['vip_level_live'] as String,
      vipOnline: json['vip_level_online'] as String,
      ish2Pay: json['h2_pay'] as int,
    );

Map<String, dynamic> _$$_ProfileInfoModelToJson(_$_ProfileInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nationality': instance.nationality,
      'name': instance.name,
      'email': instance.email,
      'nickname': instance.nickname,
      'cpf': instance.cpf,
      'photo': instance.photo,
      'birthdate': instance.birthdate,
      'zip_code': instance.zipCode,
      'address': instance.address,
      'number': instance.number,
      'complement': instance.complement,
      'state_id': instance.stateId,
      'state_name': instance.stateName,
      'state_abbreviation': instance.stateAbbreviation,
      'city_id': instance.cityId,
      'city_name': instance.cityName,
      'district': instance.district,
      'gender': instance.gender,
      'notify_score': instance.notifyScore,
      'notify_redemption': instance.notifyRedemption,
      'notify_promotion': instance.notifyPromotion,
      'notify_category': instance.notifyCategory,
      'cellphone': instance.cellphone,
      'ddd': instance.ddd,
      'cpf_masked': instance.cpfMasked,
      'birthdate_masked': instance.birthdateMasked,
      'vip_level_live_id': instance.vipLiveId,
      'vip_level_online_id': instance.vipOnlineId,
      'vip_level_live': instance.vipLive,
      'vip_level_online': instance.vipOnline,
      'h2_pay': instance.ish2Pay,
    };
