// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_params_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentParamsModel _$PaymentParamsModelFromJson(Map<String, dynamic> json) {
  return _PaymentParamsModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentParamsModel {
  @JsonKey(name: 'type_of_payer_id')
  int get typeOfPayerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_id')
  int get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_of_payment_id')
  int get typeOfPaymentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_value')
  double get paymentValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_img_front')
  String? get paymentImgFront => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_img_back')
  String? get paymentImgBack => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_id')
  int? get companyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'third_part_cpf')
  String? get thirdPartCpf => throw _privateConstructorUsedError;
  @JsonKey(name: 'third_part_cnpj')
  String? get thirdPartCnpj => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentParamsModelCopyWith<PaymentParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentParamsModelCopyWith<$Res> {
  factory $PaymentParamsModelCopyWith(
          PaymentParamsModel value, $Res Function(PaymentParamsModel) then) =
      _$PaymentParamsModelCopyWithImpl<$Res, PaymentParamsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type_of_payer_id') int typeOfPayerId,
      @JsonKey(name: 'customer_id') int customerId,
      @JsonKey(name: 'type_of_payment_id') int typeOfPaymentId,
      @JsonKey(name: 'payment_value') double paymentValue,
      @JsonKey(name: 'payment_img_front') String? paymentImgFront,
      @JsonKey(name: 'payment_img_back') String? paymentImgBack,
      @JsonKey(name: 'company_id') int? companyId,
      @JsonKey(name: 'third_part_cpf') String? thirdPartCpf,
      @JsonKey(name: 'third_part_cnpj') String? thirdPartCnpj});
}

/// @nodoc
class _$PaymentParamsModelCopyWithImpl<$Res, $Val extends PaymentParamsModel>
    implements $PaymentParamsModelCopyWith<$Res> {
  _$PaymentParamsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeOfPayerId = null,
    Object? customerId = null,
    Object? typeOfPaymentId = null,
    Object? paymentValue = null,
    Object? paymentImgFront = freezed,
    Object? paymentImgBack = freezed,
    Object? companyId = freezed,
    Object? thirdPartCpf = freezed,
    Object? thirdPartCnpj = freezed,
  }) {
    return _then(_value.copyWith(
      typeOfPayerId: null == typeOfPayerId
          ? _value.typeOfPayerId
          : typeOfPayerId // ignore: cast_nullable_to_non_nullable
              as int,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      typeOfPaymentId: null == typeOfPaymentId
          ? _value.typeOfPaymentId
          : typeOfPaymentId // ignore: cast_nullable_to_non_nullable
              as int,
      paymentValue: null == paymentValue
          ? _value.paymentValue
          : paymentValue // ignore: cast_nullable_to_non_nullable
              as double,
      paymentImgFront: freezed == paymentImgFront
          ? _value.paymentImgFront
          : paymentImgFront // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentImgBack: freezed == paymentImgBack
          ? _value.paymentImgBack
          : paymentImgBack // ignore: cast_nullable_to_non_nullable
              as String?,
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
      thirdPartCpf: freezed == thirdPartCpf
          ? _value.thirdPartCpf
          : thirdPartCpf // ignore: cast_nullable_to_non_nullable
              as String?,
      thirdPartCnpj: freezed == thirdPartCnpj
          ? _value.thirdPartCnpj
          : thirdPartCnpj // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentParamsModelCopyWith<$Res>
    implements $PaymentParamsModelCopyWith<$Res> {
  factory _$$_PaymentParamsModelCopyWith(_$_PaymentParamsModel value,
          $Res Function(_$_PaymentParamsModel) then) =
      __$$_PaymentParamsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type_of_payer_id') int typeOfPayerId,
      @JsonKey(name: 'customer_id') int customerId,
      @JsonKey(name: 'type_of_payment_id') int typeOfPaymentId,
      @JsonKey(name: 'payment_value') double paymentValue,
      @JsonKey(name: 'payment_img_front') String? paymentImgFront,
      @JsonKey(name: 'payment_img_back') String? paymentImgBack,
      @JsonKey(name: 'company_id') int? companyId,
      @JsonKey(name: 'third_part_cpf') String? thirdPartCpf,
      @JsonKey(name: 'third_part_cnpj') String? thirdPartCnpj});
}

/// @nodoc
class __$$_PaymentParamsModelCopyWithImpl<$Res>
    extends _$PaymentParamsModelCopyWithImpl<$Res, _$_PaymentParamsModel>
    implements _$$_PaymentParamsModelCopyWith<$Res> {
  __$$_PaymentParamsModelCopyWithImpl(
      _$_PaymentParamsModel _value, $Res Function(_$_PaymentParamsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeOfPayerId = null,
    Object? customerId = null,
    Object? typeOfPaymentId = null,
    Object? paymentValue = null,
    Object? paymentImgFront = freezed,
    Object? paymentImgBack = freezed,
    Object? companyId = freezed,
    Object? thirdPartCpf = freezed,
    Object? thirdPartCnpj = freezed,
  }) {
    return _then(_$_PaymentParamsModel(
      typeOfPayerId: null == typeOfPayerId
          ? _value.typeOfPayerId
          : typeOfPayerId // ignore: cast_nullable_to_non_nullable
              as int,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      typeOfPaymentId: null == typeOfPaymentId
          ? _value.typeOfPaymentId
          : typeOfPaymentId // ignore: cast_nullable_to_non_nullable
              as int,
      paymentValue: null == paymentValue
          ? _value.paymentValue
          : paymentValue // ignore: cast_nullable_to_non_nullable
              as double,
      paymentImgFront: freezed == paymentImgFront
          ? _value.paymentImgFront
          : paymentImgFront // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentImgBack: freezed == paymentImgBack
          ? _value.paymentImgBack
          : paymentImgBack // ignore: cast_nullable_to_non_nullable
              as String?,
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
      thirdPartCpf: freezed == thirdPartCpf
          ? _value.thirdPartCpf
          : thirdPartCpf // ignore: cast_nullable_to_non_nullable
              as String?,
      thirdPartCnpj: freezed == thirdPartCnpj
          ? _value.thirdPartCnpj
          : thirdPartCnpj // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentParamsModel extends _PaymentParamsModel {
  _$_PaymentParamsModel(
      {@JsonKey(name: 'type_of_payer_id') required this.typeOfPayerId,
      @JsonKey(name: 'customer_id') required this.customerId,
      @JsonKey(name: 'type_of_payment_id') required this.typeOfPaymentId,
      @JsonKey(name: 'payment_value') required this.paymentValue,
      @JsonKey(name: 'payment_img_front') this.paymentImgFront,
      @JsonKey(name: 'payment_img_back') this.paymentImgBack,
      @JsonKey(name: 'company_id') this.companyId,
      @JsonKey(name: 'third_part_cpf') this.thirdPartCpf,
      @JsonKey(name: 'third_part_cnpj') this.thirdPartCnpj})
      : super._();

  factory _$_PaymentParamsModel.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentParamsModelFromJson(json);

  @override
  @JsonKey(name: 'type_of_payer_id')
  final int typeOfPayerId;
  @override
  @JsonKey(name: 'customer_id')
  final int customerId;
  @override
  @JsonKey(name: 'type_of_payment_id')
  final int typeOfPaymentId;
  @override
  @JsonKey(name: 'payment_value')
  final double paymentValue;
  @override
  @JsonKey(name: 'payment_img_front')
  final String? paymentImgFront;
  @override
  @JsonKey(name: 'payment_img_back')
  final String? paymentImgBack;
  @override
  @JsonKey(name: 'company_id')
  final int? companyId;
  @override
  @JsonKey(name: 'third_part_cpf')
  final String? thirdPartCpf;
  @override
  @JsonKey(name: 'third_part_cnpj')
  final String? thirdPartCnpj;

  @override
  String toString() {
    return 'PaymentParamsModel(typeOfPayerId: $typeOfPayerId, customerId: $customerId, typeOfPaymentId: $typeOfPaymentId, paymentValue: $paymentValue, paymentImgFront: $paymentImgFront, paymentImgBack: $paymentImgBack, companyId: $companyId, thirdPartCpf: $thirdPartCpf, thirdPartCnpj: $thirdPartCnpj)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentParamsModel &&
            (identical(other.typeOfPayerId, typeOfPayerId) ||
                other.typeOfPayerId == typeOfPayerId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.typeOfPaymentId, typeOfPaymentId) ||
                other.typeOfPaymentId == typeOfPaymentId) &&
            (identical(other.paymentValue, paymentValue) ||
                other.paymentValue == paymentValue) &&
            (identical(other.paymentImgFront, paymentImgFront) ||
                other.paymentImgFront == paymentImgFront) &&
            (identical(other.paymentImgBack, paymentImgBack) ||
                other.paymentImgBack == paymentImgBack) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.thirdPartCpf, thirdPartCpf) ||
                other.thirdPartCpf == thirdPartCpf) &&
            (identical(other.thirdPartCnpj, thirdPartCnpj) ||
                other.thirdPartCnpj == thirdPartCnpj));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      typeOfPayerId,
      customerId,
      typeOfPaymentId,
      paymentValue,
      paymentImgFront,
      paymentImgBack,
      companyId,
      thirdPartCpf,
      thirdPartCnpj);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentParamsModelCopyWith<_$_PaymentParamsModel> get copyWith =>
      __$$_PaymentParamsModelCopyWithImpl<_$_PaymentParamsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentParamsModelToJson(
      this,
    );
  }
}

