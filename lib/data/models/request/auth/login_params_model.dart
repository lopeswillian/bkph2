import 'package:apph2/domain/entities/login_params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_params_model.freezed.dart';
part 'login_params_model.g.dart';

@freezed
class LoginParamsModel with _$LoginParamsModel {
  const LoginParamsModel._();

  factory LoginParamsModel({
    required String identifier,
    required String password,
  }) = _LoginParamsModel;

  factory LoginParamsModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$LoginParamsModelFromJson(json);

  factory LoginParamsModel.fromEntity(
    LoginParams params,
  ) {
    return LoginParamsModel(
      identifier: params.identifier,
      password: params.password,
    );
  }
}
