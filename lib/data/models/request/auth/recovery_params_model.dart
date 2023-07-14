import 'package:apph2/domain/entities/recovery_params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recovery_params_model.freezed.dart';
part 'recovery_params_model.g.dart';

@freezed
class RecoveryParamsModel with _$RecoveryParamsModel {
  const RecoveryParamsModel._();

  factory RecoveryParamsModel({
    required String identifier,
  }) = _RecoveryParamsModel;

  factory RecoveryParamsModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RecoveryParamsModelFromJson(json);

  factory RecoveryParamsModel.fromEntity(
    RecoveryParams params,
  ) {
    return RecoveryParamsModel(
      identifier: params.identifier,
    );
  }
}
