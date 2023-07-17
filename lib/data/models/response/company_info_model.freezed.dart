// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CompanyInfoModel {
  int get companyId => throw _privateConstructorUsedError;
  String get cnpj => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get businessName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompanyInfoModelCopyWith<CompanyInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyInfoModelCopyWith<$Res> {
  factory $CompanyInfoModelCopyWith(
          CompanyInfoModel value, $Res Function(CompanyInfoModel) then) =
      _$CompanyInfoModelCopyWithImpl<$Res, CompanyInfoModel>;
  @useResult
  $Res call({int companyId, String cnpj, String address, String businessName});
}

/// @nodoc
class _$CompanyInfoModelCopyWithImpl<$Res, $Val extends CompanyInfoModel>
    implements $CompanyInfoModelCopyWith<$Res> {
  _$CompanyInfoModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_CompanyInfoModelCopyWith<$Res>
    implements $CompanyInfoModelCopyWith<$Res> {
  factory _$$_CompanyInfoModelCopyWith(
          _$_CompanyInfoModel value, $Res Function(_$_CompanyInfoModel) then) =
      __$$_CompanyInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int companyId, String cnpj, String address, String businessName});
}

/// @nodoc
class __$$_CompanyInfoModelCopyWithImpl<$Res>
    extends _$CompanyInfoModelCopyWithImpl<$Res, _$_CompanyInfoModel>
    implements _$$_CompanyInfoModelCopyWith<$Res> {
  __$$_CompanyInfoModelCopyWithImpl(
      _$_CompanyInfoModel _value, $Res Function(_$_CompanyInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyId = null,
    Object? cnpj = null,
    Object? address = null,
    Object? businessName = null,
  }) {
    return _then(_$_CompanyInfoModel(
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

class _$_CompanyInfoModel extends _CompanyInfoModel {
  _$_CompanyInfoModel(
      {required this.companyId,
      required this.cnpj,
      required this.address,
      required this.businessName})
      : super._();

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
    return 'CompanyInfoModel(companyId: $companyId, cnpj: $cnpj, address: $address, businessName: $businessName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompanyInfoModel &&
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
  _$$_CompanyInfoModelCopyWith<_$_CompanyInfoModel> get copyWith =>
      __$$_CompanyInfoModelCopyWithImpl<_$_CompanyInfoModel>(this, _$identity);
}

abstract class _CompanyInfoModel extends CompanyInfoModel {
  factory _CompanyInfoModel(
      {required final int companyId,
      required final String cnpj,
      required final String address,
      required final String businessName}) = _$_CompanyInfoModel;
  _CompanyInfoModel._() : super._();

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
  _$$_CompanyInfoModelCopyWith<_$_CompanyInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
