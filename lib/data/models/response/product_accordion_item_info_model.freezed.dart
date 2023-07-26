// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_accordion_item_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductAccordionItemInfoModel _$ProductAccordionItemInfoModelFromJson(
    Map<String, dynamic> json) {
  return _ProductAccordionItemInfoModel.fromJson(json);
}

/// @nodoc
mixin _$ProductAccordionItemInfoModel {
  String get itemId => throw _privateConstructorUsedError;
  String get bgImage => throw _privateConstructorUsedError;
  String get urlExternal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductAccordionItemInfoModelCopyWith<ProductAccordionItemInfoModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductAccordionItemInfoModelCopyWith<$Res> {
  factory $ProductAccordionItemInfoModelCopyWith(
          ProductAccordionItemInfoModel value,
          $Res Function(ProductAccordionItemInfoModel) then) =
      _$ProductAccordionItemInfoModelCopyWithImpl<$Res,
          ProductAccordionItemInfoModel>;
  @useResult
  $Res call({String itemId, String bgImage, String urlExternal});
}

/// @nodoc
class _$ProductAccordionItemInfoModelCopyWithImpl<$Res,
        $Val extends ProductAccordionItemInfoModel>
    implements $ProductAccordionItemInfoModelCopyWith<$Res> {
  _$ProductAccordionItemInfoModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_ProductAccordionItemInfoModelCopyWith<$Res>
    implements $ProductAccordionItemInfoModelCopyWith<$Res> {
  factory _$$_ProductAccordionItemInfoModelCopyWith(
          _$_ProductAccordionItemInfoModel value,
          $Res Function(_$_ProductAccordionItemInfoModel) then) =
      __$$_ProductAccordionItemInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String itemId, String bgImage, String urlExternal});
}

/// @nodoc
class __$$_ProductAccordionItemInfoModelCopyWithImpl<$Res>
    extends _$ProductAccordionItemInfoModelCopyWithImpl<$Res,
        _$_ProductAccordionItemInfoModel>
    implements _$$_ProductAccordionItemInfoModelCopyWith<$Res> {
  __$$_ProductAccordionItemInfoModelCopyWithImpl(
      _$_ProductAccordionItemInfoModel _value,
      $Res Function(_$_ProductAccordionItemInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? bgImage = null,
    Object? urlExternal = null,
  }) {
    return _then(_$_ProductAccordionItemInfoModel(
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
@JsonSerializable()
class _$_ProductAccordionItemInfoModel extends _ProductAccordionItemInfoModel {
  _$_ProductAccordionItemInfoModel(
      {required this.itemId, required this.bgImage, required this.urlExternal})
      : super._();

  factory _$_ProductAccordionItemInfoModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_ProductAccordionItemInfoModelFromJson(json);

  @override
  final String itemId;
  @override
  final String bgImage;
  @override
  final String urlExternal;

  @override
  String toString() {
    return 'ProductAccordionItemInfoModel(itemId: $itemId, bgImage: $bgImage, urlExternal: $urlExternal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductAccordionItemInfoModel &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.bgImage, bgImage) || other.bgImage == bgImage) &&
            (identical(other.urlExternal, urlExternal) ||
                other.urlExternal == urlExternal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, itemId, bgImage, urlExternal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductAccordionItemInfoModelCopyWith<_$_ProductAccordionItemInfoModel>
      get copyWith => __$$_ProductAccordionItemInfoModelCopyWithImpl<
          _$_ProductAccordionItemInfoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductAccordionItemInfoModelToJson(
      this,
    );
  }
}

abstract class _ProductAccordionItemInfoModel
    extends ProductAccordionItemInfoModel {
  factory _ProductAccordionItemInfoModel(
      {required final String itemId,
      required final String bgImage,
      required final String urlExternal}) = _$_ProductAccordionItemInfoModel;
  _ProductAccordionItemInfoModel._() : super._();

  factory _ProductAccordionItemInfoModel.fromJson(Map<String, dynamic> json) =
      _$_ProductAccordionItemInfoModel.fromJson;

  @override
  String get itemId;
  @override
  String get bgImage;
  @override
  String get urlExternal;
  @override
  @JsonKey(ignore: true)
  _$$_ProductAccordionItemInfoModelCopyWith<_$_ProductAccordionItemInfoModel>
      get copyWith => throw _privateConstructorUsedError;
}
