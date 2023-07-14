import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_params.freezed.dart';

@freezed
class CustomerParams with _$CustomerParams {
  factory CustomerParams({
    required String identifier,
  }) = _CustomerParams;
}