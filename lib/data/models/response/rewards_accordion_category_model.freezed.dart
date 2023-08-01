// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rewards_accordion_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RewardsAccordionCategoryModel _$RewardsAccordionCategoryModelFromJson(
    Map<String, dynamic> json) {
  return _RewardsAccordionCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$RewardsAccordionCategoryModel {
// required String accordionIconSvg,
  @JsonKey(name: 'name')
  String get accordionTitle => throw _privateConstructorUsedError;
  List<RewardsCategoryModel> get prizes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RewardsAccordionCategoryModelCopyWith<RewardsAccordionCategoryModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardsAccordionCategoryModelCopyWith<$Res> {
  factory $RewardsAccordionCategoryModelCopyWith(
          RewardsAccordionCategoryModel value,
          $Res Function(RewardsAccordionCategoryModel) then) =
      _$RewardsAccordionCategoryModelCopyWithImpl<$Res,
          RewardsAccordionCategoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String accordionTitle,
      List<RewardsCategoryModel> prizes});
}

/// @nodoc
class _$RewardsAccordionCategoryModelCopyWithImpl<$Res,
        $Val extends RewardsAccordionCategoryModel>
    implements $RewardsAccordionCategoryModelCopyWith<$Res> {
  _$RewardsAccordionCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accordionTitle = null,
    Object? prizes = null,
  }) {
    return _then(_value.copyWith(
      accordionTitle: null == accordionTitle
          ? _value.accordionTitle
          : accordionTitle // ignore: cast_nullable_to_non_nullable
              as String,
      prizes: null == prizes
          ? _value.prizes
          : prizes // ignore: cast_nullable_to_non_nullable
              as List<RewardsCategoryModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RewardsAccordionCategoryModelCopyWith<$Res>
    implements $RewardsAccordionCategoryModelCopyWith<$Res> {
  factory _$$_RewardsAccordionCategoryModelCopyWith(
          _$_RewardsAccordionCategoryModel value,
          $Res Function(_$_RewardsAccordionCategoryModel) then) =
      __$$_RewardsAccordionCategoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String accordionTitle,
      List<RewardsCategoryModel> prizes});
}

/// @nodoc
class __$$_RewardsAccordionCategoryModelCopyWithImpl<$Res>
    extends _$RewardsAccordionCategoryModelCopyWithImpl<$Res,
        _$_RewardsAccordionCategoryModel>
    implements _$$_RewardsAccordionCategoryModelCopyWith<$Res> {
  __$$_RewardsAccordionCategoryModelCopyWithImpl(
      _$_RewardsAccordionCategoryModel _value,
      $Res Function(_$_RewardsAccordionCategoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accordionTitle = null,
    Object? prizes = null,
  }) {
    return _then(_$_RewardsAccordionCategoryModel(
      accordionTitle: null == accordionTitle
          ? _value.accordionTitle
          : accordionTitle // ignore: cast_nullable_to_non_nullable
              as String,
      prizes: null == prizes
          ? _value._prizes
          : prizes // ignore: cast_nullable_to_non_nullable
              as List<RewardsCategoryModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RewardsAccordionCategoryModel extends _RewardsAccordionCategoryModel {
  _$_RewardsAccordionCategoryModel(
      {@JsonKey(name: 'name') required this.accordionTitle,
      required final List<RewardsCategoryModel> prizes})
      : _prizes = prizes,
        super._();

  factory _$_RewardsAccordionCategoryModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_RewardsAccordionCategoryModelFromJson(json);

// required String accordionIconSvg,
  @override
  @JsonKey(name: 'name')
  final String accordionTitle;
  final List<RewardsCategoryModel> _prizes;
  @override
  List<RewardsCategoryModel> get prizes {
    if (_prizes is EqualUnmodifiableListView) return _prizes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prizes);
  }

  @override
  String toString() {
    return 'RewardsAccordionCategoryModel(accordionTitle: $accordionTitle, prizes: $prizes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RewardsAccordionCategoryModel &&
            (identical(other.accordionTitle, accordionTitle) ||
                other.accordionTitle == accordionTitle) &&
            const DeepCollectionEquality().equals(other._prizes, _prizes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accordionTitle,
      const DeepCollectionEquality().hash(_prizes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RewardsAccordionCategoryModelCopyWith<_$_RewardsAccordionCategoryModel>
      get copyWith => __$$_RewardsAccordionCategoryModelCopyWithImpl<
          _$_RewardsAccordionCategoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RewardsAccordionCategoryModelToJson(
      this,
    );
  }
}

abstract class _RewardsAccordionCategoryModel
    extends RewardsAccordionCategoryModel {
  factory _RewardsAccordionCategoryModel(
          {@JsonKey(name: 'name') required final String accordionTitle,
          required final List<RewardsCategoryModel> prizes}) =
      _$_RewardsAccordionCategoryModel;
  _RewardsAccordionCategoryModel._() : super._();

  factory _RewardsAccordionCategoryModel.fromJson(Map<String, dynamic> json) =
      _$_RewardsAccordionCategoryModel.fromJson;

  @override // required String accordionIconSvg,
  @JsonKey(name: 'name')
  String get accordionTitle;
  @override
  List<RewardsCategoryModel> get prizes;
  @override
  @JsonKey(ignore: true)
  _$$_RewardsAccordionCategoryModelCopyWith<_$_RewardsAccordionCategoryModel>
      get copyWith => throw _privateConstructorUsedError;
}
