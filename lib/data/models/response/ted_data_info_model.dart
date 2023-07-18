// ignore_for_file: invalid_annotation_target
import 'package:apph2/domain/entities/ted_data_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

part 'ted_data_info_model.freezed.dart';
part 'ted_data_info_model.g.dart';

@freezed
@JsonSerializable()
class TedDataInfoModel with _$TedDataInfoModel {
  const TedDataInfoModel._();

  factory TedDataInfoModel({
    required String bank,
    required String agency,
    required String account,
    required String favoured,
  }) = _TedDataInfoModel;

  factory TedDataInfoModel.fromToken(String token) {
    Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
    return TedDataInfoModel(
      account: decodedToken['account'],
      agency: decodedToken['agency'],
      bank: decodedToken['bank'],
      favoured: decodedToken['favoured'],
    );
  }

  TedDataInfo toEntity() => TedDataInfo(
        account: account,
        agency: agency,
        bank: bank,
        favoured: favoured,
      );
}
