// ignore_for_file: invalid_annotation_target
import 'package:apph2/domain/entities/profile_update_params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_update_params_model.freezed.dart';
part 'profile_update_params_model.g.dart';

@freezed
class ProfileUpdateParamsModel with _$ProfileUpdateParamsModel {
  const ProfileUpdateParamsModel._();

  factory ProfileUpdateParamsModel({
    @JsonKey(name: 'customer_id') required String customerId,
    required String nickname,
    required String email,
    required String ddd,
    required String cellphone,
    @JsonKey(name: 'zipcode') required String zipCode,
    required String address,
    required String number,
    required String complement,
    required String state,
    required String city,
    required String district,
    required String gender,
    @JsonKey(name: 'notify_score') required bool notifyScore,
    @JsonKey(name: 'notify_redemption') required bool notifyRedemption,
    @JsonKey(name: 'notify_promotion') required bool notifyPromotion,
    @JsonKey(name: 'notify_category') required bool notifyCategory,
  }) = _ProfileUpdateParamsModel;

  factory ProfileUpdateParamsModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProfileUpdateParamsModelFromJson(json);

  factory ProfileUpdateParamsModel.fromEntity(
    ProfileUpdateParams params,
  ) {
    return ProfileUpdateParamsModel(
      customerId: params.customerId,
      nickname: params.nickname,
      email: params.email,
      zipCode: params.zipCode,
      address: params.address,
      number: params.number,
      complement: params.complement,
      state: params.state,
      city: params.city,
      district: params.district,
      gender: params.gender,
      notifyScore: params.notifyScore,
      notifyRedemption: params.notifyRedemption,
      notifyPromotion: params.notifyPromotion,
      notifyCategory: params.notifyCategory,
      cellphone: params.cellphone,
      ddd: params.ddd,
    );
  }
}
