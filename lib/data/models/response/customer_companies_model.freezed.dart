// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_companies_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomerCompaniesModel {
  List<CompanyInfoModel> get listCompanies =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerCompaniesModelCopyWith<CustomerCompaniesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerCompaniesModelCopyWith<$Res> {
  factory $CustomerCompaniesModelCopyWith(CustomerCompaniesModel value,
          $Res Function(CustomerCompaniesModel) then) =
      _$CustomerCompaniesModelCopyWithImpl<$Res, CustomerCompaniesModel>;
  @useResult
  $Res call({List<CompanyInfoModel> listCompanies});
}

/// @nodoc
class _$CustomerCompaniesModelCopyWithImpl<$Res,
        $Val extends CustomerCompaniesModel>
    implements $CustomerCompaniesModelCopyWith<$Res> {
  _$CustomerCompaniesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listCompanies = null,
  }) {
    return _then(_value.copyWith(
      listCompanies: null == listCompanies
          ? _value.listCompanies
          : listCompanies // ignore: cast_nullable_to_non_nullable
              as List<CompanyInfoModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CustomerCompaniesModelCopyWith<$Res>
    implements $CustomerCompaniesModelCopyWith<$Res> {
  factory _$$_CustomerCompaniesModelCopyWith(_$_CustomerCompaniesModel value,
          $Res Function(_$_CustomerCompaniesModel) then) =
      __$$_CustomerCompaniesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CompanyInfoModel> listCompanies});
}

/// @nodoc
class __$$_CustomerCompaniesModelCopyWithImpl<$Res>
    extends _$CustomerCompaniesModelCopyWithImpl<$Res,
        _$_CustomerCompaniesModel>
    implements _$$_CustomerCompaniesModelCopyWith<$Res> {
  __$$_CustomerCompaniesModelCopyWithImpl(_$_CustomerCompaniesModel _value,
      $Res Function(_$_CustomerCompaniesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listCompanies = null,
  }) {
    return _then(_$_CustomerCompaniesModel(
      listCompanies: null == listCompanies
          ? _value._listCompanies
          : listCompanies // ignore: cast_nullable_to_non_nullable
              as List<CompanyInfoModel>,
    ));
  }
}

/// @nodoc

class _$_CustomerCompaniesModel extends _CustomerCompaniesModel {
  _$_CustomerCompaniesModel(
      {required final List<CompanyInfoModel> listCompanies})
      : _listCompanies = listCompanies,
        super._();

  final List<CompanyInfoModel> _listCompanies;
  @override
  List<CompanyInfoModel> get listCompanies {
    if (_listCompanies is EqualUnmodifiableListView) return _listCompanies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listCompanies);
  }

  @override
  String toString() {
    return 'CustomerCompaniesModel(listCompanies: $listCompanies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerCompaniesModel &&
            const DeepCollectionEquality()
                .equals(other._listCompanies, _listCompanies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listCompanies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomerCompaniesModelCopyWith<_$_CustomerCompaniesModel> get copyWith =>
      __$$_CustomerCompaniesModelCopyWithImpl<_$_CustomerCompaniesModel>(
          this, _$identity);
}

abstract class _CustomerCompaniesModel extends CustomerCompaniesModel {
  factory _CustomerCompaniesModel(
          {required final List<CompanyInfoModel> listCompanies}) =
      _$_CustomerCompaniesModel;
  _CustomerCompaniesModel._() : super._();

  @override
  List<CompanyInfoModel> get listCompanies;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerCompaniesModelCopyWith<_$_CustomerCompaniesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
