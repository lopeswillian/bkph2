// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recovery_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecoveryParams {
  String get identifier => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecoveryParamsCopyWith<RecoveryParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecoveryParamsCopyWith<$Res> {
  factory $RecoveryParamsCopyWith(
          RecoveryParams value, $Res Function(RecoveryParams) then) =
      _$RecoveryParamsCopyWithImpl<$Res, RecoveryParams>;
  @useResult
  $Res call({String identifier});
}

/// @nodoc
class _$RecoveryParamsCopyWithImpl<$Res, $Val extends RecoveryParams>
    implements $RecoveryParamsCopyWith<$Res> {
  _$RecoveryParamsCopyWithImpl(this._value, this._then);

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
abstract class _$$_RecoveryParamsCopyWith<$Res>
    implements $RecoveryParamsCopyWith<$Res> {
  factory _$$_RecoveryParamsCopyWith(
          _$_RecoveryParams value, $Res Function(_$_RecoveryParams) then) =
      __$$_RecoveryParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String identifier});
}

/// @nodoc
class __$$_RecoveryParamsCopyWithImpl<$Res>
    extends _$RecoveryParamsCopyWithImpl<$Res, _$_RecoveryParams>
    implements _$$_RecoveryParamsCopyWith<$Res> {
  __$$_RecoveryParamsCopyWithImpl(
      _$_RecoveryParams _value, $Res Function(_$_RecoveryParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
  }) {
    return _then(_$_RecoveryParams(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RecoveryParams implements _RecoveryParams {
  _$_RecoveryParams({required this.identifier});

  @override
  final String identifier;

  @override
  String toString() {
    return 'RecoveryParams(identifier: $identifier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecoveryParams &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier));
  }

  @override
  int get hashCode => Object.hash(runtimeType, identifier);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecoveryParamsCopyWith<_$_RecoveryParams> get copyWith =>
      __$$_RecoveryParamsCopyWithImpl<_$_RecoveryParams>(this, _$identity);
}

abstract class _RecoveryParams implements RecoveryParams {
  factory _RecoveryParams({required final String identifier}) =
      _$_RecoveryParams;

  @override
  String get identifier;
  @override
  @JsonKey(ignore: true)
  _$$_RecoveryParamsCopyWith<_$_RecoveryParams> get copyWith =>
      throw _privateConstructorUsedError;
}
