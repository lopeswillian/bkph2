// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cpf_params_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CpfParamsModel _$CpfParamsModelFromJson(Map<String, dynamic> json) {
  return _CpfParamsModel.fromJson(json);
}

/// @nodoc
mixin _$CpfParamsModel {
  String get document => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CpfParamsModelCopyWith<CpfParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CpfParamsModelCopyWith<$Res> {
  factory $CpfParamsModelCopyWith(
          CpfParamsModel value, $Res Function(CpfParamsModel) then) =
      _$CpfParamsModelCopyWithImpl<$Res, CpfParamsModel>;
  @useResult
  $Res call({String document});
}

/// @nodoc
class _$CpfParamsModelCopyWithImpl<$Res, $Val extends CpfParamsModel>
    implements $CpfParamsModelCopyWith<$Res> {
  _$CpfParamsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? document = null,
  }) {
    return _then(_value.copyWith(
      document: null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CpfParamsModelCopyWith<$Res>
    implements $CpfParamsModelCopyWith<$Res> {
  factory _$$_CpfParamsModelCopyWith(
          _$_CpfParamsModel value, $Res Function(_$_CpfParamsModel) then) =
      __$$_CpfParamsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String document});
}

/// @nodoc
class __$$_CpfParamsModelCopyWithImpl<$Res>
    extends _$CpfParamsModelCopyWithImpl<$Res, _$_CpfParamsModel>
    implements _$$_CpfParamsModelCopyWith<$Res> {
  __$$_CpfParamsModelCopyWithImpl(
      _$_CpfParamsModel _value, $Res Function(_$_CpfParamsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? document = null,
  }) {
    return _then(_$_CpfParamsModel(
      document: null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CpfParamsModel extends _CpfParamsModel {
  _$_CpfParamsModel({required this.document}) : super._();

  factory _$_CpfParamsModel.fromJson(Map<String, dynamic> json) =>
      _$$_CpfParamsModelFromJson(json);

  @override
  final String document;

  @override
  String toString() {
    return 'CpfParamsModel(document: $document)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CpfParamsModel &&
            (identical(other.document, document) ||
                other.document == document));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, document);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CpfParamsModelCopyWith<_$_CpfParamsModel> get copyWith =>
      __$$_CpfParamsModelCopyWithImpl<_$_CpfParamsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CpfParamsModelToJson(
      this,
    );
  }
}

abstract class _CpfParamsModel extends CpfParamsModel {
  factory _CpfParamsModel({required final String document}) = _$_CpfParamsModel;
  _CpfParamsModel._() : super._();

  factory _CpfParamsModel.fromJson(Map<String, dynamic> json) =
      _$_CpfParamsModel.fromJson;

  @override
  String get document;
  @override
  @JsonKey(ignore: true)
  _$$_CpfParamsModelCopyWith<_$_CpfParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
