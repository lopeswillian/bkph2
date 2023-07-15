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
    DateTime? signatureDate,
    DateTime? lastUpdate,
    required double valuePrincipal,
    DateTime? paymentDate,
    int? paymentId,
    double? valuePayment,
    int? anticipationOriginId,
    required int agentId,
    required int status,
    required String paymentDescription,
    String? useType,
    required String term,
  }) = _AnticipationInfo;
}