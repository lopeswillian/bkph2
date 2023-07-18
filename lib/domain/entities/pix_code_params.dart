import 'package:freezed_annotation/freezed_annotation.dart';

part 'pix_code_params.freezed.dart';

@freezed
class PixCodeParams with _$PixCodeParams {
  factory PixCodeParams({
    required int customerId,
    required double paymentValue
  }) = _PixCodeParams;
}
