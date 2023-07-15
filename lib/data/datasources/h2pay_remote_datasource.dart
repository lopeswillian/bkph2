import 'dart:async';

import 'package:apph2/data/models/request/h2pay/anticipation_params_model.dart';
import 'package:apph2/data/models/request/h2pay/customer_params_model.dart';
import 'package:apph2/data/models/request/h2pay/sms_params_model.dart';
import 'package:apph2/data/models/response/anticipation_info_model.dart';
import 'package:apph2/data/models/response/customer_info_model.dart';
import 'package:apph2/infraestructure/http/http_client.dart';

abstract class IH2PayDatasource {
  FutureOr<CustomerInfoModel> getCustomer(
    CustomerParamsModel params,
  );

  FutureOr<AnticipationInfoModel> getAnticipation(
    AnticipationParamsModel params,
  );

  FutureOr<bool> getSmsCode(
    SmsParamsModel params,
  );
}

class H2PayDatasource implements IH2PayDatasource {
  final IHttpClient client;
  static const String _basePath = "frontCustomer";
  static const String _basePathAnticipation = "frontAnticipation";

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
  FutureOr<bool> getSmsCode(
    SmsParamsModel params,
  ) async {
    final response = await client.post(
      '$_basePath/request-code-sms',
      body: params.toJson(),
    );
    return response.status == 201;
  }
}
