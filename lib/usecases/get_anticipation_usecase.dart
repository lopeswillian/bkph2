import 'package:apph2/domain/entities/anticipation_info.dart';
import 'package:apph2/domain/entities/anticipation_params.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:apph2/domain/repositories/h2pay_repository.dart';
import 'package:dartz/dartz.dart';

abstract class IGetAnticipationUseCase {
  Future<Either<H2Failure, AnticipationInfo>> call(AnticipationParams params);
}

class GetAnticipationUseCase implements IGetAnticipationUseCase {
  final IH2PayRepository _repository;

  GetAnticipationUseCase(this._repository);

  @override
  Future<Either<H2Failure, AnticipationInfo>> call(AnticipationParams params) {
    return _repository.getAnticipation(params);
  }
}
