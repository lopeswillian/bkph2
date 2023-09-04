// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rewards_cashback_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RewardsCashbackDataModel _$RewardsCashbackDataModelFromJson(
    Map<String, dynamic> json) {
  return _RewardsCashbackDataModel.fromJson(json);
}

/// @nodoc
mixin _$RewardsCashbackDataModel {
  @JsonKey(name: 'club_id')
  int get clubId => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_id')
  int get unitId => throw _privateConstructorUsedError;
  int get app => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RewardsCashbackDataModelCopyWith<RewardsCashbackDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardsCashbackDataModelCopyWith<$Res> {
  factory $RewardsCashbackDataModelCopyWith(RewardsCashbackDataModel value,
          $Res Function(RewardsCashbackDataModel) then) =
      _$RewardsCashbackDataModelCopyWithImpl<$Res, RewardsCashbackDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'club_id') int clubId,
      @JsonKey(name: 'unit_id') int unitId,
      int app});
}

/// @nodoc
class _$RewardsCashbackDataModelCopyWithImpl<$Res,
        $Val extends RewardsCashbackDataModel>
    implements $RewardsCashbackDataModelCopyWith<$Res> {
  _$RewardsCashbackDataModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_RewardsCashbackDataModelCopyWith<$Res>
    implements $RewardsCashbackDataModelCopyWith<$Res> {
  factory _$$_RewardsCashbackDataModelCopyWith(
          _$_RewardsCashbackDataModel value,
          $Res Function(_$_RewardsCashbackDataModel) then) =
      __$$_RewardsCashbackDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'club_id') int clubId,
      @JsonKey(name: 'unit_id') int unitId,
      int app});
}

/// @nodoc
class __$$_RewardsCashbackDataModelCopyWithImpl<$Res>
    extends _$RewardsCashbackDataModelCopyWithImpl<$Res,
        _$_RewardsCashbackDataModel>
    implements _$$_RewardsCashbackDataModelCopyWith<$Res> {
  __$$_RewardsCashbackDataModelCopyWithImpl(_$_RewardsCashbackDataModel _value,
      $Res Function(_$_RewardsCashbackDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
    Object? unitId = null,
    Object? app = null,
  }) {
    return _then(_$_RewardsCashbackDataModel(
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
@JsonSerializable()
class _$_RewardsCashbackDataModel extends _RewardsCashbackDataModel {
  _$_RewardsCashbackDataModel(
      {@JsonKey(name: 'club_id') required this.clubId,
      @JsonKey(name: 'unit_id') required this.unitId,
      required this.app})
      : super._();

  factory _$_RewardsCashbackDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_RewardsCashbackDataModelFromJson(json);

  @override
  @JsonKey(name: 'club_id')
  final int clubId;
  @override
  @JsonKey(name: 'unit_id')
  final int unitId;
  @override
  final int app;

  @override
  String toString() {
    return 'RewardsCashbackDataModel(clubId: $clubId, unitId: $unitId, app: $app)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RewardsCashbackDataModel &&
            (identical(other.clubId, clubId) || other.clubId == clubId) &&
            (identical(other.unitId, unitId) || other.unitId == unitId) &&
            (identical(other.app, app) || other.app == app));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, clubId, unitId, app);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RewardsCashbackDataModelCopyWith<_$_RewardsCashbackDataModel>
      get copyWith => __$$_RewardsCashbackDataModelCopyWithImpl<
          _$_RewardsCashbackDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RewardsCashbackDataModelToJson(
      this,
    );
  }
}

abstract class _RewardsCashbackDataModel extends RewardsCashbackDataModel {
  factory _RewardsCashbackDataModel(
      {@JsonKey(name: 'club_id') required final int clubId,
      @JsonKey(name: 'unit_id') required final int unitId,
      required final int app}) = _$_RewardsCashbackDataModel;
  _RewardsCashbackDataModel._() : super._();

  factory _RewardsCashbackDataModel.fromJson(Map<String, dynamic> json) =
      _$_RewardsCashbackDataModel.fromJson;

  @override
  @JsonKey(name: 'club_id')
  int get clubId;
  @override
  @JsonKey(name: 'unit_id')
  int get unitId;
  @override
  int get app;
  @override
  @JsonKey(ignore: true)
  _$$_RewardsCashbackDataModelCopyWith<_$_RewardsCashbackDataModel>
      get copyWith => throw _privateConstructorUsedError;
}
