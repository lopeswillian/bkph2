import 'package:apph2/domain/entities/anticipation_params.dart';
import 'package:apph2/domain/entities/bco_cnpj_params.dart';
import 'package:apph2/domain/entities/bco_cpf_params.dart';
import 'package:apph2/domain/entities/company_info.dart';
import 'package:apph2/domain/entities/payment_params.dart';
import 'package:apph2/domain/entities/pix_code_params.dart';
import 'package:apph2/domain/entities/sign_anticipation_params.dart';
import 'package:apph2/domain/entities/ted_data_params.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/usecases/get_anticipation_with_discharge_usecase.dart';
import 'package:apph2/usecases/get_bco_cnpj_usecase.dart';
import 'package:apph2/usecases/get_bco_cpf_usecase.dart';
import 'package:apph2/usecases/get_pix_code_usecase.dart';
import 'package:apph2/usecases/get_ted_data_usecase.dart';
import 'package:apph2/usecases/send_payment_customer_usecase.dart';
import 'package:apph2/usecases/sign_anticipation_usecase.dart';
import 'package:apph2/views/h2pay/h2pay_viewmodel.dart';
import 'package:apph2/views/h2pay/payment/payment_state.dart';

class PaymentViewModel extends ViewModel<PaymentState> {
  final IGetAnticipationWithDischargeUseCase
      _getAnticipationWithDischargeUseCase;
  final ISendPaymentCustomerUseCase _sendPaymentCustomerUseCase;
  final IGetBcoCpfUseCase _getBcoCpfUseCase;
  final IGetBcoCnpjUseCase _getBcoCnpjUseCase;
  final IGetTedDataUseCase _getTedDataUseCase;
  final IGetPixCodeUseCase _getPixCodeUseCase;
  final H2PayViewModel _h2payViewModel;
  final ISignAnticipationUseCase _signAnticipationUseCase;

  PaymentViewModel(
    this._h2payViewModel,
    this._getAnticipationWithDischargeUseCase,
    this._sendPaymentCustomerUseCase,
    this._getBcoCnpjUseCase,
    this._getBcoCpfUseCase,
    this._getTedDataUseCase,
    this._getPixCodeUseCase,
    this._signAnticipationUseCase,
  ) : super(PaymentState.initial());

