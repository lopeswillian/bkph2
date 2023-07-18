import 'package:freezed_annotation/freezed_annotation.dart';

part 'ted_data_params.freezed.dart';

@freezed
class TedDataParams with _$TedDataParams {
  factory TedDataParams({
    required int customerId,
    required double paymentValue
  }) = _TedDataParams;
}
