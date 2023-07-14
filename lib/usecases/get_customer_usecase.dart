import 'package:apph2/domain/entities/customer_info.dart';
import 'package:apph2/domain/entities/customer_params.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:apph2/domain/repositories/h2pay_repository.dart';
import 'package:dartz/dartz.dart';

abstract class IGetCustomerUseCase {
  Future<Either<H2Failure, CustomerInfo>> call(CustomerParams params);
}

class GetCustomerUseCase implements IGetCustomerUseCase {
  final IH2PayRepository _repository;

  GetCustomerUseCase(this._repository);

  @override
  Future<Either<H2Failure, CustomerInfo>> call(CustomerParams params) {
    return _repository.getCustomer(params);
  }
}
