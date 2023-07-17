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
  double get valueToPay => throw _privateConstructorUsedError;
  int get typeOfPayment => throw _privateConstructorUsedError;
  String get paymentImgFront => throw _privateConstructorUsedError;
  String get paymentImgBack => throw _privateConstructorUsedError;
  String get thirdPartCpf => throw _privateConstructorUsedError;
  String get thirdPartCnpj => throw _privateConstructorUsedError;
  CompanyInfo? get selectedCustomerCompany =>
      throw _privateConstructorUsedError;
  AnticipationWithDischarge? get anticipationWithDischarge =>
      throw _privateConstructorUsedError;
  BcoCnpjInfo? get bcoCnpjInfo => throw _privateConstructorUsedError;
  BcoCpfInfo? get bcoCpfInfo => throw _privateConstructorUsedError;

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
      double valueToPay,
      int typeOfPayment,
      String paymentImgFront,
      String paymentImgBack,
      String thirdPartCpf,
      String thirdPartCnpj,
      CompanyInfo? selectedCustomerCompany,
      AnticipationWithDischarge? anticipationWithDischarge,
      BcoCnpjInfo? bcoCnpjInfo,
      BcoCpfInfo? bcoCpfInfo});

  $CompanyInfoCopyWith<$Res>? get selectedCustomerCompany;
  $AnticipationWithDischargeCopyWith<$Res>? get anticipationWithDischarge;
  $BcoCnpjInfoCopyWith<$Res>? get bcoCnpjInfo;
  $BcoCpfInfoCopyWith<$Res>? get bcoCpfInfo;
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
    Object? valueToPay = null,
    Object? typeOfPayment = null,
    Object? paymentImgFront = null,
    Object? paymentImgBack = null,
    Object? thirdPartCpf = null,
    Object? thirdPartCnpj = null,
    Object? selectedCustomerCompany = freezed,
    Object? anticipationWithDischarge = freezed,
    Object? bcoCnpjInfo = freezed,
    Object? bcoCpfInfo = freezed,
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
      thirdPartCpf: null == thirdPartCpf
          ? _value.thirdPartCpf
          : thirdPartCpf // ignore: cast_nullable_to_non_nullable
              as String,
      thirdPartCnpj: null == thirdPartCnpj
          ? _value.thirdPartCnpj
          : thirdPartCnpj // ignore: cast_nullable_to_non_nullable
              as String,
      selectedCustomerCompany: freezed == selectedCustomerCompany
          ? _value.selectedCustomerCompany
          : selectedCustomerCompany // ignore: cast_nullable_to_non_nullable
              as CompanyInfo?,
      anticipationWithDischarge: freezed == anticipationWithDischarge
          ? _value.anticipationWithDischarge
          : anticipationWithDischarge // ignore: cast_nullable_to_non_nullable
              as AnticipationWithDischarge?,
      bcoCnpjInfo: freezed == bcoCnpjInfo
          ? _value.bcoCnpjInfo
          : bcoCnpjInfo // ignore: cast_nullable_to_non_nullable
              as BcoCnpjInfo?,
      bcoCpfInfo: freezed == bcoCpfInfo
          ? _value.bcoCpfInfo
          : bcoCpfInfo // ignore: cast_nullable_to_non_nullable
              as BcoCpfInfo?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CompanyInfoCopyWith<$Res>? get selectedCustomerCompany {
    if (_value.selectedCustomerCompany == null) {
      return null;
    }

    return $CompanyInfoCopyWith<$Res>(_value.selectedCustomerCompany!, (value) {
      return _then(_value.copyWith(selectedCustomerCompany: value) as $Val);
    });
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

  @override
  @pragma('vm:prefer-inline')
  $BcoCnpjInfoCopyWith<$Res>? get bcoCnpjInfo {
    if (_value.bcoCnpjInfo == null) {
      return null;
    }

    return $BcoCnpjInfoCopyWith<$Res>(_value.bcoCnpjInfo!, (value) {
      return _then(_value.copyWith(bcoCnpjInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BcoCpfInfoCopyWith<$Res>? get bcoCpfInfo {
    if (_value.bcoCpfInfo == null) {
      return null;
    }

    return $BcoCpfInfoCopyWith<$Res>(_value.bcoCpfInfo!, (value) {
      return _then(_value.copyWith(bcoCpfInfo: value) as $Val);
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
      double valueToPay,
      int typeOfPayment,
      String paymentImgFront,
      String paymentImgBack,
      String thirdPartCpf,
      String thirdPartCnpj,
      CompanyInfo? selectedCustomerCompany,
      AnticipationWithDischarge? anticipationWithDischarge,
      BcoCnpjInfo? bcoCnpjInfo,
      BcoCpfInfo? bcoCpfInfo});

  @override
  $CompanyInfoCopyWith<$Res>? get selectedCustomerCompany;
  @override
  $AnticipationWithDischargeCopyWith<$Res>? get anticipationWithDischarge;
  @override
  $BcoCnpjInfoCopyWith<$Res>? get bcoCnpjInfo;
  @override
  $BcoCpfInfoCopyWith<$Res>? get bcoCpfInfo;
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
    Object? valueToPay = null,
    Object? typeOfPayment = null,
    Object? paymentImgFront = null,
    Object? paymentImgBack = null,
    Object? thirdPartCpf = null,
    Object? thirdPartCnpj = null,
    Object? selectedCustomerCompany = freezed,
    Object? anticipationWithDischarge = freezed,
    Object? bcoCnpjInfo = freezed,
    Object? bcoCpfInfo = freezed,
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
      thirdPartCpf: null == thirdPartCpf
          ? _value.thirdPartCpf
          : thirdPartCpf // ignore: cast_nullable_to_non_nullable
              as String,
      thirdPartCnpj: null == thirdPartCnpj
          ? _value.thirdPartCnpj
          : thirdPartCnpj // ignore: cast_nullable_to_non_nullable
              as String,
      selectedCustomerCompany: freezed == selectedCustomerCompany
          ? _value.selectedCustomerCompany
          : selectedCustomerCompany // ignore: cast_nullable_to_non_nullable
              as CompanyInfo?,
      anticipationWithDischarge: freezed == anticipationWithDischarge
          ? _value.anticipationWithDischarge
          : anticipationWithDischarge // ignore: cast_nullable_to_non_nullable
              as AnticipationWithDischarge?,
      bcoCnpjInfo: freezed == bcoCnpjInfo
          ? _value.bcoCnpjInfo
          : bcoCnpjInfo // ignore: cast_nullable_to_non_nullable
              as BcoCnpjInfo?,
      bcoCpfInfo: freezed == bcoCpfInfo
          ? _value.bcoCpfInfo
          : bcoCpfInfo // ignore: cast_nullable_to_non_nullable
              as BcoCpfInfo?,
    ));
  }
}

/// @nodoc

class _$_PaymentState implements _PaymentState {
  const _$_PaymentState(
      {this.loading = false,
      this.error = '',
      this.valueToPay = 0,
      this.typeOfPayment = 1,
      this.paymentImgFront = '',
      this.paymentImgBack = '',
      this.thirdPartCpf = '',
      this.thirdPartCnpj = '',
      this.selectedCustomerCompany,
      this.anticipationWithDischarge,
      this.bcoCnpjInfo,
      this.bcoCpfInfo});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final String error;
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
  @JsonKey()
  final String thirdPartCpf;
  @override
  @JsonKey()
  final String thirdPartCnpj;
  @override
  final CompanyInfo? selectedCustomerCompany;
  @override
  final AnticipationWithDischarge? anticipationWithDischarge;
  @override
  final BcoCnpjInfo? bcoCnpjInfo;
  @override
  final BcoCpfInfo? bcoCpfInfo;

  @override
  String toString() {
    return 'PaymentState(loading: $loading, error: $error, valueToPay: $valueToPay, typeOfPayment: $typeOfPayment, paymentImgFront: $paymentImgFront, paymentImgBack: $paymentImgBack, thirdPartCpf: $thirdPartCpf, thirdPartCnpj: $thirdPartCnpj, selectedCustomerCompany: $selectedCustomerCompany, anticipationWithDischarge: $anticipationWithDischarge, bcoCnpjInfo: $bcoCnpjInfo, bcoCpfInfo: $bcoCpfInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.valueToPay, valueToPay) ||
                other.valueToPay == valueToPay) &&
            (identical(other.typeOfPayment, typeOfPayment) ||
                other.typeOfPayment == typeOfPayment) &&
            (identical(other.paymentImgFront, paymentImgFront) ||
                other.paymentImgFront == paymentImgFront) &&
            (identical(other.paymentImgBack, paymentImgBack) ||
                other.paymentImgBack == paymentImgBack) &&
            (identical(other.thirdPartCpf, thirdPartCpf) ||
                other.thirdPartCpf == thirdPartCpf) &&
            (identical(other.thirdPartCnpj, thirdPartCnpj) ||
                other.thirdPartCnpj == thirdPartCnpj) &&
            (identical(
                    other.selectedCustomerCompany, selectedCustomerCompany) ||
                other.selectedCustomerCompany == selectedCustomerCompany) &&
            (identical(other.anticipationWithDischarge,
                    anticipationWithDischarge) ||
                other.anticipationWithDischarge == anticipationWithDischarge) &&
            (identical(other.bcoCnpjInfo, bcoCnpjInfo) ||
                other.bcoCnpjInfo == bcoCnpjInfo) &&
            (identical(other.bcoCpfInfo, bcoCpfInfo) ||
                other.bcoCpfInfo == bcoCpfInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      error,
      valueToPay,
      typeOfPayment,
      paymentImgFront,
      paymentImgBack,
      thirdPartCpf,
      thirdPartCnpj,
      selectedCustomerCompany,
      anticipationWithDischarge,
      bcoCnpjInfo,
      bcoCpfInfo);

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
      final double valueToPay,
      final int typeOfPayment,
      final String paymentImgFront,
      final String paymentImgBack,
      final String thirdPartCpf,
      final String thirdPartCnpj,
      final CompanyInfo? selectedCustomerCompany,
      final AnticipationWithDischarge? anticipationWithDischarge,
      final BcoCnpjInfo? bcoCnpjInfo,
      final BcoCpfInfo? bcoCpfInfo}) = _$_PaymentState;

  @override
  bool get loading;
  @override
  String get error;
  @override
  double get valueToPay;
  @override
  int get typeOfPayment;
  @override
  String get paymentImgFront;
  @override
  String get paymentImgBack;
  @override
  String get thirdPartCpf;
  @override
  String get thirdPartCnpj;
  @override
  CompanyInfo? get selectedCustomerCompany;
  @override
  AnticipationWithDischarge? get anticipationWithDischarge;
  @override
  BcoCnpjInfo? get bcoCnpjInfo;
  @override
  BcoCpfInfo? get bcoCpfInfo;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentStateCopyWith<_$_PaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}
