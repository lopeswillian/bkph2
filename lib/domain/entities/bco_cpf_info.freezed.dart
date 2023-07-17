// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bco_cpf_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BcoCpfInfo {
  String get document => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime get birthdate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BcoCpfInfoCopyWith<BcoCpfInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BcoCpfInfoCopyWith<$Res> {
  factory $BcoCpfInfoCopyWith(
          BcoCpfInfo value, $Res Function(BcoCpfInfo) then) =
      _$BcoCpfInfoCopyWithImpl<$Res, BcoCpfInfo>;
  @useResult
  $Res call({String document, String name, DateTime birthdate});
}

/// @nodoc
class _$BcoCpfInfoCopyWithImpl<$Res, $Val extends BcoCpfInfo>
    implements $BcoCpfInfoCopyWith<$Res> {
  _$BcoCpfInfoCopyWithImpl(this._value, this._then);

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
abstract class _$$_BcoCpfInfoCopyWith<$Res>
    implements $BcoCpfInfoCopyWith<$Res> {
  factory _$$_BcoCpfInfoCopyWith(
          _$_BcoCpfInfo value, $Res Function(_$_BcoCpfInfo) then) =
      __$$_BcoCpfInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String document, String name, DateTime birthdate});
}

/// @nodoc
class __$$_BcoCpfInfoCopyWithImpl<$Res>
    extends _$BcoCpfInfoCopyWithImpl<$Res, _$_BcoCpfInfo>
    implements _$$_BcoCpfInfoCopyWith<$Res> {
  __$$_BcoCpfInfoCopyWithImpl(
      _$_BcoCpfInfo _value, $Res Function(_$_BcoCpfInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? document = null,
    Object? name = null,
    Object? birthdate = null,
  }) {
    return _then(_$_BcoCpfInfo(
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

class _$_BcoCpfInfo implements _BcoCpfInfo {
  _$_BcoCpfInfo(
      {required this.document, required this.name, required this.birthdate});

  @override
  final String document;
  @override
  final String name;
  @override
  final DateTime birthdate;

  @override
  String toString() {
    return 'BcoCpfInfo(document: $document, name: $name, birthdate: $birthdate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BcoCpfInfo &&
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
  _$$_BcoCpfInfoCopyWith<_$_BcoCpfInfo> get copyWith =>
      __$$_BcoCpfInfoCopyWithImpl<_$_BcoCpfInfo>(this, _$identity);
}

abstract class _BcoCpfInfo implements BcoCpfInfo {
  factory _BcoCpfInfo(
      {required final String document,
      required final String name,
      required final DateTime birthdate}) = _$_BcoCpfInfo;

  @override
  String get document;
  @override
  String get name;
  @override
  DateTime get birthdate;
  @override
  @JsonKey(ignore: true)
  _$$_BcoCpfInfoCopyWith<_$_BcoCpfInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
