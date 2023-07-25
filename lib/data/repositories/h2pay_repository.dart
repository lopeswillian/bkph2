import 'package:apph2/data/datasources/h2pay_remote_datasource.dart';
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
import 'package:apph2/domain/entities/anticipation_info.dart';
import 'package:apph2/domain/entities/anticipation_params.dart';
import 'package:apph2/domain/entities/anticipation_with_discharge.dart';
import 'package:apph2/domain/entities/bco_cnpj_info.dart';
import 'package:apph2/domain/entities/bco_cnpj_params.dart';
import 'package:apph2/domain/entities/bco_cpf_info.dart';
import 'package:apph2/domain/entities/bco_cpf_params.dart';
import 'package:apph2/domain/entities/customer_companies.dart';
import 'package:apph2/domain/entities/customer_companies_params.dart';
import 'package:apph2/domain/entities/customer_info.dart';
import 'package:apph2/domain/entities/customer_params.dart';
import 'package:apph2/domain/entities/job.dart';
import 'package:apph2/domain/entities/monthly_income.dart';
import 'package:apph2/domain/entities/payment_params.dart';
import 'package:apph2/domain/entities/pix_code_info.dart';
import 'package:apph2/domain/entities/pix_code_params.dart';
import 'package:apph2/domain/entities/sign_anticipation_params.dart';
import 'package:apph2/domain/entities/sms_params.dart';
import 'package:apph2/domain/entities/ted_data_info.dart';
import 'package:apph2/domain/entities/ted_data_params.dart';
import 'package:apph2/domain/entities/terms_conditions.dart';
import 'package:apph2/domain/entities/verify_user_h2pay_params.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:apph2/domain/repositories/h2pay_repository.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:dartz/dartz.dart';

class H2PayRepository implements IH2PayRepository {
  final IH2PayDatasource datasource;

  H2PayRepository(this.datasource);

  @override
  Future<Either<H2Failure, CustomerInfo>> getCustomer(
    CustomerParams params,
  ) async {
    try {
      final customer = await datasource.getCustomer(
        CustomerParamsModel.fromEntity(params),
      );
      return Right(customer.toEntity());
    } on IHttpException {
      return const Left(H2Failure.unexpected());
    } on Exception {
      return const Left(H2Failure.unexpected());
    }
  }

  @override
  Future<Either<H2Failure, AnticipationInfo>> getAnticipation(
    AnticipationParams params,
  ) async {
    try {
      final anticipation = await datasource.getAnticipation(
        AnticipationParamsModel.fromEntity(params),
      );
      return Right(anticipation.toEntity());
    } on IHttpException {
      return const Left(H2Failure.unexpected());
    } on Exception {
      return const Left(H2Failure.unexpected());
    }
  }

  @override
  Future<Either<H2Failure, AnticipationWithDischarge>> getAllAnticipation(
    AnticipationParams params,
  ) async {
    try {
      final anticipationWithDischarge = await datasource.getAllAnticipation(
        AnticipationParamsModel.fromEntity(params),
      );
      return Right(anticipationWithDischarge.toEntity());
    } on IHttpException {
      return const Left(H2Failure.unexpected());
    } on Exception {
      return const Left(H2Failure.unexpected());
    }
  }

  @override
  Future<Either<H2Failure, Unit>> signAnticipation(
    SignAnticipationParams params,
  ) async {
    try {
      await datasource
          .signAnticipation(SignAnticipationParamsModel.fromEntity(params));
      return const Right(unit);
    } on IHttpException catch (e) {
      return Left(H2Failure.invalidParams(message: e.data));
    } on Exception {
      return const Left(H2Failure.unexpected());
    }
  }

  @override
  Future<Either<H2Failure, Unit>> getSmsCode(
    SmsParams params,
  ) async {
    try {
      await datasource.getSmsCode(
        SmsParamsModel.fromEntity(params),
      );
      return const Right(unit);
    } on IHttpException {
      return const Left(H2Failure.unexpected());
    } on Exception {
      return const Left(H2Failure.unexpected());
    }
  }

  @override
  Future<Either<H2Failure, Unit>> validateSmsCode(
    SmsParams params,
  ) async {
    try {
      await datasource.validateSmsCode(
        SmsParamsModel.fromEntity(params),
      );
      return const Right(unit);
    } on IHttpException catch (e) {
      return Left(H2Failure.invalidParams(message: e.message));
    } on Exception {
      return const Left(H2Failure.unexpected());
    }
  }

