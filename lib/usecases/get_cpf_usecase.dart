import 'package:apph2/domain/entities/cpf_info.dart';
import 'package:apph2/domain/entities/cpf_params.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:apph2/domain/repositories/repositories.dart';
import 'package:dartz/dartz.dart';

abstract class IGetCpfUseCase {
  Future<Either<H2Failure, CpfInfo>> call(CpfParams params);
}

class GetCpfUseCase implements IGetCpfUseCase {
  final IAuthRepository _repository;

  GetCpfUseCase(this._repository);

  @override
  Future<Either<H2Failure, CpfInfo>> call(CpfParams params) {
    return _repository.getCpf(params);
  }
}
