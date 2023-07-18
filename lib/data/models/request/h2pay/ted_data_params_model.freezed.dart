// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ted_data_params_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TedDataParamsModel _$TedDataParamsModelFromJson(Map<String, dynamic> json) {
  return _TedDataParamsModel.fromJson(json);
}

/// @nodoc
mixin _$TedDataParamsModel {
  @JsonKey(name: 'customer_id')
  int get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_value')
  double get paymentValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TedDataParamsModelCopyWith<TedDataParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TedDataParamsModelCopyWith<$Res> {
  factory $TedDataParamsModelCopyWith(
          TedDataParamsModel value, $Res Function(TedDataParamsModel) then) =
      _$TedDataParamsModelCopyWithImpl<$Res, TedDataParamsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'customer_id') int customerId,
      @JsonKey(name: 'payment_value') double paymentValue});
}

/// @nodoc
class _$TedDataParamsModelCopyWithImpl<$Res, $Val extends TedDataParamsModel>
    implements $TedDataParamsModelCopyWith<$Res> {
  _$TedDataParamsModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_TedDataParamsModelCopyWith<$Res>
    implements $TedDataParamsModelCopyWith<$Res> {
  factory _$$_TedDataParamsModelCopyWith(_$_TedDataParamsModel value,
          $Res Function(_$_TedDataParamsModel) then) =
      __$$_TedDataParamsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'customer_id') int customerId,
      @JsonKey(name: 'payment_value') double paymentValue});
}

/// @nodoc
class __$$_TedDataParamsModelCopyWithImpl<$Res>
    extends _$TedDataParamsModelCopyWithImpl<$Res, _$_TedDataParamsModel>
    implements _$$_TedDataParamsModelCopyWith<$Res> {
  __$$_TedDataParamsModelCopyWithImpl(
      _$_TedDataParamsModel _value, $Res Function(_$_TedDataParamsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
    Object? paymentValue = null,
  }) {
    return _then(_$_TedDataParamsModel(
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
class _$_TedDataParamsModel extends _TedDataParamsModel {
  _$_TedDataParamsModel(
      {@JsonKey(name: 'customer_id') required this.customerId,
      @JsonKey(name: 'payment_value') required this.paymentValue})
      : super._();

  factory _$_TedDataParamsModel.fromJson(Map<String, dynamic> json) =>
      _$$_TedDataParamsModelFromJson(json);

  @override
  @JsonKey(name: 'customer_id')
  final int customerId;
  @override
  @JsonKey(name: 'payment_value')
  final double paymentValue;

  @override
  String toString() {
    return 'TedDataParamsModel(customerId: $customerId, paymentValue: $paymentValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TedDataParamsModel &&
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
  _$$_TedDataParamsModelCopyWith<_$_TedDataParamsModel> get copyWith =>
      __$$_TedDataParamsModelCopyWithImpl<_$_TedDataParamsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TedDataParamsModelToJson(
      this,
    );
  }
}

abstract class _TedDataParamsModel extends TedDataParamsModel {
  factory _TedDataParamsModel(
          {@JsonKey(name: 'customer_id') required final int customerId,
          @JsonKey(name: 'payment_value') required final double paymentValue}) =
      _$_TedDataParamsModel;
  _TedDataParamsModel._() : super._();

  factory _TedDataParamsModel.fromJson(Map<String, dynamic> json) =
      _$_TedDataParamsModel.fromJson;

  @override
  @JsonKey(name: 'customer_id')
  int get customerId;
  @override
  @JsonKey(name: 'payment_value')
  double get paymentValue;
  @override
  @JsonKey(ignore: true)
  _$$_TedDataParamsModelCopyWith<_$_TedDataParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
