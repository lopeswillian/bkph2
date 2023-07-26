
import 'package:apph2/domain/entities/product_accordion_info.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:apph2/domain/repositories/product_repository.dart';
import 'package:dartz/dartz.dart';

abstract class IGetProductsUseCase {
  Future<Either<H2Failure, List<ProductAccordionInfo>>> call();
}

class GetProductUseCase implements IGetProductsUseCase {
  final IProductRepository _repository;

  GetProductUseCase(this._repository);

  @override
  Future<Either<H2Failure, List<ProductAccordionInfo>>> call() {
    return _repository.getProducts();
  }
}
