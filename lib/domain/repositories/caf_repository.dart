import 'package:apph2/domain/entities/caf_info.dart';
import 'package:apph2/domain/entities/caf_request_params.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:dartz/dartz.dart';

abstract class ICafRepository {
  Future<Either<H2Failure, CafInfo>> sendCafValidation(CafRequestParams params);
}
