import 'package:apph2/domain/entities/recovery_params.dart';
import 'package:apph2/infraestructure/mvvm/mvvm.dart';
import 'package:apph2/usecases/login_recovery_usecase.dart';
import 'package:apph2/views/recovery/recovery_state.dart';

class RecoveryViewModel extends ViewModel<RecoveryState> {
  final ILoginRecoveryUsecase _loginRecoveryUsecase;

  RecoveryViewModel(
    this._loginRecoveryUsecase,
  ) : super(RecoveryState.initial());

  void recovery({
    required RecoveryParams recoveryParams,
  }) async {
    emit(
      state.copyWith(loading: true, error: ''),
    );
    final result = await _loginRecoveryUsecase(recoveryParams);
    result.fold((error) {
      emit(
        state.copyWith(loading: false, error: 'error', success: false),
      );
    }, (recoveyResult) async {
      emit(
        state.copyWith(loading: false, error: '', success: true),
      );
    });
  }
}
