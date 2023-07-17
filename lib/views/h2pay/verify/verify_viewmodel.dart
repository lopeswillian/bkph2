import 'package:apph2/domain/entities/sms_params.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/usecases/get_sms_code_usecase.dart';
import 'package:apph2/views/h2pay/verify/verify_state.dart';

class VerifyViewModel extends ViewModel<VerifyState> {
  final IGetSmsCodeUseCase _getSmsCodeUseCase;


  VerifyViewModel(
    this._getSmsCodeUseCase,
  ) : super(VerifyState.initial());

  
  Future<void> getSmsCode() async {
    // emit(state.copyWith(loading: true, error: ''));

    // final result = await _getSmsCodeUseCase(
    //   SmsParams(
    //     cellphone: state.customer!.cellphone,
    //     cpf: state.customer!.cpf,
    //     email: state.customer!.email,
    //     name: state.customer!.name,
    //   ),
    // );

    // result.fold(
    //   (l) => emit(
    //     state.copyWith(
    //       loading: false,
    //       error: 'Erro ao enviar sms.',
    //     ),
    //   ),
    //   (smsSended) => emit(state.copyWith(loading: false)),
    // );
  }
}
