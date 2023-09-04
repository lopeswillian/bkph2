// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rewards_cashback_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RewardsCashbackObject {
  RewardsCashbackData? get poker => throw _privateConstructorUsedError;
  RewardsCashbackData? get cacheta => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RewardsCashbackObjectCopyWith<RewardsCashbackObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardsCashbackObjectCopyWith<$Res> {
  factory $RewardsCashbackObjectCopyWith(RewardsCashbackObject value,
          $Res Function(RewardsCashbackObject) then) =
      _$RewardsCashbackObjectCopyWithImpl<$Res, RewardsCashbackObject>;
  @useResult
  $Res call({RewardsCashbackData? poker, RewardsCashbackData? cacheta});

  $RewardsCashbackDataCopyWith<$Res>? get poker;
  $RewardsCashbackDataCopyWith<$Res>? get cacheta;
}

/// @nodoc
class _$RewardsCashbackObjectCopyWithImpl<$Res,
        $Val extends RewardsCashbackObject>
    implements $RewardsCashbackObjectCopyWith<$Res> {
  _$RewardsCashbackObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? poker = freezed,
    Object? cacheta = freezed,
  }) {
    return _then(_value.copyWith(
      poker: freezed == poker
          ? _value.poker
          : poker // ignore: cast_nullable_to_non_nullable
              as RewardsCashbackData?,
      cacheta: freezed == cacheta
          ? _value.cacheta
          : cacheta // ignore: cast_nullable_to_non_nullable
              as RewardsCashbackData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RewardsCashbackDataCopyWith<$Res>? get poker {
    if (_value.poker == null) {
      return null;
    }

    return $RewardsCashbackDataCopyWith<$Res>(_value.poker!, (value) {
      return _then(_value.copyWith(poker: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RewardsCashbackDataCopyWith<$Res>? get cacheta {
    if (_value.cacheta == null) {
      return null;
    }

    return $RewardsCashbackDataCopyWith<$Res>(_value.cacheta!, (value) {
      return _then(_value.copyWith(cacheta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RewardsCashbackObjectCopyWith<$Res>
    implements $RewardsCashbackObjectCopyWith<$Res> {
  factory _$$_RewardsCashbackObjectCopyWith(_$_RewardsCashbackObject value,
          $Res Function(_$_RewardsCashbackObject) then) =
      __$$_RewardsCashbackObjectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RewardsCashbackData? poker, RewardsCashbackData? cacheta});

  @override
  $RewardsCashbackDataCopyWith<$Res>? get poker;
  @override
  $RewardsCashbackDataCopyWith<$Res>? get cacheta;
}

/// @nodoc
class __$$_RewardsCashbackObjectCopyWithImpl<$Res>
    extends _$RewardsCashbackObjectCopyWithImpl<$Res, _$_RewardsCashbackObject>
    implements _$$_RewardsCashbackObjectCopyWith<$Res> {
  __$$_RewardsCashbackObjectCopyWithImpl(_$_RewardsCashbackObject _value,
      $Res Function(_$_RewardsCashbackObject) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? poker = freezed,
    Object? cacheta = freezed,
  }) {
    return _then(_$_RewardsCashbackObject(
      poker: freezed == poker
          ? _value.poker
          : poker // ignore: cast_nullable_to_non_nullable
              as RewardsCashbackData?,
      cacheta: freezed == cacheta
          ? _value.cacheta
          : cacheta // ignore: cast_nullable_to_non_nullable
              as RewardsCashbackData?,
    ));
  }
}

/// @nodoc

class _$_RewardsCashbackObject implements _RewardsCashbackObject {
  _$_RewardsCashbackObject({this.poker, this.cacheta});

  @override
  final RewardsCashbackData? poker;
  @override
  final RewardsCashbackData? cacheta;

  @override
  String toString() {
    return 'RewardsCashbackObject(poker: $poker, cacheta: $cacheta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RewardsCashbackObject &&
            (identical(other.poker, poker) || other.poker == poker) &&
            (identical(other.cacheta, cacheta) || other.cacheta == cacheta));
  }

  @override
  int get hashCode => Object.hash(runtimeType, poker, cacheta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RewardsCashbackObjectCopyWith<_$_RewardsCashbackObject> get copyWith =>
      __$$_RewardsCashbackObjectCopyWithImpl<_$_RewardsCashbackObject>(
          this, _$identity);
}

abstract class _RewardsCashbackObject implements RewardsCashbackObject {
  factory _RewardsCashbackObject(
      {final RewardsCashbackData? poker,
      final RewardsCashbackData? cacheta}) = _$_RewardsCashbackObject;

  @override
  RewardsCashbackData? get poker;
  @override
  RewardsCashbackData? get cacheta;
  @override
  @JsonKey(ignore: true)
  _$$_RewardsCashbackObjectCopyWith<_$_RewardsCashbackObject> get copyWith =>
      throw _privateConstructorUsedError;
}
