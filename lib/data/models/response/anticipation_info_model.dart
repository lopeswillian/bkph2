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
  }) = _AnticipationInfoModel;

  factory AnticipationInfoModel.fromToken(String token) {
    Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
    return AnticipationInfoModel(
      customerId: decodedToken['customer_id'],
      paymentTermId: decodedToken['payment_term_id'],
      valuePoker: decodedToken['value_poker'],
      valueBet: decodedToken['value_bet'],
      dueDate: decodedToken['due_date'],
      dateCreate: decodedToken['date_create'],
      signatureDate: decodedToken['signature_date'],
      lastUpdate: decodedToken['last_update'],
      valuePrincipal: decodedToken['value_principal'],
      paymentDate: decodedToken['payment_date'],
      paymentId: decodedToken['payment_id'],
      valuePayment: decodedToken['value_payment'],
      anticipationOriginId: decodedToken['anticipation_origin_id'],
      agentId: decodedToken['agent_id'],
      status: decodedToken['status'],
    );
  }

  AnticipationInfo toEntity() => AnticipationInfo(
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
      );
}
