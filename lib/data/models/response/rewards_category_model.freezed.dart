// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rewards_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RewardsCategoryModel _$RewardsCategoryModelFromJson(Map<String, dynamic> json) {
  return _RewardsCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$RewardsCategoryModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'points')
  int get points => throw _privateConstructorUsedError;
  @JsonKey(name: 'complete_description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'value_per_point')
  double? get valuePoint => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_points')
  int? get minPoints => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_points')
  int? get maxPoints => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_cashback')
  bool? get isCashBack => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RewardsCategoryModelCopyWith<RewardsCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardsCategoryModelCopyWith<$Res> {
  factory $RewardsCategoryModelCopyWith(RewardsCategoryModel value,
          $Res Function(RewardsCategoryModel) then) =
      _$RewardsCategoryModelCopyWithImpl<$Res, RewardsCategoryModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'name') String title,
      @JsonKey(name: 'points') int points,
      @JsonKey(name: 'complete_description') String description,
      @JsonKey(name: 'value_per_point') double? valuePoint,
      @JsonKey(name: 'min_points') int? minPoints,
      @JsonKey(name: 'max_points') int? maxPoints,
      @JsonKey(name: 'is_cashback') bool? isCashBack});
}

/// @nodoc
class _$RewardsCategoryModelCopyWithImpl<$Res,
        $Val extends RewardsCategoryModel>
    implements $RewardsCategoryModelCopyWith<$Res> {
  _$RewardsCategoryModelCopyWithImpl(this._value, this._then);

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
    Object? isCashBack = freezed,
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
      isCashBack: freezed == isCashBack
          ? _value.isCashBack
          : isCashBack // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RewardsCategoryModelCopyWith<$Res>
    implements $RewardsCategoryModelCopyWith<$Res> {
  factory _$$_RewardsCategoryModelCopyWith(_$_RewardsCategoryModel value,
          $Res Function(_$_RewardsCategoryModel) then) =
      __$$_RewardsCategoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'name') String title,
      @JsonKey(name: 'points') int points,
      @JsonKey(name: 'complete_description') String description,
      @JsonKey(name: 'value_per_point') double? valuePoint,
      @JsonKey(name: 'min_points') int? minPoints,
      @JsonKey(name: 'max_points') int? maxPoints,
      @JsonKey(name: 'is_cashback') bool? isCashBack});
}

/// @nodoc
class __$$_RewardsCategoryModelCopyWithImpl<$Res>
    extends _$RewardsCategoryModelCopyWithImpl<$Res, _$_RewardsCategoryModel>
    implements _$$_RewardsCategoryModelCopyWith<$Res> {
  __$$_RewardsCategoryModelCopyWithImpl(_$_RewardsCategoryModel _value,
      $Res Function(_$_RewardsCategoryModel) _then)
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
    Object? isCashBack = freezed,
  }) {
    return _then(_$_RewardsCategoryModel(
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
      isCashBack: freezed == isCashBack
          ? _value.isCashBack
          : isCashBack // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RewardsCategoryModel extends _RewardsCategoryModel {
  _$_RewardsCategoryModel(
      {required this.id,
      @JsonKey(name: 'name') required this.title,
      @JsonKey(name: 'points') required this.points,
      @JsonKey(name: 'complete_description') required this.description,
      @JsonKey(name: 'value_per_point') this.valuePoint,
      @JsonKey(name: 'min_points') this.minPoints,
      @JsonKey(name: 'max_points') this.maxPoints,
      @JsonKey(name: 'is_cashback') this.isCashBack})
      : super._();

  factory _$_RewardsCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_RewardsCategoryModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'name')
  final String title;
  @override
  @JsonKey(name: 'points')
  final int points;
  @override
  @JsonKey(name: 'complete_description')
  final String description;
  @override
  @JsonKey(name: 'value_per_point')
  final double? valuePoint;
  @override
  @JsonKey(name: 'min_points')
  final int? minPoints;
  @override
  @JsonKey(name: 'max_points')
  final int? maxPoints;
  @override
  @JsonKey(name: 'is_cashback')
  final bool? isCashBack;

  @override
  String toString() {
    return 'RewardsCategoryModel(id: $id, title: $title, points: $points, description: $description, valuePoint: $valuePoint, minPoints: $minPoints, maxPoints: $maxPoints, isCashBack: $isCashBack)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RewardsCategoryModel &&
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
                other.isCashBack == isCashBack));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, points, description,
      valuePoint, minPoints, maxPoints, isCashBack);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RewardsCategoryModelCopyWith<_$_RewardsCategoryModel> get copyWith =>
      __$$_RewardsCategoryModelCopyWithImpl<_$_RewardsCategoryModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RewardsCategoryModelToJson(
      this,
    );
  }
}

abstract class _RewardsCategoryModel extends RewardsCategoryModel {
  factory _RewardsCategoryModel(
      {required final int id,
      @JsonKey(name: 'name')
          required final String title,
      @JsonKey(name: 'points')
          required final int points,
      @JsonKey(name: 'complete_description')
          required final String description,
      @JsonKey(name: 'value_per_point')
          final double? valuePoint,
      @JsonKey(name: 'min_points')
          final int? minPoints,
      @JsonKey(name: 'max_points')
          final int? maxPoints,
      @JsonKey(name: 'is_cashback')
          final bool? isCashBack}) = _$_RewardsCategoryModel;
  _RewardsCategoryModel._() : super._();

  factory _RewardsCategoryModel.fromJson(Map<String, dynamic> json) =
      _$_RewardsCategoryModel.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'name')
  String get title;
  @override
  @JsonKey(name: 'points')
  int get points;
  @override
  @JsonKey(name: 'complete_description')
  String get description;
  @override
  @JsonKey(name: 'value_per_point')
  double? get valuePoint;
  @override
  @JsonKey(name: 'min_points')
  int? get minPoints;
  @override
  @JsonKey(name: 'max_points')
  int? get maxPoints;
  @override
  @JsonKey(name: 'is_cashback')
  bool? get isCashBack;
  @override
  @JsonKey(ignore: true)
  _$$_RewardsCategoryModelCopyWith<_$_RewardsCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
