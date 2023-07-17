import 'package:apph2/domain/entities/customer_companies.dart';
import 'package:apph2/domain/entities/customer_companies_params.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:apph2/domain/repositories/h2pay_repository.dart';
import 'package:dartz/dartz.dart';

abstract class IGetCustomerCompaniesUseCase {
  Future<Either<H2Failure, CustomerCompanies>> call(CustomerCompaniesParams params);
}

class GetCustomerCompaniesUseCase implements IGetCustomerCompaniesUseCase {
  final IH2PayRepository _repository;

  GetCustomerCompaniesUseCase(this._repository);

  @override
  Future<Either<H2Failure, CustomerCompanies>> call(CustomerCompaniesParams params) {
    return _repository.getCustomerCompanies(params);
  }
}
