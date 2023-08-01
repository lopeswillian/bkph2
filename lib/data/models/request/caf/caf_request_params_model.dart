// ignore_for_file: invalid_annotation_target

import 'package:apph2/data/models/request/caf/caf_file_param_model.dart';
import 'package:apph2/data/models/request/caf/caf_props_attributes_model.dart';
import 'package:apph2/domain/entities/caf_request_params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'caf_request_params_model.freezed.dart';
part 'caf_request_params_model.g.dart';

@freezed
class CafRequestParamsModel with _$CafRequestParamsModel {
  const CafRequestParamsModel._();

  factory CafRequestParamsModel({
    required List<CafFileParamModel> files,
    required String templateId,
    @JsonKey(name: '_callbackUrl') required String callbackUrl,
    required CafPropsAttributesModel attributes,
  }) = _CafRequestParamsModel;

  factory CafRequestParamsModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CafRequestParamsModelFromJson(json);

  factory CafRequestParamsModel.fromEntity(
    CafRequestParams params,
  ) {
    return CafRequestParamsModel(
      files: params.files
          .map((file) => CafFileParamModel(data: file.data, type: file.type))
          .toList(),
      attributes: CafPropsAttributesModel(
        cpf: params.attributes.cpf,
      ),
      callbackUrl: params.callbackUrl,
      templateId: params.templateId,
    );
  }
}
