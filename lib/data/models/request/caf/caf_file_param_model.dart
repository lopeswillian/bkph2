import 'package:apph2/domain/entities/caf_file_param.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'caf_file_param_model.freezed.dart';
part 'caf_file_param_model.g.dart';

@freezed
class CafFileParamModel with _$CafFileParamModel {
  const CafFileParamModel._();

  factory CafFileParamModel({
    required String type,
    required String data,
  }) = _CafFileParamModel;

  factory CafFileParamModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CafFileParamModelFromJson(json);

  factory CafFileParamModel.fromEntity(
    CafFileParam params,
  ) {
    return CafFileParamModel(
      data: params.data,
      type: params.type
    );
  }
}
