// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserInfoAdapter extends TypeAdapter<UserInfo> {
  @override
  final int typeId = 1;

  @override
  UserInfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserInfo(
      id: fields[1] as int,
      avatarUrl: fields[2] as String,
      name: fields[3] as String,
      email: fields[4] as String,
      birthdate: fields[5] as String,
      cpf: fields[6] as String,
      nickname: fields[7] as String,
      cellphone: fields[8] as String,
      vipLiveId: fields[9] as int,
      vipOnlineId: fields[10] as int,
      vipLive: fields[11] as String,
      vipOnline: fields[12] as String,
      ish2Pay: fields[13] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, UserInfo obj) {
    writer
      ..writeByte(13)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.avatarUrl)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.email)
      ..writeByte(5)
      ..write(obj.birthdate)
      ..writeByte(6)
      ..write(obj.cpf)
      ..writeByte(7)
      ..write(obj.nickname)
      ..writeByte(8)
      ..write(obj.cellphone)
      ..writeByte(9)
      ..write(obj.vipLiveId)
      ..writeByte(10)
      ..write(obj.vipOnlineId)
      ..writeByte(11)
      ..write(obj.vipLive)
      ..writeByte(12)
      ..write(obj.vipOnline)
      ..writeByte(13)
      ..write(obj.ish2Pay);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
