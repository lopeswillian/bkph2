import 'package:apph2/domain/entities/cpf_params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cpf_params_model.freezed.dart';
part 'cpf_params_model.g.dart';

@freezed
class CpfParamsModel with _$CpfParamsModel {
  const CpfParamsModel._();

  factory CpfParamsModel({
    required String document,
  }) = _CpfParamsModel;

  factory CpfParamsModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CpfParamsModelFromJson(json);

  factory CpfParamsModel.fromEntity(
    CpfParams params,
  ) {
    return CpfParamsModel(
      document: params.document,
    );
  }
}
