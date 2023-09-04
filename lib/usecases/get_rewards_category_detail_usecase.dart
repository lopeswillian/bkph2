import 'package:apph2/domain/entities/rewards_category.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:apph2/domain/repositories/rewards_repository.dart';
import 'package:dartz/dartz.dart';

abstract class IGetRewardsCategoryDetailUseCase {
  Future<Either<H2Failure, RewardsCategory>> call(
    int id,
    String cpf,
  );
}

class GetRewardsCategoryDetailUseCase
    implements IGetRewardsCategoryDetailUseCase {
  final IRewardsRepository _repository;

  GetRewardsCategoryDetailUseCase(this._repository);

  @override
  Future<Either<H2Failure, RewardsCategory>> call(
    int id,
    String cpf,
  ) {
    return _repository.getRewardsCategoryDetail(id, cpf);
  }
}
