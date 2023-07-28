import 'package:apph2/domain/entities/register_params.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:dartz/dartz.dart';

import '../domain/repositories/repositories.dart';

abstract class IRegisterUseCase {
  Future<Either<H2Failure, String>> call(RegisterParams params);
}

class RegisterUseCase implements IRegisterUseCase {
  final IAuthRepository _repository;

  RegisterUseCase(this._repository);

  @override
  Future<Either<H2Failure, String>> call(RegisterParams params) {
    return _repository.register(params);
  }
}
