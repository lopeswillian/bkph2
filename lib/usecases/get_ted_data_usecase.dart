import 'package:apph2/domain/entities/ted_data_info.dart';
import 'package:apph2/domain/entities/ted_data_params.dart';
import 'package:apph2/domain/failures/h2_failure.dart';
import 'package:apph2/domain/repositories/h2pay_repository.dart';
import 'package:dartz/dartz.dart';

abstract class IGetTedDataUseCase {
  Future<Either<H2Failure, TedDataInfo>> call(TedDataParams params);
}

class GetTedDataUseCase implements IGetTedDataUseCase {
  final IH2PayRepository _repository;

  GetTedDataUseCase(this._repository);

  @override
  Future<Either<H2Failure, TedDataInfo>> call(TedDataParams params) {
    return _repository.getTedData(params);
  }
}
