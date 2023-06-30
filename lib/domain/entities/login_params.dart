import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_params.freezed.dart';

@freezed
class LoginParams with _$LoginParams {
  factory LoginParams({
    required String identifier,
    required String password,
  }) = _LoginParams;
}
