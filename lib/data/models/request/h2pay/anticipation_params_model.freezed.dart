// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anticipation_params_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnticipationParamsModel _$AnticipationParamsModelFromJson(
    Map<String, dynamic> json) {
  return _AnticipationParamsModel.fromJson(json);
}

/// @nodoc
mixin _$AnticipationParamsModel {
  int get customerId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnticipationParamsModelCopyWith<AnticipationParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnticipationParamsModelCopyWith<$Res> {
  factory $AnticipationParamsModelCopyWith(AnticipationParamsModel value,
          $Res Function(AnticipationParamsModel) then) =
      _$AnticipationParamsModelCopyWithImpl<$Res, AnticipationParamsModel>;
  @useResult
  $Res call({int customerId});
}

/// @nodoc
class _$AnticipationParamsModelCopyWithImpl<$Res,
        $Val extends AnticipationParamsModel>
    implements $AnticipationParamsModelCopyWith<$Res> {
  _$AnticipationParamsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
  }) {
    return _then(_value.copyWith(
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnticipationParamsModelCopyWith<$Res>
    implements $AnticipationParamsModelCopyWith<$Res> {
  factory _$$_AnticipationParamsModelCopyWith(_$_AnticipationParamsModel value,
          $Res Function(_$_AnticipationParamsModel) then) =
      __$$_AnticipationParamsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int customerId});
}

/// @nodoc
class __$$_AnticipationParamsModelCopyWithImpl<$Res>
    extends _$AnticipationParamsModelCopyWithImpl<$Res,
        _$_AnticipationParamsModel>
    implements _$$_AnticipationParamsModelCopyWith<$Res> {
  __$$_AnticipationParamsModelCopyWithImpl(_$_AnticipationParamsModel _value,
      $Res Function(_$_AnticipationParamsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
  }) {
    return _then(_$_AnticipationParamsModel(
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnticipationParamsModel extends _AnticipationParamsModel {
  _$_AnticipationParamsModel({required this.customerId}) : super._();

  factory _$_AnticipationParamsModel.fromJson(Map<String, dynamic> json) =>
      _$$_AnticipationParamsModelFromJson(json);

  @override
  final int customerId;

  @override
  String toString() {
    return 'AnticipationParamsModel(customerId: $customerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnticipationParamsModel &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, customerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnticipationParamsModelCopyWith<_$_AnticipationParamsModel>
      get copyWith =>
          __$$_AnticipationParamsModelCopyWithImpl<_$_AnticipationParamsModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnticipationParamsModelToJson(
      this,
    );
  }
}

abstract class _AnticipationParamsModel extends AnticipationParamsModel {
  factory _AnticipationParamsModel({required final int customerId}) =
      _$_AnticipationParamsModel;
  _AnticipationParamsModel._() : super._();

  factory _AnticipationParamsModel.fromJson(Map<String, dynamic> json) =
      _$_AnticipationParamsModel.fromJson;

  @override
  int get customerId;
  @override
  @JsonKey(ignore: true)
  _$$_AnticipationParamsModelCopyWith<_$_AnticipationParamsModel>
      get copyWith => throw _privateConstructorUsedError;
}
