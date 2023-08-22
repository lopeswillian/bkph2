import 'package:apph2/domain/entities/reedem_prize_params.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:apph2/domain/repositories/rewards_repository.dart';
import 'package:dartz/dartz.dart';

abstract class IReedemPrizeUseCase {
  Future<Either<H2Failure, Unit>> call(ReedemPrizeParams params);
}

class ReedemPrizeUseCase implements IReedemPrizeUseCase {
  final IRewardsRepository _repository;

  ReedemPrizeUseCase(this._repository);

  @override
  Future<Either<H2Failure, Unit>> call(ReedemPrizeParams params) {
    return _repository.reedemPrize(params);
  }
}
