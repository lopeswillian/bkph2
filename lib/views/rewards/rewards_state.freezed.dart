// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rewards_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RewardsState {
  bool get loading => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  List<RewardsAccordionCategory> get listRewardsCategories =>
      throw _privateConstructorUsedError;
  RewardsCategory? get rewardDetails => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RewardsStateCopyWith<RewardsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardsStateCopyWith<$Res> {
  factory $RewardsStateCopyWith(
          RewardsState value, $Res Function(RewardsState) then) =
      _$RewardsStateCopyWithImpl<$Res, RewardsState>;
  @useResult
  $Res call(
      {bool loading,
      String error,
      List<RewardsAccordionCategory> listRewardsCategories,
      RewardsCategory? rewardDetails});

  $RewardsCategoryCopyWith<$Res>? get rewardDetails;
}

/// @nodoc
class _$RewardsStateCopyWithImpl<$Res, $Val extends RewardsState>
    implements $RewardsStateCopyWith<$Res> {
  _$RewardsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? listRewardsCategories = null,
    Object? rewardDetails = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      listRewardsCategories: null == listRewardsCategories
          ? _value.listRewardsCategories
          : listRewardsCategories // ignore: cast_nullable_to_non_nullable
              as List<RewardsAccordionCategory>,
      rewardDetails: freezed == rewardDetails
          ? _value.rewardDetails
          : rewardDetails // ignore: cast_nullable_to_non_nullable
              as RewardsCategory?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RewardsCategoryCopyWith<$Res>? get rewardDetails {
    if (_value.rewardDetails == null) {
      return null;
    }

    return $RewardsCategoryCopyWith<$Res>(_value.rewardDetails!, (value) {
      return _then(_value.copyWith(rewardDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RewardsStateCopyWith<$Res>
    implements $RewardsStateCopyWith<$Res> {
  factory _$$_RewardsStateCopyWith(
          _$_RewardsState value, $Res Function(_$_RewardsState) then) =
      __$$_RewardsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      String error,
      List<RewardsAccordionCategory> listRewardsCategories,
      RewardsCategory? rewardDetails});

  @override
  $RewardsCategoryCopyWith<$Res>? get rewardDetails;
}

/// @nodoc
class __$$_RewardsStateCopyWithImpl<$Res>
    extends _$RewardsStateCopyWithImpl<$Res, _$_RewardsState>
    implements _$$_RewardsStateCopyWith<$Res> {
  __$$_RewardsStateCopyWithImpl(
      _$_RewardsState _value, $Res Function(_$_RewardsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? listRewardsCategories = null,
    Object? rewardDetails = freezed,
  }) {
    return _then(_$_RewardsState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      listRewardsCategories: null == listRewardsCategories
          ? _value._listRewardsCategories
          : listRewardsCategories // ignore: cast_nullable_to_non_nullable
              as List<RewardsAccordionCategory>,
      rewardDetails: freezed == rewardDetails
          ? _value.rewardDetails
          : rewardDetails // ignore: cast_nullable_to_non_nullable
              as RewardsCategory?,
    ));
  }
}

/// @nodoc

class _$_RewardsState implements _RewardsState {
  const _$_RewardsState(
      {this.loading = false,
      this.error = '',
      final List<RewardsAccordionCategory> listRewardsCategories = const [],
      this.rewardDetails})
      : _listRewardsCategories = listRewardsCategories;

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final String error;
  final List<RewardsAccordionCategory> _listRewardsCategories;
  @override
  @JsonKey()
  List<RewardsAccordionCategory> get listRewardsCategories {
    if (_listRewardsCategories is EqualUnmodifiableListView)
      return _listRewardsCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listRewardsCategories);
  }

  @override
  final RewardsCategory? rewardDetails;

  @override
  String toString() {
    return 'RewardsState(loading: $loading, error: $error, listRewardsCategories: $listRewardsCategories, rewardDetails: $rewardDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RewardsState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality()
                .equals(other._listRewardsCategories, _listRewardsCategories) &&
            (identical(other.rewardDetails, rewardDetails) ||
                other.rewardDetails == rewardDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      error,
      const DeepCollectionEquality().hash(_listRewardsCategories),
      rewardDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RewardsStateCopyWith<_$_RewardsState> get copyWith =>
      __$$_RewardsStateCopyWithImpl<_$_RewardsState>(this, _$identity);
}

abstract class _RewardsState implements RewardsState {
  const factory _RewardsState(
      {final bool loading,
      final String error,
      final List<RewardsAccordionCategory> listRewardsCategories,
      final RewardsCategory? rewardDetails}) = _$_RewardsState;

  @override
  bool get loading;
  @override
  String get error;
  @override
  List<RewardsAccordionCategory> get listRewardsCategories;
  @override
  RewardsCategory? get rewardDetails;
  @override
  @JsonKey(ignore: true)
  _$$_RewardsStateCopyWith<_$_RewardsState> get copyWith =>
      throw _privateConstructorUsedError;
}
