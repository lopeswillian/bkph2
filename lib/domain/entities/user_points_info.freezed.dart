// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_points_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserPointsInfo {
  double get rewardsPoints => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserPointsInfoCopyWith<UserPointsInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPointsInfoCopyWith<$Res> {
  factory $UserPointsInfoCopyWith(
          UserPointsInfo value, $Res Function(UserPointsInfo) then) =
      _$UserPointsInfoCopyWithImpl<$Res, UserPointsInfo>;
  @useResult
  $Res call({double rewardsPoints});
}

/// @nodoc
class _$UserPointsInfoCopyWithImpl<$Res, $Val extends UserPointsInfo>
    implements $UserPointsInfoCopyWith<$Res> {
  _$UserPointsInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rewardsPoints = null,
  }) {
    return _then(_value.copyWith(
      rewardsPoints: null == rewardsPoints
          ? _value.rewardsPoints
          : rewardsPoints // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserPointsInfoCopyWith<$Res>
    implements $UserPointsInfoCopyWith<$Res> {
  factory _$$_UserPointsInfoCopyWith(
          _$_UserPointsInfo value, $Res Function(_$_UserPointsInfo) then) =
      __$$_UserPointsInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double rewardsPoints});
}

/// @nodoc
class __$$_UserPointsInfoCopyWithImpl<$Res>
    extends _$UserPointsInfoCopyWithImpl<$Res, _$_UserPointsInfo>
    implements _$$_UserPointsInfoCopyWith<$Res> {
  __$$_UserPointsInfoCopyWithImpl(
      _$_UserPointsInfo _value, $Res Function(_$_UserPointsInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rewardsPoints = null,
  }) {
    return _then(_$_UserPointsInfo(
      rewardsPoints: null == rewardsPoints
          ? _value.rewardsPoints
          : rewardsPoints // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_UserPointsInfo implements _UserPointsInfo {
  _$_UserPointsInfo({required this.rewardsPoints});

  @override
  final double rewardsPoints;

  @override
  String toString() {
    return 'UserPointsInfo(rewardsPoints: $rewardsPoints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserPointsInfo &&
            (identical(other.rewardsPoints, rewardsPoints) ||
                other.rewardsPoints == rewardsPoints));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rewardsPoints);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserPointsInfoCopyWith<_$_UserPointsInfo> get copyWith =>
      __$$_UserPointsInfoCopyWithImpl<_$_UserPointsInfo>(this, _$identity);
}

abstract class _UserPointsInfo implements UserPointsInfo {
  factory _UserPointsInfo({required final double rewardsPoints}) =
      _$_UserPointsInfo;

  @override
  double get rewardsPoints;
  @override
  @JsonKey(ignore: true)
  _$$_UserPointsInfoCopyWith<_$_UserPointsInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
