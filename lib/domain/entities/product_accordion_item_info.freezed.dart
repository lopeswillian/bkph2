// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_accordion_item_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductAccordionItemInfo {
  String get itemId => throw _privateConstructorUsedError;
  String get bgImage => throw _privateConstructorUsedError;
  String get urlExternal => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductAccordionItemInfoCopyWith<ProductAccordionItemInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductAccordionItemInfoCopyWith<$Res> {
  factory $ProductAccordionItemInfoCopyWith(ProductAccordionItemInfo value,
          $Res Function(ProductAccordionItemInfo) then) =
      _$ProductAccordionItemInfoCopyWithImpl<$Res, ProductAccordionItemInfo>;
  @useResult
  $Res call({String itemId, String bgImage, String urlExternal});
}

/// @nodoc
class _$ProductAccordionItemInfoCopyWithImpl<$Res,
        $Val extends ProductAccordionItemInfo>
    implements $ProductAccordionItemInfoCopyWith<$Res> {
  _$ProductAccordionItemInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? bgImage = null,
    Object? urlExternal = null,
  }) {
    return _then(_value.copyWith(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      bgImage: null == bgImage
          ? _value.bgImage
          : bgImage // ignore: cast_nullable_to_non_nullable
              as String,
      urlExternal: null == urlExternal
          ? _value.urlExternal
          : urlExternal // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductAccordionItemInfoCopyWith<$Res>
    implements $ProductAccordionItemInfoCopyWith<$Res> {
  factory _$$_ProductAccordionItemInfoCopyWith(
          _$_ProductAccordionItemInfo value,
          $Res Function(_$_ProductAccordionItemInfo) then) =
      __$$_ProductAccordionItemInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String itemId, String bgImage, String urlExternal});
}

/// @nodoc
class __$$_ProductAccordionItemInfoCopyWithImpl<$Res>
    extends _$ProductAccordionItemInfoCopyWithImpl<$Res,
        _$_ProductAccordionItemInfo>
    implements _$$_ProductAccordionItemInfoCopyWith<$Res> {
  __$$_ProductAccordionItemInfoCopyWithImpl(_$_ProductAccordionItemInfo _value,
      $Res Function(_$_ProductAccordionItemInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? bgImage = null,
    Object? urlExternal = null,
  }) {
    return _then(_$_ProductAccordionItemInfo(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      bgImage: null == bgImage
          ? _value.bgImage
          : bgImage // ignore: cast_nullable_to_non_nullable
              as String,
      urlExternal: null == urlExternal
          ? _value.urlExternal
          : urlExternal // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ProductAccordionItemInfo implements _ProductAccordionItemInfo {
  _$_ProductAccordionItemInfo(
      {required this.itemId, required this.bgImage, required this.urlExternal});

  @override
  final String itemId;
  @override
  final String bgImage;
  @override
  final String urlExternal;

  @override
  String toString() {
    return 'ProductAccordionItemInfo(itemId: $itemId, bgImage: $bgImage, urlExternal: $urlExternal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductAccordionItemInfo &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.bgImage, bgImage) || other.bgImage == bgImage) &&
            (identical(other.urlExternal, urlExternal) ||
                other.urlExternal == urlExternal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, itemId, bgImage, urlExternal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductAccordionItemInfoCopyWith<_$_ProductAccordionItemInfo>
      get copyWith => __$$_ProductAccordionItemInfoCopyWithImpl<
          _$_ProductAccordionItemInfo>(this, _$identity);
}

abstract class _ProductAccordionItemInfo implements ProductAccordionItemInfo {
  factory _ProductAccordionItemInfo(
      {required final String itemId,
      required final String bgImage,
      required final String urlExternal}) = _$_ProductAccordionItemInfo;

  @override
  String get itemId;
  @override
  String get bgImage;
  @override
  String get urlExternal;
  @override
  @JsonKey(ignore: true)
  _$$_ProductAccordionItemInfoCopyWith<_$_ProductAccordionItemInfo>
      get copyWith => throw _privateConstructorUsedError;
}
