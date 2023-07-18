import 'package:apph2/domain/entities/terms_conditions.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:apph2/domain/repositories/h2pay_repository.dart';
import 'package:dartz/dartz.dart';

abstract class IGetTermsConditionsUseCase {
  Future<Either<H2Failure, TermsConditions>> call();
}

class GetTermsConditionsUseCase implements IGetTermsConditionsUseCase {
  final IH2PayRepository _repository;

  GetTermsConditionsUseCase(this._repository);

  @override
  Future<Either<H2Failure, TermsConditions>> call() {
    return _repository.getTerms();
  }
}
