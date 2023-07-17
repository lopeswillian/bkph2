import 'package:apph2/domain/entities/bco_cpf_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

part 'bco_cpf_info_model.freezed.dart';
part 'bco_cpf_info_model.g.dart';

@freezed
@JsonSerializable()
class BcoCpfInfoModel with _$BcoCpfInfoModel {
  const BcoCpfInfoModel._();

  factory BcoCpfInfoModel({
    required String document,
    required String name,
    required DateTime birthdate,
  }) = _BcoCpfInfoModel;

  factory BcoCpfInfoModel.fromToken(String token, String document) {
    Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
    return BcoCpfInfoModel(
      birthdate: DateTime.parse(decodedToken['birthdate']),
      document: document,
      name: decodedToken['name'],
    );
  }

  BcoCpfInfo toEntity() => BcoCpfInfo(
        birthdate: birthdate,
        document: document,
        name: name,
      );
}
