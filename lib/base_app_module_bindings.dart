import 'dart:io' as io;

import 'package:apph2/data/data.dart';
import 'package:apph2/data/datasources/h2pay_remote_datasource.dart';
import 'package:apph2/data/repositories/h2pay_repository.dart';
import 'package:apph2/domain/repositories/h2pay_repository.dart';
import 'package:apph2/infraestructure/http/http_adapter.dart';
import 'package:apph2/theme/theme.dart';
import 'package:apph2/usecases/get_anticipation_usecase.dart';
import 'package:apph2/usecases/get_cpf_usecase.dart';
import 'package:apph2/usecases/get_customer_usecase.dart';
import 'package:apph2/usecases/get_sms_code_usecase.dart';
import 'package:apph2/usecases/login_recovery_usecase.dart';
import 'package:apph2/usecases/login_with_credentials_usecase.dart';
import 'package:apph2/views/h2pay/h2pay_viewmodel.dart';
import 'package:apph2/views/login/login_viewmodel.dart';
import 'package:apph2/views/recovery/recovery_viewmodel.dart';
import 'package:apph2/views/register/register_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'domain/repositories/auth_repository.dart';
import 'models/app_color_scheme.dart';

/// Base App module bindings
class BaseAppModuleBindings {
  ///
  /// Base App bindings
  ///
  static List<Bind> get binds => [
        ..._datasources,
        ..._repositories,
        ..._infra,
        ..._useCases,
        ..._viewModels,
      ];

  static List<Bind> get _datasources => [
        Bind.lazySingleton<IAuthDatasource>(
          (i) => AuthDatasource(
            HttpAdapter(
              client: io.HttpClient(),
              baseUrl: "https://a89f1fa024.nxcli.io/",
              apiVersion: 'v1',
              headers: {
                'Authorization':
                    'Bearer eyJhbGciOiJIUzI1NiJ9.eyJrZXkiOiJiZGMzMmM3MGEwZTRjMjJlM2IwZjBmN2VhNTFlNzYifQ',
              },
            ),
          ),
        ),
        Bind.lazySingleton<IH2PayDatasource>(
          (i) => H2PayDatasource(
            HttpAdapter(
              client: io.HttpClient(),
              baseUrl: "http://dc023ad05f.nxcli.io/",
              apiVersion: 'v1',
              headers: {
                'Authorization':
                    'Bearer eyJhbGciOiJIUzI1NiJ9.eyJrZXkiOiJiZGMzMmM3MGEwZTRjMjJlM2IwZjBmN2VhNTFlNzYifQ',
              },
            ),
          ),
        ),
      ];

  static List<Bind> get _repositories => [
        Bind.lazySingleton<IAuthRepository>(
          (i) => AuthRepository(
            i.get<IAuthDatasource>(),
          ),
        ),
        Bind.lazySingleton<IH2PayRepository>(
          (i) => H2PayRepository(
            i.get<IH2PayDatasource>(),
          ),
        ),
      ];

  static List<Bind> get _infra => [
        Bind.singleton<RouteObserver>((i) => RouteObserver<PageRoute>()),
        Bind<AppColorScheme>((_) => baseColorScheme),
      ];

  static List<Bind> get _useCases => [
        Bind.lazySingleton<ILoginWithCredentialsUsecase>(
          (i) => LoginWithCredentialsUsecase(i.get<IAuthRepository>()),
        ),
        Bind.lazySingleton<IGetCpfUseCase>(
          (i) => GetCpfUseCase(i.get<IAuthRepository>()),
        ),
        Bind.lazySingleton<ILoginRecoveryUsecase>(
          (i) => LoginRecoveryUsecase(i.get<IAuthRepository>()),
        ),
        Bind.lazySingleton<IGetCustomerUseCase>(
          (i) => GetCustomerUseCase(i.get<IH2PayRepository>()),
        ),
        Bind.lazySingleton<IGetAnticipationUseCase>(
          (i) => GetAnticipationUseCase(i.get<IH2PayRepository>()),
        ),
        Bind.lazySingleton<IGetSmsCodeUseCase>(
          (i) => GetSmsCodeUseCase(i.get<IH2PayRepository>()),
        )
      ];

  static List<Bind> get _viewModels => [
        Bind.lazySingleton<LoginViewModel>(
          (i) => LoginViewModel(
            i.get<ILoginWithCredentialsUsecase>(),
          ),
        ),
        Bind.lazySingleton<RegisterViewModel>(
          (i) => RegisterViewModel(
            i.get<IGetCpfUseCase>(),
          ),
        ),
        Bind.lazySingleton<RecoveryViewModel>(
          (i) => RecoveryViewModel(
            i.get<ILoginRecoveryUsecase>(),
          ),
        ),
        Bind.lazySingleton<H2PayViewModel>(
          (i) => H2PayViewModel(
            i.get<IGetCustomerUseCase>(),
            i.get<IGetAnticipationUseCase>(),
            i.get<IGetSmsCodeUseCase>()
          ),
        )
      ];
}
