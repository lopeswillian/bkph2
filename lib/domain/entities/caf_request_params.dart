import 'package:apph2/domain/entities/caf_file_param.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'caf_request_params.freezed.dart';

@freezed
class CafRequestParams with _$CafRequestParams {
  factory CafRequestParams({
    required List<CafFileParam> files,
    required String templateId,
    required String callbackUrl,
    required CafPropsAttributes attributes,
  }) = _CafRequestParams;
}

@freezed
class CafPropsAttributes with _$CafPropsAttributes {
  factory CafPropsAttributes({
    required String cpf,
  }) = _CafPropsAttributes;
}
