import 'package:equatable/equatable.dart';

///
/// Base class for exceptions
///
abstract class BaseException extends Equatable implements Exception {
  /// Internal default error message
  final String message;

  /// Optional original error message
  final String? cause;

  /// Optional custom data
  final dynamic data;

  /// Stack trace
  final StackTrace? stackTrace;

  ///
  /// BaseException constructor
  ///
  const BaseException({
    required this.message,
    this.cause,
    this.data,
    this.stackTrace,
  });
}
