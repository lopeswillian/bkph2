// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pix_code_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PixCodeParams {
  int get customerId => throw _privateConstructorUsedError;
  double get paymentValue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PixCodeParamsCopyWith<PixCodeParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PixCodeParamsCopyWith<$Res> {
  factory $PixCodeParamsCopyWith(
          PixCodeParams value, $Res Function(PixCodeParams) then) =
      _$PixCodeParamsCopyWithImpl<$Res, PixCodeParams>;
  @useResult
  $Res call({int customerId, double paymentValue});
}

/// @nodoc
class _$PixCodeParamsCopyWithImpl<$Res, $Val extends PixCodeParams>
    implements $PixCodeParamsCopyWith<$Res> {
  _$PixCodeParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
    Object? paymentValue = null,
  }) {
    return _then(_value.copyWith(
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      paymentValue: null == paymentValue
          ? _value.paymentValue
          : paymentValue // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PixCodeParamsCopyWith<$Res>
    implements $PixCodeParamsCopyWith<$Res> {
  factory _$$_PixCodeParamsCopyWith(
          _$_PixCodeParams value, $Res Function(_$_PixCodeParams) then) =
      __$$_PixCodeParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int customerId, double paymentValue});
}

/// @nodoc
class __$$_PixCodeParamsCopyWithImpl<$Res>
    extends _$PixCodeParamsCopyWithImpl<$Res, _$_PixCodeParams>
    implements _$$_PixCodeParamsCopyWith<$Res> {
  __$$_PixCodeParamsCopyWithImpl(
      _$_PixCodeParams _value, $Res Function(_$_PixCodeParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
    Object? paymentValue = null,
  }) {
    return _then(_$_PixCodeParams(
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      paymentValue: null == paymentValue
          ? _value.paymentValue
          : paymentValue // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_PixCodeParams implements _PixCodeParams {
  _$_PixCodeParams({required this.customerId, required this.paymentValue});

  @override
  final int customerId;
  @override
  final double paymentValue;

  @override
  String toString() {
    return 'PixCodeParams(customerId: $customerId, paymentValue: $paymentValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PixCodeParams &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.paymentValue, paymentValue) ||
                other.paymentValue == paymentValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customerId, paymentValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PixCodeParamsCopyWith<_$_PixCodeParams> get copyWith =>
      __$$_PixCodeParamsCopyWithImpl<_$_PixCodeParams>(this, _$identity);
}

abstract class _PixCodeParams implements PixCodeParams {
  factory _PixCodeParams(
      {required final int customerId,
      required final double paymentValue}) = _$_PixCodeParams;

  @override
  int get customerId;
  @override
  double get paymentValue;
  @override
  @JsonKey(ignore: true)
  _$$_PixCodeParamsCopyWith<_$_PixCodeParams> get copyWith =>
      throw _privateConstructorUsedError;
}
