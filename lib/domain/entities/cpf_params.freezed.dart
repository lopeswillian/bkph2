// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cpf_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CpfParams {
  String get document => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CpfParamsCopyWith<CpfParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CpfParamsCopyWith<$Res> {
  factory $CpfParamsCopyWith(CpfParams value, $Res Function(CpfParams) then) =
      _$CpfParamsCopyWithImpl<$Res, CpfParams>;
  @useResult
  $Res call({String document});
}

/// @nodoc
class _$CpfParamsCopyWithImpl<$Res, $Val extends CpfParams>
    implements $CpfParamsCopyWith<$Res> {
  _$CpfParamsCopyWithImpl(this._value, this._then);

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
abstract class _$$_CpfParamsCopyWith<$Res> implements $CpfParamsCopyWith<$Res> {
  factory _$$_CpfParamsCopyWith(
          _$_CpfParams value, $Res Function(_$_CpfParams) then) =
      __$$_CpfParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String document});
}

/// @nodoc
class __$$_CpfParamsCopyWithImpl<$Res>
    extends _$CpfParamsCopyWithImpl<$Res, _$_CpfParams>
    implements _$$_CpfParamsCopyWith<$Res> {
  __$$_CpfParamsCopyWithImpl(
      _$_CpfParams _value, $Res Function(_$_CpfParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? document = null,
  }) {
    return _then(_$_CpfParams(
      document: null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CpfParams implements _CpfParams {
  _$_CpfParams({required this.document});

  @override
  final String document;

  @override
  String toString() {
    return 'CpfParams(document: $document)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CpfParams &&
            (identical(other.document, document) ||
                other.document == document));
  }

  @override
  int get hashCode => Object.hash(runtimeType, document);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CpfParamsCopyWith<_$_CpfParams> get copyWith =>
      __$$_CpfParamsCopyWithImpl<_$_CpfParams>(this, _$identity);
}

abstract class _CpfParams implements CpfParams {
  factory _CpfParams({required final String document}) = _$_CpfParams;

  @override
  String get document;
  @override
  @JsonKey(ignore: true)
  _$$_CpfParamsCopyWith<_$_CpfParams> get copyWith =>
      throw _privateConstructorUsedError;
}
