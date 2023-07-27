// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'caf_file_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CafFileParam {
  String get type => throw _privateConstructorUsedError;
  String get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CafFileParamCopyWith<CafFileParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CafFileParamCopyWith<$Res> {
  factory $CafFileParamCopyWith(
          CafFileParam value, $Res Function(CafFileParam) then) =
      _$CafFileParamCopyWithImpl<$Res, CafFileParam>;
  @useResult
  $Res call({String type, String data});
}

/// @nodoc
class _$CafFileParamCopyWithImpl<$Res, $Val extends CafFileParam>
    implements $CafFileParamCopyWith<$Res> {
  _$CafFileParamCopyWithImpl(this._value, this._then);

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
abstract class _$$_CafFileParamCopyWith<$Res>
    implements $CafFileParamCopyWith<$Res> {
  factory _$$_CafFileParamCopyWith(
          _$_CafFileParam value, $Res Function(_$_CafFileParam) then) =
      __$$_CafFileParamCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String data});
}

/// @nodoc
class __$$_CafFileParamCopyWithImpl<$Res>
    extends _$CafFileParamCopyWithImpl<$Res, _$_CafFileParam>
    implements _$$_CafFileParamCopyWith<$Res> {
  __$$_CafFileParamCopyWithImpl(
      _$_CafFileParam _value, $Res Function(_$_CafFileParam) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? data = null,
  }) {
    return _then(_$_CafFileParam(
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

class _$_CafFileParam implements _CafFileParam {
  _$_CafFileParam({required this.type, required this.data});

  @override
  final String type;
  @override
  final String data;

  @override
  String toString() {
    return 'CafFileParam(type: $type, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CafFileParam &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CafFileParamCopyWith<_$_CafFileParam> get copyWith =>
      __$$_CafFileParamCopyWithImpl<_$_CafFileParam>(this, _$identity);
}

abstract class _CafFileParam implements CafFileParam {
  factory _CafFileParam(
      {required final String type,
      required final String data}) = _$_CafFileParam;

  @override
  String get type;
  @override
  String get data;
  @override
  @JsonKey(ignore: true)
  _$$_CafFileParamCopyWith<_$_CafFileParam> get copyWith =>
      throw _privateConstructorUsedError;
}
