import 'package:freezed_annotation/freezed_annotation.dart';

part 'bco_cpf_params.freezed.dart';

@freezed
class BcoCpfParams with _$BcoCpfParams {
  factory BcoCpfParams({
    required String document,
  }) = _BcoCpfParams;
}
