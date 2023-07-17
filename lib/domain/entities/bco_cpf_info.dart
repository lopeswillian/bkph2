import 'package:freezed_annotation/freezed_annotation.dart';

part 'bco_cpf_info.freezed.dart';

@freezed
class BcoCpfInfo with _$BcoCpfInfo {
  factory BcoCpfInfo({
    required String document,
    required String name,
    required DateTime birthdate,
  }) = _BcoCpfInfo;
}
