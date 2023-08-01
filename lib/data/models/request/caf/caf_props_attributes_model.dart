import 'package:apph2/domain/entities/caf_request_params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'caf_props_attributes_model.freezed.dart';
part 'caf_props_attributes_model.g.dart';

@freezed
class CafPropsAttributesModel with _$CafPropsAttributesModel {
  const CafPropsAttributesModel._();

  factory CafPropsAttributesModel({
    required String cpf,
  }) = _CafPropsAttributesModel;

  factory CafPropsAttributesModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CafPropsAttributesModelFromJson(json);

  factory CafPropsAttributesModel.fromEntity(
    CafPropsAttributes params,
  ) {
    return CafPropsAttributesModel(
      cpf: params.cpf
    );
  }
}
