import 'package:apph2/domain/entities/pix_code_info.dart';
import 'package:apph2/domain/entities/pix_code_params.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:apph2/domain/repositories/h2pay_repository.dart';
import 'package:dartz/dartz.dart';

abstract class IGetPixCodeUseCase {
  Future<Either<H2Failure, PixCodeInfo>> call(PixCodeParams params);
}

class GetPixCodeUseCase implements IGetPixCodeUseCase {
  final IH2PayRepository _repository;

  GetPixCodeUseCase(this._repository);

  @override
  Future<Either<H2Failure, PixCodeInfo>> call(PixCodeParams params) {
    return _repository.getPixCode(params);
  }
}
