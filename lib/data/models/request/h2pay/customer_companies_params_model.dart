import 'package:apph2/domain/entities/customer_companies_params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_companies_params_model.freezed.dart';
part 'customer_companies_params_model.g.dart';

@freezed
class CustomerCompaniesParamsModel with _$CustomerCompaniesParamsModel {
  const CustomerCompaniesParamsModel._();

  factory CustomerCompaniesParamsModel({
    required int customerId,
  }) = _CustomerCompaniesParamsModel;

  factory CustomerCompaniesParamsModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CustomerCompaniesParamsModelFromJson(json);

  factory CustomerCompaniesParamsModel.fromEntity(
    CustomerCompaniesParams params,
  ) {
    return CustomerCompaniesParamsModel(
      customerId: params.customerId,
    );
  }
}
