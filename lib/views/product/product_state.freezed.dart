// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductState {
  bool get loading => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  List<ProductAccordionInfo> get accordionProducts =>
      throw _privateConstructorUsedError;
  CalendarListInfo? get listEvents => throw _privateConstructorUsedError;
  CalendarEvent? get detailsEvent => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductStateCopyWith<ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
  @useResult
  $Res call(
      {bool loading,
      String error,
      List<ProductAccordionInfo> accordionProducts,
      CalendarListInfo? listEvents,
      CalendarEvent? detailsEvent});

  $CalendarListInfoCopyWith<$Res>? get listEvents;
  $CalendarEventCopyWith<$Res>? get detailsEvent;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? accordionProducts = null,
    Object? listEvents = freezed,
    Object? detailsEvent = freezed,
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
      accordionProducts: null == accordionProducts
          ? _value.accordionProducts
          : accordionProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductAccordionInfo>,
      listEvents: freezed == listEvents
          ? _value.listEvents
          : listEvents // ignore: cast_nullable_to_non_nullable
              as CalendarListInfo?,
      detailsEvent: freezed == detailsEvent
          ? _value.detailsEvent
          : detailsEvent // ignore: cast_nullable_to_non_nullable
              as CalendarEvent?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CalendarListInfoCopyWith<$Res>? get listEvents {
    if (_value.listEvents == null) {
      return null;
    }

    return $CalendarListInfoCopyWith<$Res>(_value.listEvents!, (value) {
      return _then(_value.copyWith(listEvents: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CalendarEventCopyWith<$Res>? get detailsEvent {
    if (_value.detailsEvent == null) {
      return null;
    }

    return $CalendarEventCopyWith<$Res>(_value.detailsEvent!, (value) {
      return _then(_value.copyWith(detailsEvent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductStateCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$$_ProductStateCopyWith(
          _$_ProductState value, $Res Function(_$_ProductState) then) =
      __$$_ProductStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      String error,
      List<ProductAccordionInfo> accordionProducts,
      CalendarListInfo? listEvents,
      CalendarEvent? detailsEvent});

  @override
  $CalendarListInfoCopyWith<$Res>? get listEvents;
  @override
  $CalendarEventCopyWith<$Res>? get detailsEvent;
}

/// @nodoc
class __$$_ProductStateCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$_ProductState>
    implements _$$_ProductStateCopyWith<$Res> {
  __$$_ProductStateCopyWithImpl(
      _$_ProductState _value, $Res Function(_$_ProductState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? accordionProducts = null,
    Object? listEvents = freezed,
    Object? detailsEvent = freezed,
  }) {
    return _then(_$_ProductState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      accordionProducts: null == accordionProducts
          ? _value._accordionProducts
          : accordionProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductAccordionInfo>,
      listEvents: freezed == listEvents
          ? _value.listEvents
          : listEvents // ignore: cast_nullable_to_non_nullable
              as CalendarListInfo?,
      detailsEvent: freezed == detailsEvent
          ? _value.detailsEvent
          : detailsEvent // ignore: cast_nullable_to_non_nullable
              as CalendarEvent?,
    ));
  }
}

/// @nodoc

class _$_ProductState implements _ProductState {
  const _$_ProductState(
      {this.loading = false,
      this.error = '',
      final List<ProductAccordionInfo> accordionProducts = const [],
      this.listEvents,
      this.detailsEvent})
      : _accordionProducts = accordionProducts;

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final String error;
  final List<ProductAccordionInfo> _accordionProducts;
  @override
  @JsonKey()
  List<ProductAccordionInfo> get accordionProducts {
    if (_accordionProducts is EqualUnmodifiableListView)
      return _accordionProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accordionProducts);
  }

  @override
  final CalendarListInfo? listEvents;
  @override
  final CalendarEvent? detailsEvent;

  @override
  String toString() {
    return 'ProductState(loading: $loading, error: $error, accordionProducts: $accordionProducts, listEvents: $listEvents, detailsEvent: $detailsEvent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality()
                .equals(other._accordionProducts, _accordionProducts) &&
            (identical(other.listEvents, listEvents) ||
                other.listEvents == listEvents) &&
            (identical(other.detailsEvent, detailsEvent) ||
                other.detailsEvent == detailsEvent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      error,
      const DeepCollectionEquality().hash(_accordionProducts),
      listEvents,
      detailsEvent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductStateCopyWith<_$_ProductState> get copyWith =>
      __$$_ProductStateCopyWithImpl<_$_ProductState>(this, _$identity);
}

abstract class _ProductState implements ProductState {
  const factory _ProductState(
      {final bool loading,
      final String error,
      final List<ProductAccordionInfo> accordionProducts,
      final CalendarListInfo? listEvents,
      final CalendarEvent? detailsEvent}) = _$_ProductState;

  @override
  bool get loading;
  @override
  String get error;
  @override
  List<ProductAccordionInfo> get accordionProducts;
  @override
  CalendarListInfo? get listEvents;
  @override
  CalendarEvent? get detailsEvent;
  @override
  @JsonKey(ignore: true)
  _$$_ProductStateCopyWith<_$_ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}
