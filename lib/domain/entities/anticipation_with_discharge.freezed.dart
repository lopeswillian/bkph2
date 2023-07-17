// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anticipation_with_discharge.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnticipationWithDischarge {
  double get discharge => throw _privateConstructorUsedError;
  List<AnticipationInfo> get listAnticipation =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnticipationWithDischargeCopyWith<AnticipationWithDischarge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnticipationWithDischargeCopyWith<$Res> {
  factory $AnticipationWithDischargeCopyWith(AnticipationWithDischarge value,
          $Res Function(AnticipationWithDischarge) then) =
      _$AnticipationWithDischargeCopyWithImpl<$Res, AnticipationWithDischarge>;
  @useResult
  $Res call({double discharge, List<AnticipationInfo> listAnticipation});
}

/// @nodoc
class _$AnticipationWithDischargeCopyWithImpl<$Res,
        $Val extends AnticipationWithDischarge>
    implements $AnticipationWithDischargeCopyWith<$Res> {
  _$AnticipationWithDischargeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discharge = null,
    Object? listAnticipation = null,
  }) {
    return _then(_value.copyWith(
      discharge: null == discharge
          ? _value.discharge
          : discharge // ignore: cast_nullable_to_non_nullable
              as double,
      listAnticipation: null == listAnticipation
          ? _value.listAnticipation
          : listAnticipation // ignore: cast_nullable_to_non_nullable
              as List<AnticipationInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnticipationWithDischargCopyWith<$Res>
    implements $AnticipationWithDischargeCopyWith<$Res> {
  factory _$$_AnticipationWithDischargCopyWith(
          _$_AnticipationWithDischarg value,
          $Res Function(_$_AnticipationWithDischarg) then) =
      __$$_AnticipationWithDischargCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double discharge, List<AnticipationInfo> listAnticipation});
}

/// @nodoc
class __$$_AnticipationWithDischargCopyWithImpl<$Res>
    extends _$AnticipationWithDischargeCopyWithImpl<$Res,
        _$_AnticipationWithDischarg>
    implements _$$_AnticipationWithDischargCopyWith<$Res> {
  __$$_AnticipationWithDischargCopyWithImpl(_$_AnticipationWithDischarg _value,
      $Res Function(_$_AnticipationWithDischarg) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discharge = null,
    Object? listAnticipation = null,
  }) {
    return _then(_$_AnticipationWithDischarg(
      discharge: null == discharge
          ? _value.discharge
          : discharge // ignore: cast_nullable_to_non_nullable
              as double,
      listAnticipation: null == listAnticipation
          ? _value._listAnticipation
          : listAnticipation // ignore: cast_nullable_to_non_nullable
              as List<AnticipationInfo>,
    ));
  }
}

/// @nodoc

class _$_AnticipationWithDischarg implements _AnticipationWithDischarg {
  _$_AnticipationWithDischarg(
      {required this.discharge,
      required final List<AnticipationInfo> listAnticipation})
      : _listAnticipation = listAnticipation;

  @override
  final double discharge;
  final List<AnticipationInfo> _listAnticipation;
  @override
  List<AnticipationInfo> get listAnticipation {
    if (_listAnticipation is EqualUnmodifiableListView)
      return _listAnticipation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listAnticipation);
  }

  @override
  String toString() {
    return 'AnticipationWithDischarge(discharge: $discharge, listAnticipation: $listAnticipation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnticipationWithDischarg &&
            (identical(other.discharge, discharge) ||
                other.discharge == discharge) &&
            const DeepCollectionEquality()
                .equals(other._listAnticipation, _listAnticipation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, discharge,
      const DeepCollectionEquality().hash(_listAnticipation));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnticipationWithDischargCopyWith<_$_AnticipationWithDischarg>
      get copyWith => __$$_AnticipationWithDischargCopyWithImpl<
          _$_AnticipationWithDischarg>(this, _$identity);
}

abstract class _AnticipationWithDischarg implements AnticipationWithDischarge {
  factory _AnticipationWithDischarg(
          {required final double discharge,
          required final List<AnticipationInfo> listAnticipation}) =
      _$_AnticipationWithDischarg;

  @override
  double get discharge;
  @override
  List<AnticipationInfo> get listAnticipation;
  @override
  @JsonKey(ignore: true)
  _$$_AnticipationWithDischargCopyWith<_$_AnticipationWithDischarg>
      get copyWith => throw _privateConstructorUsedError;
}
