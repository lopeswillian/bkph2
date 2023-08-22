import 'package:apph2/domain/entities/reedem_prize_params.dart';
import 'package:apph2/domain/entities/rewards_accordion_category.dart';
import 'package:apph2/domain/entities/rewards_category.dart';
import 'package:apph2/domain/entities/user_points_info.dart';
import 'package:apph2/domain/entities/user_statement_info.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:dartz/dartz.dart';

abstract class IRewardsRepository {
  Future<Either<H2Failure, List<RewardsAccordionCategory>>>
      getRewardsAccordionCategory();

  Future<Either<H2Failure, RewardsCategory>> getRewardsCategoryDetail(int id);

  Future<Either<H2Failure, List<UserStatementInfo>>> getUserStatement({
    required String cpf,
  });

  Future<Either<H2Failure, UserPointsInfo>> getUserPoints({
    required String cpf,
  });

  Future<Either<H2Failure, Unit>> reedemPrize(ReedemPrizeParams reedemPrizeParams);
}
