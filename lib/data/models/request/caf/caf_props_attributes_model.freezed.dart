// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'caf_props_attributes_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CafPropsAttributesModel _$CafPropsAttributesModelFromJson(
    Map<String, dynamic> json) {
  return _CafPropsAttributesModel.fromJson(json);
}

/// @nodoc
mixin _$CafPropsAttributesModel {
  String get cpf => throw _privateConstructorUsedError;
  String get birthDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CafPropsAttributesModelCopyWith<CafPropsAttributesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CafPropsAttributesModelCopyWith<$Res> {
  factory $CafPropsAttributesModelCopyWith(CafPropsAttributesModel value,
          $Res Function(CafPropsAttributesModel) then) =
      _$CafPropsAttributesModelCopyWithImpl<$Res, CafPropsAttributesModel>;
  @useResult
  $Res call({String cpf, String birthDate});
}

/// @nodoc
class _$CafPropsAttributesModelCopyWithImpl<$Res,
        $Val extends CafPropsAttributesModel>
    implements $CafPropsAttributesModelCopyWith<$Res> {
  _$CafPropsAttributesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cpf = null,
    Object? birthDate = null,
  }) {
    return _then(_value.copyWith(
      cpf: null == cpf
          ? _value.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CafPropsAttributesModelCopyWith<$Res>
    implements $CafPropsAttributesModelCopyWith<$Res> {
  factory _$$_CafPropsAttributesModelCopyWith(_$_CafPropsAttributesModel value,
          $Res Function(_$_CafPropsAttributesModel) then) =
      __$$_CafPropsAttributesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String cpf, String birthDate});
}

/// @nodoc
class __$$_CafPropsAttributesModelCopyWithImpl<$Res>
    extends _$CafPropsAttributesModelCopyWithImpl<$Res,
        _$_CafPropsAttributesModel>
    implements _$$_CafPropsAttributesModelCopyWith<$Res> {
  __$$_CafPropsAttributesModelCopyWithImpl(_$_CafPropsAttributesModel _value,
      $Res Function(_$_CafPropsAttributesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cpf = null,
    Object? birthDate = null,
  }) {
    return _then(_$_CafPropsAttributesModel(
      cpf: null == cpf
          ? _value.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CafPropsAttributesModel extends _CafPropsAttributesModel {
  _$_CafPropsAttributesModel({required this.cpf, required this.birthDate})
      : super._();

  factory _$_CafPropsAttributesModel.fromJson(Map<String, dynamic> json) =>
      _$$_CafPropsAttributesModelFromJson(json);

  @override
  final String cpf;
  @override
  final String birthDate;

  @override
  String toString() {
    return 'CafPropsAttributesModel(cpf: $cpf, birthDate: $birthDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CafPropsAttributesModel &&
            (identical(other.cpf, cpf) || other.cpf == cpf) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cpf, birthDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CafPropsAttributesModelCopyWith<_$_CafPropsAttributesModel>
      get copyWith =>
          __$$_CafPropsAttributesModelCopyWithImpl<_$_CafPropsAttributesModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CafPropsAttributesModelToJson(
      this,
    );
  }
}

abstract class _CafPropsAttributesModel extends CafPropsAttributesModel {
  factory _CafPropsAttributesModel(
      {required final String cpf,
      required final String birthDate}) = _$_CafPropsAttributesModel;
  _CafPropsAttributesModel._() : super._();

  factory _CafPropsAttributesModel.fromJson(Map<String, dynamic> json) =
      _$_CafPropsAttributesModel.fromJson;

  @override
  String get cpf;
  @override
  String get birthDate;
  @override
  @JsonKey(ignore: true)
  _$$_CafPropsAttributesModelCopyWith<_$_CafPropsAttributesModel>
      get copyWith => throw _privateConstructorUsedError;
}
