import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_info.freezed.dart';

@freezed
class LoginInfo with _$LoginInfo {
  factory LoginInfo({
    required String token,
  }) = _LoginInfo;
}
