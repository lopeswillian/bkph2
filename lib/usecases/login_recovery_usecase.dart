import 'package:apph2/domain/entities/recovery_params.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:dartz/dartz.dart';

import '../domain/repositories/repositories.dart';

abstract class ILoginRecoveryUsecase {
  Future<Either<H2Failure, Unit>> call(RecoveryParams params);
}

class LoginRecoveryUsecase implements ILoginRecoveryUsecase {
  final IAuthRepository _repository;

  LoginRecoveryUsecase(this._repository);

  @override
  Future<Either<H2Failure, Unit>> call(RecoveryParams params) {
    return _repository.recovery(params);
  }
}
