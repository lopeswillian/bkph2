import 'package:apph2/domain/entities/anticipation_params.dart';
import 'package:apph2/domain/entities/customer_params.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/usecases/get_anticipation_usecase.dart';
import 'package:apph2/usecases/get_customer_usecase.dart';
import 'package:apph2/views/h2pay/h2pay_state.dart';
import 'package:apph2/views/login/login_viewmodel.dart';

class H2PayViewModel extends ViewModel<H2PayState> {
  final IGetCustomerUseCase _customerUseCase;
  final IGetAnticipationUseCase _getAnticipationUseCase;
  late LoginViewModel _loginViewModel;

  H2PayViewModel(
    this._customerUseCase,
    this._getAnticipationUseCase,
  ) : super(H2PayState.initial());

  @override
  void initViewModel() async {
    super.initViewModel();
    _loginViewModel = DM.get<LoginViewModel>();
    loadCustomer();
  }

  void loadCustomer() async {
    final result = await _customerUseCase(
      CustomerParams(
        identifier: _loginViewModel.state.user!.cpf,
      ),
    );

    result.fold(
      (l) => null,
      (customer) => emit(
        state.copyWith(customer: customer),
      ),
    );
  }

  void getAnticipation() async {
    final result = await _getAnticipationUseCase(
      AnticipationParams(
        customerId: state.customer!.id,
      ),
    );

    result.fold(
      (l) => null,
      (anticipation) => emit(
        state.copyWith(anticipation: anticipation),
      ),
    );
  }
}
