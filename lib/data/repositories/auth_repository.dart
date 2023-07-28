import 'package:apph2/data/datasources/auth_remote_datasource.dart';
import 'package:apph2/data/models/request/auth/auth.dart';
import 'package:apph2/data/models/request/auth/cpf_params_model.dart';
import 'package:apph2/data/models/request/auth/profile_update_params_model.dart';
import 'package:apph2/data/models/request/auth/recovery_params_model.dart';
import 'package:apph2/data/models/request/auth/register_params_model.dart';
import 'package:apph2/data/models/request/auth/rewards_id_param_model.dart';
import 'package:apph2/domain/entities/cpf_info.dart';
import 'package:apph2/domain/entities/cpf_params.dart';
import 'package:apph2/domain/entities/entities.dart';
import 'package:apph2/domain/entities/profile_info.dart';
import 'package:apph2/domain/entities/profile_update_params.dart';
import 'package:apph2/domain/entities/recovery_params.dart';
import 'package:apph2/domain/entities/register_params.dart';
import 'package:apph2/domain/entities/rewards_id_param.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:apph2/domain/repositories/auth_repository.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:dartz/dartz.dart';

class AuthRepository implements IAuthRepository {
  final IAuthDatasource datasource;

  AuthRepository(this.datasource);

  @override
  Future<Either<H2Failure, LoginInfo>> login(
    LoginParams params,
  ) async {
    try {
      var res = await datasource.login(LoginParamsModel.fromEntity(params));
      return Right(res.toEntity());
    } on IHttpException {
      return const Left(H2Failure.unexpected());
    } on Exception {
      return const Left(H2Failure.unexpected());
    }
  }

  @override
  Future<Either<H2Failure, Unit>> recovery(
    RecoveryParams params,
  ) async {
    try {
      await datasource.recovery(RecoveryParamsModel.fromEntity(params));
      return const Right(unit);
    } on IHttpException {
      return const Left(H2Failure.unexpected());
    } on Exception {
      return const Left(H2Failure.unexpected());
    }
  }

  @override
  Future<Either<H2Failure, String>> register(
    RegisterParams params,
  ) async {
    try {
      final response = await datasource.register(
        RegisterParamsModel.fromEntity(params),
      );
      return Right(response);
    } on IHttpException catch (e) {
      return Left(
          H2Failure.unprocessableEntity(message: e.data ?? 'Erro inexperado.'));
    } on Exception {
      return const Left(H2Failure.unexpected());
    }
  }

  @override
  Future<Either<H2Failure, CpfInfo>> getCpf(
    CpfParams params,
  ) async {
    try {
      final document = await datasource.getCpf(
        CpfParamsModel.fromEntity(params),
      );
      return Right(document.toEntity());
    } on IHttpException {
      return const Left(H2Failure.unexpected());
    } on Exception {
      return const Left(H2Failure.unexpected());
    }
  }

  @override
  Future<Either<H2Failure, ProfileInfo>> getProfile(
    RewardsIdParam params,
  ) async {
    try {
      final profile = await datasource.getProfile(
        RewardsIdParamModel.fromEntity(params),
      );
      return Right(profile.toEntity());
    } on IHttpException {
      return const Left(H2Failure.unexpected());
    } on Exception {
      return const Left(H2Failure.unexpected());
    }
  }

  @override
  Future<Either<H2Failure, Unit>> updateProfile(
    ProfileUpdateParams params,
  ) async {
    try {
      await datasource.updateProfile(
        ProfileUpdateParamsModel.fromEntity(params),
      );
      return const Right(unit);
    } on IHttpException catch (e) {
      return Left(
          H2Failure.unprocessableEntity(message: e.data ?? 'Erro inexperado.'));
    } on Exception {
      return const Left(H2Failure.unexpected());
    }
  }
}
