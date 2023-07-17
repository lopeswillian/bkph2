// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bco_cnpj_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BcoCnpjParams {
  String get document => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BcoCnpjParamsCopyWith<BcoCnpjParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BcoCnpjParamsCopyWith<$Res> {
  factory $BcoCnpjParamsCopyWith(
          BcoCnpjParams value, $Res Function(BcoCnpjParams) then) =
      _$BcoCnpjParamsCopyWithImpl<$Res, BcoCnpjParams>;
  @useResult
  $Res call({String document});
}

/// @nodoc
class _$BcoCnpjParamsCopyWithImpl<$Res, $Val extends BcoCnpjParams>
    implements $BcoCnpjParamsCopyWith<$Res> {
  _$BcoCnpjParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? document = null,
  }) {
    return _then(_value.copyWith(
      document: null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BcoCnpjParamsCopyWith<$Res>
    implements $BcoCnpjParamsCopyWith<$Res> {
  factory _$$_BcoCnpjParamsCopyWith(
          _$_BcoCnpjParams value, $Res Function(_$_BcoCnpjParams) then) =
      __$$_BcoCnpjParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String document});
}

/// @nodoc
class __$$_BcoCnpjParamsCopyWithImpl<$Res>
    extends _$BcoCnpjParamsCopyWithImpl<$Res, _$_BcoCnpjParams>
    implements _$$_BcoCnpjParamsCopyWith<$Res> {
  __$$_BcoCnpjParamsCopyWithImpl(
      _$_BcoCnpjParams _value, $Res Function(_$_BcoCnpjParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? document = null,
  }) {
    return _then(_$_BcoCnpjParams(
      document: null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BcoCnpjParams implements _BcoCnpjParams {
  _$_BcoCnpjParams({required this.document});

  @override
  final String document;

  @override
  String toString() {
    return 'BcoCnpjParams(document: $document)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BcoCnpjParams &&
            (identical(other.document, document) ||
                other.document == document));
  }

  @override
  int get hashCode => Object.hash(runtimeType, document);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BcoCnpjParamsCopyWith<_$_BcoCnpjParams> get copyWith =>
      __$$_BcoCnpjParamsCopyWithImpl<_$_BcoCnpjParams>(this, _$identity);
}

abstract class _BcoCnpjParams implements BcoCnpjParams {
  factory _BcoCnpjParams({required final String document}) = _$_BcoCnpjParams;

  @override
  String get document;
  @override
  @JsonKey(ignore: true)
  _$$_BcoCnpjParamsCopyWith<_$_BcoCnpjParams> get copyWith =>
      throw _privateConstructorUsedError;
}
