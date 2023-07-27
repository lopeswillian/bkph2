// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'caf_request_params_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CafRequestParamsModel _$CafRequestParamsModelFromJson(
    Map<String, dynamic> json) {
  return _CafRequestParamsModel.fromJson(json);
}

/// @nodoc
mixin _$CafRequestParamsModel {
  List<CafFileParamModel> get files => throw _privateConstructorUsedError;
  String get templateId => throw _privateConstructorUsedError;
  @JsonKey(name: '_callbackUrl')
  String get callbackUrl => throw _privateConstructorUsedError;
  CafPropsAttributesModel get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CafRequestParamsModelCopyWith<CafRequestParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CafRequestParamsModelCopyWith<$Res> {
  factory $CafRequestParamsModelCopyWith(CafRequestParamsModel value,
          $Res Function(CafRequestParamsModel) then) =
      _$CafRequestParamsModelCopyWithImpl<$Res, CafRequestParamsModel>;
  @useResult
  $Res call(
      {List<CafFileParamModel> files,
      String templateId,
      @JsonKey(name: '_callbackUrl') String callbackUrl,
      CafPropsAttributesModel attributes});

  $CafPropsAttributesModelCopyWith<$Res> get attributes;
}

/// @nodoc
class _$CafRequestParamsModelCopyWithImpl<$Res,
        $Val extends CafRequestParamsModel>
    implements $CafRequestParamsModelCopyWith<$Res> {
  _$CafRequestParamsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? files = null,
    Object? templateId = null,
    Object? callbackUrl = null,
    Object? attributes = null,
  }) {
    return _then(_value.copyWith(
      files: null == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<CafFileParamModel>,
      templateId: null == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as String,
      callbackUrl: null == callbackUrl
          ? _value.callbackUrl
          : callbackUrl // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as CafPropsAttributesModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CafPropsAttributesModelCopyWith<$Res> get attributes {
    return $CafPropsAttributesModelCopyWith<$Res>(_value.attributes, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CafRequestParamsModelCopyWith<$Res>
    implements $CafRequestParamsModelCopyWith<$Res> {
  factory _$$_CafRequestParamsModelCopyWith(_$_CafRequestParamsModel value,
          $Res Function(_$_CafRequestParamsModel) then) =
      __$$_CafRequestParamsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CafFileParamModel> files,
      String templateId,
      @JsonKey(name: '_callbackUrl') String callbackUrl,
      CafPropsAttributesModel attributes});

  @override
  $CafPropsAttributesModelCopyWith<$Res> get attributes;
}

/// @nodoc
class __$$_CafRequestParamsModelCopyWithImpl<$Res>
    extends _$CafRequestParamsModelCopyWithImpl<$Res, _$_CafRequestParamsModel>
    implements _$$_CafRequestParamsModelCopyWith<$Res> {
  __$$_CafRequestParamsModelCopyWithImpl(_$_CafRequestParamsModel _value,
      $Res Function(_$_CafRequestParamsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? files = null,
    Object? templateId = null,
    Object? callbackUrl = null,
    Object? attributes = null,
  }) {
    return _then(_$_CafRequestParamsModel(
      files: null == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<CafFileParamModel>,
      templateId: null == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as String,
      callbackUrl: null == callbackUrl
          ? _value.callbackUrl
          : callbackUrl // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as CafPropsAttributesModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CafRequestParamsModel extends _CafRequestParamsModel {
  _$_CafRequestParamsModel(
      {required final List<CafFileParamModel> files,
      required this.templateId,
      @JsonKey(name: '_callbackUrl') required this.callbackUrl,
      required this.attributes})
      : _files = files,
        super._();

  factory _$_CafRequestParamsModel.fromJson(Map<String, dynamic> json) =>
      _$$_CafRequestParamsModelFromJson(json);

  final List<CafFileParamModel> _files;
  @override
  List<CafFileParamModel> get files {
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  @override
  final String templateId;
  @override
  @JsonKey(name: '_callbackUrl')
  final String callbackUrl;
  @override
  final CafPropsAttributesModel attributes;

  @override
  String toString() {
    return 'CafRequestParamsModel(files: $files, templateId: $templateId, callbackUrl: $callbackUrl, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CafRequestParamsModel &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            (identical(other.templateId, templateId) ||
                other.templateId == templateId) &&
            (identical(other.callbackUrl, callbackUrl) ||
                other.callbackUrl == callbackUrl) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_files),
      templateId,
      callbackUrl,
      attributes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CafRequestParamsModelCopyWith<_$_CafRequestParamsModel> get copyWith =>
      __$$_CafRequestParamsModelCopyWithImpl<_$_CafRequestParamsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CafRequestParamsModelToJson(
      this,
    );
  }
}

abstract class _CafRequestParamsModel extends CafRequestParamsModel {
  factory _CafRequestParamsModel(
          {required final List<CafFileParamModel> files,
          required final String templateId,
          @JsonKey(name: '_callbackUrl') required final String callbackUrl,
          required final CafPropsAttributesModel attributes}) =
      _$_CafRequestParamsModel;
  _CafRequestParamsModel._() : super._();

  factory _CafRequestParamsModel.fromJson(Map<String, dynamic> json) =
      _$_CafRequestParamsModel.fromJson;

  @override
  List<CafFileParamModel> get files;
  @override
  String get templateId;
  @override
  @JsonKey(name: '_callbackUrl')
  String get callbackUrl;
  @override
  CafPropsAttributesModel get attributes;
  @override
  @JsonKey(ignore: true)
  _$$_CafRequestParamsModelCopyWith<_$_CafRequestParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
