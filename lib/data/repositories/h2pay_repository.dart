import 'package:apph2/data/datasources/h2pay_remote_datasource.dart';
import 'package:apph2/data/models/request/h2pay/anticipation_params_model.dart';
import 'package:apph2/data/models/request/h2pay/bco_cnpj_params_model.dart';
import 'package:apph2/data/models/request/h2pay/bco_cpf_params_model.dart';
import 'package:apph2/data/models/request/h2pay/customer_companies_params_model.dart';
import 'package:apph2/data/models/request/h2pay/customer_params_model.dart';
import 'package:apph2/data/models/request/h2pay/payment_params_model.dart';
import 'package:apph2/data/models/request/h2pay/sms_params_model.dart';
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
import 'package:apph2/domain/entities/payment_params.dart';
import 'package:apph2/domain/entities/sms_params.dart';
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
    } on IHttpException {
      return const Left(H2Failure.unexpected());
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
    } on IHttpException catch(e) {
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
}
