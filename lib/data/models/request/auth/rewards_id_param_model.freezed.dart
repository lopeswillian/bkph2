// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rewards_id_param_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RewardsIdParamModel _$RewardsIdParamModelFromJson(Map<String, dynamic> json) {
  return _RewardsIdParamModel.fromJson(json);
}

/// @nodoc
mixin _$RewardsIdParamModel {
  String get rewardsId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RewardsIdParamModelCopyWith<RewardsIdParamModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardsIdParamModelCopyWith<$Res> {
  factory $RewardsIdParamModelCopyWith(
          RewardsIdParamModel value, $Res Function(RewardsIdParamModel) then) =
      _$RewardsIdParamModelCopyWithImpl<$Res, RewardsIdParamModel>;
  @useResult
  $Res call({String rewardsId});
}

/// @nodoc
class _$RewardsIdParamModelCopyWithImpl<$Res, $Val extends RewardsIdParamModel>
    implements $RewardsIdParamModelCopyWith<$Res> {
  _$RewardsIdParamModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rewardsId = null,
  }) {
    return _then(_value.copyWith(
      rewardsId: null == rewardsId
          ? _value.rewardsId
          : rewardsId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RewardsIdParamModelCopyWith<$Res>
    implements $RewardsIdParamModelCopyWith<$Res> {
  factory _$$_RewardsIdParamModelCopyWith(_$_RewardsIdParamModel value,
          $Res Function(_$_RewardsIdParamModel) then) =
      __$$_RewardsIdParamModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String rewardsId});
}

/// @nodoc
class __$$_RewardsIdParamModelCopyWithImpl<$Res>
    extends _$RewardsIdParamModelCopyWithImpl<$Res, _$_RewardsIdParamModel>
    implements _$$_RewardsIdParamModelCopyWith<$Res> {
  __$$_RewardsIdParamModelCopyWithImpl(_$_RewardsIdParamModel _value,
      $Res Function(_$_RewardsIdParamModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rewardsId = null,
  }) {
    return _then(_$_RewardsIdParamModel(
      rewardsId: null == rewardsId
          ? _value.rewardsId
          : rewardsId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RewardsIdParamModel extends _RewardsIdParamModel {
  _$_RewardsIdParamModel({required this.rewardsId}) : super._();

  factory _$_RewardsIdParamModel.fromJson(Map<String, dynamic> json) =>
      _$$_RewardsIdParamModelFromJson(json);

  @override
  final String rewardsId;

  @override
  String toString() {
    return 'RewardsIdParamModel(rewardsId: $rewardsId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RewardsIdParamModel &&
            (identical(other.rewardsId, rewardsId) ||
                other.rewardsId == rewardsId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rewardsId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RewardsIdParamModelCopyWith<_$_RewardsIdParamModel> get copyWith =>
      __$$_RewardsIdParamModelCopyWithImpl<_$_RewardsIdParamModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RewardsIdParamModelToJson(
      this,
    );
  }
}

abstract class _RewardsIdParamModel extends RewardsIdParamModel {
  factory _RewardsIdParamModel({required final String rewardsId}) =
      _$_RewardsIdParamModel;
  _RewardsIdParamModel._() : super._();

  factory _RewardsIdParamModel.fromJson(Map<String, dynamic> json) =
      _$_RewardsIdParamModel.fromJson;

  @override
  String get rewardsId;
  @override
  @JsonKey(ignore: true)
  _$$_RewardsIdParamModelCopyWith<_$_RewardsIdParamModel> get copyWith =>
      throw _privateConstructorUsedError;
}
