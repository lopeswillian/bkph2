// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'caf_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CafInfo {
  String get requestId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CafInfoCopyWith<CafInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CafInfoCopyWith<$Res> {
  factory $CafInfoCopyWith(CafInfo value, $Res Function(CafInfo) then) =
      _$CafInfoCopyWithImpl<$Res, CafInfo>;
  @useResult
  $Res call({String requestId, String id});
}

/// @nodoc
class _$CafInfoCopyWithImpl<$Res, $Val extends CafInfo>
    implements $CafInfoCopyWith<$Res> {
  _$CafInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CafInfoCopyWith<$Res> implements $CafInfoCopyWith<$Res> {
  factory _$$_CafInfoCopyWith(
          _$_CafInfo value, $Res Function(_$_CafInfo) then) =
      __$$_CafInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String requestId, String id});
}

/// @nodoc
class __$$_CafInfoCopyWithImpl<$Res>
    extends _$CafInfoCopyWithImpl<$Res, _$_CafInfo>
    implements _$$_CafInfoCopyWith<$Res> {
  __$$_CafInfoCopyWithImpl(_$_CafInfo _value, $Res Function(_$_CafInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? id = null,
  }) {
    return _then(_$_CafInfo(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CafInfo implements _CafInfo {
  _$_CafInfo({required this.requestId, required this.id});

  @override
  final String requestId;
  @override
  final String id;

  @override
  String toString() {
    return 'CafInfo(requestId: $requestId, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CafInfo &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestId, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CafInfoCopyWith<_$_CafInfo> get copyWith =>
      __$$_CafInfoCopyWithImpl<_$_CafInfo>(this, _$identity);
}

abstract class _CafInfo implements CafInfo {
  factory _CafInfo(
      {required final String requestId, required final String id}) = _$_CafInfo;

  @override
  String get requestId;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_CafInfoCopyWith<_$_CafInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