abstract class _PaymentParamsModel extends PaymentParamsModel {
  factory _PaymentParamsModel(
      {@JsonKey(name: 'type_of_payer_id')
          required final int typeOfPayerId,
      @JsonKey(name: 'customer_id')
          required final int customerId,
      @JsonKey(name: 'type_of_payment_id')
          required final int typeOfPaymentId,
      @JsonKey(name: 'payment_value')
          required final double paymentValue,
      @JsonKey(name: 'payment_img_front')
          final String? paymentImgFront,
      @JsonKey(name: 'payment_img_back')
          final String? paymentImgBack,
      @JsonKey(name: 'company_id')
          final int? companyId,
      @JsonKey(name: 'third_part_cpf')
          final String? thirdPartCpf,
      @JsonKey(name: 'third_part_cnpj')
          final String? thirdPartCnpj}) = _$_PaymentParamsModel;
  _PaymentParamsModel._() : super._();

  factory _PaymentParamsModel.fromJson(Map<String, dynamic> json) =
      _$_PaymentParamsModel.fromJson;

  @override
  @JsonKey(name: 'type_of_payer_id')
  int get typeOfPayerId;
  @override
  @JsonKey(name: 'customer_id')
  int get customerId;
  @override
  @JsonKey(name: 'type_of_payment_id')
  int get typeOfPaymentId;
  @override
  @JsonKey(name: 'payment_value')
  double get paymentValue;
  @override
  @JsonKey(name: 'payment_img_front')
  String? get paymentImgFront;
  @override
  @JsonKey(name: 'payment_img_back')
  String? get paymentImgBack;
  @override
  @JsonKey(name: 'company_id')
  int? get companyId;
  @override
  @JsonKey(name: 'third_part_cpf')
  String? get thirdPartCpf;
  @override
  @JsonKey(name: 'third_part_cnpj')
  String? get thirdPartCnpj;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentParamsModelCopyWith<_$_PaymentParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
