import 'package:apph2/domain/entities/entities.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:dartz/dartz.dart';

import '../domain/repositories/repositories.dart';

abstract class ILoginWithCredentialsUsecase {
  Future<Either<H2Failure, LoginInfo>> call(LoginParams params);
}

class LoginWithCredentialsUsecase implements ILoginWithCredentialsUsecase {
  final IAuthRepository _repository;

  LoginWithCredentialsUsecase(this._repository);

  @override
  Future<Either<H2Failure, LoginInfo>> call(LoginParams params) {
    return _repository.login(params);
  }
}
