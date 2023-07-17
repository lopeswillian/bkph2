// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anticipation_with_discharge_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnticipationWithDischargeModel {
  double get discharge => throw _privateConstructorUsedError;
  List<AnticipationInfoModel> get listAnticipation =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnticipationWithDischargeModelCopyWith<AnticipationWithDischargeModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnticipationWithDischargeModelCopyWith<$Res> {
  factory $AnticipationWithDischargeModelCopyWith(
          AnticipationWithDischargeModel value,
          $Res Function(AnticipationWithDischargeModel) then) =
      _$AnticipationWithDischargeModelCopyWithImpl<$Res,
          AnticipationWithDischargeModel>;
  @useResult
  $Res call({double discharge, List<AnticipationInfoModel> listAnticipation});
}

/// @nodoc
class _$AnticipationWithDischargeModelCopyWithImpl<$Res,
        $Val extends AnticipationWithDischargeModel>
    implements $AnticipationWithDischargeModelCopyWith<$Res> {
  _$AnticipationWithDischargeModelCopyWithImpl(this._value, this._then);

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
              as List<AnticipationInfoModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnticipationWithDischargeModelCopyWith<$Res>
    implements $AnticipationWithDischargeModelCopyWith<$Res> {
  factory _$$_AnticipationWithDischargeModelCopyWith(
          _$_AnticipationWithDischargeModel value,
          $Res Function(_$_AnticipationWithDischargeModel) then) =
      __$$_AnticipationWithDischargeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double discharge, List<AnticipationInfoModel> listAnticipation});
}

/// @nodoc
class __$$_AnticipationWithDischargeModelCopyWithImpl<$Res>
    extends _$AnticipationWithDischargeModelCopyWithImpl<$Res,
        _$_AnticipationWithDischargeModel>
    implements _$$_AnticipationWithDischargeModelCopyWith<$Res> {
  __$$_AnticipationWithDischargeModelCopyWithImpl(
      _$_AnticipationWithDischargeModel _value,
      $Res Function(_$_AnticipationWithDischargeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discharge = null,
    Object? listAnticipation = null,
  }) {
    return _then(_$_AnticipationWithDischargeModel(
      discharge: null == discharge
          ? _value.discharge
          : discharge // ignore: cast_nullable_to_non_nullable
              as double,
      listAnticipation: null == listAnticipation
          ? _value._listAnticipation
          : listAnticipation // ignore: cast_nullable_to_non_nullable
              as List<AnticipationInfoModel>,
    ));
  }
}

/// @nodoc

class _$_AnticipationWithDischargeModel
    extends _AnticipationWithDischargeModel {
  _$_AnticipationWithDischargeModel(
      {required this.discharge,
      required final List<AnticipationInfoModel> listAnticipation})
      : _listAnticipation = listAnticipation,
        super._();

  @override
  final double discharge;
  final List<AnticipationInfoModel> _listAnticipation;
  @override
  List<AnticipationInfoModel> get listAnticipation {
    if (_listAnticipation is EqualUnmodifiableListView)
      return _listAnticipation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listAnticipation);
  }

  @override
  String toString() {
    return 'AnticipationWithDischargeModel(discharge: $discharge, listAnticipation: $listAnticipation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnticipationWithDischargeModel &&
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
  _$$_AnticipationWithDischargeModelCopyWith<_$_AnticipationWithDischargeModel>
      get copyWith => __$$_AnticipationWithDischargeModelCopyWithImpl<
          _$_AnticipationWithDischargeModel>(this, _$identity);
}

abstract class _AnticipationWithDischargeModel
    extends AnticipationWithDischargeModel {
  factory _AnticipationWithDischargeModel(
          {required final double discharge,
          required final List<AnticipationInfoModel> listAnticipation}) =
      _$_AnticipationWithDischargeModel;
  _AnticipationWithDischargeModel._() : super._();

  @override
  double get discharge;
  @override
  List<AnticipationInfoModel> get listAnticipation;
  @override
  @JsonKey(ignore: true)
  _$$_AnticipationWithDischargeModelCopyWith<_$_AnticipationWithDischargeModel>
      get copyWith => throw _privateConstructorUsedError;
}
