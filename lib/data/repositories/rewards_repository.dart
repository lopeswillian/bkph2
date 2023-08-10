import 'package:apph2/data/datasources/rewards_remote_datasource.dart';
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
      int id) async {
    try {
      var res = await datasource.getRewardsCategoryDetail(id);
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
}
