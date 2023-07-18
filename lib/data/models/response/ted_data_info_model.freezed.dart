// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ted_data_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TedDataInfoModel {
  String get bank => throw _privateConstructorUsedError;
  String get agency => throw _privateConstructorUsedError;
  String get account => throw _privateConstructorUsedError;
  String get favoured => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TedDataInfoModelCopyWith<TedDataInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TedDataInfoModelCopyWith<$Res> {
  factory $TedDataInfoModelCopyWith(
          TedDataInfoModel value, $Res Function(TedDataInfoModel) then) =
      _$TedDataInfoModelCopyWithImpl<$Res, TedDataInfoModel>;
  @useResult
  $Res call({String bank, String agency, String account, String favoured});
}

/// @nodoc
class _$TedDataInfoModelCopyWithImpl<$Res, $Val extends TedDataInfoModel>
    implements $TedDataInfoModelCopyWith<$Res> {
  _$TedDataInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bank = null,
    Object? agency = null,
    Object? account = null,
    Object? favoured = null,
  }) {
    return _then(_value.copyWith(
      bank: null == bank
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as String,
      agency: null == agency
          ? _value.agency
          : agency // ignore: cast_nullable_to_non_nullable
              as String,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      favoured: null == favoured
          ? _value.favoured
          : favoured // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TedDataInfoModelCopyWith<$Res>
    implements $TedDataInfoModelCopyWith<$Res> {
  factory _$$_TedDataInfoModelCopyWith(
          _$_TedDataInfoModel value, $Res Function(_$_TedDataInfoModel) then) =
      __$$_TedDataInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String bank, String agency, String account, String favoured});
}

/// @nodoc
class __$$_TedDataInfoModelCopyWithImpl<$Res>
    extends _$TedDataInfoModelCopyWithImpl<$Res, _$_TedDataInfoModel>
    implements _$$_TedDataInfoModelCopyWith<$Res> {
  __$$_TedDataInfoModelCopyWithImpl(
      _$_TedDataInfoModel _value, $Res Function(_$_TedDataInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bank = null,
    Object? agency = null,
    Object? account = null,
    Object? favoured = null,
  }) {
    return _then(_$_TedDataInfoModel(
      bank: null == bank
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as String,
      agency: null == agency
          ? _value.agency
          : agency // ignore: cast_nullable_to_non_nullable
              as String,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      favoured: null == favoured
          ? _value.favoured
          : favoured // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TedDataInfoModel extends _TedDataInfoModel {
  _$_TedDataInfoModel(
      {required this.bank,
      required this.agency,
      required this.account,
      required this.favoured})
      : super._();

  @override
  final String bank;
  @override
  final String agency;
  @override
  final String account;
  @override
  final String favoured;

  @override
  String toString() {
    return 'TedDataInfoModel(bank: $bank, agency: $agency, account: $account, favoured: $favoured)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TedDataInfoModel &&
            (identical(other.bank, bank) || other.bank == bank) &&
            (identical(other.agency, agency) || other.agency == agency) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.favoured, favoured) ||
                other.favoured == favoured));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bank, agency, account, favoured);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TedDataInfoModelCopyWith<_$_TedDataInfoModel> get copyWith =>
      __$$_TedDataInfoModelCopyWithImpl<_$_TedDataInfoModel>(this, _$identity);
}

abstract class _TedDataInfoModel extends TedDataInfoModel {
  factory _TedDataInfoModel(
      {required final String bank,
      required final String agency,
      required final String account,
      required final String favoured}) = _$_TedDataInfoModel;
  _TedDataInfoModel._() : super._();

  @override
  String get bank;
  @override
  String get agency;
  @override
  String get account;
  @override
  String get favoured;
  @override
  @JsonKey(ignore: true)
  _$$_TedDataInfoModelCopyWith<_$_TedDataInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
