// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_companies.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomerCompanies {
  List<CompanyInfo> get listCompanies => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerCompaniesCopyWith<CustomerCompanies> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerCompaniesCopyWith<$Res> {
  factory $CustomerCompaniesCopyWith(
          CustomerCompanies value, $Res Function(CustomerCompanies) then) =
      _$CustomerCompaniesCopyWithImpl<$Res, CustomerCompanies>;
  @useResult
  $Res call({List<CompanyInfo> listCompanies});
}

/// @nodoc
class _$CustomerCompaniesCopyWithImpl<$Res, $Val extends CustomerCompanies>
    implements $CustomerCompaniesCopyWith<$Res> {
  _$CustomerCompaniesCopyWithImpl(this._value, this._then);

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
              as List<CompanyInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CustomerCompaniesCopyWith<$Res>
    implements $CustomerCompaniesCopyWith<$Res> {
  factory _$$_CustomerCompaniesCopyWith(_$_CustomerCompanies value,
          $Res Function(_$_CustomerCompanies) then) =
      __$$_CustomerCompaniesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CompanyInfo> listCompanies});
}

/// @nodoc
class __$$_CustomerCompaniesCopyWithImpl<$Res>
    extends _$CustomerCompaniesCopyWithImpl<$Res, _$_CustomerCompanies>
    implements _$$_CustomerCompaniesCopyWith<$Res> {
  __$$_CustomerCompaniesCopyWithImpl(
      _$_CustomerCompanies _value, $Res Function(_$_CustomerCompanies) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listCompanies = null,
  }) {
    return _then(_$_CustomerCompanies(
      listCompanies: null == listCompanies
          ? _value._listCompanies
          : listCompanies // ignore: cast_nullable_to_non_nullable
              as List<CompanyInfo>,
    ));
  }
}

/// @nodoc

class _$_CustomerCompanies implements _CustomerCompanies {
  _$_CustomerCompanies({required final List<CompanyInfo> listCompanies})
      : _listCompanies = listCompanies;

  final List<CompanyInfo> _listCompanies;
  @override
  List<CompanyInfo> get listCompanies {
    if (_listCompanies is EqualUnmodifiableListView) return _listCompanies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listCompanies);
  }

  @override
  String toString() {
    return 'CustomerCompanies(listCompanies: $listCompanies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerCompanies &&
            const DeepCollectionEquality()
                .equals(other._listCompanies, _listCompanies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listCompanies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomerCompaniesCopyWith<_$_CustomerCompanies> get copyWith =>
      __$$_CustomerCompaniesCopyWithImpl<_$_CustomerCompanies>(
          this, _$identity);
}

abstract class _CustomerCompanies implements CustomerCompanies {
  factory _CustomerCompanies({required final List<CompanyInfo> listCompanies}) =
      _$_CustomerCompanies;

  @override
  List<CompanyInfo> get listCompanies;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerCompaniesCopyWith<_$_CustomerCompanies> get copyWith =>
      throw _privateConstructorUsedError;
}
