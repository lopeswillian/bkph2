// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bco_cpf_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BcoCpfParams {
  String get document => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BcoCpfParamsCopyWith<BcoCpfParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BcoCpfParamsCopyWith<$Res> {
  factory $BcoCpfParamsCopyWith(
          BcoCpfParams value, $Res Function(BcoCpfParams) then) =
      _$BcoCpfParamsCopyWithImpl<$Res, BcoCpfParams>;
  @useResult
  $Res call({String document});
}

/// @nodoc
class _$BcoCpfParamsCopyWithImpl<$Res, $Val extends BcoCpfParams>
    implements $BcoCpfParamsCopyWith<$Res> {
  _$BcoCpfParamsCopyWithImpl(this._value, this._then);

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
abstract class _$$_BcoCpfParamsCopyWith<$Res>
    implements $BcoCpfParamsCopyWith<$Res> {
  factory _$$_BcoCpfParamsCopyWith(
          _$_BcoCpfParams value, $Res Function(_$_BcoCpfParams) then) =
      __$$_BcoCpfParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String document});
}

/// @nodoc
class __$$_BcoCpfParamsCopyWithImpl<$Res>
    extends _$BcoCpfParamsCopyWithImpl<$Res, _$_BcoCpfParams>
    implements _$$_BcoCpfParamsCopyWith<$Res> {
  __$$_BcoCpfParamsCopyWithImpl(
      _$_BcoCpfParams _value, $Res Function(_$_BcoCpfParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? document = null,
  }) {
    return _then(_$_BcoCpfParams(
      document: null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BcoCpfParams implements _BcoCpfParams {
  _$_BcoCpfParams({required this.document});

  @override
  final String document;

  @override
  String toString() {
    return 'BcoCpfParams(document: $document)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BcoCpfParams &&
            (identical(other.document, document) ||
                other.document == document));
  }

  @override
  int get hashCode => Object.hash(runtimeType, document);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BcoCpfParamsCopyWith<_$_BcoCpfParams> get copyWith =>
      __$$_BcoCpfParamsCopyWithImpl<_$_BcoCpfParams>(this, _$identity);
}

abstract class _BcoCpfParams implements BcoCpfParams {
  factory _BcoCpfParams({required final String document}) = _$_BcoCpfParams;

  @override
  String get document;
  @override
  @JsonKey(ignore: true)
  _$$_BcoCpfParamsCopyWith<_$_BcoCpfParams> get copyWith =>
      throw _privateConstructorUsedError;
}
