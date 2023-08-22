import 'package:apph2/domain/entities/anticipation_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

part 'anticipation_info_model.freezed.dart';
part 'anticipation_info_model.g.dart';

@freezed
@JsonSerializable()
class AnticipationInfoModel with _$AnticipationInfoModel {
  const AnticipationInfoModel._();

  factory AnticipationInfoModel({
    required int anticipationId,
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
  }) = _AnticipationInfoModel;

  factory AnticipationInfoModel.fromJson(Map<String, dynamic> decodedToken) {
    return AnticipationInfoModel(
      anticipationId: decodedToken['id'],
      customerId: decodedToken['customer_id'],
      paymentTermId: decodedToken['payment_term_id'],
      valuePoker: double.parse(decodedToken['value_poker'].toString()),
      valueBet: double.parse(decodedToken['value_bet'].toString()),
      dueDate: DateTime.parse(decodedToken['due_date']),
      dateCreate: DateTime.parse(decodedToken['date_create']),
      signatureDate: decodedToken['signature_date'] != null
          ? DateTime.parse(decodedToken['signature_date'])
          : null,
      lastUpdate: decodedToken['last_update'] != null
          ? DateTime.parse(decodedToken['last_update'])
          : null,
      valuePrincipal: double.parse(decodedToken['value_principal'].toString()),
      paymentDate: decodedToken['payment_date'] != null
          ? DateTime.parse(decodedToken['payment_date'])
          : null,
      paymentId: decodedToken['payment_id'],
      valuePayment: decodedToken['value_payment'] != null
          ? double.tryParse(decodedToken['value_payment'].toString()) ?? 0.0
          : null,
      anticipationOriginId: decodedToken['anticipation_origin_id'],
      agentId: decodedToken['agent_id'],
      status: decodedToken['status'],
      paymentDescription: decodedToken['payment_term_description'] ?? '',
      useType: decodedToken['use'],
      term: decodedToken['debt_settlement'] ?? '',
    );
  }

  factory AnticipationInfoModel.fromToken(String token) {
    Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
    return AnticipationInfoModel(
      anticipationId: decodedToken['id'],
      customerId: decodedToken['customer_id'],
      paymentTermId: decodedToken['payment_term_id'],
      valuePoker: double.parse(decodedToken['value_poker'].toString()),
      valueBet: double.parse(decodedToken['value_bet'].toString()),
      dueDate: DateTime.parse(decodedToken['due_date']),
      dateCreate: DateTime.parse(decodedToken['date_create']),
      signatureDate: decodedToken['signature_date'] != null
          ? DateTime.parse(decodedToken['signature_date'])
          : null,
      lastUpdate: decodedToken['last_update'] != null
          ? DateTime.parse(decodedToken['last_update'])
          : null,
      valuePrincipal: double.parse(decodedToken['value_principal'].toString()),
      paymentDate: decodedToken['payment_date'] != null
          ? DateTime.parse(decodedToken['payment_date'])
          : null,
      paymentId: decodedToken['payment_id'],
      valuePayment: decodedToken['value_payment'],
      anticipationOriginId: decodedToken['anticipation_origin_id'],
      agentId: decodedToken['agent_id'],
      status: decodedToken['status'],
      paymentDescription: decodedToken['payment_term_description'],
      useType: decodedToken['use'],
      term: decodedToken['debt_settlement'],
    );
  }

  AnticipationInfo toEntity() => AnticipationInfo(
        anticipationId: anticipationId,
        customerId: customerId,
        paymentTermId: paymentTermId,
        valuePoker: valuePoker,
        valueBet: valueBet,
        dueDate: dueDate,
        dateCreate: dateCreate,
        signatureDate: signatureDate,
        lastUpdate: lastUpdate,
        valuePrincipal: valuePrincipal,
        paymentDate: paymentDate,
        paymentId: paymentId,
        valuePayment: valuePayment,
        anticipationOriginId: anticipationOriginId,
        agentId: agentId,
        status: status,
        paymentDescription: paymentDescription,
        useType: useType,
        term: term,
      );
}
