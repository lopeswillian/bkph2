// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileState {
  bool get loading => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  bool get updated => throw _privateConstructorUsedError;
  ProfileInfo? get profile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call({bool loading, String error, bool updated, ProfileInfo? profile});

  $ProfileInfoCopyWith<$Res>? get profile;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? updated = null,
    Object? profile = freezed,
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
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as bool,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileInfo?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileInfoCopyWith<$Res>? get profile {
    if (_value.profile == null) {
      return null;
    }

    return $ProfileInfoCopyWith<$Res>(_value.profile!, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$_ProfileStateCopyWith(
          _$_ProfileState value, $Res Function(_$_ProfileState) then) =
      __$$_ProfileStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, String error, bool updated, ProfileInfo? profile});

  @override
  $ProfileInfoCopyWith<$Res>? get profile;
}

/// @nodoc
class __$$_ProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$_ProfileState>
    implements _$$_ProfileStateCopyWith<$Res> {
  __$$_ProfileStateCopyWithImpl(
      _$_ProfileState _value, $Res Function(_$_ProfileState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? updated = null,
    Object? profile = freezed,
  }) {
    return _then(_$_ProfileState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as bool,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileInfo?,
    ));
  }
}

/// @nodoc

class _$_ProfileState implements _ProfileState {
  const _$_ProfileState(
      {this.loading = false,
      this.error = '',
      this.updated = false,
      this.profile});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final bool updated;
  @override
  final ProfileInfo? profile;

  @override
  String toString() {
    return 'ProfileState(loading: $loading, error: $error, updated: $updated, profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, loading, error, updated, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      __$$_ProfileStateCopyWithImpl<_$_ProfileState>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {final bool loading,
      final String error,
      final bool updated,
      final ProfileInfo? profile}) = _$_ProfileState;

  @override
  bool get loading;
  @override
  String get error;
  @override
  bool get updated;
  @override
  ProfileInfo? get profile;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
