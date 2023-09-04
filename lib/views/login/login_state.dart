import 'package:apph2/domain/entities/user_info.dart';
import 'package:apph2/infraestructure/mvvm/mvvm.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState extends ViewModelState with _$LoginState {
  const factory LoginState({
    @Default(false) bool loading,
    @Default('') String error,
    @Default('') String token,
    @Default(2) int currentPage,
    UserInfo? user,
  }) = _LoginState;

  factory LoginState.initial() => const LoginState();
}
