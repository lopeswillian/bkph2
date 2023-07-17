import 'package:apph2/domain/entities/company_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_info_model.freezed.dart';
part 'company_info_model.g.dart';

@freezed
@JsonSerializable()
class CompanyInfoModel with _$CompanyInfoModel {
  const CompanyInfoModel._();

  factory CompanyInfoModel({
    required int companyId,
    required String cnpj,
    required String address,
    required String businessName,
  }) = _CompanyInfoModel;

  factory CompanyInfoModel.fromJson(Map<String, dynamic> decodedToken) {
    return CompanyInfoModel(
      companyId: decodedToken['id'],
      cnpj: decodedToken['cnpj'].replaceAllMapped(
          RegExp(r'^(\d{2})(\d{3})(\d{3})(\d{4})(\d{2})$'),
          (match) =>
              '${match[1]}.${match[2]}.${match[3]}/${match[4]}-${match[5]}'),
      address: decodedToken['address'] + ',' + decodedToken['district'],
      businessName: decodedToken['business_name'],
    );
  }

  CompanyInfo toEntity() => CompanyInfo(
        companyId: companyId,
        cnpj: cnpj,
        address: address,
        businessName: businessName,
      );
}
