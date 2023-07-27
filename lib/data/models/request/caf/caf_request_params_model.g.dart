// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'caf_request_params_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CafRequestParamsModel _$$_CafRequestParamsModelFromJson(
        Map<String, dynamic> json) =>
    _$_CafRequestParamsModel(
      files: (json['files'] as List<dynamic>)
          .map((e) => CafFileParamModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      templateId: json['templateId'] as String,
      callbackUrl: json['_callbackUrl'] as String,
      attributes: CafPropsAttributesModel.fromJson(
          json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CafRequestParamsModelToJson(
        _$_CafRequestParamsModel instance) =>
    <String, dynamic>{
      'files': instance.files,
      'templateId': instance.templateId,
      '_callbackUrl': instance.callbackUrl,
      'attributes': instance.attributes,
    };
