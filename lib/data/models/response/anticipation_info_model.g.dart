// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anticipation_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnticipationInfoModel _$AnticipationInfoModelFromJson(
        Map<String, dynamic> json) =>
    AnticipationInfoModel(
      customerId: json['customerId'] as int,
      paymentTermId: json['paymentTermId'] as int,
      valuePoker: (json['valuePoker'] as num).toDouble(),
      valueBet: (json['valueBet'] as num).toDouble(),
      dueDate: DateTime.parse(json['dueDate'] as String),
      dateCreate: DateTime.parse(json['dateCreate'] as String),
      signatureDate: json['signatureDate'] == null
          ? null
          : DateTime.parse(json['signatureDate'] as String),
      lastUpdate: json['lastUpdate'] == null
          ? null
          : DateTime.parse(json['lastUpdate'] as String),
      valuePrincipal: (json['valuePrincipal'] as num).toDouble(),
      paymentDate: json['paymentDate'] == null
          ? null
          : DateTime.parse(json['paymentDate'] as String),
      paymentId: json['paymentId'] as int?,
      valuePayment: (json['valuePayment'] as num?)?.toDouble(),
      anticipationOriginId: json['anticipationOriginId'] as int?,
      agentId: json['agentId'] as int,
      status: json['status'] as int,
      paymentDescription: json['paymentDescription'] as String,
      useType: json['useType'] as String?,
      term: json['term'] as String,
    );

Map<String, dynamic> _$AnticipationInfoModelToJson(
        AnticipationInfoModel instance) =>
    <String, dynamic>{
      'customerId': instance.customerId,
      'paymentTermId': instance.paymentTermId,
      'valuePoker': instance.valuePoker,
      'valueBet': instance.valueBet,
      'dueDate': instance.dueDate.toIso8601String(),
      'dateCreate': instance.dateCreate.toIso8601String(),
      'signatureDate': instance.signatureDate?.toIso8601String(),
      'lastUpdate': instance.lastUpdate?.toIso8601String(),
      'valuePrincipal': instance.valuePrincipal,
      'paymentDate': instance.paymentDate?.toIso8601String(),
      'paymentId': instance.paymentId,
      'valuePayment': instance.valuePayment,
      'anticipationOriginId': instance.anticipationOriginId,
      'agentId': instance.agentId,
      'status': instance.status,
      'paymentDescription': instance.paymentDescription,
      'useType': instance.useType,
      'term': instance.term,
    };
