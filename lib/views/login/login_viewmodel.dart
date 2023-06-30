import 'package:apph2/domain/entities/login_params.dart';
import 'package:apph2/infraestructure/mvvm/mvvm.dart';
import 'package:apph2/usecases/login_with_credentials_usecase.dart';
import 'package:apph2/views/login/login_state.dart';

class LoginViewModel extends ViewModel<LoginState> {
  final ILoginWithCredentialsUsecase _loginWithCredentials;

  LoginViewModel(
    this._loginWithCredentials,
  ) : super(LoginState.initial());

  void login({
    required LoginParams loginParams,
  }) async {
    emit(state.copyWith(loading: true));
    Future.delayed(const Duration(seconds: 3));
    _loginWithCredentials(loginParams);
    emit(state.copyWith(loading: true));
  }
}
