// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rewards_cashback_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RewardsCashbackData {
  int get clubId => throw _privateConstructorUsedError;
  int get unitId => throw _privateConstructorUsedError;
  int get app => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RewardsCashbackDataCopyWith<RewardsCashbackData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardsCashbackDataCopyWith<$Res> {
  factory $RewardsCashbackDataCopyWith(
          RewardsCashbackData value, $Res Function(RewardsCashbackData) then) =
      _$RewardsCashbackDataCopyWithImpl<$Res, RewardsCashbackData>;
  @useResult
  $Res call({int clubId, int unitId, int app});
}

/// @nodoc
class _$RewardsCashbackDataCopyWithImpl<$Res, $Val extends RewardsCashbackData>
    implements $RewardsCashbackDataCopyWith<$Res> {
  _$RewardsCashbackDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
    Object? unitId = null,
    Object? app = null,
  }) {
    return _then(_value.copyWith(
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
      unitId: null == unitId
          ? _value.unitId
          : unitId // ignore: cast_nullable_to_non_nullable
              as int,
      app: null == app
          ? _value.app
          : app // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RewardsCashbackDataCopyWith<$Res>
    implements $RewardsCashbackDataCopyWith<$Res> {
  factory _$$_RewardsCashbackDataCopyWith(_$_RewardsCashbackData value,
          $Res Function(_$_RewardsCashbackData) then) =
      __$$_RewardsCashbackDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int clubId, int unitId, int app});
}

/// @nodoc
class __$$_RewardsCashbackDataCopyWithImpl<$Res>
    extends _$RewardsCashbackDataCopyWithImpl<$Res, _$_RewardsCashbackData>
    implements _$$_RewardsCashbackDataCopyWith<$Res> {
  __$$_RewardsCashbackDataCopyWithImpl(_$_RewardsCashbackData _value,
      $Res Function(_$_RewardsCashbackData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
    Object? unitId = null,
    Object? app = null,
  }) {
    return _then(_$_RewardsCashbackData(
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
      unitId: null == unitId
          ? _value.unitId
          : unitId // ignore: cast_nullable_to_non_nullable
              as int,
      app: null == app
          ? _value.app
          : app // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RewardsCashbackData implements _RewardsCashbackData {
  _$_RewardsCashbackData(
      {required this.clubId, required this.unitId, required this.app});

  @override
  final int clubId;
  @override
  final int unitId;
  @override
  final int app;

  @override
  String toString() {
    return 'RewardsCashbackData(clubId: $clubId, unitId: $unitId, app: $app)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RewardsCashbackData &&
            (identical(other.clubId, clubId) || other.clubId == clubId) &&
            (identical(other.unitId, unitId) || other.unitId == unitId) &&
            (identical(other.app, app) || other.app == app));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clubId, unitId, app);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RewardsCashbackDataCopyWith<_$_RewardsCashbackData> get copyWith =>
      __$$_RewardsCashbackDataCopyWithImpl<_$_RewardsCashbackData>(
          this, _$identity);
}

abstract class _RewardsCashbackData implements RewardsCashbackData {
  factory _RewardsCashbackData(
      {required final int clubId,
      required final int unitId,
      required final int app}) = _$_RewardsCashbackData;

  @override
  int get clubId;
  @override
  int get unitId;
  @override
  int get app;
  @override
  @JsonKey(ignore: true)
  _$$_RewardsCashbackDataCopyWith<_$_RewardsCashbackData> get copyWith =>
      throw _privateConstructorUsedError;
}
