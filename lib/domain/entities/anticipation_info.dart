import 'package:freezed_annotation/freezed_annotation.dart';

part 'anticipation_info.freezed.dart';

@freezed
class AnticipationInfo with _$AnticipationInfo {
  factory AnticipationInfo({
    required int customerId,
    required int paymentTermId,
    required double valuePoker,
    required double valueBet,
    required DateTime dueDate,
    required DateTime dateCreate,
    required DateTime signatureDate,
    required DateTime lastUpdate,
    required double valuePrincipal,
    required DateTime paymentDate,
    required int paymentId,
    required double valuePayment,
    required int anticipationOriginId,
    required int agentId,
    required int status,
  }) = _AnticipationInfo;
}