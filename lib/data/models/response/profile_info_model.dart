// ignore_for_file: invalid_annotation_target
import 'package:apph2/domain/entities/profile_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_info_model.freezed.dart';
part 'profile_info_model.g.dart';

@freezed
class ProfileInfoModel with _$ProfileInfoModel {
  const ProfileInfoModel._();

  factory ProfileInfoModel({
    required int id,
    required int nationality,
    required String name,
    required String email,
    required String nickname,
    required String cpf,
    required String photo,
    required String birthdate,
    @JsonKey(name: 'zip_code') required String zipCode,
    required String address,
    required String number,
    required String complement,
    @JsonKey(name: 'state_id') required int stateId,
    @JsonKey(name: 'state_name') required String stateName,
    @JsonKey(name: 'state_abbreviation') required String stateAbbreviation,
    @JsonKey(name: 'city_id') required int cityId,
    @JsonKey(name: 'city_name') required String cityName,
    required String district,
    required String gender,
    @JsonKey(name: 'notify_score') required int notifyScore,
    @JsonKey(name: 'notify_redemption') required int notifyRedemption,
    @JsonKey(name: 'notify_promotion') required int notifyPromotion,
    @JsonKey(name: 'notify_category') required int notifyCategory,
    required String cellphone,
    required String ddd,
    @JsonKey(name: 'cpf_masked') required String cpfMasked,
    @JsonKey(name: 'birthdate_masked') required String birthdateMasked,
  }) = _ProfileInfoModel;

  factory ProfileInfoModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProfileInfoModelFromJson(json);

  ProfileInfo toEntity() => ProfileInfo(
        id: id,
        nationality: nationality,
        name: name,
        email: email,
        nickname: nickname,
        cpf: cpf,
        photo: photo,
        birthdate: birthdate,
        zipCode: zipCode,
        address: address,
        number: number,
        complement: complement,
        stateId: stateId,
        stateName: stateName,
        stateAbbreviation: stateAbbreviation,
        cityId: cityId,
        cityName: cityName,
        district: district,
        gender: gender,
        notifyScore: notifyScore > 0,
        notifyRedemption: notifyRedemption > 0,
        notifyPromotion: notifyPromotion > 0,
        notifyCategory: notifyCategory > 0,
        cellphone: cellphone,
        ddd: ddd,
        cpfMasked: cpfMasked,
        birthdateMasked: birthdateMasked,
      );
}
