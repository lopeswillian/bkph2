import 'package:apph2/domain/entities/anticipation_params.dart';
import 'package:apph2/domain/entities/customer_params.dart';
import 'package:apph2/domain/entities/sms_params.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/usecases/get_anticipation_usecase.dart';
import 'package:apph2/usecases/get_customer_usecase.dart';
import 'package:apph2/usecases/get_sms_code_usecase.dart';
import 'package:apph2/views/h2pay/h2pay_state.dart';
import 'package:apph2/views/login/login_viewmodel.dart';

class H2PayViewModel extends ViewModel<H2PayState> {
  final IGetCustomerUseCase _customerUseCase;
  final IGetAnticipationUseCase _getAnticipationUseCase;
  final IGetSmsCodeUseCase _getSmsCodeUseCase;

  late LoginViewModel _loginViewModel;

  H2PayViewModel(
    this._customerUseCase,
    this._getAnticipationUseCase,
    this._getSmsCodeUseCase,
  ) : super(H2PayState.initial());

  @override
  void initViewModel() async {
    super.initViewModel();
    _loginViewModel = DM.get<LoginViewModel>();
    loadCustomer();
  }

  Future<void> loadCustomer() async {
    emit(state.copyWith(loading: true));
    final result = await _customerUseCase(
      CustomerParams(
        identifier: _loginViewModel.state.user!.cpf,
      ),
    );

    result.fold(
      (l) => null,
      (customer) => emit(
        state.copyWith(
          customer: customer,
          loading: false,
        ),
      ),
    );
  }

  void getAnticipation() async {
    emit(state.copyWith(loading: true));
    if (state.customer == null) {
      await loadCustomer();
    }

    final result = await _getAnticipationUseCase(
      AnticipationParams(
        customerId: state.customer!.id,
      ),
    );

    result.fold(
      (l) => emit(state.copyWith(loading: false, error: 'Erro')),
      (anticipation) => emit(
        state.copyWith(anticipation: anticipation, loading: false),
      ),
    );
  }

  Future<void> getSmsCode() async {
    emit(state.copyWith(loading: true, error: ''));

    final result = await _getSmsCodeUseCase(
      SmsParams(
        cellphone: state.customer!.cellphone,
        cpf: state.customer!.cpf,
        email: state.customer!.email,
        name: state.customer!.name,
      ),
    );

    result.fold(
      (l) => emit(
        state.copyWith(
          loading: false,
          error: 'Erro ao enviar sms.',
        ),
      ),
      (smsSended) => emit(state.copyWith(loading: false)),
    );
  }
}
