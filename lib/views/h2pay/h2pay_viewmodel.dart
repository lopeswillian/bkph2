import 'package:apph2/domain/entities/anticipation_params.dart';
import 'package:apph2/domain/entities/customer_companies_params.dart';
import 'package:apph2/domain/entities/customer_params.dart';
import 'package:apph2/domain/entities/sms_params.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/usecases/get_anticipation_usecase.dart';
import 'package:apph2/usecases/get_customer_companies_usecase.dart';
import 'package:apph2/usecases/get_customer_usecase.dart';
import 'package:apph2/usecases/get_sms_code_usecase.dart';
import 'package:apph2/usecases/validate_sms_code_usecase.dart';
import 'package:apph2/views/h2pay/h2pay_state.dart';
import 'package:apph2/views/login/login_viewmodel.dart';

class H2PayViewModel extends ViewModel<H2PayState> {
  final IGetCustomerUseCase _customerUseCase;
  final IGetAnticipationUseCase _getAnticipationUseCase;
  final IGetSmsCodeUseCase _getSmsCodeUseCase;
  final IValidateSmsCodeUseCase _validateSmsCodeUseCase;
  final IGetCustomerCompaniesUseCase _getCustomerCompaniesUseCase;
  final LoginViewModel _loginViewModel;

  H2PayViewModel(
    this._customerUseCase,
    this._getAnticipationUseCase,
    this._getSmsCodeUseCase,
    this._validateSmsCodeUseCase,
    this._getCustomerCompaniesUseCase,
    this._loginViewModel,
  ) : super(H2PayState.initial());

  @override
  void dispose() {}

  Future<void> loadCustomer() async {
    emit(
      state.copyWith(
        loading: true,
        error: '',
      ),
    );

    final result = await _customerUseCase(
      CustomerParams(
        identifier: _loginViewModel.state.user!.cpf,
      ),
    );

    var newState = result.fold(
      (l) => state.copyWith(
        loading: false,
        error: 'Erro ao buscar customer.',
      ),
      (customer) => state.copyWith(
        customer: customer,
        loading: false,
      ),
    );
    if (newState.customer != null && newState.customer!.id != null) {
      final companies =
          await loadCustomerCompanies(customerId: newState.customer!.id!);
      newState =
          newState.copyWith(customerCompanies: companies.customerCompanies);
    }

    emit(newState);
  }

  Future<H2PayState> loadCustomerCompanies({
    required int customerId,
  }) async {
    final result = await _getCustomerCompaniesUseCase(
      CustomerCompaniesParams(
        customerId: customerId,
      ),
    );

    final newState = result.fold(
      (l) => state.copyWith(
        customerCompanies: null,
      ),
      (customerCompanies) => state.copyWith(
        customerCompanies: customerCompanies,
      ),
    );
    return newState;
  }

  void getAnticipation() async {
    emit(state.copyWith(loading: true));
    if (state.customer == null) {
      await loadCustomer();
    }

    if (state.customer!.h2PayUser == false) {
      return;
    }

    final result = await _getAnticipationUseCase(
      AnticipationParams(
        customerId: state.customer!.id!,
      ),
    );

    final newState = result.fold(
      (l) => state.copyWith(loading: false, error: 'Erro'),
      (anticipation) => state.copyWith(
        anticipation: anticipation,
        loading: false,
      ),
    );

    emit(newState);
  }

  Future<void> getSmsCode() async {
    emit(
      state.copyWith(
        loading: true,
        error: '',
        validSmsCode: false,
      ),
    );

    final result = await _getSmsCodeUseCase(
      SmsParams(
        cellphone: _loginViewModel.loggedUser!.cellphone
            .replaceAll(RegExp(r'[^a-zA-Z0-9]'), ''),
        cpf: _loginViewModel.loggedUser!.cpf,
        email: _loginViewModel.loggedUser!.email,
        name: _loginViewModel.loggedUser!.name,
      ),
    );

    final newState = result.fold(
      (l) => state.copyWith(
        loading: false,
        error: 'Erro ao enviar sms.',
      ),
      (smsSended) => state.copyWith(loading: false),
    );

    emit(newState);
  }

  Future<bool> validateSmsCode(String code) async {
    emit(
      state.copyWith(
        loading: true,
        error: '',
      ),
    );
    bool validCode = false;

    final result = await _validateSmsCodeUseCase(
      SmsParams(
        cellphone: _loginViewModel.state.user!.cellphone.replaceAll(
          RegExp(r'[^a-zA-Z0-9]'),
          '',
        ),
        cpf: _loginViewModel.state.user!.cpf,
        email: _loginViewModel.state.user!.email,
        name: _loginViewModel.state.user!.name,
        code: code,
      ),
    );

    final newState = result.fold(
      (l) {
        validCode = false;
        return state.copyWith(
          loading: false,
          validSmsCode: false,
          error: 'Código inválido ou expirado.',
        );
      },
      (smsSended) {
        validCode = true;
        return state.copyWith(
          loading: false,
          validSmsCode: true,
        );
      },
    );

    emit(newState);
    return validCode;
  }
}
