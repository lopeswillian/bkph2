import 'package:freezed_annotation/freezed_annotation.dart';

part 'bco_cnpj_params.freezed.dart';

@freezed
class BcoCnpjParams with _$BcoCnpjParams {
  factory BcoCnpjParams({
    required String document,
  }) = _BcoCnpjParams;
}
