// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_list_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CalendarListInfo {
  String get name => throw _privateConstructorUsedError;
  List<CalendarEvent> get events => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalendarListInfoCopyWith<CalendarListInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarListInfoCopyWith<$Res> {
  factory $CalendarListInfoCopyWith(
          CalendarListInfo value, $Res Function(CalendarListInfo) then) =
      _$CalendarListInfoCopyWithImpl<$Res, CalendarListInfo>;
  @useResult
  $Res call({String name, List<CalendarEvent> events});
}

/// @nodoc
class _$CalendarListInfoCopyWithImpl<$Res, $Val extends CalendarListInfo>
    implements $CalendarListInfoCopyWith<$Res> {
  _$CalendarListInfoCopyWithImpl(this._value, this._then);

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
              as List<CalendarEvent>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CalendarListInfoCopyWith<$Res>
    implements $CalendarListInfoCopyWith<$Res> {
  factory _$$_CalendarListInfoCopyWith(
          _$_CalendarListInfo value, $Res Function(_$_CalendarListInfo) then) =
      __$$_CalendarListInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<CalendarEvent> events});
}

/// @nodoc
class __$$_CalendarListInfoCopyWithImpl<$Res>
    extends _$CalendarListInfoCopyWithImpl<$Res, _$_CalendarListInfo>
    implements _$$_CalendarListInfoCopyWith<$Res> {
  __$$_CalendarListInfoCopyWithImpl(
      _$_CalendarListInfo _value, $Res Function(_$_CalendarListInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? events = null,
  }) {
    return _then(_$_CalendarListInfo(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<CalendarEvent>,
    ));
  }
}

/// @nodoc

class _$_CalendarListInfo implements _CalendarListInfo {
  _$_CalendarListInfo(
      {required this.name, required final List<CalendarEvent> events})
      : _events = events;

  @override
  final String name;
  final List<CalendarEvent> _events;
  @override
  List<CalendarEvent> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  String toString() {
    return 'CalendarListInfo(name: $name, events: $events)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalendarListInfo &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_events));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CalendarListInfoCopyWith<_$_CalendarListInfo> get copyWith =>
      __$$_CalendarListInfoCopyWithImpl<_$_CalendarListInfo>(this, _$identity);
}

abstract class _CalendarListInfo implements CalendarListInfo {
  factory _CalendarListInfo(
      {required final String name,
      required final List<CalendarEvent> events}) = _$_CalendarListInfo;

  @override
  String get name;
  @override
  List<CalendarEvent> get events;
  @override
  @JsonKey(ignore: true)
  _$$_CalendarListInfoCopyWith<_$_CalendarListInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
