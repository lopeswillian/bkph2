import 'package:apph2/domain/entities/cpf_params.dart';
import 'package:apph2/infraestructure/mvvm/mvvm.dart';
import 'package:apph2/usecases/get_cpf_usecase.dart';
import 'package:apph2/views/register/register_state.dart';

class RegisterViewModel extends ViewModel<RegisterState> {
  final IGetCpfUseCase _getCpfUseCase;

  RegisterViewModel(this._getCpfUseCase) : super(RegisterState.initial());

  void getCpf({
    required CpfParams cpfParams,
  }) async {
    emit(state.copyWith(loading: true, error: ''));
    final result = await _getCpfUseCase(cpfParams);
    result.fold((error) {
      emit(
        state.copyWith(
          loading: false,
          error: 'Cpf não encontrado',
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
}
