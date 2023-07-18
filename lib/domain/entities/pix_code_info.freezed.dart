// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pix_code_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PixCodeInfo {
  String get pixCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PixCodeInfoCopyWith<PixCodeInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PixCodeInfoCopyWith<$Res> {
  factory $PixCodeInfoCopyWith(
          PixCodeInfo value, $Res Function(PixCodeInfo) then) =
      _$PixCodeInfoCopyWithImpl<$Res, PixCodeInfo>;
  @useResult
  $Res call({String pixCode});
}

/// @nodoc
class _$PixCodeInfoCopyWithImpl<$Res, $Val extends PixCodeInfo>
    implements $PixCodeInfoCopyWith<$Res> {
  _$PixCodeInfoCopyWithImpl(this._value, this._then);

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
abstract class _$$_PixCodeInfoCopyWith<$Res>
    implements $PixCodeInfoCopyWith<$Res> {
  factory _$$_PixCodeInfoCopyWith(
          _$_PixCodeInfo value, $Res Function(_$_PixCodeInfo) then) =
      __$$_PixCodeInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pixCode});
}

/// @nodoc
class __$$_PixCodeInfoCopyWithImpl<$Res>
    extends _$PixCodeInfoCopyWithImpl<$Res, _$_PixCodeInfo>
    implements _$$_PixCodeInfoCopyWith<$Res> {
  __$$_PixCodeInfoCopyWithImpl(
      _$_PixCodeInfo _value, $Res Function(_$_PixCodeInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pixCode = null,
  }) {
    return _then(_$_PixCodeInfo(
      pixCode: null == pixCode
          ? _value.pixCode
          : pixCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PixCodeInfo implements _PixCodeInfo {
  _$_PixCodeInfo({required this.pixCode});

  @override
  final String pixCode;

  @override
  String toString() {
    return 'PixCodeInfo(pixCode: $pixCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PixCodeInfo &&
            (identical(other.pixCode, pixCode) || other.pixCode == pixCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pixCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PixCodeInfoCopyWith<_$_PixCodeInfo> get copyWith =>
      __$$_PixCodeInfoCopyWithImpl<_$_PixCodeInfo>(this, _$identity);
}

abstract class _PixCodeInfo implements PixCodeInfo {
  factory _PixCodeInfo({required final String pixCode}) = _$_PixCodeInfo;

  @override
  String get pixCode;
  @override
  @JsonKey(ignore: true)
  _$$_PixCodeInfoCopyWith<_$_PixCodeInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
