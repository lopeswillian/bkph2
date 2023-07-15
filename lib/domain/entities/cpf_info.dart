import 'package:freezed_annotation/freezed_annotation.dart';

part 'cpf_info.freezed.dart';

@freezed
class CpfInfo with _$CpfInfo {
  factory CpfInfo({
    required String document,
    required bool isRewardsCustomer,
    required String name,
    required DateTime birthdate,
  }) = _CpfInfo;
}
