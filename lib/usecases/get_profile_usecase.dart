import 'package:apph2/domain/entities/profile_info.dart';
import 'package:apph2/domain/entities/rewards_id_param.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:apph2/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

abstract class IGetProfileUseCase {
  Future<Either<H2Failure, ProfileInfo>> call(RewardsIdParam params);
}

class GetProfileUseCase implements IGetProfileUseCase {
  final IAuthRepository _repository;

  GetProfileUseCase(this._repository);

  @override
  Future<Either<H2Failure, ProfileInfo>> call(RewardsIdParam params) {
    return _repository.getProfile(params);
  }
}
