import 'package:apph2/domain/entities/cpf_params.dart';
import 'package:apph2/domain/entities/register_params.dart';
import 'package:apph2/infraestructure/mvvm/mvvm.dart';
import 'package:apph2/usecases/get_cpf_usecase.dart';
import 'package:apph2/usecases/register_usecase.dart';
import 'package:apph2/views/register/register_state.dart';

class RegisterViewModel extends ViewModel<RegisterState> {
  final IGetCpfUseCase _getCpfUseCase;
  final IRegisterUseCase _registerUseCase;

  RegisterViewModel(
    this._getCpfUseCase,
    this._registerUseCase,
  ) : super(RegisterState.initial());

  void getCpf({
    required CpfParams cpfParams,
  }) async {
    emit(state.copyWith(loading: true, error: ''));
    final result = await _getCpfUseCase(cpfParams);
    result.fold((error) {
      emit(
        state.copyWith(
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
      );
    }, (document) async {
      emit(
        state.copyWith(
          loading: false,
          document: document,
        ),
      );
    });
  }

  Future<void> register({
    required RegisterParams registerParams,
  }) async {
    emit(
      state.copyWith(
        loading: true,
        error: '',
      ),
    );

    final result = await _registerUseCase(registerParams);

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
      (tokenRegister) => state.copyWith(
        loading: false,
        error: '',
        success: true,
        tokenRegister: tokenRegister,
      ),
    );

    emit(newState);
  }
}
