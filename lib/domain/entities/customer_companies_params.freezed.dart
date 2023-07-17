// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_companies_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomerCompaniesParams {
  int get customerId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerCompaniesParamsCopyWith<CustomerCompaniesParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerCompaniesParamsCopyWith<$Res> {
  factory $CustomerCompaniesParamsCopyWith(CustomerCompaniesParams value,
          $Res Function(CustomerCompaniesParams) then) =
      _$CustomerCompaniesParamsCopyWithImpl<$Res, CustomerCompaniesParams>;
  @useResult
  $Res call({int customerId});
}

/// @nodoc
class _$CustomerCompaniesParamsCopyWithImpl<$Res,
        $Val extends CustomerCompaniesParams>
    implements $CustomerCompaniesParamsCopyWith<$Res> {
  _$CustomerCompaniesParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
  }) {
    return _then(_value.copyWith(
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CustomerCompaniesParamsCopyWith<$Res>
    implements $CustomerCompaniesParamsCopyWith<$Res> {
  factory _$$_CustomerCompaniesParamsCopyWith(_$_CustomerCompaniesParams value,
          $Res Function(_$_CustomerCompaniesParams) then) =
      __$$_CustomerCompaniesParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int customerId});
}

/// @nodoc
class __$$_CustomerCompaniesParamsCopyWithImpl<$Res>
    extends _$CustomerCompaniesParamsCopyWithImpl<$Res,
        _$_CustomerCompaniesParams>
    implements _$$_CustomerCompaniesParamsCopyWith<$Res> {
  __$$_CustomerCompaniesParamsCopyWithImpl(_$_CustomerCompaniesParams _value,
      $Res Function(_$_CustomerCompaniesParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
  }) {
    return _then(_$_CustomerCompaniesParams(
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CustomerCompaniesParams implements _CustomerCompaniesParams {
  _$_CustomerCompaniesParams({required this.customerId});

  @override
  final int customerId;

  @override
  String toString() {
    return 'CustomerCompaniesParams(customerId: $customerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerCompaniesParams &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomerCompaniesParamsCopyWith<_$_CustomerCompaniesParams>
      get copyWith =>
          __$$_CustomerCompaniesParamsCopyWithImpl<_$_CustomerCompaniesParams>(
              this, _$identity);
}

abstract class _CustomerCompaniesParams implements CustomerCompaniesParams {
  factory _CustomerCompaniesParams({required final int customerId}) =
      _$_CustomerCompaniesParams;

  @override
  int get customerId;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerCompaniesParamsCopyWith<_$_CustomerCompaniesParams>
      get copyWith => throw _privateConstructorUsedError;
}
