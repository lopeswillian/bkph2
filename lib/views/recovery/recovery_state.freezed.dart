// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recovery_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecoveryState {
  bool get loading => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecoveryStateCopyWith<RecoveryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecoveryStateCopyWith<$Res> {
  factory $RecoveryStateCopyWith(
          RecoveryState value, $Res Function(RecoveryState) then) =
      _$RecoveryStateCopyWithImpl<$Res, RecoveryState>;
  @useResult
  $Res call({bool loading, String error, bool success});
}

/// @nodoc
class _$RecoveryStateCopyWithImpl<$Res, $Val extends RecoveryState>
    implements $RecoveryStateCopyWith<$Res> {
  _$RecoveryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? success = null,
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
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecoveryStateCopyWith<$Res>
    implements $RecoveryStateCopyWith<$Res> {
  factory _$$_RecoveryStateCopyWith(
          _$_RecoveryState value, $Res Function(_$_RecoveryState) then) =
      __$$_RecoveryStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, String error, bool success});
}

/// @nodoc
class __$$_RecoveryStateCopyWithImpl<$Res>
    extends _$RecoveryStateCopyWithImpl<$Res, _$_RecoveryState>
    implements _$$_RecoveryStateCopyWith<$Res> {
  __$$_RecoveryStateCopyWithImpl(
      _$_RecoveryState _value, $Res Function(_$_RecoveryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? success = null,
  }) {
    return _then(_$_RecoveryState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RecoveryState implements _RecoveryState {
  const _$_RecoveryState(
      {this.loading = false, this.error = '', this.success = false});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final bool success;

  @override
  String toString() {
    return 'RecoveryState(loading: $loading, error: $error, success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecoveryState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, error, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecoveryStateCopyWith<_$_RecoveryState> get copyWith =>
      __$$_RecoveryStateCopyWithImpl<_$_RecoveryState>(this, _$identity);
}

abstract class _RecoveryState implements RecoveryState {
  const factory _RecoveryState(
      {final bool loading,
      final String error,
      final bool success}) = _$_RecoveryState;

  @override
  bool get loading;
  @override
  String get error;
  @override
  bool get success;
  @override
  @JsonKey(ignore: true)
  _$$_RecoveryStateCopyWith<_$_RecoveryState> get copyWith =>
      throw _privateConstructorUsedError;
}
