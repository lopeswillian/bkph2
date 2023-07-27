// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'caf_request_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CafRequestParams {
  List<CafFileParam> get files => throw _privateConstructorUsedError;
  String get templateId => throw _privateConstructorUsedError;
  String get callbackUrl => throw _privateConstructorUsedError;
  CafPropsAttributes get attributes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CafRequestParamsCopyWith<CafRequestParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CafRequestParamsCopyWith<$Res> {
  factory $CafRequestParamsCopyWith(
          CafRequestParams value, $Res Function(CafRequestParams) then) =
      _$CafRequestParamsCopyWithImpl<$Res, CafRequestParams>;
  @useResult
  $Res call(
      {List<CafFileParam> files,
      String templateId,
      String callbackUrl,
      CafPropsAttributes attributes});

  $CafPropsAttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class _$CafRequestParamsCopyWithImpl<$Res, $Val extends CafRequestParams>
    implements $CafRequestParamsCopyWith<$Res> {
  _$CafRequestParamsCopyWithImpl(this._value, this._then);

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
              as List<CafFileParam>,
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
              as CafPropsAttributes,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CafPropsAttributesCopyWith<$Res> get attributes {
    return $CafPropsAttributesCopyWith<$Res>(_value.attributes, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CafRequestParamsCopyWith<$Res>
    implements $CafRequestParamsCopyWith<$Res> {
  factory _$$_CafRequestParamsCopyWith(
          _$_CafRequestParams value, $Res Function(_$_CafRequestParams) then) =
      __$$_CafRequestParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CafFileParam> files,
      String templateId,
      String callbackUrl,
      CafPropsAttributes attributes});

  @override
  $CafPropsAttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class __$$_CafRequestParamsCopyWithImpl<$Res>
    extends _$CafRequestParamsCopyWithImpl<$Res, _$_CafRequestParams>
    implements _$$_CafRequestParamsCopyWith<$Res> {
  __$$_CafRequestParamsCopyWithImpl(
      _$_CafRequestParams _value, $Res Function(_$_CafRequestParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? files = null,
    Object? templateId = null,
    Object? callbackUrl = null,
    Object? attributes = null,
  }) {
    return _then(_$_CafRequestParams(
      files: null == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<CafFileParam>,
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
              as CafPropsAttributes,
    ));
  }
}

/// @nodoc

class _$_CafRequestParams implements _CafRequestParams {
  _$_CafRequestParams(
      {required final List<CafFileParam> files,
      required this.templateId,
      required this.callbackUrl,
      required this.attributes})
      : _files = files;

  final List<CafFileParam> _files;
  @override
  List<CafFileParam> get files {
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  @override
  final String templateId;
  @override
  final String callbackUrl;
  @override
  final CafPropsAttributes attributes;

  @override
  String toString() {
    return 'CafRequestParams(files: $files, templateId: $templateId, callbackUrl: $callbackUrl, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CafRequestParams &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            (identical(other.templateId, templateId) ||
                other.templateId == templateId) &&
            (identical(other.callbackUrl, callbackUrl) ||
                other.callbackUrl == callbackUrl) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes));
  }

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
  _$$_CafRequestParamsCopyWith<_$_CafRequestParams> get copyWith =>
      __$$_CafRequestParamsCopyWithImpl<_$_CafRequestParams>(this, _$identity);
}

abstract class _CafRequestParams implements CafRequestParams {
  factory _CafRequestParams(
      {required final List<CafFileParam> files,
      required final String templateId,
      required final String callbackUrl,
      required final CafPropsAttributes attributes}) = _$_CafRequestParams;

  @override
  List<CafFileParam> get files;
  @override
  String get templateId;
  @override
  String get callbackUrl;
  @override
  CafPropsAttributes get attributes;
  @override
  @JsonKey(ignore: true)
  _$$_CafRequestParamsCopyWith<_$_CafRequestParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CafPropsAttributes {
  String get cpf => throw _privateConstructorUsedError;
  String get birthDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CafPropsAttributesCopyWith<CafPropsAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CafPropsAttributesCopyWith<$Res> {
  factory $CafPropsAttributesCopyWith(
          CafPropsAttributes value, $Res Function(CafPropsAttributes) then) =
      _$CafPropsAttributesCopyWithImpl<$Res, CafPropsAttributes>;
  @useResult
  $Res call({String cpf, String birthDate});
}

/// @nodoc
class _$CafPropsAttributesCopyWithImpl<$Res, $Val extends CafPropsAttributes>
    implements $CafPropsAttributesCopyWith<$Res> {
  _$CafPropsAttributesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cpf = null,
    Object? birthDate = null,
  }) {
    return _then(_value.copyWith(
      cpf: null == cpf
          ? _value.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CafPropsAttributesCopyWith<$Res>
    implements $CafPropsAttributesCopyWith<$Res> {
  factory _$$_CafPropsAttributesCopyWith(_$_CafPropsAttributes value,
          $Res Function(_$_CafPropsAttributes) then) =
      __$$_CafPropsAttributesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String cpf, String birthDate});
}

/// @nodoc
class __$$_CafPropsAttributesCopyWithImpl<$Res>
    extends _$CafPropsAttributesCopyWithImpl<$Res, _$_CafPropsAttributes>
    implements _$$_CafPropsAttributesCopyWith<$Res> {
  __$$_CafPropsAttributesCopyWithImpl(
      _$_CafPropsAttributes _value, $Res Function(_$_CafPropsAttributes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cpf = null,
    Object? birthDate = null,
  }) {
    return _then(_$_CafPropsAttributes(
      cpf: null == cpf
          ? _value.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CafPropsAttributes implements _CafPropsAttributes {
  _$_CafPropsAttributes({required this.cpf, required this.birthDate});

  @override
  final String cpf;
  @override
  final String birthDate;

  @override
  String toString() {
    return 'CafPropsAttributes(cpf: $cpf, birthDate: $birthDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CafPropsAttributes &&
            (identical(other.cpf, cpf) || other.cpf == cpf) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cpf, birthDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CafPropsAttributesCopyWith<_$_CafPropsAttributes> get copyWith =>
      __$$_CafPropsAttributesCopyWithImpl<_$_CafPropsAttributes>(
          this, _$identity);
}

abstract class _CafPropsAttributes implements CafPropsAttributes {
  factory _CafPropsAttributes(
      {required final String cpf,
      required final String birthDate}) = _$_CafPropsAttributes;

  @override
  String get cpf;
  @override
  String get birthDate;
  @override
  @JsonKey(ignore: true)
  _$$_CafPropsAttributesCopyWith<_$_CafPropsAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}
