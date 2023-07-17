// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sms_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SmsParams {
  String get cpf => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get cellphone => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SmsParamsCopyWith<SmsParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmsParamsCopyWith<$Res> {
  factory $SmsParamsCopyWith(SmsParams value, $Res Function(SmsParams) then) =
      _$SmsParamsCopyWithImpl<$Res, SmsParams>;
  @useResult
  $Res call(
      {String cpf, String name, String cellphone, String email, String? code});
}

/// @nodoc
class _$SmsParamsCopyWithImpl<$Res, $Val extends SmsParams>
    implements $SmsParamsCopyWith<$Res> {
  _$SmsParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cpf = null,
    Object? name = null,
    Object? cellphone = null,
    Object? email = null,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      cpf: null == cpf
          ? _value.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cellphone: null == cellphone
          ? _value.cellphone
          : cellphone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SmsParamsCopyWith<$Res> implements $SmsParamsCopyWith<$Res> {
  factory _$$_SmsParamsCopyWith(
          _$_SmsParams value, $Res Function(_$_SmsParams) then) =
      __$$_SmsParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String cpf, String name, String cellphone, String email, String? code});
}

/// @nodoc
class __$$_SmsParamsCopyWithImpl<$Res>
    extends _$SmsParamsCopyWithImpl<$Res, _$_SmsParams>
    implements _$$_SmsParamsCopyWith<$Res> {
  __$$_SmsParamsCopyWithImpl(
      _$_SmsParams _value, $Res Function(_$_SmsParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cpf = null,
    Object? name = null,
    Object? cellphone = null,
    Object? email = null,
    Object? code = freezed,
  }) {
    return _then(_$_SmsParams(
      cpf: null == cpf
          ? _value.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cellphone: null == cellphone
          ? _value.cellphone
          : cellphone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SmsParams implements _SmsParams {
  _$_SmsParams(
      {required this.cpf,
      required this.name,
      required this.cellphone,
      required this.email,
      this.code});

  @override
  final String cpf;
  @override
  final String name;
  @override
  final String cellphone;
  @override
  final String email;
  @override
  final String? code;

  @override
  String toString() {
    return 'SmsParams(cpf: $cpf, name: $name, cellphone: $cellphone, email: $email, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SmsParams &&
            (identical(other.cpf, cpf) || other.cpf == cpf) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cellphone, cellphone) ||
                other.cellphone == cellphone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, cpf, name, cellphone, email, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SmsParamsCopyWith<_$_SmsParams> get copyWith =>
      __$$_SmsParamsCopyWithImpl<_$_SmsParams>(this, _$identity);
}

abstract class _SmsParams implements SmsParams {
  factory _SmsParams(
      {required final String cpf,
      required final String name,
      required final String cellphone,
      required final String email,
      final String? code}) = _$_SmsParams;

  @override
  String get cpf;
  @override
  String get name;
  @override
  String get cellphone;
  @override
  String get email;
  @override
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$$_SmsParamsCopyWith<_$_SmsParams> get copyWith =>
      throw _privateConstructorUsedError;
}
