import 'package:apph2/domain/entities/bco_cnpj_info.dart';
import 'package:apph2/domain/entities/bco_cnpj_params.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:apph2/domain/repositories/h2pay_repository.dart';
import 'package:dartz/dartz.dart';

abstract class IGetBcoCnpjUseCase {
  Future<Either<H2Failure, BcoCnpjInfo>> call(BcoCnpjParams params);
}

class GetBcoCnpjUseCase implements IGetBcoCnpjUseCase {
  final IH2PayRepository _repository;

  GetBcoCnpjUseCase(this._repository);

  @override
  Future<Either<H2Failure, BcoCnpjInfo>> call(BcoCnpjParams params) {
    return _repository.getBcoCnpj(params);
  }
}
