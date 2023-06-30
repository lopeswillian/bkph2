import 'package:apph2/data/datasources/auth_remote_datasource.dart';
import 'package:apph2/data/models/request/auth/auth.dart';
import 'package:apph2/domain/entities/entities.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:apph2/domain/repositories/auth_repository.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:dartz/dartz.dart';

class AuthRepository implements IAuthRepository {
  final IAuthDatasource datasource;

  AuthRepository(this.datasource);

  @override
  Future<Either<H2Failure, LoginInfo>> login(
    LoginParams params,
  ) async {
    try {
      var res = await datasource.login(LoginParamsModel.fromEntity(params));
      return Right(res.toEntity());
    } on IHttpException{
      return const Left(H2Failure.unexpected());
    } on Exception {
      return const Left(H2Failure.unexpected());
    }
  }
}
