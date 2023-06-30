import 'package:equatable/equatable.dart';

import 'http_status.dart';

///
/// Http base exception
///
abstract class IHttpException extends Equatable {
  ///
  /// Http status code
  ///
  final HttpStatus? status;

  ///
  /// Error message
  ///
  final String message;

  ///
  /// Optional data
  ///
  final dynamic data;

  ///
  /// Creates a new [IHttpException]
  ///
  const IHttpException(
    this.status, {
    this.data,
    this.message = '',
  });

  @override
  List<Object?> get props => [status, data, message];
}

///
/// Exception for [HttpStatus.badRequest]
///
class BadRequestException extends IHttpException {
  ///
  /// Creates a new [BadRequestException]
  ///
  const BadRequestException({
    HttpStatus? status,
    Object? data,
    String message = '',
  }) : super(
          status ?? HttpStatus.badRequest,
          data: data,
          message: message,
        );
}

///
/// Exception for [HttpStatus.internalServerError]
///
class ServerErrorException extends IHttpException {
  ///
  /// Creates a new [ServerErrorException]
  ///
  const ServerErrorException({
    String message = '',
  }) : super(
          HttpStatus.serverError,
          message: message,
        );
}

///
/// Exception for [HttpStatus.unprocessableEntity]
///
class UnprocessableEntityException extends IHttpException {
  ///
  /// Creates a new [UnprocessableEntityException]
  ///
  const UnprocessableEntityException({
    String message = '',
    Object? data,
  }) : super(
          HttpStatus.unprocessableEntity,
          message: message,
          data: data,
        );
}

///
/// Exception for [HttpStatus.unauthorized]
///
class UnauthorizedException extends IHttpException {
  ///
  /// Creates a new [UnauthorizedException]
  ///
  const UnauthorizedException({
    String message = '',
    dynamic data,
  }) : super(
          HttpStatus.unauthorized,
          message: message,
          data: data,
        );
}

///
/// Exception for [HttpStatus.internalServerError]
///
class TimeoutException extends IHttpException {
  ///
  /// Creates a new [TimeoutException]
  ///
  const TimeoutException({
    String message = '',
  }) : super(
          HttpStatus.requestTimeout,
          message: message,
        );
}

///
/// Unknown connection error, without an error code associated.
///
class UnknownConnectionError extends IHttpException {
  /// Creates a new [UnknownConnectionError]
  const UnknownConnectionError({
    Object? data,
    String message = '',
  }) : super(
          null,
          data: data,
          message: message,
        );
}
