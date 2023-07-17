import 'package:apph2/domain/entities/payment_params.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:apph2/domain/repositories/h2pay_repository.dart';
import 'package:dartz/dartz.dart';

abstract class ISendPaymentCustomerUseCase {
  Future<Either<H2Failure, Unit>> call(PaymentParams params);
}

class SendPaymentCustomerUseCase implements ISendPaymentCustomerUseCase {
  final IH2PayRepository _repository;

  SendPaymentCustomerUseCase(this._repository);

  @override
  Future<Either<H2Failure, Unit>> call(PaymentParams params) {
    return _repository.sendPayment(params);
  }
}