  @override
  Future<Either<H2Failure, Unit>> sendPayment(
    PaymentParams params,
  ) async {
    try {
      await datasource.sendPayment(PaymentParamsModel.fromEntity(params));
      return const Right(unit);
    } on IHttpException catch (e) {
      return Left(H2Failure.invalidParams(message: e.data));
    } on Exception {
      return const Left(H2Failure.unexpected());
    }
  }

  @override
  Future<Either<H2Failure, CustomerCompanies>> getCustomerCompanies(
    CustomerCompaniesParams params,
  ) async {
    try {
      final customerCompanies = await datasource.getCustomerCompanies(
        CustomerCompaniesParamsModel.fromEntity(params),
      );
      return Right(customerCompanies.toEntity());
    } on IHttpException {
      return const Left(H2Failure.unexpected());
    } on Exception {
      return const Left(H2Failure.unexpected());
    }
  }

  @override
  Future<Either<H2Failure, BcoCpfInfo>> getBcoCpf(
    BcoCpfParams params,
  ) async {
    try {
      final cpfInfo = await datasource.getBcoCpf(
        BcoCpfParamsModel.fromEntity(params),
      );
      return Right(cpfInfo.toEntity());
    } on IHttpException {
      return const Left(H2Failure.unexpected());
    } on Exception {
      return const Left(H2Failure.unexpected());
    }
  }

  @override
  Future<Either<H2Failure, BcoCnpjInfo>> getBcoCnpj(
    BcoCnpjParams params,
  ) async {
    try {
      final customerCompanies = await datasource.getBcoCnpj(
        BcoCnpjParamsModel.fromEntity(params),
      );
      return Right(customerCompanies.toEntity());
    } on IHttpException {
      return const Left(H2Failure.unexpected());
    } on Exception {
      return const Left(H2Failure.unexpected());
    }
  }

  @override
  Future<Either<H2Failure, TermsConditions>> getTerms() async {
    try {
      final termsCondition = await datasource.getTerms();
      return Right(termsCondition.toEntity());
    } on IHttpException {
      return const Left(H2Failure.unexpected());
    } on Exception {
      return const Left(H2Failure.unexpected());
    }
  }

  @override
  Future<Either<H2Failure, List<Job>>> getJobs() async {
    try {
      final listJobs = await datasource.getJobs();
      return Right(listJobs.map((job) => job.toEntity()).toList());
    } on IHttpException {
      return const Left(H2Failure.unexpected());
    } on Exception {
      return const Left(H2Failure.unexpected());
    }
  }

  @override
  Future<Either<H2Failure, List<MonthlyIncome>>> getMonthlyIncome() async {
    try {
      final listMonthlyIncome = await datasource.getMonthlyIncome();
      return Right(listMonthlyIncome
          .map((monthlyIncome) => monthlyIncome.toEntity())
          .toList());
    } on IHttpException {
      return const Left(H2Failure.unexpected());
    } on Exception {
      return const Left(H2Failure.unexpected());
    }
  }

  @override
  Future<Either<H2Failure, Unit>> createH2PayUser(
    VerifyUserH2PayParams params,
  ) async {
    try {
      await datasource
          .createH2PayUser(VerifyUserH2PayParamsModel.fromEntity(params));
      return const Right(unit);
    } on IHttpException catch (e) {
      return Left(H2Failure.invalidParams(message: e.data));
    } on Exception {
      return const Left(H2Failure.unexpected());
    }
  }

  @override
  Future<Either<H2Failure, PixCodeInfo>> getPixCode(
    PixCodeParams params,
  ) async {
    try {
      final pixCode =
          await datasource.getPixCode(PixCodeParamsModel.fromEntity(params));
      return Right(pixCode.toEntity());
    } on IHttpException catch (e) {
      return Left(H2Failure.invalidParams(message: e.data));
    } on Exception {
      return const Left(H2Failure.unexpected());
    }
  }

  @override
  Future<Either<H2Failure, TedDataInfo>> getTedData(
    TedDataParams params,
  ) async {
    try {
      final tedData = await datasource.getTedData(
        TedDataParamsModel.fromEntity(params),
      );
      return Right(
        tedData.toEntity(),
      );
    } on IHttpException catch (e) {
      return Left(H2Failure.invalidParams(message: e.data));
    } on Exception {
      return const Left(H2Failure.unexpected());
    }
  }
}
