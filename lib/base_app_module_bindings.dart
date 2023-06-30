import 'dart:io' as io;

import 'package:apph2/data/data.dart';
import 'package:apph2/infraestructure/http/http_adapter.dart';
import 'package:apph2/theme/theme.dart';
import 'package:apph2/usecases/login_with_credentials_usecase.dart';
import 'package:apph2/views/login/login_viewmodel.dart';
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
        Bind.lazySingleton<IAuthDatasource>((i) => AuthDatasource(
              HttpAdapter(
                client: io.HttpClient(),
                baseUrl: "https://a89f1fa024.nxcli.io/",
                apiVersion: 'v1',
                headers: {
                  'Authorization':
                      'Bearer eyJhbGciOiJIUzI1NiJ9.eyJrZXkiOiJiZGMzMmM3MGEwZTRjMjJlM2IwZjBmN2VhNTFlNzYifQ',
                },
              ),
            ))
      ];

  static List<Bind> get _repositories => [
        Bind.lazySingleton<IAuthRepository>(
          (i) => AuthRepository(
            i.get<IAuthDatasource>(),
          ),
        )
      ];

  static List<Bind> get _infra => [
        Bind.singleton<RouteObserver>((i) => RouteObserver<PageRoute>()),
        Bind<AppColorScheme>((_) => baseColorScheme),
      ];

  static List<Bind> get _useCases => [
        Bind.lazySingleton<ILoginWithCredentialsUsecase>(
          (i) => LoginWithCredentialsUsecase(i.get<IAuthRepository>()),
        ),
      ];

  static List<Bind> get _viewModels => [
        Bind.lazySingleton<LoginViewModel>(
          (i) => LoginViewModel(
            i.get<ILoginWithCredentialsUsecase>(),
          ),
        )
      ];
}
