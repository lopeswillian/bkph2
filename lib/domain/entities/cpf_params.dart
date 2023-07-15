import 'package:freezed_annotation/freezed_annotation.dart';

part 'cpf_params.freezed.dart';

@freezed
class CpfParams with _$CpfParams {
  factory CpfParams({
    required String document,
  }) = _CpfParams;
}
