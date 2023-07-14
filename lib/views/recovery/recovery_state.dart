import 'package:apph2/infraestructure/mvvm/mvvm.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recovery_state.freezed.dart';

@freezed
class RecoveryState extends ViewModelState with _$RecoveryState{
  const factory RecoveryState({
    @Default(false) bool loading,
    @Default('') String error,
    @Default(false) bool success,
  }) = _RecoveryState;

  factory RecoveryState.initial() => const RecoveryState();
}