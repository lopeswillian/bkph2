// ignore_for_file: invalid_annotation_target
import 'package:apph2/domain/entities/register_params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_params_model.freezed.dart';
part 'register_params_model.g.dart';

@freezed
class RegisterParamsModel with _$RegisterParamsModel {
  const RegisterParamsModel._();

  factory RegisterParamsModel({
    required int nationality,
    required String name,
    required String nickname,
    required String gender,
    required String email,
    required String cpf,
    required String cellphone,
    required String birthdate,
    required String zipcode,
    required String address,
    required String number,
    String? complement,
    required String district,
    required String state,
    required String city,
    required String password,
    @JsonKey(name: 'password_confirmation')
    required String passwordConfirmation,
  }) = _RegisterParamsModel;

  factory RegisterParamsModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RegisterParamsModelFromJson(json);

  factory RegisterParamsModel.fromEntity(
    RegisterParams params,
  ) {
    return RegisterParamsModel(
      nationality: params.nationality,
      name: params.name,
      nickname: params.nickname,
      gender: params.gender,
      email: params.email,
      cpf: params.cpf,
      cellphone: params.cellphone,
      birthdate: params.birthdate,
      zipcode: params.zipcode,
      address: params.address,
      number: params.number,
      complement: params.complement??'',
      district: params.district,
      state: params.state,
      city: params.city,
      password: params.password,
      passwordConfirmation: params.passwordConfirmation,
    );
  }
}
