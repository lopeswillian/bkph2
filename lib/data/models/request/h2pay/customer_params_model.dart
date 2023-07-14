import 'package:apph2/domain/entities/customer_params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_params_model.freezed.dart';
part 'customer_params_model.g.dart';

@freezed
class CustomerParamsModel with _$CustomerParamsModel {
  const CustomerParamsModel._();

  factory CustomerParamsModel({
    required String identifier,
  }) = _CustomerParamsModel;

  factory CustomerParamsModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CustomerParamsModelFromJson(json);

  factory CustomerParamsModel.fromEntity(
    CustomerParams params,
  ) {
    return CustomerParamsModel(
      identifier: params.identifier,
    );
  }
}
