import 'package:apph2/domain/entities/anticipation_with_discharge.dart';
import 'package:apph2/infraestructure/mvvm/mvvm.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_state.freezed.dart';

@freezed
class PaymentState extends ViewModelState with _$PaymentState {
  const factory PaymentState({
    @Default(false) bool loading,
    @Default('') String error,
    AnticipationWithDischarge? anticipationWithDischarge,
    @Default(0) double valueToPay,
    @Default(1) int typeOfPayment,
    @Default('') String paymentImgFront,
    @Default('') String paymentImgBack,
  }) = _PaymentState;

  factory PaymentState.initial() => const PaymentState();
}
