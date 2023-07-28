import 'package:apph2/domain/entities/profile_update_params.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:apph2/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

abstract class IUpdateProfileUseCase {
  Future<Either<H2Failure, Unit>> call(ProfileUpdateParams params);
}

class UpdateProfileUseCase implements IUpdateProfileUseCase {
  final IAuthRepository _repository;

  UpdateProfileUseCase(this._repository);

  @override
  Future<Either<H2Failure, Unit>> call(ProfileUpdateParams params) {
    return _repository.updateProfile(params);
  }
}
