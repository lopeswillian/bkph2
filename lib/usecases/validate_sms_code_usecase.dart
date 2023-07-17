import 'package:apph2/domain/entities/sms_params.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:apph2/domain/repositories/h2pay_repository.dart';
import 'package:dartz/dartz.dart';

abstract class IValidateSmsCodeUseCase {
  Future<Either<H2Failure, Unit>> call(SmsParams params);
}

class ValidateSmsCodeUseCase implements IValidateSmsCodeUseCase {
  final IH2PayRepository _repository;

  ValidateSmsCodeUseCase(this._repository);

  @override
  Future<Either<H2Failure, Unit>> call(SmsParams params) {
    return _repository.validateSmsCode(params);
  }
}
