import 'package:apph2/domain/entities/company_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_companies.freezed.dart';

@freezed
class CustomerCompanies with _$CustomerCompanies {
  factory CustomerCompanies({
    required List<CompanyInfo> listCompanies,
  }) = _CustomerCompanies;
}
