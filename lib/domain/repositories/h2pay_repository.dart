import 'package:apph2/domain/entities/anticipation_info.dart';
import 'package:apph2/domain/entities/anticipation_params.dart';
import 'package:apph2/domain/entities/anticipation_with_discharge.dart';
import 'package:apph2/domain/entities/customer_info.dart';
import 'package:apph2/domain/entities/customer_params.dart';
import 'package:apph2/domain/entities/payment_params.dart';
import 'package:apph2/domain/entities/sms_params.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:dartz/dartz.dart';

abstract class IH2PayRepository {
  Future<Either<H2Failure, CustomerInfo>> getCustomer(CustomerParams params);

  Future<Either<H2Failure, AnticipationInfo>> getAnticipation(
      AnticipationParams params);

  Future<Either<H2Failure, AnticipationWithDischarge>> getAllAnticipation(
      AnticipationParams params);

  Future<Either<H2Failure, Unit>> getSmsCode(SmsParams params);

  Future<Either<H2Failure, Unit>> sendPayment(PaymentParams params);
}
