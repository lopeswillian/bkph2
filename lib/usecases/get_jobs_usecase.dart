import 'package:apph2/domain/entities/job.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:apph2/domain/repositories/h2pay_repository.dart';
import 'package:dartz/dartz.dart';

abstract class IGetJobsUseCase {
  Future<Either<H2Failure, List<Job>>> call();
}

class GetJobsUseCase implements IGetJobsUseCase {
  final IH2PayRepository _repository;

  GetJobsUseCase(this._repository);

  @override
  Future<Either<H2Failure, List<Job>>> call() {
    return _repository.getJobs();
  }
}
