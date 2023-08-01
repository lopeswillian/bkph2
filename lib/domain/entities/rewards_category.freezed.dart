// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rewards_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RewardsCategory {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get points => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double? get valuePoint => throw _privateConstructorUsedError;
  int? get minPoints => throw _privateConstructorUsedError;
  int? get maxPoints => throw _privateConstructorUsedError;
  bool get isCashBack => throw _privateConstructorUsedError;
  String get bgUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RewardsCategoryCopyWith<RewardsCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardsCategoryCopyWith<$Res> {
  factory $RewardsCategoryCopyWith(
          RewardsCategory value, $Res Function(RewardsCategory) then) =
      _$RewardsCategoryCopyWithImpl<$Res, RewardsCategory>;
  @useResult
  $Res call(
      {int id,
      String title,
      int points,
      String description,
      double? valuePoint,
      int? minPoints,
      int? maxPoints,
      bool isCashBack,
      String bgUrl});
}

/// @nodoc
class _$RewardsCategoryCopyWithImpl<$Res, $Val extends RewardsCategory>
    implements $RewardsCategoryCopyWith<$Res> {
  _$RewardsCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? points = null,
    Object? description = null,
    Object? valuePoint = freezed,
    Object? minPoints = freezed,
    Object? maxPoints = freezed,
    Object? isCashBack = null,
    Object? bgUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      valuePoint: freezed == valuePoint
          ? _value.valuePoint
          : valuePoint // ignore: cast_nullable_to_non_nullable
              as double?,
      minPoints: freezed == minPoints
          ? _value.minPoints
          : minPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPoints: freezed == maxPoints
          ? _value.maxPoints
          : maxPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      isCashBack: null == isCashBack
          ? _value.isCashBack
          : isCashBack // ignore: cast_nullable_to_non_nullable
              as bool,
      bgUrl: null == bgUrl
          ? _value.bgUrl
          : bgUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RewardsCategoryCopyWith<$Res>
    implements $RewardsCategoryCopyWith<$Res> {
  factory _$$_RewardsCategoryCopyWith(
          _$_RewardsCategory value, $Res Function(_$_RewardsCategory) then) =
      __$$_RewardsCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      int points,
      String description,
      double? valuePoint,
      int? minPoints,
      int? maxPoints,
      bool isCashBack,
      String bgUrl});
}

/// @nodoc
class __$$_RewardsCategoryCopyWithImpl<$Res>
    extends _$RewardsCategoryCopyWithImpl<$Res, _$_RewardsCategory>
    implements _$$_RewardsCategoryCopyWith<$Res> {
  __$$_RewardsCategoryCopyWithImpl(
      _$_RewardsCategory _value, $Res Function(_$_RewardsCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? points = null,
    Object? description = null,
    Object? valuePoint = freezed,
    Object? minPoints = freezed,
    Object? maxPoints = freezed,
    Object? isCashBack = null,
    Object? bgUrl = null,
  }) {
    return _then(_$_RewardsCategory(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      valuePoint: freezed == valuePoint
          ? _value.valuePoint
          : valuePoint // ignore: cast_nullable_to_non_nullable
              as double?,
      minPoints: freezed == minPoints
          ? _value.minPoints
          : minPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPoints: freezed == maxPoints
          ? _value.maxPoints
          : maxPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      isCashBack: null == isCashBack
          ? _value.isCashBack
          : isCashBack // ignore: cast_nullable_to_non_nullable
              as bool,
      bgUrl: null == bgUrl
          ? _value.bgUrl
          : bgUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RewardsCategory implements _RewardsCategory {
  _$_RewardsCategory(
      {required this.id,
      required this.title,
      required this.points,
      required this.description,
      this.valuePoint,
      this.minPoints,
      this.maxPoints,
      required this.isCashBack,
      required this.bgUrl});

  @override
  final int id;
  @override
  final String title;
  @override
  final int points;
  @override
  final String description;
  @override
  final double? valuePoint;
  @override
  final int? minPoints;
  @override
  final int? maxPoints;
  @override
  final bool isCashBack;
  @override
  final String bgUrl;

  @override
  String toString() {
    return 'RewardsCategory(id: $id, title: $title, points: $points, description: $description, valuePoint: $valuePoint, minPoints: $minPoints, maxPoints: $maxPoints, isCashBack: $isCashBack, bgUrl: $bgUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RewardsCategory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.valuePoint, valuePoint) ||
                other.valuePoint == valuePoint) &&
            (identical(other.minPoints, minPoints) ||
                other.minPoints == minPoints) &&
            (identical(other.maxPoints, maxPoints) ||
                other.maxPoints == maxPoints) &&
            (identical(other.isCashBack, isCashBack) ||
                other.isCashBack == isCashBack) &&
            (identical(other.bgUrl, bgUrl) || other.bgUrl == bgUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, points, description,
      valuePoint, minPoints, maxPoints, isCashBack, bgUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RewardsCategoryCopyWith<_$_RewardsCategory> get copyWith =>
      __$$_RewardsCategoryCopyWithImpl<_$_RewardsCategory>(this, _$identity);
}

abstract class _RewardsCategory implements RewardsCategory {
  factory _RewardsCategory(
      {required final int id,
      required final String title,
      required final int points,
      required final String description,
      final double? valuePoint,
      final int? minPoints,
      final int? maxPoints,
      required final bool isCashBack,
      required final String bgUrl}) = _$_RewardsCategory;

  @override
  int get id;
  @override
  String get title;
  @override
  int get points;
  @override
  String get description;
  @override
  double? get valuePoint;
  @override
  int? get minPoints;
  @override
  int? get maxPoints;
  @override
  bool get isCashBack;
  @override
  String get bgUrl;
  @override
  @JsonKey(ignore: true)
  _$$_RewardsCategoryCopyWith<_$_RewardsCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
