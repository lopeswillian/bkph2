// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_anticipation_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignAnticipationParams {
  String get customerId => throw _privateConstructorUsedError;
  String get anticipationId => throw _privateConstructorUsedError;
  bool get signed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignAnticipationParamsCopyWith<SignAnticipationParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignAnticipationParamsCopyWith<$Res> {
  factory $SignAnticipationParamsCopyWith(SignAnticipationParams value,
          $Res Function(SignAnticipationParams) then) =
      _$SignAnticipationParamsCopyWithImpl<$Res, SignAnticipationParams>;
  @useResult
  $Res call({String customerId, String anticipationId, bool signed});
}

/// @nodoc
class _$SignAnticipationParamsCopyWithImpl<$Res,
        $Val extends SignAnticipationParams>
    implements $SignAnticipationParamsCopyWith<$Res> {
  _$SignAnticipationParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
    Object? anticipationId = null,
    Object? signed = null,
  }) {
    return _then(_value.copyWith(
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      anticipationId: null == anticipationId
          ? _value.anticipationId
          : anticipationId // ignore: cast_nullable_to_non_nullable
              as String,
      signed: null == signed
          ? _value.signed
          : signed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignAnticipationParamsCopyWith<$Res>
    implements $SignAnticipationParamsCopyWith<$Res> {
  factory _$$_SignAnticipationParamsCopyWith(_$_SignAnticipationParams value,
          $Res Function(_$_SignAnticipationParams) then) =
      __$$_SignAnticipationParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String customerId, String anticipationId, bool signed});
}

/// @nodoc
class __$$_SignAnticipationParamsCopyWithImpl<$Res>
    extends _$SignAnticipationParamsCopyWithImpl<$Res,
        _$_SignAnticipationParams>
    implements _$$_SignAnticipationParamsCopyWith<$Res> {
  __$$_SignAnticipationParamsCopyWithImpl(_$_SignAnticipationParams _value,
      $Res Function(_$_SignAnticipationParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
    Object? anticipationId = null,
    Object? signed = null,
  }) {
    return _then(_$_SignAnticipationParams(
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      anticipationId: null == anticipationId
          ? _value.anticipationId
          : anticipationId // ignore: cast_nullable_to_non_nullable
              as String,
      signed: null == signed
          ? _value.signed
          : signed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SignAnticipationParams implements _SignAnticipationParams {
  _$_SignAnticipationParams(
      {required this.customerId,
      required this.anticipationId,
      required this.signed});

  @override
  final String customerId;
  @override
  final String anticipationId;
  @override
  final bool signed;

  @override
  String toString() {
    return 'SignAnticipationParams(customerId: $customerId, anticipationId: $anticipationId, signed: $signed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignAnticipationParams &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.anticipationId, anticipationId) ||
                other.anticipationId == anticipationId) &&
            (identical(other.signed, signed) || other.signed == signed));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, customerId, anticipationId, signed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignAnticipationParamsCopyWith<_$_SignAnticipationParams> get copyWith =>
      __$$_SignAnticipationParamsCopyWithImpl<_$_SignAnticipationParams>(
          this, _$identity);
}

abstract class _SignAnticipationParams implements SignAnticipationParams {
  factory _SignAnticipationParams(
      {required final String customerId,
      required final String anticipationId,
      required final bool signed}) = _$_SignAnticipationParams;

  @override
  String get customerId;
  @override
  String get anticipationId;
  @override
  bool get signed;
  @override
  @JsonKey(ignore: true)
  _$$_SignAnticipationParamsCopyWith<_$_SignAnticipationParams> get copyWith =>
      throw _privateConstructorUsedError;
}
