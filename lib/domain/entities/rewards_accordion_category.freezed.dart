// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rewards_accordion_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RewardsAccordionCategory {
  String get accordionIconSvg => throw _privateConstructorUsedError;
  String get accordionTitle => throw _privateConstructorUsedError;
  List<RewardsCategory> get prizes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RewardsAccordionCategoryCopyWith<RewardsAccordionCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardsAccordionCategoryCopyWith<$Res> {
  factory $RewardsAccordionCategoryCopyWith(RewardsAccordionCategory value,
          $Res Function(RewardsAccordionCategory) then) =
      _$RewardsAccordionCategoryCopyWithImpl<$Res, RewardsAccordionCategory>;
  @useResult
  $Res call(
      {String accordionIconSvg,
      String accordionTitle,
      List<RewardsCategory> prizes});
}

/// @nodoc
class _$RewardsAccordionCategoryCopyWithImpl<$Res,
        $Val extends RewardsAccordionCategory>
    implements $RewardsAccordionCategoryCopyWith<$Res> {
  _$RewardsAccordionCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accordionIconSvg = null,
    Object? accordionTitle = null,
    Object? prizes = null,
  }) {
    return _then(_value.copyWith(
      accordionIconSvg: null == accordionIconSvg
          ? _value.accordionIconSvg
          : accordionIconSvg // ignore: cast_nullable_to_non_nullable
              as String,
      accordionTitle: null == accordionTitle
          ? _value.accordionTitle
          : accordionTitle // ignore: cast_nullable_to_non_nullable
              as String,
      prizes: null == prizes
          ? _value.prizes
          : prizes // ignore: cast_nullable_to_non_nullable
              as List<RewardsCategory>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RewardsAccordionCategoryCopyWith<$Res>
    implements $RewardsAccordionCategoryCopyWith<$Res> {
  factory _$$_RewardsAccordionCategoryCopyWith(
          _$_RewardsAccordionCategory value,
          $Res Function(_$_RewardsAccordionCategory) then) =
      __$$_RewardsAccordionCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String accordionIconSvg,
      String accordionTitle,
      List<RewardsCategory> prizes});
}

/// @nodoc
class __$$_RewardsAccordionCategoryCopyWithImpl<$Res>
    extends _$RewardsAccordionCategoryCopyWithImpl<$Res,
        _$_RewardsAccordionCategory>
    implements _$$_RewardsAccordionCategoryCopyWith<$Res> {
  __$$_RewardsAccordionCategoryCopyWithImpl(_$_RewardsAccordionCategory _value,
      $Res Function(_$_RewardsAccordionCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accordionIconSvg = null,
    Object? accordionTitle = null,
    Object? prizes = null,
  }) {
    return _then(_$_RewardsAccordionCategory(
      accordionIconSvg: null == accordionIconSvg
          ? _value.accordionIconSvg
          : accordionIconSvg // ignore: cast_nullable_to_non_nullable
              as String,
      accordionTitle: null == accordionTitle
          ? _value.accordionTitle
          : accordionTitle // ignore: cast_nullable_to_non_nullable
              as String,
      prizes: null == prizes
          ? _value._prizes
          : prizes // ignore: cast_nullable_to_non_nullable
              as List<RewardsCategory>,
    ));
  }
}

/// @nodoc

class _$_RewardsAccordionCategory implements _RewardsAccordionCategory {
  _$_RewardsAccordionCategory(
      {required this.accordionIconSvg,
      required this.accordionTitle,
      required final List<RewardsCategory> prizes})
      : _prizes = prizes;

  @override
  final String accordionIconSvg;
  @override
  final String accordionTitle;
  final List<RewardsCategory> _prizes;
  @override
  List<RewardsCategory> get prizes {
    if (_prizes is EqualUnmodifiableListView) return _prizes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prizes);
  }

  @override
  String toString() {
    return 'RewardsAccordionCategory(accordionIconSvg: $accordionIconSvg, accordionTitle: $accordionTitle, prizes: $prizes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RewardsAccordionCategory &&
            (identical(other.accordionIconSvg, accordionIconSvg) ||
                other.accordionIconSvg == accordionIconSvg) &&
            (identical(other.accordionTitle, accordionTitle) ||
                other.accordionTitle == accordionTitle) &&
            const DeepCollectionEquality().equals(other._prizes, _prizes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accordionIconSvg, accordionTitle,
      const DeepCollectionEquality().hash(_prizes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RewardsAccordionCategoryCopyWith<_$_RewardsAccordionCategory>
      get copyWith => __$$_RewardsAccordionCategoryCopyWithImpl<
          _$_RewardsAccordionCategory>(this, _$identity);
}

abstract class _RewardsAccordionCategory implements RewardsAccordionCategory {
  factory _RewardsAccordionCategory(
          {required final String accordionIconSvg,
          required final String accordionTitle,
          required final List<RewardsCategory> prizes}) =
      _$_RewardsAccordionCategory;

  @override
  String get accordionIconSvg;
  @override
  String get accordionTitle;
  @override
  List<RewardsCategory> get prizes;
  @override
  @JsonKey(ignore: true)
  _$$_RewardsAccordionCategoryCopyWith<_$_RewardsAccordionCategory>
      get copyWith => throw _privateConstructorUsedError;
}
