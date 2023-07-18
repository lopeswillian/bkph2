import 'package:apph2/domain/entities/verify_user_h2pay_params.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:apph2/domain/repositories/h2pay_repository.dart';
import 'package:dartz/dartz.dart';

abstract class ICreateH2PayUserUseCase {
  Future<Either<H2Failure, Unit>> call(VerifyUserH2PayParams params);
}

class CreateH2PayUserUseCase implements ICreateH2PayUserUseCase {
  final IH2PayRepository _repository;

  CreateH2PayUserUseCase(this._repository);

  @override
  Future<Either<H2Failure, Unit>> call(VerifyUserH2PayParams params) {
    return _repository.createH2PayUser(params);
  }
}
