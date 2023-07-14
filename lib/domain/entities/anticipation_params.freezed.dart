// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anticipation_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnticipationParams {
  int get customerId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnticipationParamsCopyWith<AnticipationParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnticipationParamsCopyWith<$Res> {
  factory $AnticipationParamsCopyWith(
          AnticipationParams value, $Res Function(AnticipationParams) then) =
      _$AnticipationParamsCopyWithImpl<$Res, AnticipationParams>;
  @useResult
  $Res call({int customerId});
}

/// @nodoc
class _$AnticipationParamsCopyWithImpl<$Res, $Val extends AnticipationParams>
    implements $AnticipationParamsCopyWith<$Res> {
  _$AnticipationParamsCopyWithImpl(this._value, this._then);

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
abstract class _$$_AnticipationParamsCopyWith<$Res>
    implements $AnticipationParamsCopyWith<$Res> {
  factory _$$_AnticipationParamsCopyWith(_$_AnticipationParams value,
          $Res Function(_$_AnticipationParams) then) =
      __$$_AnticipationParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int customerId});
}

/// @nodoc
class __$$_AnticipationParamsCopyWithImpl<$Res>
    extends _$AnticipationParamsCopyWithImpl<$Res, _$_AnticipationParams>
    implements _$$_AnticipationParamsCopyWith<$Res> {
  __$$_AnticipationParamsCopyWithImpl(
      _$_AnticipationParams _value, $Res Function(_$_AnticipationParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
  }) {
    return _then(_$_AnticipationParams(
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AnticipationParams implements _AnticipationParams {
  _$_AnticipationParams({required this.customerId});

  @override
  final int customerId;

  @override
  String toString() {
    return 'AnticipationParams(customerId: $customerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnticipationParams &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnticipationParamsCopyWith<_$_AnticipationParams> get copyWith =>
      __$$_AnticipationParamsCopyWithImpl<_$_AnticipationParams>(
          this, _$identity);
}

abstract class _AnticipationParams implements AnticipationParams {
  factory _AnticipationParams({required final int customerId}) =
      _$_AnticipationParams;

  @override
  int get customerId;
  @override
  @JsonKey(ignore: true)
  _$$_AnticipationParamsCopyWith<_$_AnticipationParams> get copyWith =>
      throw _privateConstructorUsedError;
}
