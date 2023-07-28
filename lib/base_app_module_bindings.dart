import 'dart:io' as io;

import 'package:apph2/data/data.dart';
import 'package:apph2/data/datasources/caf_remote_datasource.dart';
import 'package:apph2/data/datasources/h2pay_remote_datasource.dart';
import 'package:apph2/data/datasources/product_remote_datasource.dart';
import 'package:apph2/data/repositories/caf_repository.dart';
import 'package:apph2/data/repositories/h2pay_repository.dart';
import 'package:apph2/data/repositories/product_repository.dart';
import 'package:apph2/domain/repositories/caf_repository.dart';
import 'package:apph2/domain/repositories/h2pay_repository.dart';
import 'package:apph2/domain/repositories/product_repository.dart';
import 'package:apph2/infraestructure/http/http_adapter.dart';
import 'package:apph2/theme/theme.dart';
import 'package:apph2/usecases/create_user_h2pay_usecase.dart';
import 'package:apph2/usecases/get_anticipation_usecase.dart';
import 'package:apph2/usecases/get_anticipation_with_discharge_usecase.dart';
import 'package:apph2/usecases/get_bco_cnpj_usecase.dart';
import 'package:apph2/usecases/get_bco_cpf_usecase.dart';
import 'package:apph2/usecases/get_cpf_usecase.dart';
import 'package:apph2/usecases/get_customer_companies_usecase.dart';
import 'package:apph2/usecases/get_customer_usecase.dart';
import 'package:apph2/usecases/get_jobs_usecase.dart';
import 'package:apph2/usecases/get_monthly_income_usecase.dart';
import 'package:apph2/usecases/get_pix_code_usecase.dart';
import 'package:apph2/usecases/get_products_usecase.dart';
import 'package:apph2/usecases/get_profile_usecase.dart';
import 'package:apph2/usecases/get_sms_code_usecase.dart';
import 'package:apph2/usecases/get_ted_data_usecase.dart';
import 'package:apph2/usecases/get_terms_condition.dart';
import 'package:apph2/usecases/login_recovery_usecase.dart';
import 'package:apph2/usecases/login_with_credentials_usecase.dart';
import 'package:apph2/usecases/register_usecase.dart';
import 'package:apph2/usecases/send_caf_validation_usecase.dart';
import 'package:apph2/usecases/send_payment_customer_usecase.dart';
import 'package:apph2/usecases/sign_anticipation_usecase.dart';
import 'package:apph2/usecases/update_profile_usecase.dart';
import 'package:apph2/usecases/validate_sms_code_usecase.dart';
import 'package:apph2/views/h2pay/h2pay_viewmodel.dart';
import 'package:apph2/views/h2pay/payment/payment_viewmodel.dart';
import 'package:apph2/views/h2pay/verify/verify_viewmodel.dart';
import 'package:apph2/views/login/login_viewmodel.dart';
import 'package:apph2/views/product/product_viewmodel.dart';
import 'package:apph2/views/profile/profile_viewmodel.dart';
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
                'Content-Type': 'application/json; charset=utf-8',
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
                'Content-Type': 'application/json; charset=utf-8',
                'Authorization':
                    'Bearer eyJhbGciOiJIUzI1NiJ9.eyJrZXkiOiJiZGMzMmM3MGEwZTRjMjJlM2IwZjBmN2VhNTFlNzYifQ',
              },
            ),
          ),
        ),
        Bind.lazySingleton<IProductDatasource>(
          (i) => ProductDatasource(
            HttpAdapter(
              client: io.HttpClient(),
              baseUrl: "https://a89f1fa024.nxcli.io/",
              apiVersion: 'v1',
              headers: {
                'Content-Type': 'application/json; charset=utf-8',
                'Authorization':
                    'Bearer eyJhbGciOiJIUzI1NiJ9.eyJrZXkiOiJiZGMzMmM3MGEwZTRjMjJlM2IwZjBmN2VhNTFlNzYifQ',
              },
            ),
          ),
        ),
        Bind.lazySingleton<ICafDatasource>(
          (i) => CafDatasource(
            HttpAdapter(
              client: io.HttpClient(),
              baseUrl: "https://api.combateafraude.com/",
              apiVersion: 'v1',
              headers: {
                'Content-Type': 'application/json; charset=utf-8',
                'Authorization':
                    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2MmVkNTE5NmEzYWI1NzAwMDk1MjFlNWIiLCJpYXQiOjE2NTk3MjAwODZ9.vbI7ter3gyaA3G7l_rBAfI7gQ-EbD_3iAtDcRTq1ZMU',
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
        Bind.lazySingleton<IProductRepository>(
          (i) => ProductRepository(
            i.get<IProductDatasource>(),
          ),
        ),
        Bind.lazySingleton<ICafRepository>(
          (i) => CafRepository(
            i.get<ICafDatasource>(),
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
        Bind.lazySingleton<IRegisterUseCase>(
          (i) => RegisterUseCase(i.get<IAuthRepository>()),
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
        Bind.lazySingleton<IGetAnticipationWithDischargeUseCase>(
          (i) => GetAnticipationWithDischargeUseCase(i.get<IH2PayRepository>()),
        ),
        Bind.lazySingleton<IGetSmsCodeUseCase>(
          (i) => GetSmsCodeUseCase(i.get<IH2PayRepository>()),
        ),
        Bind.lazySingleton<IValidateSmsCodeUseCase>(
          (i) => ValidateSmsCodeUseCase(i.get<IH2PayRepository>()),
        ),
        Bind.lazySingleton<ISendPaymentCustomerUseCase>(
          (i) => SendPaymentCustomerUseCase(i.get<IH2PayRepository>()),
        ),
        Bind.lazySingleton<IGetCustomerCompaniesUseCase>(
          (i) => GetCustomerCompaniesUseCase(i.get<IH2PayRepository>()),
        ),
        Bind.lazySingleton<IGetBcoCpfUseCase>(
          (i) => GetBcoCpfUseCase(i.get<IH2PayRepository>()),
        ),
        Bind.lazySingleton<IGetBcoCnpjUseCase>(
          (i) => GetBcoCnpjUseCase(i.get<IH2PayRepository>()),
        ),
        Bind.lazySingleton<IGetJobsUseCase>(
          (i) => GetJobsUseCase(i.get<IH2PayRepository>()),
        ),
        Bind.lazySingleton<IGetMonthlyIncomeUseCase>(
          (i) => GetMonthlyIncomeUseCase(i.get<IH2PayRepository>()),
        ),
        Bind.lazySingleton<IGetTermsConditionsUseCase>(
          (i) => GetTermsConditionsUseCase(i.get<IH2PayRepository>()),
        ),
        Bind.lazySingleton<ICreateH2PayUserUseCase>(
          (i) => CreateH2PayUserUseCase(i.get<IH2PayRepository>()),
        ),
        Bind.lazySingleton<IGetPixCodeUseCase>(
          (i) => GetPixCodeUseCase(i.get<IH2PayRepository>()),
        ),
        Bind.lazySingleton<IGetTedDataUseCase>(
          (i) => GetTedDataUseCase(i.get<IH2PayRepository>()),
        ),
        Bind.lazySingleton<ISignAnticipationUseCase>(
          (i) => SignAnticipationUseCase(i.get<IH2PayRepository>()),
        ),
        Bind.lazySingleton<IGetProductsUseCase>(
          (i) => GetProductUseCase(i.get<IProductRepository>()),
        ),
        Bind.lazySingleton<ISendCafValidationUseCase>(
          (i) => SendCafValidationUseCase(i.get<ICafRepository>()),
        ),
        Bind.lazySingleton<IGetProfileUseCase>(
          (i) => GetProfileUseCase(i.get<IAuthRepository>()),
        ),
        Bind.lazySingleton<IUpdateProfileUseCase>(
          (i) => UpdateProfileUseCase(i.get<IAuthRepository>()),
        ),
      ];

  static List<Bind> get _viewModels => [
        Bind.lazySingleton<LoginViewModel>(
          (i) => LoginViewModel(
            i.get<ILoginWithCredentialsUsecase>(),
          ),
        ),
        Bind.lazySingleton<RegisterViewModel>(
          (i) => RegisterViewModel(
              i.get<IGetCpfUseCase>(), i.get<IRegisterUseCase>()),
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
            i.get<IGetSmsCodeUseCase>(),
            i.get<IValidateSmsCodeUseCase>(),
            i.get<IGetCustomerCompaniesUseCase>(),
            i.get<LoginViewModel>(),
          ),
        ),
        Bind.lazySingleton<VerifyViewModel>(
          (i) => VerifyViewModel(
            i.get<IGetSmsCodeUseCase>(),
            i.get<IValidateSmsCodeUseCase>(),
            i.get<IGetMonthlyIncomeUseCase>(),
            i.get<IGetJobsUseCase>(),
            i.get<IGetTermsConditionsUseCase>(),
            i.get<ICreateH2PayUserUseCase>(),
            i.get<LoginViewModel>(),
            i.get<H2PayViewModel>(),
            i.get<ISendCafValidationUseCase>(),
          ),
        ),
        Bind.lazySingleton<PaymentViewModel>(
          (i) => PaymentViewModel(
            i.get<H2PayViewModel>(),
            i.get<IGetAnticipationWithDischargeUseCase>(),
            i.get<ISendPaymentCustomerUseCase>(),
            i.get<IGetBcoCnpjUseCase>(),
            i.get<IGetBcoCpfUseCase>(),
            i.get<IGetTedDataUseCase>(),
            i.get<IGetPixCodeUseCase>(),
            i.get<ISignAnticipationUseCase>(),
          ),
        ),
        Bind.lazySingleton<ProductViewModel>(
          (i) => ProductViewModel(
            i.get<IGetProductsUseCase>(),
          ),
        ),
        Bind.lazySingleton<ProfileViewModel>(
          (i) => ProfileViewModel(
            i.get<IGetProfileUseCase>(),
            i.get<IUpdateProfileUseCase>()
          ),
        ),
      ];
}
