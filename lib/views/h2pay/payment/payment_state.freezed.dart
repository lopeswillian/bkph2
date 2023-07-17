// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentState {
  bool get loading => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  AnticipationWithDischarge? get anticipationWithDischarge =>
      throw _privateConstructorUsedError;
  double get valueToPay => throw _privateConstructorUsedError;
  int get typeOfPayment => throw _privateConstructorUsedError;
  String get paymentImgFront => throw _privateConstructorUsedError;
  String get paymentImgBack => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentStateCopyWith<PaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res, PaymentState>;
  @useResult
  $Res call(
      {bool loading,
      String error,
      AnticipationWithDischarge? anticipationWithDischarge,
      double valueToPay,
      int typeOfPayment,
      String paymentImgFront,
      String paymentImgBack});

  $AnticipationWithDischargeCopyWith<$Res>? get anticipationWithDischarge;
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res, $Val extends PaymentState>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? anticipationWithDischarge = freezed,
    Object? valueToPay = null,
    Object? typeOfPayment = null,
    Object? paymentImgFront = null,
    Object? paymentImgBack = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      anticipationWithDischarge: freezed == anticipationWithDischarge
          ? _value.anticipationWithDischarge
          : anticipationWithDischarge // ignore: cast_nullable_to_non_nullable
              as AnticipationWithDischarge?,
      valueToPay: null == valueToPay
          ? _value.valueToPay
          : valueToPay // ignore: cast_nullable_to_non_nullable
              as double,
      typeOfPayment: null == typeOfPayment
          ? _value.typeOfPayment
          : typeOfPayment // ignore: cast_nullable_to_non_nullable
              as int,
      paymentImgFront: null == paymentImgFront
          ? _value.paymentImgFront
          : paymentImgFront // ignore: cast_nullable_to_non_nullable
              as String,
      paymentImgBack: null == paymentImgBack
          ? _value.paymentImgBack
          : paymentImgBack // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AnticipationWithDischargeCopyWith<$Res>? get anticipationWithDischarge {
    if (_value.anticipationWithDischarge == null) {
      return null;
    }

    return $AnticipationWithDischargeCopyWith<$Res>(
        _value.anticipationWithDischarge!, (value) {
      return _then(_value.copyWith(anticipationWithDischarge: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PaymentStateCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory _$$_PaymentStateCopyWith(
          _$_PaymentState value, $Res Function(_$_PaymentState) then) =
      __$$_PaymentStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      String error,
      AnticipationWithDischarge? anticipationWithDischarge,
      double valueToPay,
      int typeOfPayment,
      String paymentImgFront,
      String paymentImgBack});

  @override
  $AnticipationWithDischargeCopyWith<$Res>? get anticipationWithDischarge;
}

/// @nodoc
class __$$_PaymentStateCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$_PaymentState>
    implements _$$_PaymentStateCopyWith<$Res> {
  __$$_PaymentStateCopyWithImpl(
      _$_PaymentState _value, $Res Function(_$_PaymentState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? anticipationWithDischarge = freezed,
    Object? valueToPay = null,
    Object? typeOfPayment = null,
    Object? paymentImgFront = null,
    Object? paymentImgBack = null,
  }) {
    return _then(_$_PaymentState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      anticipationWithDischarge: freezed == anticipationWithDischarge
          ? _value.anticipationWithDischarge
          : anticipationWithDischarge // ignore: cast_nullable_to_non_nullable
              as AnticipationWithDischarge?,
      valueToPay: null == valueToPay
          ? _value.valueToPay
          : valueToPay // ignore: cast_nullable_to_non_nullable
              as double,
      typeOfPayment: null == typeOfPayment
          ? _value.typeOfPayment
          : typeOfPayment // ignore: cast_nullable_to_non_nullable
              as int,
      paymentImgFront: null == paymentImgFront
          ? _value.paymentImgFront
          : paymentImgFront // ignore: cast_nullable_to_non_nullable
              as String,
      paymentImgBack: null == paymentImgBack
          ? _value.paymentImgBack
          : paymentImgBack // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PaymentState implements _PaymentState {
  const _$_PaymentState(
      {this.loading = false,
      this.error = '',
      this.anticipationWithDischarge,
      this.valueToPay = 0,
      this.typeOfPayment = 1,
      this.paymentImgFront = '',
      this.paymentImgBack = ''});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final String error;
  @override
  final AnticipationWithDischarge? anticipationWithDischarge;
  @override
  @JsonKey()
  final double valueToPay;
  @override
  @JsonKey()
  final int typeOfPayment;
  @override
  @JsonKey()
  final String paymentImgFront;
  @override
  @JsonKey()
  final String paymentImgBack;

  @override
  String toString() {
    return 'PaymentState(loading: $loading, error: $error, anticipationWithDischarge: $anticipationWithDischarge, valueToPay: $valueToPay, typeOfPayment: $typeOfPayment, paymentImgFront: $paymentImgFront, paymentImgBack: $paymentImgBack)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.anticipationWithDischarge,
                    anticipationWithDischarge) ||
                other.anticipationWithDischarge == anticipationWithDischarge) &&
            (identical(other.valueToPay, valueToPay) ||
                other.valueToPay == valueToPay) &&
            (identical(other.typeOfPayment, typeOfPayment) ||
                other.typeOfPayment == typeOfPayment) &&
            (identical(other.paymentImgFront, paymentImgFront) ||
                other.paymentImgFront == paymentImgFront) &&
            (identical(other.paymentImgBack, paymentImgBack) ||
                other.paymentImgBack == paymentImgBack));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      error,
      anticipationWithDischarge,
      valueToPay,
      typeOfPayment,
      paymentImgFront,
      paymentImgBack);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentStateCopyWith<_$_PaymentState> get copyWith =>
      __$$_PaymentStateCopyWithImpl<_$_PaymentState>(this, _$identity);
}

abstract class _PaymentState implements PaymentState {
  const factory _PaymentState(
      {final bool loading,
      final String error,
      final AnticipationWithDischarge? anticipationWithDischarge,
      final double valueToPay,
      final int typeOfPayment,
      final String paymentImgFront,
      final String paymentImgBack}) = _$_PaymentState;

  @override
  bool get loading;
  @override
  String get error;
  @override
  AnticipationWithDischarge? get anticipationWithDischarge;
  @override
  double get valueToPay;
  @override
  int get typeOfPayment;
  @override
  String get paymentImgFront;
  @override
  String get paymentImgBack;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentStateCopyWith<_$_PaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}
