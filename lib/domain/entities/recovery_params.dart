import 'package:freezed_annotation/freezed_annotation.dart';

part 'recovery_params.freezed.dart';

@freezed
class RecoveryParams with _$RecoveryParams {
  factory RecoveryParams({
    required String identifier,
  }) = _RecoveryParams;
}
