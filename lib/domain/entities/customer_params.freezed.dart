// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomerParams {
  String get identifier => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerParamsCopyWith<CustomerParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerParamsCopyWith<$Res> {
  factory $CustomerParamsCopyWith(
          CustomerParams value, $Res Function(CustomerParams) then) =
      _$CustomerParamsCopyWithImpl<$Res, CustomerParams>;
  @useResult
  $Res call({String identifier});
}

/// @nodoc
class _$CustomerParamsCopyWithImpl<$Res, $Val extends CustomerParams>
    implements $CustomerParamsCopyWith<$Res> {
  _$CustomerParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
  }) {
    return _then(_value.copyWith(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CustomerParamsCopyWith<$Res>
    implements $CustomerParamsCopyWith<$Res> {
  factory _$$_CustomerParamsCopyWith(
          _$_CustomerParams value, $Res Function(_$_CustomerParams) then) =
      __$$_CustomerParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String identifier});
}

/// @nodoc
class __$$_CustomerParamsCopyWithImpl<$Res>
    extends _$CustomerParamsCopyWithImpl<$Res, _$_CustomerParams>
    implements _$$_CustomerParamsCopyWith<$Res> {
  __$$_CustomerParamsCopyWithImpl(
      _$_CustomerParams _value, $Res Function(_$_CustomerParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
  }) {
    return _then(_$_CustomerParams(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CustomerParams implements _CustomerParams {
  _$_CustomerParams({required this.identifier});

  @override
  final String identifier;

  @override
  String toString() {
    return 'CustomerParams(identifier: $identifier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerParams &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier));
  }

  @override
  int get hashCode => Object.hash(runtimeType, identifier);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomerParamsCopyWith<_$_CustomerParams> get copyWith =>
      __$$_CustomerParamsCopyWithImpl<_$_CustomerParams>(this, _$identity);
}

abstract class _CustomerParams implements CustomerParams {
  factory _CustomerParams({required final String identifier}) =
      _$_CustomerParams;

  @override
  String get identifier;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerParamsCopyWith<_$_CustomerParams> get copyWith =>
      throw _privateConstructorUsedError;
}
