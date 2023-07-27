import 'package:apph2/domain/entities/caf_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'caf_info_model.freezed.dart';
part 'caf_info_model.g.dart';

@freezed
class CafInfoModel with _$CafInfoModel {
  const CafInfoModel._();

  factory CafInfoModel({
    required String requestId,
    required String id,
  }) = _CafInfoModel;

  factory CafInfoModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CafInfoModelFromJson(json);

  CafInfo toEntity() => CafInfo(id: id, requestId: requestId);
}
