import 'package:apph2/data/datasources/h2pay_remote_datasource.dart';
import 'package:apph2/data/models/request/h2pay/anticipation_params_model.dart';
import 'package:apph2/data/models/request/h2pay/customer_params_model.dart';
import 'package:apph2/data/models/request/h2pay/sms_params_model.dart';
import 'package:apph2/domain/entities/anticipation_info.dart';
import 'package:apph2/domain/entities/anticipation_params.dart';
import 'package:apph2/domain/entities/customer_info.dart';
import 'package:apph2/domain/entities/customer_params.dart';
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
}
