import 'package:apph2/domain/entities/cpf_info.dart';
import 'package:apph2/infraestructure/mvvm/mvvm.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterState extends ViewModelState with _$RegisterState {
  const factory RegisterState({
    @Default(false) bool loading,
    @Default('') String error,
    @Default(false) bool success,
    @Default('') String tokenRegister,
    CpfInfo? document,
  }) = _RegisterState;

  factory RegisterState.initial() => const RegisterState();
}
