import 'package:apph2/domain/entities/calendar_event.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:apph2/domain/repositories/product_repository.dart';
import 'package:dartz/dartz.dart';

abstract class IGetCalendarDetailsUseCase {
  Future<Either<H2Failure, CalendarEvent>> call(int eventId);
}

class GetCalendarDetailsUseCase implements IGetCalendarDetailsUseCase {
  final IProductRepository _repository;

  GetCalendarDetailsUseCase(this._repository);

  @override
  Future<Either<H2Failure, CalendarEvent>> call(int eventId) {
    return _repository.getEventDetails(eventId);
  }
}
