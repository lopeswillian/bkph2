import 'package:apph2/domain/entities/user_statement_info.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:apph2/domain/repositories/rewards_repository.dart';
import 'package:dartz/dartz.dart';

abstract class IGetUserStatementUseCase {
  Future<Either<H2Failure, List<UserStatementInfo>>> call({
    required String cpf,
  });
}

class GetUserStatementUseCase implements IGetUserStatementUseCase {
  final IRewardsRepository _repository;

  GetUserStatementUseCase(this._repository);

  @override
  Future<Either<H2Failure, List<UserStatementInfo>>> call({
    required String cpf,
  }) {
    return _repository.getUserStatement(cpf: cpf);
  }
}
