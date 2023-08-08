import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_info.freezed.dart';

@freezed
class ProfileInfo with _$ProfileInfo {
  factory ProfileInfo({
    required int id,
    required int nationality,
    required String name,
    required String email,
    required String nickname,
    required String cpf,
    required String photo,
    required String birthdate,
    required String zipCode,
    required String address,
    required String number,
    required String complement,
    required int stateId,
    required String stateName,
    required String stateAbbreviation,
    required int cityId,
    required String cityName,
    required String district,
    required String gender,
    required bool notifyScore,
    required bool notifyRedemption,
    required bool notifyPromotion,
    required bool notifyCategory,
    required String cellphone,
    required String ddd,
    required String cpfMasked,
    required String birthdateMasked,
    required int vipLiveId,
    required int vipOnlineId,
    required String vipLive,
    required String vipOnline,
    required bool ish2Pay,
  }) = _ProfileInfo;
}
