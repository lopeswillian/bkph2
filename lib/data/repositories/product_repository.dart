import 'package:apph2/data/datasources/product_remote_datasource.dart';
import 'package:apph2/domain/entities/calendar_event.dart';
import 'package:apph2/domain/entities/calendar_list_info.dart';
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

  @override
  Future<Either<H2Failure, List<ProductAccordionInfo>>> getProductsSchedule() async {
    try {
      var res = await datasource.getProductsSchedule();
      return Right(res.map((e) => e.toEntity()).toList());
    } on IHttpException {
      return const Left(H2Failure.unexpected());
    } on Exception {
      return const Left(H2Failure.unexpected());
    }
  }

  @override
  Future<Either<H2Failure, CalendarListInfo>> getEvents(int houseId) async {
    try {
      var res = await datasource.getEvents(houseId);
      return Right(res.toEntity());
    } on IHttpException {
      return const Left(H2Failure.unexpected());
    } on Exception {
      return const Left(H2Failure.unexpected());
    }
  }

   @override
  Future<Either<H2Failure, CalendarEvent>> getEventDetails(int eventId) async {
    try {
      var res = await datasource.getEventDetails(eventId);
      return Right(res.toEntity());
    } on IHttpException {
      return const Left(H2Failure.unexpected());
    } on Exception {
      return const Left(H2Failure.unexpected());
    }
  }
}
