import 'package:apph2/domain/entities/bco_cnpj_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

part 'bco_cnpj_info_model.freezed.dart';
part 'bco_cnpj_info_model.g.dart';

@freezed
@JsonSerializable()
class BcoCnpjInfoModel with _$BcoCnpjInfoModel {
  const BcoCnpjInfoModel._();

  factory BcoCnpjInfoModel({
    required String cnpj,
    required String address,
    required String businessName,
  }) = _BcoCnpjInfoModel;

  factory BcoCnpjInfoModel.fromToken(String token) {
    Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
    List<dynamic> dynamicAnticipation = decodedToken['address'];
    String address = dynamicAnticipation.first?.toString()??'';
    return BcoCnpjInfoModel(
      cnpj: decodedToken['cnpj'],
      address: address,
      businessName: decodedToken['business_name'],
    );
  }

  BcoCnpjInfo toEntity() => BcoCnpjInfo(
        cnpj: cnpj,
        address: address,
        businessName: businessName,
      );
}
