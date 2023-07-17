// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bco_cnpj_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BcoCnpjInfoModel {
  String get cnpj => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get businessName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BcoCnpjInfoModelCopyWith<BcoCnpjInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BcoCnpjInfoModelCopyWith<$Res> {
  factory $BcoCnpjInfoModelCopyWith(
          BcoCnpjInfoModel value, $Res Function(BcoCnpjInfoModel) then) =
      _$BcoCnpjInfoModelCopyWithImpl<$Res, BcoCnpjInfoModel>;
  @useResult
  $Res call({String cnpj, String address, String businessName});
}

/// @nodoc
class _$BcoCnpjInfoModelCopyWithImpl<$Res, $Val extends BcoCnpjInfoModel>
    implements $BcoCnpjInfoModelCopyWith<$Res> {
  _$BcoCnpjInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cnpj = null,
    Object? address = null,
    Object? businessName = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_BcoCnpjInfoModelCopyWith<$Res>
    implements $BcoCnpjInfoModelCopyWith<$Res> {
  factory _$$_BcoCnpjInfoModelCopyWith(
          _$_BcoCnpjInfoModel value, $Res Function(_$_BcoCnpjInfoModel) then) =
      __$$_BcoCnpjInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String cnpj, String address, String businessName});
}

/// @nodoc
class __$$_BcoCnpjInfoModelCopyWithImpl<$Res>
    extends _$BcoCnpjInfoModelCopyWithImpl<$Res, _$_BcoCnpjInfoModel>
    implements _$$_BcoCnpjInfoModelCopyWith<$Res> {
  __$$_BcoCnpjInfoModelCopyWithImpl(
      _$_BcoCnpjInfoModel _value, $Res Function(_$_BcoCnpjInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cnpj = null,
    Object? address = null,
    Object? businessName = null,
  }) {
    return _then(_$_BcoCnpjInfoModel(
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

class _$_BcoCnpjInfoModel extends _BcoCnpjInfoModel {
  _$_BcoCnpjInfoModel(
      {required this.cnpj, required this.address, required this.businessName})
      : super._();

  @override
  final String cnpj;
  @override
  final String address;
  @override
  final String businessName;

  @override
  String toString() {
    return 'BcoCnpjInfoModel(cnpj: $cnpj, address: $address, businessName: $businessName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BcoCnpjInfoModel &&
            (identical(other.cnpj, cnpj) || other.cnpj == cnpj) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.businessName, businessName) ||
                other.businessName == businessName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cnpj, address, businessName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BcoCnpjInfoModelCopyWith<_$_BcoCnpjInfoModel> get copyWith =>
      __$$_BcoCnpjInfoModelCopyWithImpl<_$_BcoCnpjInfoModel>(this, _$identity);
}

abstract class _BcoCnpjInfoModel extends BcoCnpjInfoModel {
  factory _BcoCnpjInfoModel(
      {required final String cnpj,
      required final String address,
      required final String businessName}) = _$_BcoCnpjInfoModel;
  _BcoCnpjInfoModel._() : super._();

  @override
  String get cnpj;
  @override
  String get address;
  @override
  String get businessName;
  @override
  @JsonKey(ignore: true)
  _$$_BcoCnpjInfoModelCopyWith<_$_BcoCnpjInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
