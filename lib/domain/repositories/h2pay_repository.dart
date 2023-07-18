import 'package:apph2/domain/entities/anticipation_info.dart';
import 'package:apph2/domain/entities/anticipation_params.dart';
import 'package:apph2/domain/entities/anticipation_with_discharge.dart';
import 'package:apph2/domain/entities/bco_cnpj_info.dart';
import 'package:apph2/domain/entities/bco_cnpj_params.dart';
import 'package:apph2/domain/entities/bco_cpf_info.dart';
import 'package:apph2/domain/entities/bco_cpf_params.dart';
import 'package:apph2/domain/entities/customer_companies.dart';
import 'package:apph2/domain/entities/customer_companies_params.dart';
import 'package:apph2/domain/entities/customer_info.dart';
import 'package:apph2/domain/entities/customer_params.dart';
import 'package:apph2/domain/entities/job.dart';
import 'package:apph2/domain/entities/monthly_income.dart';
import 'package:apph2/domain/entities/payment_params.dart';
import 'package:apph2/domain/entities/pix_code_info.dart';
import 'package:apph2/domain/entities/pix_code_params.dart';
import 'package:apph2/domain/entities/sms_params.dart';
import 'package:apph2/domain/entities/ted_data_info.dart';
import 'package:apph2/domain/entities/ted_data_params.dart';
import 'package:apph2/domain/entities/terms_conditions.dart';
import 'package:apph2/domain/entities/verify_user_h2pay_params.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:dartz/dartz.dart';

abstract class IH2PayRepository {
  Future<Either<H2Failure, CustomerInfo>> getCustomer(CustomerParams params);

  Future<Either<H2Failure, AnticipationInfo>> getAnticipation(
    AnticipationParams params,
  );

  Future<Either<H2Failure, AnticipationWithDischarge>> getAllAnticipation(
    AnticipationParams params,
  );

  Future<Either<H2Failure, Unit>> getSmsCode(SmsParams params);

  Future<Either<H2Failure, Unit>> validateSmsCode(SmsParams params);

  Future<Either<H2Failure, Unit>> sendPayment(PaymentParams params);

  Future<Either<H2Failure, CustomerCompanies>> getCustomerCompanies(
    CustomerCompaniesParams params,
  );

  Future<Either<H2Failure, BcoCpfInfo>> getBcoCpf(BcoCpfParams params);

  Future<Either<H2Failure, BcoCnpjInfo>> getBcoCnpj(BcoCnpjParams params);

  Future<Either<H2Failure, TermsConditions>> getTerms();

  Future<Either<H2Failure, List<Job>>> getJobs();

  Future<Either<H2Failure, List<MonthlyIncome>>> getMonthlyIncome();

  Future<Either<H2Failure, Unit>> createH2PayUser(VerifyUserH2PayParams params);

  Future<Either<H2Failure, PixCodeInfo>> getPixCode(PixCodeParams params);

  Future<Either<H2Failure, TedDataInfo>> getTedData(TedDataParams params);
}
