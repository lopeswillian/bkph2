// ignore_for_file: unrelated_type_equality_checks

import 'dart:async';

import 'package:apph2/data/models/request/h2pay/anticipation_params_model.dart';
import 'package:apph2/data/models/request/h2pay/bco_cnpj_params_model.dart';
import 'package:apph2/data/models/request/h2pay/bco_cpf_params_model.dart';
import 'package:apph2/data/models/request/h2pay/customer_companies_params_model.dart';
import 'package:apph2/data/models/request/h2pay/customer_params_model.dart';
import 'package:apph2/data/models/request/h2pay/payment_params_model.dart';
import 'package:apph2/data/models/request/h2pay/pix_code_params_model.dart';
import 'package:apph2/data/models/request/h2pay/sign_anticipation_params_model.dart';
import 'package:apph2/data/models/request/h2pay/sms_params_model.dart';
import 'package:apph2/data/models/request/h2pay/ted_data_params_model.dart';
import 'package:apph2/data/models/request/h2pay/verify_user_h2pay_params_model.dart';
import 'package:apph2/data/models/response/anticipation_info_model.dart';
import 'package:apph2/data/models/response/anticipation_with_discharge_model.dart';
import 'package:apph2/data/models/response/bco_cnpj_info_model.dart';
import 'package:apph2/data/models/response/bco_cpf_info_model.dart';
import 'package:apph2/data/models/response/customer_companies_model.dart';
import 'package:apph2/data/models/response/customer_info_model.dart';
import 'package:apph2/data/models/response/job_model.dart';
import 'package:apph2/data/models/response/monthly_income_model.dart';
import 'package:apph2/data/models/response/pix_code_info_model.dart';
import 'package:apph2/data/models/response/ted_data_info_model.dart';
import 'package:apph2/data/models/response/terms_condition_model.dart';
import 'package:apph2/infraestructure/http/http_client.dart';

abstract class IH2PayDatasource {
  FutureOr<CustomerInfoModel> getCustomer(
    CustomerParamsModel params,
  );

  FutureOr<AnticipationInfoModel> getAnticipation(
    AnticipationParamsModel params,
  );

  FutureOr<AnticipationWithDischargeModel> getAllAnticipation(
    AnticipationParamsModel params,
  );

  FutureOr<bool> getSmsCode(
    SmsParamsModel params,
  );

  FutureOr<bool> validateSmsCode(
    SmsParamsModel params,
  );

  FutureOr<bool> sendPayment(
    PaymentParamsModel params,
  );

  FutureOr<CustomerCompaniesModel> getCustomerCompanies(
    CustomerCompaniesParamsModel params,
  );

  FutureOr<BcoCpfInfoModel> getBcoCpf(
    BcoCpfParamsModel params,
  );

  FutureOr<BcoCnpjInfoModel> getBcoCnpj(
    BcoCnpjParamsModel params,
  );

  FutureOr<TermsConditionModel> getTerms();

  FutureOr<List<JobModel>> getJobs();

  FutureOr<List<MonthlyIncomeModel>> getMonthlyIncome();

  FutureOr<bool> createH2PayUser(
    VerifyUserH2PayParamsModel params,
  );

  FutureOr<PixCodeInfoModel> getPixCode(
    PixCodeParamsModel params,
  );

  FutureOr<TedDataInfoModel> getTedData(
    TedDataParamsModel params,
  );

  FutureOr<bool> signAnticipation(
    SignAnticipationParamsModel params,
  );

}

class H2PayDatasource implements IH2PayDatasource {
  final IHttpClient client;
  static const String _basePath = "frontCustomer";
  static const String _basePathAnticipation = "frontAnticipation";
  static const String _basePathPayment = "frontPayment";
  static const String _baseFrontContent = "frontContent";

  H2PayDatasource(this.client);

  @override
  FutureOr<CustomerInfoModel> getCustomer(CustomerParamsModel params) async {
    final response = await client.get('$_basePath/${params.identifier}');

    return CustomerInfoModel.fromToken(response.data['token']);
  }

  @override
  FutureOr<AnticipationInfoModel> getAnticipation(
    AnticipationParamsModel params,
  ) async {
    final response = await client
        .get('$_basePathAnticipation/anticipationToSign/${params.customerId}');

    return AnticipationInfoModel.fromToken(response.data['token']);
  }

  @override
  FutureOr<AnticipationWithDischargeModel> getAllAnticipation(
    AnticipationParamsModel params,
  ) async {
    final response = await client
        .get('$_basePathAnticipation/allAnticipations/${params.customerId}');

    return AnticipationWithDischargeModel.fromToken(response.data['token']);
  }

