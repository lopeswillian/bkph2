import 'dart:async';

import 'package:apph2/data/models/request/auth/auth.dart';
import 'package:apph2/infraestructure/http/http_client.dart';

import '../models/response/response.dart';

abstract class IAuthDatasource {
  FutureOr<LoginInfoModel> login(
    LoginParamsModel params,
  );
}

class AuthDatasource implements IAuthDatasource{
  final IHttpClient client;
  static const String _basePath = "customer";

  AuthDatasource(this.client);

  @override
  FutureOr<LoginInfoModel> login(LoginParamsModel params) async {
    final response = await client.post(
      '$_basePath/login',
      body: params.toJson()
    );

    return LoginInfoModel.fromJson(response.data);
  }
}