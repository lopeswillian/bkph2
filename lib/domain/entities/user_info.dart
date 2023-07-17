import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'user_info.freezed.dart';
part 'user_info.g.dart';

@HiveType(typeId: 1)
@freezed
class UserInfo with _$UserInfo {
  factory UserInfo({
    @HiveField(1) required int id,
    @HiveField(2)required String avatarUrl,
    @HiveField(3)required String name,
    @HiveField(4)required String email,
    @HiveField(5)required String birthdate,
    @HiveField(6)required String cpf,
    @HiveField(7)required String nickname,
    @HiveField(8)required String cellphone,
    @HiveField(9)required int vipLiveId,
    @HiveField(10)required int vipOnlineId,
    @HiveField(11)required String vipLive,
    @HiveField(12)required String vipOnline,
  }) = _UserInfo;

}
