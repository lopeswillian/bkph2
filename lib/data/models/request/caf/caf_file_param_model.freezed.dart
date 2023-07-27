// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'caf_file_param_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CafFileParamModel _$CafFileParamModelFromJson(Map<String, dynamic> json) {
  return _CafFileParamModel.fromJson(json);
}

/// @nodoc
mixin _$CafFileParamModel {
  String get type => throw _privateConstructorUsedError;
  String get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CafFileParamModelCopyWith<CafFileParamModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CafFileParamModelCopyWith<$Res> {
  factory $CafFileParamModelCopyWith(
          CafFileParamModel value, $Res Function(CafFileParamModel) then) =
      _$CafFileParamModelCopyWithImpl<$Res, CafFileParamModel>;
  @useResult
  $Res call({String type, String data});
}

/// @nodoc
class _$CafFileParamModelCopyWithImpl<$Res, $Val extends CafFileParamModel>
    implements $CafFileParamModelCopyWith<$Res> {
  _$CafFileParamModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CafFileParamModelCopyWith<$Res>
    implements $CafFileParamModelCopyWith<$Res> {
  factory _$$_CafFileParamModelCopyWith(_$_CafFileParamModel value,
          $Res Function(_$_CafFileParamModel) then) =
      __$$_CafFileParamModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String data});
}

/// @nodoc
class __$$_CafFileParamModelCopyWithImpl<$Res>
    extends _$CafFileParamModelCopyWithImpl<$Res, _$_CafFileParamModel>
    implements _$$_CafFileParamModelCopyWith<$Res> {
  __$$_CafFileParamModelCopyWithImpl(
      _$_CafFileParamModel _value, $Res Function(_$_CafFileParamModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? data = null,
  }) {
    return _then(_$_CafFileParamModel(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CafFileParamModel extends _CafFileParamModel {
  _$_CafFileParamModel({required this.type, required this.data}) : super._();

  factory _$_CafFileParamModel.fromJson(Map<String, dynamic> json) =>
      _$$_CafFileParamModelFromJson(json);

  @override
  final String type;
  @override
  final String data;

  @override
  String toString() {
    return 'CafFileParamModel(type: $type, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CafFileParamModel &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CafFileParamModelCopyWith<_$_CafFileParamModel> get copyWith =>
      __$$_CafFileParamModelCopyWithImpl<_$_CafFileParamModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CafFileParamModelToJson(
      this,
    );
  }
}

abstract class _CafFileParamModel extends CafFileParamModel {
  factory _CafFileParamModel(
      {required final String type,
      required final String data}) = _$_CafFileParamModel;
  _CafFileParamModel._() : super._();

  factory _CafFileParamModel.fromJson(Map<String, dynamic> json) =
      _$_CafFileParamModel.fromJson;

  @override
  String get type;
  @override
  String get data;
  @override
  @JsonKey(ignore: true)
  _$$_CafFileParamModelCopyWith<_$_CafFileParamModel> get copyWith =>
      throw _privateConstructorUsedError;
}
