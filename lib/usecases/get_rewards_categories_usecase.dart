import 'package:apph2/domain/entities/rewards_accordion_category.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:apph2/domain/repositories/rewards_repository.dart';
import 'package:dartz/dartz.dart';

abstract class IGetRewardsCategoriesUseCase {
  Future<Either<H2Failure, List<RewardsAccordionCategory>>> call();
}

class GetRewardsCategories implements IGetRewardsCategoriesUseCase {
  final IRewardsRepository _repository;

  GetRewardsCategories(this._repository);

  @override
  Future<Either<H2Failure, List<RewardsAccordionCategory>>> call() {
    return _repository.getRewardsAccordionCategory();
  }
}
