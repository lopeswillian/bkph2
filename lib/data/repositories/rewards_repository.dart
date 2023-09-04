import 'package:apph2/data/datasources/rewards_remote_datasource.dart';
import 'package:apph2/data/models/request/rewards/reedem_prize_params_model.dart';
import 'package:apph2/domain/entities/reedem_prize_params.dart';
import 'package:apph2/domain/entities/rewards_accordion_category.dart';
import 'package:apph2/domain/entities/rewards_category.dart';
import 'package:apph2/domain/entities/user_points_info.dart';
import 'package:apph2/domain/entities/user_statement_info.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:apph2/domain/repositories/rewards_repository.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:dartz/dartz.dart';

class RewardsRepository implements IRewardsRepository {
  final IRewardsDataSource datasource;

  RewardsRepository(this.datasource);

  @override
  Future<Either<H2Failure, List<RewardsAccordionCategory>>>
      getRewardsAccordionCategory() async {
    try {
      var res = await datasource.getRewardsAccordionCategory();
      return Right(res.map((e) => e.toEntity()).toList());
    } on IHttpException {
      return const Left(H2Failure.unexpected());
    } on Exception {
      return const Left(H2Failure.unexpected());
    }
  }

  @override
  Future<Either<H2Failure, RewardsCategory>> getRewardsCategoryDetail(
    int id,
    String cpf,
  ) async {
    try {
      var res = await datasource.getRewardsCategoryDetail(id, cpf);
      return Right(res.toEntity());
    } on IHttpException {
      return const Left(H2Failure.unexpected());
    } on Exception {
      return const Left(H2Failure.unexpected());
    }
  }

  @override
  Future<Either<H2Failure, List<UserStatementInfo>>> getUserStatement({
    required String cpf,
  }) async {
    try {
      var res = await datasource.getUserStatement(cpf: cpf);
      return Right(res.map((statement) => statement.toEntity()).toList());
    } on IHttpException {
      return const Left(H2Failure.unexpected());
    } on Exception {
      return const Left(H2Failure.unexpected());
    }
  }

  @override
  Future<Either<H2Failure, UserPointsInfo>> getUserPoints({
    required String cpf,
  }) async {
    try {
      var res = await datasource.getUserPoints(cpf: cpf);
      return Right(res.toEntity());
    } on IHttpException {
      return const Left(H2Failure.unexpected());
    } on Exception {
      return const Left(H2Failure.unexpected());
    }
  }

  @override
  Future<Either<H2Failure, Unit>> reedemPrize(ReedemPrizeParams params) async {
    try {
      await datasource.reedemPrize(
        ReedemPrizeParamsModel.fromEntity(params),
      );
      return const Right(unit);
    } on IHttpException catch (e) {
      return Left(
        H2Failure.invalidParams(
          message: e.data ?? 'Erro ao processar resgate.',
        ),
      );
    } on Exception {
      return const Left(H2Failure.unexpected());
    }
  }
}
