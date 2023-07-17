// ignore_for_file: unrelated_type_equality_checks

import 'dart:async';

import 'package:apph2/data/models/request/h2pay/anticipation_params_model.dart';
import 'package:apph2/data/models/request/h2pay/bco_cnpj_params_model.dart';
import 'package:apph2/data/models/request/h2pay/bco_cpf_params_model.dart';
import 'package:apph2/data/models/request/h2pay/customer_companies_params_model.dart';
import 'package:apph2/data/models/request/h2pay/customer_params_model.dart';
import 'package:apph2/data/models/request/h2pay/payment_params_model.dart';
import 'package:apph2/data/models/request/h2pay/sms_params_model.dart';
import 'package:apph2/data/models/response/anticipation_info_model.dart';
import 'package:apph2/data/models/response/anticipation_with_discharge_model.dart';
import 'package:apph2/data/models/response/bco_cnpj_info_model.dart';
import 'package:apph2/data/models/response/bco_cpf_info_model.dart';
import 'package:apph2/data/models/response/customer_companies_model.dart';
import 'package:apph2/data/models/response/customer_info_model.dart';
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
}

class H2PayDatasource implements IH2PayDatasource {
  final IHttpClient client;
  static const String _basePath = "frontCustomer";
  static const String _basePathAnticipation = "frontAnticipation";
  static const String _basePathPayment = "frontPayment";

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
      '$_basePath/validade-sms-code',
      body: params.toJson(),
    );
    return response.status == 201;
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
    final response = await client.get('bcoCpfServices/getCpfData/${params.document}');

    return BcoCpfInfoModel.fromToken(response.data['token'], params.document);
  }

  @override
  FutureOr<BcoCnpjInfoModel> getBcoCnpj(BcoCnpjParamsModel params) async {
    final response = await client.get('bcoCnpjServices/getCnpjData/${params.document}');

    return BcoCnpjInfoModel.fromToken(response.data['token']);
  }
}
