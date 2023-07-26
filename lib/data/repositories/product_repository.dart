import 'package:apph2/data/datasources/product_remote_datasource.dart';
import 'package:apph2/domain/entities/product_accordion_info.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:apph2/domain/repositories/product_repository.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:dartz/dartz.dart';

class ProductRepository implements IProductRepository {
  final IProductDatasource datasource;

  ProductRepository(this.datasource);

  @override
  Future<Either<H2Failure, List<ProductAccordionInfo>>> getProducts() async {
    try {
      var res = await datasource.getProducts();
      return Right(res.map((e) => e.toEntity()).toList());
    } on IHttpException {
      return const Left(H2Failure.unexpected());
    } on Exception {
      return const Left(H2Failure.unexpected());
    }
  }
}
