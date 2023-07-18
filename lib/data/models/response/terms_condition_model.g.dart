// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terms_condition_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TermsConditionModel _$$_TermsConditionModelFromJson(
        Map<String, dynamic> json) =>
    _$_TermsConditionModel(
      termId: json['terms_and_conditions_id'] as int,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$_TermsConditionModelToJson(
        _$_TermsConditionModel instance) =>
    <String, dynamic>{
      'terms_and_conditions_id': instance.termId,
      'content': instance.content,
    };
