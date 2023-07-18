// ignore_for_file: invalid_annotation_target

import 'package:apph2/domain/entities/ted_data_params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ted_data_params_model.freezed.dart';
part 'ted_data_params_model.g.dart';

@freezed
class TedDataParamsModel with _$TedDataParamsModel {
  const TedDataParamsModel._();

  factory TedDataParamsModel({
    @JsonKey(name: 'customer_id') required int customerId,
    @JsonKey(name: 'payment_value') required double paymentValue
  }) = _TedDataParamsModel;

  factory TedDataParamsModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TedDataParamsModelFromJson(json);

  factory TedDataParamsModel.fromEntity(
    TedDataParams params,
  ) {
    return TedDataParamsModel(
      customerId: params.customerId,
      paymentValue: params.paymentValue,
    );
  }
}
