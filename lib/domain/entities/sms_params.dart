import 'package:freezed_annotation/freezed_annotation.dart';

part 'sms_params.freezed.dart';

@freezed
class SmsParams with _$SmsParams {
  factory SmsParams({
    required String cpf,
    required String name,
    required String cellphone,
    required String email,
  }) = _SmsParams;
}
