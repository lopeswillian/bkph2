// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_accordion_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductAccordionInfo {
  String get accordionIconSvg => throw _privateConstructorUsedError;
  String get accordionTitle => throw _privateConstructorUsedError;
  String get accordionSubTitle => throw _privateConstructorUsedError;
  int get gridItemSpacing => throw _privateConstructorUsedError;
  List<ProductAccordionItemInfo> get accordionItems =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductAccordionInfoCopyWith<ProductAccordionInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductAccordionInfoCopyWith<$Res> {
  factory $ProductAccordionInfoCopyWith(ProductAccordionInfo value,
          $Res Function(ProductAccordionInfo) then) =
      _$ProductAccordionInfoCopyWithImpl<$Res, ProductAccordionInfo>;
  @useResult
  $Res call(
      {String accordionIconSvg,
      String accordionTitle,
      String accordionSubTitle,
      int gridItemSpacing,
      List<ProductAccordionItemInfo> accordionItems});
}

/// @nodoc
class _$ProductAccordionInfoCopyWithImpl<$Res,
        $Val extends ProductAccordionInfo>
    implements $ProductAccordionInfoCopyWith<$Res> {
  _$ProductAccordionInfoCopyWithImpl(this._value, this._then);

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
              as List<ProductAccordionItemInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductAccordionInfoCopyWith<$Res>
    implements $ProductAccordionInfoCopyWith<$Res> {
  factory _$$_ProductAccordionInfoCopyWith(_$_ProductAccordionInfo value,
          $Res Function(_$_ProductAccordionInfo) then) =
      __$$_ProductAccordionInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String accordionIconSvg,
      String accordionTitle,
      String accordionSubTitle,
      int gridItemSpacing,
      List<ProductAccordionItemInfo> accordionItems});
}

/// @nodoc
class __$$_ProductAccordionInfoCopyWithImpl<$Res>
    extends _$ProductAccordionInfoCopyWithImpl<$Res, _$_ProductAccordionInfo>
    implements _$$_ProductAccordionInfoCopyWith<$Res> {
  __$$_ProductAccordionInfoCopyWithImpl(_$_ProductAccordionInfo _value,
      $Res Function(_$_ProductAccordionInfo) _then)
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
    return _then(_$_ProductAccordionInfo(
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
              as List<ProductAccordionItemInfo>,
    ));
  }
}

/// @nodoc

class _$_ProductAccordionInfo implements _ProductAccordionInfo {
  _$_ProductAccordionInfo(
      {required this.accordionIconSvg,
      required this.accordionTitle,
      required this.accordionSubTitle,
      required this.gridItemSpacing,
      required final List<ProductAccordionItemInfo> accordionItems})
      : _accordionItems = accordionItems;

  @override
  final String accordionIconSvg;
  @override
  final String accordionTitle;
  @override
  final String accordionSubTitle;
  @override
  final int gridItemSpacing;
  final List<ProductAccordionItemInfo> _accordionItems;
  @override
  List<ProductAccordionItemInfo> get accordionItems {
    if (_accordionItems is EqualUnmodifiableListView) return _accordionItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accordionItems);
  }

  @override
  String toString() {
    return 'ProductAccordionInfo(accordionIconSvg: $accordionIconSvg, accordionTitle: $accordionTitle, accordionSubTitle: $accordionSubTitle, gridItemSpacing: $gridItemSpacing, accordionItems: $accordionItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductAccordionInfo &&
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
  _$$_ProductAccordionInfoCopyWith<_$_ProductAccordionInfo> get copyWith =>
      __$$_ProductAccordionInfoCopyWithImpl<_$_ProductAccordionInfo>(
          this, _$identity);
}

abstract class _ProductAccordionInfo implements ProductAccordionInfo {
  factory _ProductAccordionInfo(
          {required final String accordionIconSvg,
          required final String accordionTitle,
          required final String accordionSubTitle,
          required final int gridItemSpacing,
          required final List<ProductAccordionItemInfo> accordionItems}) =
      _$_ProductAccordionInfo;

  @override
  String get accordionIconSvg;
  @override
  String get accordionTitle;
  @override
  String get accordionSubTitle;
  @override
  int get gridItemSpacing;
  @override
  List<ProductAccordionItemInfo> get accordionItems;
  @override
  @JsonKey(ignore: true)
  _$$_ProductAccordionInfoCopyWith<_$_ProductAccordionInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
