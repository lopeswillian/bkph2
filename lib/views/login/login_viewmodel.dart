import 'package:apph2/domain/entities/login_params.dart';
import 'package:apph2/infraestructure/mvvm/mvvm.dart';
import 'package:apph2/usecases/login_with_credentials_usecase.dart';
import 'package:apph2/views/login/login_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginViewModel extends ViewModel<LoginState> {
  final ILoginWithCredentialsUsecase _loginWithCredentials;
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  LoginViewModel(
    this._loginWithCredentials,
  ) : super(LoginState.initial());

  void login({
    required LoginParams loginParams,
  }) async {
    emit(state.copyWith(loading: true, error: ''));
    final result = await _loginWithCredentials(loginParams);
    final SharedPreferences prefs = await _prefs;
    result.fold((error) {
      emit(
        state.copyWith(
          loading: false,
          error: 'Senha incorreta',
          token: '',
        ),
      );
    }, (login) async {
      prefs.setString(
        'token',
        login.token,
      );
      emit(
        state.copyWith(
          loading: false,
          token: login.token,
        ),
      );
    });
  }

  Future<void> isAuth() async {
    final SharedPreferences prefs = await _prefs;
    final String? token = prefs.getString('token');
    emit(
      state.copyWith(
          loading: true,
          // token: token ?? '',
          token: ''),
    );
  }
}
