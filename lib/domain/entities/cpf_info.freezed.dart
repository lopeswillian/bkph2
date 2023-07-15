// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cpf_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CpfInfo {
  String get document => throw _privateConstructorUsedError;
  bool get isRewardsCustomer => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime get birthdate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CpfInfoCopyWith<CpfInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CpfInfoCopyWith<$Res> {
  factory $CpfInfoCopyWith(CpfInfo value, $Res Function(CpfInfo) then) =
      _$CpfInfoCopyWithImpl<$Res, CpfInfo>;
  @useResult
  $Res call(
      {String document,
      bool isRewardsCustomer,
      String name,
      DateTime birthdate});
}

/// @nodoc
class _$CpfInfoCopyWithImpl<$Res, $Val extends CpfInfo>
    implements $CpfInfoCopyWith<$Res> {
  _$CpfInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? document = null,
    Object? isRewardsCustomer = null,
    Object? name = null,
    Object? birthdate = null,
  }) {
    return _then(_value.copyWith(
      document: null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as String,
      isRewardsCustomer: null == isRewardsCustomer
          ? _value.isRewardsCustomer
          : isRewardsCustomer // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$_CpfInfoCopyWith<$Res> implements $CpfInfoCopyWith<$Res> {
  factory _$$_CpfInfoCopyWith(
          _$_CpfInfo value, $Res Function(_$_CpfInfo) then) =
      __$$_CpfInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String document,
      bool isRewardsCustomer,
      String name,
      DateTime birthdate});
}

/// @nodoc
class __$$_CpfInfoCopyWithImpl<$Res>
    extends _$CpfInfoCopyWithImpl<$Res, _$_CpfInfo>
    implements _$$_CpfInfoCopyWith<$Res> {
  __$$_CpfInfoCopyWithImpl(_$_CpfInfo _value, $Res Function(_$_CpfInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? document = null,
    Object? isRewardsCustomer = null,
    Object? name = null,
    Object? birthdate = null,
  }) {
    return _then(_$_CpfInfo(
      document: null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as String,
      isRewardsCustomer: null == isRewardsCustomer
          ? _value.isRewardsCustomer
          : isRewardsCustomer // ignore: cast_nullable_to_non_nullable
              as bool,
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

class _$_CpfInfo implements _CpfInfo {
  _$_CpfInfo(
      {required this.document,
      required this.isRewardsCustomer,
      required this.name,
      required this.birthdate});

  @override
  final String document;
  @override
  final bool isRewardsCustomer;
  @override
  final String name;
  @override
  final DateTime birthdate;

  @override
  String toString() {
    return 'CpfInfo(document: $document, isRewardsCustomer: $isRewardsCustomer, name: $name, birthdate: $birthdate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CpfInfo &&
            (identical(other.document, document) ||
                other.document == document) &&
            (identical(other.isRewardsCustomer, isRewardsCustomer) ||
                other.isRewardsCustomer == isRewardsCustomer) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, document, isRewardsCustomer, name, birthdate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CpfInfoCopyWith<_$_CpfInfo> get copyWith =>
      __$$_CpfInfoCopyWithImpl<_$_CpfInfo>(this, _$identity);
}

abstract class _CpfInfo implements CpfInfo {
  factory _CpfInfo(
      {required final String document,
      required final bool isRewardsCustomer,
      required final String name,
      required final DateTime birthdate}) = _$_CpfInfo;

  @override
  String get document;
  @override
  bool get isRewardsCustomer;
  @override
  String get name;
  @override
  DateTime get birthdate;
  @override
  @JsonKey(ignore: true)
  _$$_CpfInfoCopyWith<_$_CpfInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
