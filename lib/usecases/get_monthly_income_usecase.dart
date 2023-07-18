import 'package:apph2/domain/entities/monthly_income.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:apph2/domain/repositories/h2pay_repository.dart';
import 'package:dartz/dartz.dart';

abstract class IGetMonthlyIncomeUseCase {
  Future<Either<H2Failure, List<MonthlyIncome>>> call();
}

class GetMonthlyIncomeUseCase implements IGetMonthlyIncomeUseCase {
  final IH2PayRepository _repository;

  GetMonthlyIncomeUseCase(this._repository);

  @override
  Future<Either<H2Failure, List<MonthlyIncome>>> call() {
    return _repository.getMonthlyIncome();
  }
}
