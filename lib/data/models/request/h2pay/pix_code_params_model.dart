// ignore_for_file: invalid_annotation_target

import 'package:apph2/domain/entities/pix_code_params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pix_code_params_model.freezed.dart';
part 'pix_code_params_model.g.dart';

@freezed
class PixCodeParamsModel with _$PixCodeParamsModel {
  const PixCodeParamsModel._();

  factory PixCodeParamsModel({
    @JsonKey(name: 'customer_id') required int customerId,
    @JsonKey(name: 'payment_value') required double paymentValue
  }) = _PixCodeParamsModel;

  factory PixCodeParamsModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PixCodeParamsModelFromJson(json);

  factory PixCodeParamsModel.fromEntity(
    PixCodeParams params,
  ) {
    return PixCodeParamsModel(
      customerId: params.customerId,
      paymentValue: params.paymentValue,
    );
  }
}
