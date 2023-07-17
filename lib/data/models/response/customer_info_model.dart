import 'package:apph2/domain/entities/customer_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

part 'customer_info_model.freezed.dart';
part 'customer_info_model.g.dart';

@freezed
@JsonSerializable()
class CustomerInfoModel with _$CustomerInfoModel {
  const CustomerInfoModel._();

  factory CustomerInfoModel({
    int? id,
    required bool h2PayUser,
    required int rewardsId,
    required String name,
    required String email,
    required String birthdate,
    required String cpf,
    required String cellphone,
  }) = _CustomerInfoModel;

  factory CustomerInfoModel.fromToken(String token) {
    Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
    return CustomerInfoModel(
      id: decodedToken['customer_id'],
      name: decodedToken['customer_name'],
      email: decodedToken['customer_email'],
      birthdate: decodedToken['customer_birthdate'],
      cpf: decodedToken['customer_cpf'],
      cellphone: decodedToken['customer_cellphone'],
      h2PayUser: decodedToken['h2_pay_user'],
      rewardsId: decodedToken['customer_rewards_id'],
    );
  }

  CustomerInfo toEntity() => CustomerInfo(
        id: id,
        h2PayUser: h2PayUser,
        rewardsId: rewardsId,
        name: name,
        email: email,
        birthdate: birthdate,
        cpf: cpf,
        cellphone: cellphone,
      );
}
