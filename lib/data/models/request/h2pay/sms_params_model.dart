import 'package:apph2/domain/entities/sms_params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sms_params_model.freezed.dart';
part 'sms_params_model.g.dart';

@freezed
class SmsParamsModel with _$SmsParamsModel {
  const SmsParamsModel._();

  factory SmsParamsModel({
    required String cpf,
    required String name,
    required String cellphone,
    required String email,
    String? code
  }) = _SmsParamsModel;

  factory SmsParamsModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SmsParamsModelFromJson(json);

  factory SmsParamsModel.fromEntity(
    SmsParams params,
  ) {
    return SmsParamsModel(
      cellphone: params.cellphone,
      cpf: params.cpf,
      email: params.email,
      name: params.name,
      code: params.code
    );
  }
}
