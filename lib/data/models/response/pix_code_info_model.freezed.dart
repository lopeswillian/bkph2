// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pix_code_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PixCodeInfoModel {
  @JsonKey(name: 'pix_code')
  String get pixCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PixCodeInfoModelCopyWith<PixCodeInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PixCodeInfoModelCopyWith<$Res> {
  factory $PixCodeInfoModelCopyWith(
          PixCodeInfoModel value, $Res Function(PixCodeInfoModel) then) =
      _$PixCodeInfoModelCopyWithImpl<$Res, PixCodeInfoModel>;
  @useResult
  $Res call({@JsonKey(name: 'pix_code') String pixCode});
}

/// @nodoc
class _$PixCodeInfoModelCopyWithImpl<$Res, $Val extends PixCodeInfoModel>
    implements $PixCodeInfoModelCopyWith<$Res> {
  _$PixCodeInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pixCode = null,
  }) {
    return _then(_value.copyWith(
      pixCode: null == pixCode
          ? _value.pixCode
          : pixCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PixCodeInfoModelCopyWith<$Res>
    implements $PixCodeInfoModelCopyWith<$Res> {
  factory _$$_PixCodeInfoModelCopyWith(
          _$_PixCodeInfoModel value, $Res Function(_$_PixCodeInfoModel) then) =
      __$$_PixCodeInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'pix_code') String pixCode});
}

/// @nodoc
class __$$_PixCodeInfoModelCopyWithImpl<$Res>
    extends _$PixCodeInfoModelCopyWithImpl<$Res, _$_PixCodeInfoModel>
    implements _$$_PixCodeInfoModelCopyWith<$Res> {
  __$$_PixCodeInfoModelCopyWithImpl(
      _$_PixCodeInfoModel _value, $Res Function(_$_PixCodeInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pixCode = null,
  }) {
    return _then(_$_PixCodeInfoModel(
      pixCode: null == pixCode
          ? _value.pixCode
          : pixCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PixCodeInfoModel extends _PixCodeInfoModel {
  _$_PixCodeInfoModel({@JsonKey(name: 'pix_code') required this.pixCode})
      : super._();

  @override
  @JsonKey(name: 'pix_code')
  final String pixCode;

  @override
  String toString() {
    return 'PixCodeInfoModel(pixCode: $pixCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PixCodeInfoModel &&
            (identical(other.pixCode, pixCode) || other.pixCode == pixCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pixCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PixCodeInfoModelCopyWith<_$_PixCodeInfoModel> get copyWith =>
      __$$_PixCodeInfoModelCopyWithImpl<_$_PixCodeInfoModel>(this, _$identity);
}

abstract class _PixCodeInfoModel extends PixCodeInfoModel {
  factory _PixCodeInfoModel(
          {@JsonKey(name: 'pix_code') required final String pixCode}) =
      _$_PixCodeInfoModel;
  _PixCodeInfoModel._() : super._();

  @override
  @JsonKey(name: 'pix_code')
  String get pixCode;
  @override
  @JsonKey(ignore: true)
  _$$_PixCodeInfoModelCopyWith<_$_PixCodeInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
