// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CompanyInfo {
  int get companyId => throw _privateConstructorUsedError;
  String get cnpj => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get businessName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompanyInfoCopyWith<CompanyInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyInfoCopyWith<$Res> {
  factory $CompanyInfoCopyWith(
          CompanyInfo value, $Res Function(CompanyInfo) then) =
      _$CompanyInfoCopyWithImpl<$Res, CompanyInfo>;
  @useResult
  $Res call({int companyId, String cnpj, String address, String businessName});
}

/// @nodoc
class _$CompanyInfoCopyWithImpl<$Res, $Val extends CompanyInfo>
    implements $CompanyInfoCopyWith<$Res> {
  _$CompanyInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyId = null,
    Object? cnpj = null,
    Object? address = null,
    Object? businessName = null,
  }) {
    return _then(_value.copyWith(
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int,
      cnpj: null == cnpj
          ? _value.cnpj
          : cnpj // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      businessName: null == businessName
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CompanyInfoCopyWith<$Res>
    implements $CompanyInfoCopyWith<$Res> {
  factory _$$_CompanyInfoCopyWith(
          _$_CompanyInfo value, $Res Function(_$_CompanyInfo) then) =
      __$$_CompanyInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int companyId, String cnpj, String address, String businessName});
}

/// @nodoc
class __$$_CompanyInfoCopyWithImpl<$Res>
    extends _$CompanyInfoCopyWithImpl<$Res, _$_CompanyInfo>
    implements _$$_CompanyInfoCopyWith<$Res> {
  __$$_CompanyInfoCopyWithImpl(
      _$_CompanyInfo _value, $Res Function(_$_CompanyInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyId = null,
    Object? cnpj = null,
    Object? address = null,
    Object? businessName = null,
  }) {
    return _then(_$_CompanyInfo(
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int,
      cnpj: null == cnpj
          ? _value.cnpj
          : cnpj // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      businessName: null == businessName
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CompanyInfo implements _CompanyInfo {
  _$_CompanyInfo(
      {required this.companyId,
      required this.cnpj,
      required this.address,
      required this.businessName});

  @override
  final int companyId;
  @override
  final String cnpj;
  @override
  final String address;
  @override
  final String businessName;

  @override
  String toString() {
    return 'CompanyInfo(companyId: $companyId, cnpj: $cnpj, address: $address, businessName: $businessName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompanyInfo &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.cnpj, cnpj) || other.cnpj == cnpj) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.businessName, businessName) ||
                other.businessName == businessName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, companyId, cnpj, address, businessName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CompanyInfoCopyWith<_$_CompanyInfo> get copyWith =>
      __$$_CompanyInfoCopyWithImpl<_$_CompanyInfo>(this, _$identity);
}

abstract class _CompanyInfo implements CompanyInfo {
  factory _CompanyInfo(
      {required final int companyId,
      required final String cnpj,
      required final String address,
      required final String businessName}) = _$_CompanyInfo;

  @override
  int get companyId;
  @override
  String get cnpj;
  @override
  String get address;
  @override
  String get businessName;
  @override
  @JsonKey(ignore: true)
  _$$_CompanyInfoCopyWith<_$_CompanyInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
