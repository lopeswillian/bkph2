import 'package:apph2/domain/entities/calendar_event.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:apph2/domain/repositories/product_repository.dart';
import 'package:dartz/dartz.dart';

abstract class IGetCalendarEventsUseCase {
  Future<Either<H2Failure, List<CalendarEvent>>> call(int houseId);
}

class GetCalendarEventsUseCase implements IGetCalendarEventsUseCase {
  final IProductRepository _repository;

  GetCalendarEventsUseCase(this._repository);

  @override
  Future<Either<H2Failure, List<CalendarEvent>>> call(int houseId) {
    return _repository.getEvents(houseId);
  }
}
