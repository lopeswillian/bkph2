import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_companies_params.freezed.dart';

@freezed
class CustomerCompaniesParams with _$CustomerCompaniesParams {
  factory CustomerCompaniesParams({
    required int customerId,
  }) = _CustomerCompaniesParams;
}
