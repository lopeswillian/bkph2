import 'package:apph2/domain/entities/cpf_info.dart';
import 'package:apph2/domain/entities/cpf_params.dart';
import 'package:apph2/domain/entities/login_info.dart';
import 'package:apph2/domain/entities/login_params.dart';
import 'package:apph2/domain/entities/recovery_params.dart';
import 'package:apph2/domain/entities/register_params.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:dartz/dartz.dart';

abstract class IAuthRepository {
  Future<Either<H2Failure, LoginInfo>> login(LoginParams params);

  Future<Either<H2Failure, Unit>> recovery(RecoveryParams params);

  Future<Either<H2Failure, Unit>> register(RegisterParams params);

  Future<Either<H2Failure, CpfInfo>> getCpf(CpfParams params);
}
