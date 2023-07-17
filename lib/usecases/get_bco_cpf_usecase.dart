import 'package:apph2/domain/entities/bco_cpf_info.dart';
import 'package:apph2/domain/entities/bco_cpf_params.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:apph2/domain/repositories/h2pay_repository.dart';
import 'package:dartz/dartz.dart';

abstract class IGetBcoCpfUseCase {
  Future<Either<H2Failure, BcoCpfInfo>> call(BcoCpfParams params);
}

class GetBcoCpfUseCase implements IGetBcoCpfUseCase {
  final IH2PayRepository _repository;

  GetBcoCpfUseCase(this._repository);

  @override
  Future<Either<H2Failure, BcoCpfInfo>> call(BcoCpfParams params) {
    return _repository.getBcoCpf(params);
  }
}
