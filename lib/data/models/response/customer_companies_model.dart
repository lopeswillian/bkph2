import 'package:apph2/data/models/response/company_info_model.dart';
import 'package:apph2/domain/entities/customer_companies.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

part 'customer_companies_model.freezed.dart';
part 'customer_companies_model.g.dart';

@freezed
@JsonSerializable()
class CustomerCompaniesModel with _$CustomerCompaniesModel {
  const CustomerCompaniesModel._();

  factory CustomerCompaniesModel({
    required List<CompanyInfoModel> listCompanies,
  }) = _CustomerCompaniesModel;

  factory CustomerCompaniesModel.fromToken(String token) {
    Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
    List<dynamic> dynamicAnticipation = decodedToken['empresas'];
    List<CompanyInfoModel> listCompanies =
        dynamicAnticipation.map((e) => CompanyInfoModel.fromJson(e)).toList();
    return CustomerCompaniesModel(listCompanies: listCompanies);
  }

  CustomerCompanies toEntity() => CustomerCompanies(
        listCompanies: listCompanies.map((key) => key.toEntity()).toList(),
      );
}
