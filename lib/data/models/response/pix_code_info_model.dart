// ignore_for_file: invalid_annotation_target

import 'package:apph2/domain/entities/pix_code_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

part 'pix_code_info_model.freezed.dart';
part 'pix_code_info_model.g.dart';

@freezed
@JsonSerializable()
class PixCodeInfoModel with _$PixCodeInfoModel {
  const PixCodeInfoModel._();

  factory PixCodeInfoModel({
    @JsonKey(name: 'pix_code') required String pixCode,
  }) = _PixCodeInfoModel;

  factory PixCodeInfoModel.fromToken(String token) {
    Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
    return PixCodeInfoModel(pixCode: decodedToken['pix_code']);
  }

  PixCodeInfo toEntity() => PixCodeInfo(
        pixCode: pixCode,
      );
}
