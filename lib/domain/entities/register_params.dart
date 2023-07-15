import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_params.freezed.dart';

@freezed
class RegisterParams with _$RegisterParams {
  factory RegisterParams({
    required String nationality,
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
    required String passwordConfirmation,
  }) = _RegisterParams;
}
