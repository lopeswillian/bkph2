import 'package:apph2/domain/entities/cpf_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

part 'cpf_info_model.freezed.dart';
// part 'cpf_info_model.g.dart';

@freezed
class CpfInfoModel with _$CpfInfoModel {
  const CpfInfoModel._();

  factory CpfInfoModel({
    required String document,
    required bool isRewardsCustomer,
    required String name,
    required DateTime birthdate,
  }) = _CpfInfoModel;

  factory CpfInfoModel.fromToken(String token) {
    Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
    return CpfInfoModel(
        birthdate: DateTime.parse(decodedToken['birthdate']),
        document: decodedToken['cpf'],
        isRewardsCustomer: decodedToken['is_rewards_customer'],
        name: decodedToken['name']);
  }

  CpfInfo toEntity() => CpfInfo(
        birthdate: birthdate,
        document: document,
        name: name,
        isRewardsCustomer: isRewardsCustomer,
      );
}
