// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rewards_cashback_object_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RewardsCashbackObjectModel _$RewardsCashbackObjectModelFromJson(
    Map<String, dynamic> json) {
  return _RewardsCashbackObjectModel.fromJson(json);
}

/// @nodoc
mixin _$RewardsCashbackObjectModel {
  RewardsCashbackDataModel? get cacheta => throw _privateConstructorUsedError;
  RewardsCashbackDataModel? get poker => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RewardsCashbackObjectModelCopyWith<RewardsCashbackObjectModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardsCashbackObjectModelCopyWith<$Res> {
  factory $RewardsCashbackObjectModelCopyWith(RewardsCashbackObjectModel value,
          $Res Function(RewardsCashbackObjectModel) then) =
      _$RewardsCashbackObjectModelCopyWithImpl<$Res,
          RewardsCashbackObjectModel>;
  @useResult
  $Res call(
      {RewardsCashbackDataModel? cacheta, RewardsCashbackDataModel? poker});

  $RewardsCashbackDataModelCopyWith<$Res>? get cacheta;
  $RewardsCashbackDataModelCopyWith<$Res>? get poker;
}

/// @nodoc
class _$RewardsCashbackObjectModelCopyWithImpl<$Res,
        $Val extends RewardsCashbackObjectModel>
    implements $RewardsCashbackObjectModelCopyWith<$Res> {
  _$RewardsCashbackObjectModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cacheta = freezed,
    Object? poker = freezed,
  }) {
    return _then(_value.copyWith(
      cacheta: freezed == cacheta
          ? _value.cacheta
          : cacheta // ignore: cast_nullable_to_non_nullable
              as RewardsCashbackDataModel?,
      poker: freezed == poker
          ? _value.poker
          : poker // ignore: cast_nullable_to_non_nullable
              as RewardsCashbackDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RewardsCashbackDataModelCopyWith<$Res>? get cacheta {
    if (_value.cacheta == null) {
      return null;
    }

    return $RewardsCashbackDataModelCopyWith<$Res>(_value.cacheta!, (value) {
      return _then(_value.copyWith(cacheta: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RewardsCashbackDataModelCopyWith<$Res>? get poker {
    if (_value.poker == null) {
      return null;
    }

    return $RewardsCashbackDataModelCopyWith<$Res>(_value.poker!, (value) {
      return _then(_value.copyWith(poker: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RewardsCashbackObjectModelCopyWith<$Res>
    implements $RewardsCashbackObjectModelCopyWith<$Res> {
  factory _$$_RewardsCashbackObjectModelCopyWith(
          _$_RewardsCashbackObjectModel value,
          $Res Function(_$_RewardsCashbackObjectModel) then) =
      __$$_RewardsCashbackObjectModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RewardsCashbackDataModel? cacheta, RewardsCashbackDataModel? poker});

  @override
  $RewardsCashbackDataModelCopyWith<$Res>? get cacheta;
  @override
  $RewardsCashbackDataModelCopyWith<$Res>? get poker;
}

/// @nodoc
class __$$_RewardsCashbackObjectModelCopyWithImpl<$Res>
    extends _$RewardsCashbackObjectModelCopyWithImpl<$Res,
        _$_RewardsCashbackObjectModel>
    implements _$$_RewardsCashbackObjectModelCopyWith<$Res> {
  __$$_RewardsCashbackObjectModelCopyWithImpl(
      _$_RewardsCashbackObjectModel _value,
      $Res Function(_$_RewardsCashbackObjectModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cacheta = freezed,
    Object? poker = freezed,
  }) {
    return _then(_$_RewardsCashbackObjectModel(
      cacheta: freezed == cacheta
          ? _value.cacheta
          : cacheta // ignore: cast_nullable_to_non_nullable
              as RewardsCashbackDataModel?,
      poker: freezed == poker
          ? _value.poker
          : poker // ignore: cast_nullable_to_non_nullable
              as RewardsCashbackDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RewardsCashbackObjectModel extends _RewardsCashbackObjectModel {
  _$_RewardsCashbackObjectModel({this.cacheta, this.poker}) : super._();

  factory _$_RewardsCashbackObjectModel.fromJson(Map<String, dynamic> json) =>
      _$$_RewardsCashbackObjectModelFromJson(json);

  @override
  final RewardsCashbackDataModel? cacheta;
  @override
  final RewardsCashbackDataModel? poker;

  @override
  String toString() {
    return 'RewardsCashbackObjectModel(cacheta: $cacheta, poker: $poker)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RewardsCashbackObjectModel &&
            (identical(other.cacheta, cacheta) || other.cacheta == cacheta) &&
            (identical(other.poker, poker) || other.poker == poker));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cacheta, poker);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RewardsCashbackObjectModelCopyWith<_$_RewardsCashbackObjectModel>
      get copyWith => __$$_RewardsCashbackObjectModelCopyWithImpl<
          _$_RewardsCashbackObjectModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RewardsCashbackObjectModelToJson(
      this,
    );
  }
}

abstract class _RewardsCashbackObjectModel extends RewardsCashbackObjectModel {
  factory _RewardsCashbackObjectModel(
      {final RewardsCashbackDataModel? cacheta,
      final RewardsCashbackDataModel? poker}) = _$_RewardsCashbackObjectModel;
  _RewardsCashbackObjectModel._() : super._();

  factory _RewardsCashbackObjectModel.fromJson(Map<String, dynamic> json) =
      _$_RewardsCashbackObjectModel.fromJson;

  @override
  RewardsCashbackDataModel? get cacheta;
  @override
  RewardsCashbackDataModel? get poker;
  @override
  @JsonKey(ignore: true)
  _$$_RewardsCashbackObjectModelCopyWith<_$_RewardsCashbackObjectModel>
      get copyWith => throw _privateConstructorUsedError;
}
