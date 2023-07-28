import 'dart:async';
import 'package:apph2/data/models/request/auth/auth.dart';
import 'package:apph2/data/models/request/auth/cpf_params_model.dart';
import 'package:apph2/data/models/request/auth/profile_update_params_model.dart';
import 'package:apph2/data/models/request/auth/recovery_params_model.dart';
import 'package:apph2/data/models/request/auth/register_params_model.dart';
import 'package:apph2/data/models/request/auth/rewards_id_param_model.dart';
import 'package:apph2/data/models/response/cpf_info_model.dart';
import 'package:apph2/data/models/response/profile_info_model.dart';
import 'package:apph2/infraestructure/http/http_client.dart';

import '../models/response/response.dart';

abstract class IAuthDatasource {
  FutureOr<LoginInfoModel> login(
    LoginParamsModel params,
  );

  FutureOr<void> recovery(
    RecoveryParamsModel params,
  );

  FutureOr<String> register(
    RegisterParamsModel params,
  );

  FutureOr<CpfInfoModel> getCpf(
    CpfParamsModel params,
  );

  FutureOr<ProfileInfoModel> getProfile(
    RewardsIdParamModel params,
  );

  FutureOr<void> updateProfile(
    ProfileUpdateParamsModel params,
  );
}

class AuthDatasource implements IAuthDatasource {
  final IHttpClient client;
  static const String _basePath = "customer";

  AuthDatasource(this.client);

  @override
  FutureOr<LoginInfoModel> login(LoginParamsModel params) async {
    final response =
        await client.post('$_basePath/login', body: params.toJson());

    return LoginInfoModel.fromJson(response.data);
  }

  @override
  FutureOr<void> recovery(RecoveryParamsModel params) async {
    await client.post('$_basePath/retrievePassword', body: params.toJson());
  }

  @override
  FutureOr<String> register(RegisterParamsModel params) async {
    final response = await client.post(
      '$_basePath/register',
      body: params.toJson(),
    );
    return response.data['token'];
  }

  @override
  FutureOr<CpfInfoModel> getCpf(
    CpfParamsModel params,
  ) async {
    final response = await client.get('$_basePath/checkCpf/${params.document}');

    return CpfInfoModel.fromToken(response.data['token']);
  }

  @override
  FutureOr<ProfileInfoModel> getProfile(
    RewardsIdParamModel params,
  ) async {
    final response = await client.get('$_basePath/get/${params.rewardsId}');

    return ProfileInfoModel.fromJson(response.data['data']);
  }

  @override
  FutureOr<void> updateProfile(
    ProfileUpdateParamsModel params,
  ) async {
    await client.post(
      '$_basePath/update',
      body: params.toJson(),
    );
  }
}
