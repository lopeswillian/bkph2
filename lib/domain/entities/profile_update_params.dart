import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_update_params.freezed.dart';

@freezed
class ProfileUpdateParams with _$ProfileUpdateParams {
  factory ProfileUpdateParams({
    required String customerId,
    required String nickname,
    required String email,
    required String zipCode,
    required String address,
    required String number,
    required String complement,
    required String state,
    required String city,
    required String district,
    required String gender,
    required bool notifyScore,
    required bool notifyRedemption,
    required bool notifyPromotion,
    required bool notifyCategory,
    required String cellphone,
    required String ddd,
  }) = _ProfileUpdateParams;
}
