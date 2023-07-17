import 'package:apph2/domain/entities/bco_cnpj_params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bco_cnpj_params_model.freezed.dart';
part 'bco_cnpj_params_model.g.dart';

@freezed
class BcoCnpjParamsModel with _$BcoCnpjParamsModel {
  const BcoCnpjParamsModel._();

  factory BcoCnpjParamsModel({
    required String document,
  }) = _BcoCnpjParamsModel;

  factory BcoCnpjParamsModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BcoCnpjParamsModelFromJson(json);

  factory BcoCnpjParamsModel.fromEntity(
    BcoCnpjParams params,
  ) {
    return BcoCnpjParamsModel(
      document: params.document,
    );
  }
}