  @override
  FutureOr<bool> signAnticipation(
    SignAnticipationParamsModel params,
  ) async {
    final response = await client.post(
      '$_basePathAnticipation/signAnticipation',
      body: params.toJson(),
    );

    List<int> succesCodes = [ 200,201];
    // ignore: iterable_contains_unrelated_type
    return succesCodes.contains(response.status);
  }

  @override
  FutureOr<bool> getSmsCode(
    SmsParamsModel params,
  ) async {
    final response = await client.post(
      '$_basePath/request-code-sms',
      body: params.toJson(),
    );
    return response.status == 201;
  }

  @override
  FutureOr<bool> validateSmsCode(
    SmsParamsModel params,
  ) async {
    final response = await client.post(
      '$_basePath/validate-sms-code',
      body: params.toJson(),
    );
    return response.status == 202;
  }

  @override
  FutureOr<bool> sendPayment(PaymentParamsModel params) async {
    String endpoint = 'firstPersonPayment';
    switch (params.typeOfPayerId) {
      case 2:
        endpoint = 'firstPersonCompanyPayment';
        break;
      case 3:
        endpoint = 'customerPersonCompanyCustomer';
        break;
      case 4:
        endpoint = 'customerCompanyCompanyCustomer';
        break;
      case 5:
        endpoint = 'supplierPersonCompanyCustomer';
        break;
      case 6:
        endpoint = 'supplierCompanyCompanyCustomer';
        break;
      case 1:
      default:
        endpoint = 'firstPersonPayment';
        break;
    }
    final response = await client.post(
      '$_basePathPayment/$endpoint',
      body: params.toJson(),
    );
    return response.status == 201;
  }

  @override
  FutureOr<CustomerCompaniesModel> getCustomerCompanies(
    CustomerCompaniesParamsModel params,
  ) async {
    final response =
        await client.get('$_basePath/companies/${params.customerId}');

    return CustomerCompaniesModel.fromToken(response.data['token']);
  }

  @override
  FutureOr<BcoCpfInfoModel> getBcoCpf(BcoCpfParamsModel params) async {
    final response =
        await client.get('bcoCpfServices/getCpfData/${params.document}');

    return BcoCpfInfoModel.fromToken(response.data['token'], params.document);
  }

  @override
  FutureOr<BcoCnpjInfoModel> getBcoCnpj(BcoCnpjParamsModel params) async {
    final response =
        await client.get('bcoCnpjServices/getCnpjData/${params.document}');

    return BcoCnpjInfoModel.fromToken(response.data['token']);
  }

  @override
  FutureOr<TermsConditionModel> getTerms() async {
    final response =
        await client.get('$_baseFrontContent/terms_and_conditions');
    return TermsConditionModel.fromJson(response.data[0]);
  }

  @override
  FutureOr<List<JobModel>> getJobs() async {
    final response = await client.get('$_baseFrontContent/jobs');
    List<dynamic> dynamicAnticipation = response.data;
    List<JobModel> listJobs =
        dynamicAnticipation.map((e) => JobModel.fromJson(e)).toList();
    return listJobs;
  }

  @override
  FutureOr<List<MonthlyIncomeModel>> getMonthlyIncome() async {
    final response = await client.get('$_baseFrontContent/monthly-income');

    List<dynamic> dynamicAnticipation = response.data;
    List<MonthlyIncomeModel> listMonthlyIncome =
        dynamicAnticipation.map((e) => MonthlyIncomeModel.fromJson(e)).toList();
    return listMonthlyIncome;
  }

  @override
  FutureOr<bool> createH2PayUser(VerifyUserH2PayParamsModel params) async {
    final response = await client.post(
      '$_basePath/create-h2pay-customer',
      body: params.toJson(),
    );
    return response.status == 201;
  }

  @override
  FutureOr<PixCodeInfoModel> getPixCode(PixCodeParamsModel params) async {
    final response = await client.post(
      '$_basePathPayment/paymentPixCode',
      body: params.toJson(),
    );

    return PixCodeInfoModel.fromToken(response.data['token']);
  }

  @override
  FutureOr<TedDataInfoModel> getTedData(TedDataParamsModel params) async {
    final response = await client.post(
      '$_basePathPayment/paymentTedData',
      body: params.toJson(),
    );

    return TedDataInfoModel.fromToken(response.data['token']);
  }
}
