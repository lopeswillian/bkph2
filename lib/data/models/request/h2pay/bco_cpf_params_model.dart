import 'package:apph2/domain/entities/bco_cpf_params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bco_cpf_params_model.freezed.dart';
part 'bco_cpf_params_model.g.dart';

@freezed
class BcoCpfParamsModel with _$BcoCpfParamsModel {
  const BcoCpfParamsModel._();

  factory BcoCpfParamsModel({
    required String document,
  }) = _BcoCpfParamsModel;

  factory BcoCpfParamsModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BcoCpfParamsModelFromJson(json);

  factory BcoCpfParamsModel.fromEntity(
    BcoCpfParams params,
  ) {
    return BcoCpfParamsModel(
      document: params.document,
    );
  }
}
