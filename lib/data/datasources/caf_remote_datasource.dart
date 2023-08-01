import 'dart:async';
import 'package:apph2/data/models/request/caf/caf_request_params_model.dart';
import 'package:apph2/data/models/response/caf_info_model.dart';
import 'package:apph2/infraestructure/http/http_client.dart';

abstract class ICafDatasource {
  FutureOr<CafInfoModel> sendCafValidation(CafRequestParamsModel params);
}

class CafDatasource implements ICafDatasource {
  final IHttpClient client;

  CafDatasource(this.client);

  @override
  FutureOr<CafInfoModel> sendCafValidation(CafRequestParamsModel params) async {
    final response = await client.post(
      'customer/request-caf',
      body: params.toJson(),
    );
    return CafInfoModel.fromJson(response.data);
  }
}
