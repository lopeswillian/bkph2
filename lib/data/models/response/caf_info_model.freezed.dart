// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'caf_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CafInfoModel _$CafInfoModelFromJson(Map<String, dynamic> json) {
  return _CafInfoModel.fromJson(json);
}

/// @nodoc
mixin _$CafInfoModel {
  String get requestId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CafInfoModelCopyWith<CafInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CafInfoModelCopyWith<$Res> {
  factory $CafInfoModelCopyWith(
          CafInfoModel value, $Res Function(CafInfoModel) then) =
      _$CafInfoModelCopyWithImpl<$Res, CafInfoModel>;
  @useResult
  $Res call({String requestId, String id});
}

/// @nodoc
class _$CafInfoModelCopyWithImpl<$Res, $Val extends CafInfoModel>
    implements $CafInfoModelCopyWith<$Res> {
  _$CafInfoModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_CafInfoModelCopyWith<$Res>
    implements $CafInfoModelCopyWith<$Res> {
  factory _$$_CafInfoModelCopyWith(
          _$_CafInfoModel value, $Res Function(_$_CafInfoModel) then) =
      __$$_CafInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String requestId, String id});
}

/// @nodoc
class __$$_CafInfoModelCopyWithImpl<$Res>
    extends _$CafInfoModelCopyWithImpl<$Res, _$_CafInfoModel>
    implements _$$_CafInfoModelCopyWith<$Res> {
  __$$_CafInfoModelCopyWithImpl(
      _$_CafInfoModel _value, $Res Function(_$_CafInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? id = null,
  }) {
    return _then(_$_CafInfoModel(
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
@JsonSerializable()
class _$_CafInfoModel extends _CafInfoModel {
  _$_CafInfoModel({required this.requestId, required this.id}) : super._();

  factory _$_CafInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_CafInfoModelFromJson(json);

  @override
  final String requestId;
  @override
  final String id;

  @override
  String toString() {
    return 'CafInfoModel(requestId: $requestId, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CafInfoModel &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, requestId, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CafInfoModelCopyWith<_$_CafInfoModel> get copyWith =>
      __$$_CafInfoModelCopyWithImpl<_$_CafInfoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CafInfoModelToJson(
      this,
    );
  }
}

abstract class _CafInfoModel extends CafInfoModel {
  factory _CafInfoModel(
      {required final String requestId,
      required final String id}) = _$_CafInfoModel;
  _CafInfoModel._() : super._();

  factory _CafInfoModel.fromJson(Map<String, dynamic> json) =
      _$_CafInfoModel.fromJson;

  @override
  String get requestId;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_CafInfoModelCopyWith<_$_CafInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
