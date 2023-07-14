import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_info.freezed.dart';

@freezed
class CustomerInfo with _$CustomerInfo {
  factory CustomerInfo({
    required int id,
    required bool h2PayUser,
    required int rewardsId,
    required String name,
    required String email,
    required String birthdate,
    required String cpf,
    required String cellphone,
  }) = _CustomerInfo;
}
