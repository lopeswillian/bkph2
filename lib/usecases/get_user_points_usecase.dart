import 'package:apph2/domain/entities/user_points_info.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:apph2/domain/repositories/rewards_repository.dart';
import 'package:dartz/dartz.dart';

abstract class IGetuserPointsUseCase {
  Future<Either<H2Failure, UserPointsInfo>> call({
    required String cpf,
  });
}

class GetuserPointsUseCase implements IGetuserPointsUseCase {
  final IRewardsRepository _repository;

  GetuserPointsUseCase(this._repository);

  @override
  Future<Either<H2Failure, UserPointsInfo>> call({
    required String cpf,
  }) {
    return _repository.getUserPoints(cpf: cpf);
  }
}
