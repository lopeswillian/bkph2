// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pix_code_params_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PixCodeParamsModel _$PixCodeParamsModelFromJson(Map<String, dynamic> json) {
  return _PixCodeParamsModel.fromJson(json);
}

/// @nodoc
mixin _$PixCodeParamsModel {
  @JsonKey(name: 'customer_id')
  int get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_value')
  double get paymentValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PixCodeParamsModelCopyWith<PixCodeParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PixCodeParamsModelCopyWith<$Res> {
  factory $PixCodeParamsModelCopyWith(
          PixCodeParamsModel value, $Res Function(PixCodeParamsModel) then) =
      _$PixCodeParamsModelCopyWithImpl<$Res, PixCodeParamsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'customer_id') int customerId,
      @JsonKey(name: 'payment_value') double paymentValue});
}

/// @nodoc
class _$PixCodeParamsModelCopyWithImpl<$Res, $Val extends PixCodeParamsModel>
    implements $PixCodeParamsModelCopyWith<$Res> {
  _$PixCodeParamsModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_PixCodeParamsModelCopyWith<$Res>
    implements $PixCodeParamsModelCopyWith<$Res> {
  factory _$$_PixCodeParamsModelCopyWith(_$_PixCodeParamsModel value,
          $Res Function(_$_PixCodeParamsModel) then) =
      __$$_PixCodeParamsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'customer_id') int customerId,
      @JsonKey(name: 'payment_value') double paymentValue});
}

/// @nodoc
class __$$_PixCodeParamsModelCopyWithImpl<$Res>
    extends _$PixCodeParamsModelCopyWithImpl<$Res, _$_PixCodeParamsModel>
    implements _$$_PixCodeParamsModelCopyWith<$Res> {
  __$$_PixCodeParamsModelCopyWithImpl(
      _$_PixCodeParamsModel _value, $Res Function(_$_PixCodeParamsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
    Object? paymentValue = null,
  }) {
    return _then(_$_PixCodeParamsModel(
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
@JsonSerializable()
class _$_PixCodeParamsModel extends _PixCodeParamsModel {
  _$_PixCodeParamsModel(
      {@JsonKey(name: 'customer_id') required this.customerId,
      @JsonKey(name: 'payment_value') required this.paymentValue})
      : super._();

  factory _$_PixCodeParamsModel.fromJson(Map<String, dynamic> json) =>
      _$$_PixCodeParamsModelFromJson(json);

  @override
  @JsonKey(name: 'customer_id')
  final int customerId;
  @override
  @JsonKey(name: 'payment_value')
  final double paymentValue;

  @override
  String toString() {
    return 'PixCodeParamsModel(customerId: $customerId, paymentValue: $paymentValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PixCodeParamsModel &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.paymentValue, paymentValue) ||
                other.paymentValue == paymentValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, customerId, paymentValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PixCodeParamsModelCopyWith<_$_PixCodeParamsModel> get copyWith =>
      __$$_PixCodeParamsModelCopyWithImpl<_$_PixCodeParamsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PixCodeParamsModelToJson(
      this,
    );
  }
}

abstract class _PixCodeParamsModel extends PixCodeParamsModel {
  factory _PixCodeParamsModel(
          {@JsonKey(name: 'customer_id') required final int customerId,
          @JsonKey(name: 'payment_value') required final double paymentValue}) =
      _$_PixCodeParamsModel;
  _PixCodeParamsModel._() : super._();

  factory _PixCodeParamsModel.fromJson(Map<String, dynamic> json) =
      _$_PixCodeParamsModel.fromJson;

  @override
  @JsonKey(name: 'customer_id')
  int get customerId;
  @override
  @JsonKey(name: 'payment_value')
  double get paymentValue;
  @override
  @JsonKey(ignore: true)
  _$$_PixCodeParamsModelCopyWith<_$_PixCodeParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
