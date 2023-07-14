import 'package:apph2/domain/entities/anticipation_params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'anticipation_params_model.freezed.dart';
part 'anticipation_params_model.g.dart';

@freezed
class AnticipationParamsModel with _$AnticipationParamsModel {
  const AnticipationParamsModel._();

  factory AnticipationParamsModel({
    required int customerId,
  }) = _AnticipationParamsModel;

  factory AnticipationParamsModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AnticipationParamsModelFromJson(json);

  factory AnticipationParamsModel.fromEntity(
    AnticipationParams params,
  ) {
    return AnticipationParamsModel(
      customerId: params.customerId,
    );
  }
}
