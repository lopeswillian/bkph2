import 'package:apph2/domain/entities/calendar_event.dart';
import 'package:apph2/domain/entities/calendar_list_info.dart';
import 'package:apph2/domain/entities/product_accordion_info.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:dartz/dartz.dart';

abstract class IProductRepository {
  Future<Either<H2Failure, List<ProductAccordionInfo>>> getProducts();

  Future<Either<H2Failure, List<ProductAccordionInfo>>> getProductsSchedule();

  Future<Either<H2Failure, CalendarListInfo>> getEvents(int houseId);

  Future<Either<H2Failure, CalendarEvent>> getEventDetails(int eventId);
}
