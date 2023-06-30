import 'package:apph2/domain/entities/login_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_info_model.freezed.dart';
part 'login_info_model.g.dart';

@freezed
class LoginInfoModel with _$LoginInfoModel {
  const LoginInfoModel._();

  factory LoginInfoModel({
    required String token,
  }) = _LoginInfoModel;

  factory LoginInfoModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$LoginInfoModelFromJson(json);

  factory LoginInfoModel.fromEntity(
    LoginInfo params,
  ) {
    return LoginInfoModel(
      token: params.token,
    );
  }

  LoginInfo toEntity() => LoginInfo(
    token: token
  );
}
