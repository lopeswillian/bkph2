// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_accordion_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductAccordionInfoModel _$ProductAccordionInfoModelFromJson(
    Map<String, dynamic> json) {
  return _ProductAccordionInfoModel.fromJson(json);
}

/// @nodoc
mixin _$ProductAccordionInfoModel {
  String get accordionIconSvg => throw _privateConstructorUsedError;
  String get accordionTitle => throw _privateConstructorUsedError;
  String get accordionSubTitle => throw _privateConstructorUsedError;
  int get gridItemSpacing => throw _privateConstructorUsedError;
  List<ProductAccordionItemInfoModel> get accordionItems =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductAccordionInfoModelCopyWith<ProductAccordionInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductAccordionInfoModelCopyWith<$Res> {
  factory $ProductAccordionInfoModelCopyWith(ProductAccordionInfoModel value,
          $Res Function(ProductAccordionInfoModel) then) =
      _$ProductAccordionInfoModelCopyWithImpl<$Res, ProductAccordionInfoModel>;
  @useResult
  $Res call(
      {String accordionIconSvg,
      String accordionTitle,
      String accordionSubTitle,
      int gridItemSpacing,
      List<ProductAccordionItemInfoModel> accordionItems});
}

/// @nodoc
class _$ProductAccordionInfoModelCopyWithImpl<$Res,
        $Val extends ProductAccordionInfoModel>
    implements $ProductAccordionInfoModelCopyWith<$Res> {
  _$ProductAccordionInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accordionIconSvg = null,
    Object? accordionTitle = null,
    Object? accordionSubTitle = null,
    Object? gridItemSpacing = null,
    Object? accordionItems = null,
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
      accordionSubTitle: null == accordionSubTitle
          ? _value.accordionSubTitle
          : accordionSubTitle // ignore: cast_nullable_to_non_nullable
              as String,
      gridItemSpacing: null == gridItemSpacing
          ? _value.gridItemSpacing
          : gridItemSpacing // ignore: cast_nullable_to_non_nullable
              as int,
      accordionItems: null == accordionItems
          ? _value.accordionItems
          : accordionItems // ignore: cast_nullable_to_non_nullable
              as List<ProductAccordionItemInfoModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductAccordionInfoModelCopyWith<$Res>
    implements $ProductAccordionInfoModelCopyWith<$Res> {
  factory _$$_ProductAccordionInfoModelCopyWith(
          _$_ProductAccordionInfoModel value,
          $Res Function(_$_ProductAccordionInfoModel) then) =
      __$$_ProductAccordionInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String accordionIconSvg,
      String accordionTitle,
      String accordionSubTitle,
      int gridItemSpacing,
      List<ProductAccordionItemInfoModel> accordionItems});
}

/// @nodoc
class __$$_ProductAccordionInfoModelCopyWithImpl<$Res>
    extends _$ProductAccordionInfoModelCopyWithImpl<$Res,
        _$_ProductAccordionInfoModel>
    implements _$$_ProductAccordionInfoModelCopyWith<$Res> {
  __$$_ProductAccordionInfoModelCopyWithImpl(
      _$_ProductAccordionInfoModel _value,
      $Res Function(_$_ProductAccordionInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accordionIconSvg = null,
    Object? accordionTitle = null,
    Object? accordionSubTitle = null,
    Object? gridItemSpacing = null,
    Object? accordionItems = null,
  }) {
    return _then(_$_ProductAccordionInfoModel(
      accordionIconSvg: null == accordionIconSvg
          ? _value.accordionIconSvg
          : accordionIconSvg // ignore: cast_nullable_to_non_nullable
              as String,
      accordionTitle: null == accordionTitle
          ? _value.accordionTitle
          : accordionTitle // ignore: cast_nullable_to_non_nullable
              as String,
      accordionSubTitle: null == accordionSubTitle
          ? _value.accordionSubTitle
          : accordionSubTitle // ignore: cast_nullable_to_non_nullable
              as String,
      gridItemSpacing: null == gridItemSpacing
          ? _value.gridItemSpacing
          : gridItemSpacing // ignore: cast_nullable_to_non_nullable
              as int,
      accordionItems: null == accordionItems
          ? _value._accordionItems
          : accordionItems // ignore: cast_nullable_to_non_nullable
              as List<ProductAccordionItemInfoModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductAccordionInfoModel extends _ProductAccordionInfoModel {
  _$_ProductAccordionInfoModel(
      {required this.accordionIconSvg,
      required this.accordionTitle,
      required this.accordionSubTitle,
      required this.gridItemSpacing,
      required final List<ProductAccordionItemInfoModel> accordionItems})
      : _accordionItems = accordionItems,
        super._();

  factory _$_ProductAccordionInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductAccordionInfoModelFromJson(json);

  @override
  final String accordionIconSvg;
  @override
  final String accordionTitle;
  @override
  final String accordionSubTitle;
  @override
  final int gridItemSpacing;
  final List<ProductAccordionItemInfoModel> _accordionItems;
  @override
  List<ProductAccordionItemInfoModel> get accordionItems {
    if (_accordionItems is EqualUnmodifiableListView) return _accordionItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accordionItems);
  }

  @override
  String toString() {
    return 'ProductAccordionInfoModel(accordionIconSvg: $accordionIconSvg, accordionTitle: $accordionTitle, accordionSubTitle: $accordionSubTitle, gridItemSpacing: $gridItemSpacing, accordionItems: $accordionItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductAccordionInfoModel &&
            (identical(other.accordionIconSvg, accordionIconSvg) ||
                other.accordionIconSvg == accordionIconSvg) &&
            (identical(other.accordionTitle, accordionTitle) ||
                other.accordionTitle == accordionTitle) &&
            (identical(other.accordionSubTitle, accordionSubTitle) ||
                other.accordionSubTitle == accordionSubTitle) &&
            (identical(other.gridItemSpacing, gridItemSpacing) ||
                other.gridItemSpacing == gridItemSpacing) &&
            const DeepCollectionEquality()
                .equals(other._accordionItems, _accordionItems));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      accordionIconSvg,
      accordionTitle,
      accordionSubTitle,
      gridItemSpacing,
      const DeepCollectionEquality().hash(_accordionItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductAccordionInfoModelCopyWith<_$_ProductAccordionInfoModel>
      get copyWith => __$$_ProductAccordionInfoModelCopyWithImpl<
          _$_ProductAccordionInfoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductAccordionInfoModelToJson(
      this,
    );
  }
}

abstract class _ProductAccordionInfoModel extends ProductAccordionInfoModel {
  factory _ProductAccordionInfoModel(
          {required final String accordionIconSvg,
          required final String accordionTitle,
          required final String accordionSubTitle,
          required final int gridItemSpacing,
          required final List<ProductAccordionItemInfoModel> accordionItems}) =
      _$_ProductAccordionInfoModel;
  _ProductAccordionInfoModel._() : super._();

  factory _ProductAccordionInfoModel.fromJson(Map<String, dynamic> json) =
      _$_ProductAccordionInfoModel.fromJson;

  @override
  String get accordionIconSvg;
  @override
  String get accordionTitle;
  @override
  String get accordionSubTitle;
  @override
  int get gridItemSpacing;
  @override
  List<ProductAccordionItemInfoModel> get accordionItems;
  @override
  @JsonKey(ignore: true)
  _$$_ProductAccordionInfoModelCopyWith<_$_ProductAccordionInfoModel>
      get copyWith => throw _privateConstructorUsedError;
}
