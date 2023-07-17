import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_info.freezed.dart';

@freezed
class CompanyInfo with _$CompanyInfo {
  factory CompanyInfo({
    required int companyId,
    required String cnpj,
    required String address,
    required String businessName,
  }) = _CompanyInfo;
}
