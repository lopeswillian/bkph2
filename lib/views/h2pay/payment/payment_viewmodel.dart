import 'package:apph2/domain/entities/anticipation_params.dart';
import 'package:apph2/domain/entities/payment_params.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/usecases/get_anticipation_with_discharge_usecase.dart';
import 'package:apph2/usecases/send_payment_customer_usecase.dart';
import 'package:apph2/views/h2pay/h2pay_viewmodel.dart';
import 'package:apph2/views/h2pay/payment/payment_state.dart';

class PaymentViewModel extends ViewModel<PaymentState> {
  final IGetAnticipationWithDischargeUseCase
      _getAnticipationWithDischargeUseCase;
  final ISendPaymentCustomerUseCase _sendPaymentCustomerUseCase;
  final H2PayViewModel _h2payViewModel;

  PaymentViewModel(
    this._h2payViewModel,
    this._getAnticipationWithDischargeUseCase,
    this._sendPaymentCustomerUseCase,
  ) : super(PaymentState.initial());

  Future<void> loadAnticipationWithDischarge() async {
    emit(state.copyWith(loading: true));

    final result = await _getAnticipationWithDischargeUseCase(
      AnticipationParams(
        customerId: _h2payViewModel.state.customer!.id,
      ),
    );

    final newState = result.fold(
      (l) => state.copyWith(
        loading: false,
        error: 'Erro ao antecipação.',
      ),
      (anticipation) => state.copyWith(
        anticipationWithDischarge: anticipation,
        loading: false,
      ),
    );
    emit(newState);
  }

  void changeValueToPay(double value) {
    emit(
      state.copyWith(
        valueToPay: value,
      ),
    );
  }

  void setPaymentType(int value) {
    emit(
      state.copyWith(
        typeOfPayment: value,
      ),
    );
  }

  Future<void> sendPayment() async {
    emit(state.copyWith(loading: true));

    final result = await _sendPaymentCustomerUseCase(
      PaymentParams(
        typeOfPayerId: 19,
        customerId: _h2payViewModel.state.customer!.id,
        typeOfPaymentId: state.typeOfPayment,
        paymentValue: state.valueToPay,
        paymentImgFront: state.paymentImgFront,
        paymentImgBack: state.paymentImgBack,
      ),
    );

    final newState = result.fold(
      (l) => state.copyWith(
        loading: false,
        error: 'Erro ao realizar pagamento.',
      ),
      (anticipation) => state.copyWith(
        loading: false,
      ),
    );
    emit(newState);
  }

  void addPaymentImg({
    required bool isFront,
    required String base64Image,
  }) {
    if (isFront) {
      emit(
        state.copyWith(paymentImgFront: base64Image),
      );
      return;
    }
    emit(
      state.copyWith(paymentImgBack: base64Image),
    );
  }
}
