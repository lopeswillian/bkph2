// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bco_cpf_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BcoCpfInfoModel {
  String get document => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime get birthdate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BcoCpfInfoModelCopyWith<BcoCpfInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BcoCpfInfoModelCopyWith<$Res> {
  factory $BcoCpfInfoModelCopyWith(
          BcoCpfInfoModel value, $Res Function(BcoCpfInfoModel) then) =
      _$BcoCpfInfoModelCopyWithImpl<$Res, BcoCpfInfoModel>;
  @useResult
  $Res call({String document, String name, DateTime birthdate});
}

/// @nodoc
class _$BcoCpfInfoModelCopyWithImpl<$Res, $Val extends BcoCpfInfoModel>
    implements $BcoCpfInfoModelCopyWith<$Res> {
  _$BcoCpfInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? document = null,
    Object? name = null,
    Object? birthdate = null,
  }) {
    return _then(_value.copyWith(
      document: null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      birthdate: null == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BcoCpfInfoModelCopyWith<$Res>
    implements $BcoCpfInfoModelCopyWith<$Res> {
  factory _$$_BcoCpfInfoModelCopyWith(
          _$_BcoCpfInfoModel value, $Res Function(_$_BcoCpfInfoModel) then) =
      __$$_BcoCpfInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String document, String name, DateTime birthdate});
}

/// @nodoc
class __$$_BcoCpfInfoModelCopyWithImpl<$Res>
    extends _$BcoCpfInfoModelCopyWithImpl<$Res, _$_BcoCpfInfoModel>
    implements _$$_BcoCpfInfoModelCopyWith<$Res> {
  __$$_BcoCpfInfoModelCopyWithImpl(
      _$_BcoCpfInfoModel _value, $Res Function(_$_BcoCpfInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? document = null,
    Object? name = null,
    Object? birthdate = null,
  }) {
    return _then(_$_BcoCpfInfoModel(
      document: null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      birthdate: null == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_BcoCpfInfoModel extends _BcoCpfInfoModel {
  _$_BcoCpfInfoModel(
      {required this.document, required this.name, required this.birthdate})
      : super._();

  @override
  final String document;
  @override
  final String name;
  @override
  final DateTime birthdate;

  @override
  String toString() {
    return 'BcoCpfInfoModel(document: $document, name: $name, birthdate: $birthdate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BcoCpfInfoModel &&
            (identical(other.document, document) ||
                other.document == document) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, document, name, birthdate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BcoCpfInfoModelCopyWith<_$_BcoCpfInfoModel> get copyWith =>
      __$$_BcoCpfInfoModelCopyWithImpl<_$_BcoCpfInfoModel>(this, _$identity);
}

abstract class _BcoCpfInfoModel extends BcoCpfInfoModel {
  factory _BcoCpfInfoModel(
      {required final String document,
      required final String name,
      required final DateTime birthdate}) = _$_BcoCpfInfoModel;
  _BcoCpfInfoModel._() : super._();

  @override
  String get document;
  @override
  String get name;
  @override
  DateTime get birthdate;
  @override
  @JsonKey(ignore: true)
  _$$_BcoCpfInfoModelCopyWith<_$_BcoCpfInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
