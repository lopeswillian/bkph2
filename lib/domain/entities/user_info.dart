import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info.freezed.dart';

@freezed
class UserInfo with _$UserInfo {
  factory UserInfo({
    required int id,
    required String avatarUrl,
    required String name,
    required String email,
    required String birthdate,
    required String cpf,
    required String nickname,
    required String cellphone,
    required int vipLiveId,
    required int vipOnlineId,
    required String vipLive,
    required String vipOnline,
  }) = _UserInfo;
}
