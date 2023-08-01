import 'package:apph2/domain/entities/rewards_accordion_category.dart';
import 'package:apph2/domain/entities/rewards_category.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:dartz/dartz.dart';

abstract class IRewardsRepository {
  Future<Either<H2Failure, List<RewardsAccordionCategory>>>
      getRewardsAccordionCategory();

  Future<Either<H2Failure, RewardsCategory>> getRewardsCategoryDetail(int id);
}
