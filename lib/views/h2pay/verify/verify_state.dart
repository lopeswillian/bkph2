import 'package:apph2/infraestructure/mvvm/mvvm.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_state.freezed.dart';

@freezed
class VerifyState extends ViewModelState with _$VerifyState {
  const factory VerifyState({
    @Default(false) bool loading,
    @Default('') String error,
    @Default('') String phone
    
  }) = _VerifyState;

  factory VerifyState.initial() => const VerifyState();
}
