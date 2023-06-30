
import 'errors.dart';

///
/// Default Domain exception
///
class DomainException extends BaseException {
  ///
  /// Creates a new DomainException
  ///
  const DomainException({
    String message = 'unexpectedError',
    String? cause,
    dynamic data,
  }) : super(
          message: message,
          cause: cause,
          data: data,
        );

  @override
  List<Object?> get props => [cause, message, data];
}
