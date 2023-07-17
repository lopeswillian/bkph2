// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VerifyState {
  bool get loading => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VerifyStateCopyWith<VerifyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyStateCopyWith<$Res> {
  factory $VerifyStateCopyWith(
          VerifyState value, $Res Function(VerifyState) then) =
      _$VerifyStateCopyWithImpl<$Res, VerifyState>;
  @useResult
  $Res call({bool loading, String error, String phone});
}

/// @nodoc
class _$VerifyStateCopyWithImpl<$Res, $Val extends VerifyState>
    implements $VerifyStateCopyWith<$Res> {
  _$VerifyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? phone = null,
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
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VerifyStateCopyWith<$Res>
    implements $VerifyStateCopyWith<$Res> {
  factory _$$_VerifyStateCopyWith(
          _$_VerifyState value, $Res Function(_$_VerifyState) then) =
      __$$_VerifyStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, String error, String phone});
}

/// @nodoc
class __$$_VerifyStateCopyWithImpl<$Res>
    extends _$VerifyStateCopyWithImpl<$Res, _$_VerifyState>
    implements _$$_VerifyStateCopyWith<$Res> {
  __$$_VerifyStateCopyWithImpl(
      _$_VerifyState _value, $Res Function(_$_VerifyState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? phone = null,
  }) {
    return _then(_$_VerifyState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_VerifyState implements _VerifyState {
  const _$_VerifyState(
      {this.loading = false, this.error = '', this.phone = ''});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final String phone;

  @override
  String toString() {
    return 'VerifyState(loading: $loading, error: $error, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerifyState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, error, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerifyStateCopyWith<_$_VerifyState> get copyWith =>
      __$$_VerifyStateCopyWithImpl<_$_VerifyState>(this, _$identity);
}

abstract class _VerifyState implements VerifyState {
  const factory _VerifyState(
      {final bool loading,
      final String error,
      final String phone}) = _$_VerifyState;

  @override
  bool get loading;
  @override
  String get error;
  @override
  String get phone;
  @override
  @JsonKey(ignore: true)
  _$$_VerifyStateCopyWith<_$_VerifyState> get copyWith =>
      throw _privateConstructorUsedError;
}
