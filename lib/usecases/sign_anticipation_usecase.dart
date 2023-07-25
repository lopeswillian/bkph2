import 'package:apph2/domain/entities/sign_anticipation_params.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:apph2/domain/repositories/h2pay_repository.dart';
import 'package:dartz/dartz.dart';

abstract class ISignAnticipationUseCase {
  Future<Either<H2Failure, Unit>> call(SignAnticipationParams params);
}

class SignAnticipationUseCase implements ISignAnticipationUseCase {
  final IH2PayRepository _repository;

  SignAnticipationUseCase(this._repository);

  @override
  Future<Either<H2Failure, Unit>> call(SignAnticipationParams params) {
    return _repository.signAnticipation(params);
  }
}