  Future<void> loadAnticipationWithDischarge() async {
    emit(
      state.copyWith(loading: true, error: ''),
    );

    final result = await _getAnticipationWithDischargeUseCase(
      AnticipationParams(
        customerId: _h2payViewModel.state.customer!.id!,
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

  Future<PaymentState> signAnticipation() async {
    emit(
      state.copyWith(
        loading: true,
        error: '',
      ),
    );

    final result = await _signAnticipationUseCase(
      SignAnticipationParams(
        customerId: _h2payViewModel.state.customer!.id!.toString(),
        anticipationId: _h2payViewModel.state.anticipation?.anticipationOriginId
                .toString() ??
            '',
        signed: true,
      ),
    );

    final newState = result.fold(
      (error) => state.copyWith(
        loading: false,
        error: error.maybeMap(
          server: (error) => error.message,
          invalidParams: (error) => error.message,
          unauthorized: (error) => error.message,
          invalidData: (error) => error.message,
          unprocessableEntity: (error) => error.message,
          orElse: () => '',
        ),
      ),
      (anticipation) => state.copyWith(loading: false, error: ''),
    );
    _h2payViewModel.getAnticipation();
    emit(newState);
    return newState;
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

  Future<void> sendPayment(int typePayment) async {
    emit(
      state.copyWith(
        loading: true,
        error: '',
      ),
    );

    PaymentParams paymentParams;

    switch (typePayment) {
      case 2:
        paymentParams = PaymentParams(
          typeOfPayerId: typePayment,
          customerId: _h2payViewModel.state.customer!.id!,
          companyId: state.selectedCustomerCompany!.companyId,
          typeOfPaymentId: state.typeOfPayment,
          paymentValue: state.valueToPay,
          paymentImgFront: state.paymentImgFront,
          paymentImgBack: state.paymentImgBack,
        );
        break;
      case 3:
        paymentParams = PaymentParams(
          typeOfPayerId: typePayment,
          customerId: _h2payViewModel.state.customer!.id!,
          companyId: state.selectedCustomerCompany!.companyId,
          typeOfPaymentId: 3,
          paymentValue: state.valueToPay,
          thirdPartCpf: state.thirdPartCpf,
          paymentImgFront: state.paymentImgFront,
          paymentImgBack: state.paymentImgBack,
        );
        break;
      case 4:
        paymentParams = PaymentParams(
          typeOfPayerId: typePayment,
          customerId: _h2payViewModel.state.customer!.id!,
          companyId: state.selectedCustomerCompany!.companyId,
          typeOfPaymentId: 3,
          paymentValue: state.valueToPay,
          thirdPartCnpj: state.thirdPartCnpj,
          paymentImgFront: state.paymentImgFront,
          paymentImgBack: state.paymentImgBack,
        );
        break;
      case 5:
        paymentParams = PaymentParams(
          typeOfPayerId: typePayment,
          customerId: _h2payViewModel.state.customer!.id!,
          companyId: state.selectedCustomerCompany!.companyId,
          typeOfPaymentId: 3,
          paymentValue: state.valueToPay,
          thirdPartCpf: state.thirdPartCpf,
          paymentImgFront: state.paymentImgFront,
          paymentImgBack: state.paymentImgBack,
        );
        break;
      case 6:
        paymentParams = PaymentParams(
          typeOfPayerId: typePayment,
          customerId: _h2payViewModel.state.customer!.id!,
          companyId: state.selectedCustomerCompany!.companyId,
          typeOfPaymentId: 3,
          paymentValue: state.valueToPay,
          thirdPartCnpj: state.thirdPartCnpj,
          paymentImgFront: state.paymentImgFront,
          paymentImgBack: state.paymentImgBack,
        );
        break;
      case 1:
      default:
        paymentParams = PaymentParams(
          typeOfPayerId: typePayment,
          customerId: _h2payViewModel.state.customer!.id!,
          typeOfPaymentId: state.typeOfPayment,
          paymentValue: state.valueToPay,
          paymentImgFront: state.paymentImgFront,
          paymentImgBack: state.paymentImgBack,
        );
        break;
    }

    final result = await _sendPaymentCustomerUseCase(paymentParams);

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

  void selectCustomerCompany(CompanyInfo company) {
    emit(state.copyWith(selectedCustomerCompany: company));
  }

  void getCpf({required String document}) async {
    clearCpfCnpj();
    emit(
      state.copyWith(loading: true, error: ''),
    );

    final result = await _getBcoCpfUseCase(BcoCpfParams(document: document));

    final newState = result.fold(
      (l) => state.copyWith(
        loading: false,
        error: 'Erro ao encontrar CPF.',
      ),
      (documentData) => state.copyWith(
        thirdPartCpf: documentData.document,
        bcoCpfInfo: documentData,
        loading: false,
      ),
    );
    emit(newState);
  }

  void getCnpj({required String document}) async {
    clearCpfCnpj();
    emit(
      state.copyWith(loading: true, error: ''),
    );

    final result = await _getBcoCnpjUseCase(BcoCnpjParams(document: document));

    final newState = result.fold(
      (l) => state.copyWith(
        loading: false,
        error: 'Cnpj não encontrado.',
      ),
      (documentData) => state.copyWith(
        thirdPartCnpj: documentData.cnpj,
        bcoCnpjInfo: documentData,
        loading: false,
      ),
    );
    emit(newState);
  }

  void clearCpfCnpj() {
    emit(state.copyWith(
      thirdPartCnpj: '',
      thirdPartCpf: '',
      bcoCnpjInfo: null,
      bcoCpfInfo: null,
    ));
  }

  Future<void> getTedInfo() async {
    final result = await _getTedDataUseCase(
      TedDataParams(
        customerId: _h2payViewModel.state.customer!.id!,
        paymentValue: state.valueToPay,
      ),
    );

    final newState = result.fold(
      (l) => state.copyWith(
        loading: false,
      ),
      (tedData) => state.copyWith(
        tedDataInfo: tedData,
      ),
    );
    emit(newState);
  }

  Future<void> getPixInfo() async {
    final result = await _getPixCodeUseCase(
      PixCodeParams(
        customerId: _h2payViewModel.state.customer!.id!,
        paymentValue: state.valueToPay,
      ),
    );

    final newState = result.fold(
      (l) => state.copyWith(
        loading: false,
      ),
      (pixCode) => state.copyWith(
        pixCodeInfo: pixCode,
      ),
    );
    emit(newState);
  }

  void getPayments() async {
    emit(
      state.copyWith(
        loading: true,
      ),
    );
    await getPixInfo();
    await getTedInfo();
    emit(
      state.copyWith(
        loading: false,
      ),
    );
  }
}
