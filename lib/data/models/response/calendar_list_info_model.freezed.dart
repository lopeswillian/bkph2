// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_list_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CalendarListInfoModel _$CalendarListInfoModelFromJson(
    Map<String, dynamic> json) {
  return _CalendarListInfoModel.fromJson(json);
}

/// @nodoc
mixin _$CalendarListInfoModel {
  String get name => throw _privateConstructorUsedError;
  List<CalendarEventModel> get events => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalendarListInfoModelCopyWith<CalendarListInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarListInfoModelCopyWith<$Res> {
  factory $CalendarListInfoModelCopyWith(CalendarListInfoModel value,
          $Res Function(CalendarListInfoModel) then) =
      _$CalendarListInfoModelCopyWithImpl<$Res, CalendarListInfoModel>;
  @useResult
  $Res call({String name, List<CalendarEventModel> events});
}

/// @nodoc
class _$CalendarListInfoModelCopyWithImpl<$Res,
        $Val extends CalendarListInfoModel>
    implements $CalendarListInfoModelCopyWith<$Res> {
  _$CalendarListInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? events = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<CalendarEventModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CalendarListInfoModelCopyWith<$Res>
    implements $CalendarListInfoModelCopyWith<$Res> {
  factory _$$_CalendarListInfoModelCopyWith(_$_CalendarListInfoModel value,
          $Res Function(_$_CalendarListInfoModel) then) =
      __$$_CalendarListInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<CalendarEventModel> events});
}

/// @nodoc
class __$$_CalendarListInfoModelCopyWithImpl<$Res>
    extends _$CalendarListInfoModelCopyWithImpl<$Res, _$_CalendarListInfoModel>
    implements _$$_CalendarListInfoModelCopyWith<$Res> {
  __$$_CalendarListInfoModelCopyWithImpl(_$_CalendarListInfoModel _value,
      $Res Function(_$_CalendarListInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? events = null,
  }) {
    return _then(_$_CalendarListInfoModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<CalendarEventModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CalendarListInfoModel extends _CalendarListInfoModel {
  _$_CalendarListInfoModel(
      {required this.name, required final List<CalendarEventModel> events})
      : _events = events,
        super._();

  factory _$_CalendarListInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_CalendarListInfoModelFromJson(json);

  @override
  final String name;
  final List<CalendarEventModel> _events;
  @override
  List<CalendarEventModel> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  String toString() {
    return 'CalendarListInfoModel(name: $name, events: $events)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalendarListInfoModel &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_events));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CalendarListInfoModelCopyWith<_$_CalendarListInfoModel> get copyWith =>
      __$$_CalendarListInfoModelCopyWithImpl<_$_CalendarListInfoModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CalendarListInfoModelToJson(
      this,
    );
  }
}

abstract class _CalendarListInfoModel extends CalendarListInfoModel {
  factory _CalendarListInfoModel(
          {required final String name,
          required final List<CalendarEventModel> events}) =
      _$_CalendarListInfoModel;
  _CalendarListInfoModel._() : super._();

  factory _CalendarListInfoModel.fromJson(Map<String, dynamic> json) =
      _$_CalendarListInfoModel.fromJson;

  @override
  String get name;
  @override
  List<CalendarEventModel> get events;
  @override
  @JsonKey(ignore: true)
  _$$_CalendarListInfoModelCopyWith<_$_CalendarListInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
