import 'package:apph2/domain/entities/caf_info.dart';
import 'package:apph2/domain/entities/caf_request_params.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:apph2/domain/repositories/caf_repository.dart';
import 'package:dartz/dartz.dart';

abstract class ISendCafValidationUseCase {
  Future<Either<H2Failure, CafInfo>> call(CafRequestParams params);
}

class SendCafValidationUseCase implements ISendCafValidationUseCase {
  final ICafRepository _repository;

  SendCafValidationUseCase(this._repository);

  @override
  Future<Either<H2Failure, CafInfo>> call(CafRequestParams params) {
    return _repository.sendCafValidation(params);
  }
}
