import 'package:apph2/data/datasources/caf_remote_datasource.dart';
import 'package:apph2/data/models/request/caf/caf_request_params_model.dart';
import 'package:apph2/domain/entities/caf_info.dart';
import 'package:apph2/domain/entities/caf_request_params.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:apph2/domain/repositories/caf_repository.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:dartz/dartz.dart';

class CafRepository implements ICafRepository {
  final ICafDatasource datasource;

  CafRepository(this.datasource);

  @override
  Future<Either<H2Failure, CafInfo>> sendCafValidation(
      CafRequestParams params) async {
    try {
      var res = await datasource.sendCafValidation(
        CafRequestParamsModel.fromEntity(params),
      );
      return Right(res.toEntity());
    } on IHttpException {
      return const Left(H2Failure.unexpected());
    } on Exception {
      return const Left(H2Failure.unexpected());
    }
  }
}
