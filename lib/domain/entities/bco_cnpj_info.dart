import 'package:freezed_annotation/freezed_annotation.dart';

part 'bco_cnpj_info.freezed.dart';

@freezed
class BcoCnpjInfo with _$BcoCnpjInfo {
  factory BcoCnpjInfo({
    required String cnpj,
    required String address,
    required String businessName,
  }) = _BcoCnpjInfo;
}
