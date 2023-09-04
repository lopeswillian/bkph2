import 'package:apph2/base_app_module_routing.dart';
import 'package:apph2/domain/entities/login_params.dart';
import 'package:apph2/domain/entities/profile_info.dart';
import 'package:apph2/domain/entities/rewards_id_param.dart';
import 'package:apph2/domain/entities/user_info.dart';
import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/usecases/login_with_credentials_usecase.dart';
import 'package:apph2/views/login/login_state.dart';
import 'package:apph2/views/profile/profile_viewmodel.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginViewModel extends ViewModel<LoginState> {
  final ILoginWithCredentialsUsecase _loginWithCredentials;
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  final ProfileViewModel _profileViewModel;

  UserInfo? get loggedUser => state.user;

  LoginViewModel(
    this._loginWithCredentials,
    this._profileViewModel,
  ) : super(LoginState.initial());

  void clearError() {
    emit(state.copyWith(error: ''));
  }

  void login({
    required LoginParams loginParams,
  }) async {
    emit(
      state.copyWith(
        loading: true,
        error: '',
        token: '',
        user: null,
      ),
    );
    final result = await _loginWithCredentials(loginParams);
    final SharedPreferences prefs = await _prefs;
    final newState = result.fold(
      (error) => state.copyWith(
        loading: false,
        error: 'Senha incorreta',
      ),
      (login) {
        prefs.setString(
          'token',
          login.token,
        );

        Map<String, dynamic> decodedToken = JwtDecoder.decode(login.token);

        final UserInfo user = UserInfo(
          id: decodedToken['customer_id'],
          avatarUrl: decodedToken['customer_avatar_url'],
          name: decodedToken['customer_name'],
          email: decodedToken['customer_email'],
          birthdate: decodedToken['customer_birthdate'],
          cpf: decodedToken['customer_cpf'],
          nickname: decodedToken['customer_nickname'],
          cellphone: decodedToken['customer_cellphone'],
          vipLiveId: decodedToken['customer_vip_live_id'],
          vipOnlineId: decodedToken['customer_vip_online_id'],
          vipLive: decodedToken['customer_vip_live'],
          vipOnline: decodedToken['customer_vip_online'],
          ish2Pay: decodedToken['customer_h2_pay'],
        );

        return state.copyWith(
          loading: false,
          token: login.token,
          user: user,
        );
      },
    );

    if (newState.user != null) {
      await _profileViewModel.getProfile(
        rewardsIdParam: RewardsIdParam(
          rewardsId: newState.user!.id.toString(),
        ),
      );
    }

    emit(newState);
  }

  Future<void> updateProfile(ProfileInfo profile) async {
    final UserInfo user = UserInfo(
      id: profile.id,
      avatarUrl: '',
      name: profile.name,
      email: profile.email,
      birthdate: profile.birthdate,
      cpf: profile.cpf,
      nickname: profile.nickname,
      cellphone: '55${profile.ddd}${profile.cellphone}',
      vipLiveId: profile.vipLiveId,
      vipOnlineId: profile.vipOnlineId,
      vipLive: profile.vipLive,
      vipOnline: profile.vipOnline,
      ish2Pay: profile.ish2Pay,
    );

    emit(
      state.copyWith(
        user: user,
      ),
    );
  }

  void loginByRegister(String token) async {
    emit(
      state.copyWith(loading: true),
    );

    Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
    final UserInfo user = UserInfo(
      id: decodedToken['customer_id'],
      avatarUrl: decodedToken['customer_avatar_url'],
      name: decodedToken['customer_name'],
      email: decodedToken['customer_email'],
      birthdate: decodedToken['customer_birthdate'],
      cpf: decodedToken['customer_cpf'],
      nickname: decodedToken['customer_nickname'],
      cellphone: decodedToken['customer_cellphone'],
      vipLiveId: decodedToken['customer_vip_live_id'],
      vipOnlineId: decodedToken['customer_vip_online_id'],
      vipLive: decodedToken['customer_vip_live'],
      vipOnline: decodedToken['customer_vip_online'],
      ish2Pay: decodedToken['customer_h2_pay'],
    );

    await _profileViewModel.getProfile(
      rewardsIdParam: RewardsIdParam(
        rewardsId: user.id.toString(),
      ),
    );

    emit(
      state.copyWith(
        loading: false,
        token: token,
        user: user,
      ),
    );
  }

  Future<void> isAuth() async {
    final SharedPreferences prefs = await _prefs;
    final String? token = prefs.getString('token');

    if (token != null && token.isNotEmpty) {
      Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
      final UserInfo user = UserInfo(
        id: decodedToken['customer_id'],
        avatarUrl: decodedToken['customer_avatar_url'],
        name: decodedToken['customer_name'],
        email: decodedToken['customer_email'],
        birthdate: decodedToken['customer_birthdate'],
        cpf: decodedToken['customer_cpf'],
        nickname: decodedToken['customer_nickname'],
        cellphone: decodedToken['customer_cellphone'],
        vipLiveId: decodedToken['customer_vip_live_id'],
        vipOnlineId: decodedToken['customer_vip_online_id'],
        vipLive: decodedToken['customer_vip_live'],
        vipOnline: decodedToken['customer_vip_online'],
        ish2Pay: decodedToken['customer_h2_pay'] ?? false,
      );

      await _profileViewModel.getProfile(
        rewardsIdParam: RewardsIdParam(
          rewardsId: user.id.toString(),
        ),
      );

      emit(
        state.copyWith(
          loading: false,
          token: token,
          user: user,
        ),
      );
      return;
    }
    emit(
      state.copyWith(
        loading: false,
        token: token ?? '',
        user: null,
      ),
    );
  }

  Future<void> logout() async {
    final SharedPreferences prefs = await _prefs;
    prefs.clear();
    Nav.pushNamedAndRemoveUntil(BaseAppModuleRouting.root, (p0) => false);
    emit(
      state.copyWith(user: null, token: ''),
    );
  }

  switchBottomNavigation(int index) {
    emit(
      state.copyWith(
        currentPage: index,
      ),
    );
  }
}
