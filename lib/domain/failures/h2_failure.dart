import 'package:freezed_annotation/freezed_annotation.dart';

part 'h2_failure.freezed.dart';

///
/// Ted Failure
///
@freezed
class H2Failure with _$H2Failure {
  const H2Failure._();

  ///
  ///  Server Failure
  ///
  const factory H2Failure.server({
    @Default('') String message,
  }) = _Server;

  ///
  ///  Invalid Params Failure
  ///
  const factory H2Failure.invalidParams({
    @Default('') String message,
  }) = _InvalidParams;

  ///
  ///  Unauthorized Failure
  ///
  const factory H2Failure.unauthorized({
    @Default('') String message,
  }) = _Unauthorized;

  ///
  ///  Invalid Data Failure
  ///
  const factory H2Failure.invalidData({
    @Default('') String message,
  }) = _InvalidData;

  ///
  ///  Unprocessable Entity Failure
  ///
  const factory H2Failure.unprocessableEntity({
    @Default('') String message,
  }) = _UnprocessableEntity;

  ///
  ///  Timeout Ted Failure
  ///
  const factory H2Failure.timeout() = _Timeout;

  ///
  ///  Unexpected failure
  ///
  const factory H2Failure.unexpected() = _Unexpected;

}
