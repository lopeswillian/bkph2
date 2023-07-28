// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rewards_id_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RewardsIdParam {
  String get rewardsId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RewardsIdParamCopyWith<RewardsIdParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardsIdParamCopyWith<$Res> {
  factory $RewardsIdParamCopyWith(
          RewardsIdParam value, $Res Function(RewardsIdParam) then) =
      _$RewardsIdParamCopyWithImpl<$Res, RewardsIdParam>;
  @useResult
  $Res call({String rewardsId});
}

/// @nodoc
class _$RewardsIdParamCopyWithImpl<$Res, $Val extends RewardsIdParam>
    implements $RewardsIdParamCopyWith<$Res> {
  _$RewardsIdParamCopyWithImpl(this._value, this._then);

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
abstract class _$$_RewardsIdParamCopyWith<$Res>
    implements $RewardsIdParamCopyWith<$Res> {
  factory _$$_RewardsIdParamCopyWith(
          _$_RewardsIdParam value, $Res Function(_$_RewardsIdParam) then) =
      __$$_RewardsIdParamCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String rewardsId});
}

/// @nodoc
class __$$_RewardsIdParamCopyWithImpl<$Res>
    extends _$RewardsIdParamCopyWithImpl<$Res, _$_RewardsIdParam>
    implements _$$_RewardsIdParamCopyWith<$Res> {
  __$$_RewardsIdParamCopyWithImpl(
      _$_RewardsIdParam _value, $Res Function(_$_RewardsIdParam) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rewardsId = null,
  }) {
    return _then(_$_RewardsIdParam(
      rewardsId: null == rewardsId
          ? _value.rewardsId
          : rewardsId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RewardsIdParam implements _RewardsIdParam {
  _$_RewardsIdParam({required this.rewardsId});

  @override
  final String rewardsId;

  @override
  String toString() {
    return 'RewardsIdParam(rewardsId: $rewardsId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RewardsIdParam &&
            (identical(other.rewardsId, rewardsId) ||
                other.rewardsId == rewardsId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rewardsId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RewardsIdParamCopyWith<_$_RewardsIdParam> get copyWith =>
      __$$_RewardsIdParamCopyWithImpl<_$_RewardsIdParam>(this, _$identity);
}

abstract class _RewardsIdParam implements RewardsIdParam {
  factory _RewardsIdParam({required final String rewardsId}) =
      _$_RewardsIdParam;

  @override
  String get rewardsId;
  @override
  @JsonKey(ignore: true)
  _$$_RewardsIdParamCopyWith<_$_RewardsIdParam> get copyWith =>
      throw _privateConstructorUsedError;
}
