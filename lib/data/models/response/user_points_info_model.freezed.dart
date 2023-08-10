// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_points_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserPointsInfoModel _$UserPointsInfoModelFromJson(Map<String, dynamic> json) {
  return _UserPointsInfoModel.fromJson(json);
}

/// @nodoc
mixin _$UserPointsInfoModel {
  @JsonKey(name: 'rewards_points')
  String? get rewardsPoints => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserPointsInfoModelCopyWith<UserPointsInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPointsInfoModelCopyWith<$Res> {
  factory $UserPointsInfoModelCopyWith(
          UserPointsInfoModel value, $Res Function(UserPointsInfoModel) then) =
      _$UserPointsInfoModelCopyWithImpl<$Res, UserPointsInfoModel>;
  @useResult
  $Res call({@JsonKey(name: 'rewards_points') String? rewardsPoints});
}

/// @nodoc
class _$UserPointsInfoModelCopyWithImpl<$Res, $Val extends UserPointsInfoModel>
    implements $UserPointsInfoModelCopyWith<$Res> {
  _$UserPointsInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rewardsPoints = freezed,
  }) {
    return _then(_value.copyWith(
      rewardsPoints: freezed == rewardsPoints
          ? _value.rewardsPoints
          : rewardsPoints // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserPointsInfoModelCopyWith<$Res>
    implements $UserPointsInfoModelCopyWith<$Res> {
  factory _$$_UserPointsInfoModelCopyWith(_$_UserPointsInfoModel value,
          $Res Function(_$_UserPointsInfoModel) then) =
      __$$_UserPointsInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'rewards_points') String? rewardsPoints});
}

/// @nodoc
class __$$_UserPointsInfoModelCopyWithImpl<$Res>
    extends _$UserPointsInfoModelCopyWithImpl<$Res, _$_UserPointsInfoModel>
    implements _$$_UserPointsInfoModelCopyWith<$Res> {
  __$$_UserPointsInfoModelCopyWithImpl(_$_UserPointsInfoModel _value,
      $Res Function(_$_UserPointsInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rewardsPoints = freezed,
  }) {
    return _then(_$_UserPointsInfoModel(
      rewardsPoints: freezed == rewardsPoints
          ? _value.rewardsPoints
          : rewardsPoints // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserPointsInfoModel extends _UserPointsInfoModel {
  _$_UserPointsInfoModel({@JsonKey(name: 'rewards_points') this.rewardsPoints})
      : super._();

  factory _$_UserPointsInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserPointsInfoModelFromJson(json);

  @override
  @JsonKey(name: 'rewards_points')
  final String? rewardsPoints;

  @override
  String toString() {
    return 'UserPointsInfoModel(rewardsPoints: $rewardsPoints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserPointsInfoModel &&
            (identical(other.rewardsPoints, rewardsPoints) ||
                other.rewardsPoints == rewardsPoints));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rewardsPoints);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserPointsInfoModelCopyWith<_$_UserPointsInfoModel> get copyWith =>
      __$$_UserPointsInfoModelCopyWithImpl<_$_UserPointsInfoModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserPointsInfoModelToJson(
      this,
    );
  }
}

abstract class _UserPointsInfoModel extends UserPointsInfoModel {
  factory _UserPointsInfoModel(
          {@JsonKey(name: 'rewards_points') final String? rewardsPoints}) =
      _$_UserPointsInfoModel;
  _UserPointsInfoModel._() : super._();

  factory _UserPointsInfoModel.fromJson(Map<String, dynamic> json) =
      _$_UserPointsInfoModel.fromJson;

  @override
  @JsonKey(name: 'rewards_points')
  String? get rewardsPoints;
  @override
  @JsonKey(ignore: true)
  _$$_UserPointsInfoModelCopyWith<_$_UserPointsInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
