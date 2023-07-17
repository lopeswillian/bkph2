import 'package:apph2/domain/entities/anticipation_params.dart';
import 'package:apph2/domain/entities/anticipation_with_discharge.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:apph2/domain/repositories/h2pay_repository.dart';
import 'package:dartz/dartz.dart';

abstract class IGetAnticipationWithDischargeUseCase {
  Future<Either<H2Failure, AnticipationWithDischarge>> call(AnticipationParams params);
}

class GetAnticipationWithDischargeUseCase implements IGetAnticipationWithDischargeUseCase {
  final IH2PayRepository _repository;

  GetAnticipationWithDischargeUseCase(this._repository);

  @override
  Future<Either<H2Failure, AnticipationWithDischarge>> call(AnticipationParams params) {
    return _repository.getAllAnticipation(params);
  }
}
