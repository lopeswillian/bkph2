import 'package:apph2/domain/entities/login_info.dart';
import 'package:apph2/domain/entities/login_params.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:dartz/dartz.dart';

abstract class IAuthRepository {
  Future<Either<H2Failure, LoginInfo>> login(LoginParams params);
}
