// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_companies_params_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerCompaniesParamsModel _$CustomerCompaniesParamsModelFromJson(
    Map<String, dynamic> json) {
  return _CustomerCompaniesParamsModel.fromJson(json);
}

/// @nodoc
mixin _$CustomerCompaniesParamsModel {
  int get customerId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerCompaniesParamsModelCopyWith<CustomerCompaniesParamsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerCompaniesParamsModelCopyWith<$Res> {
  factory $CustomerCompaniesParamsModelCopyWith(
          CustomerCompaniesParamsModel value,
          $Res Function(CustomerCompaniesParamsModel) then) =
      _$CustomerCompaniesParamsModelCopyWithImpl<$Res,
          CustomerCompaniesParamsModel>;
  @useResult
  $Res call({int customerId});
}

/// @nodoc
class _$CustomerCompaniesParamsModelCopyWithImpl<$Res,
        $Val extends CustomerCompaniesParamsModel>
    implements $CustomerCompaniesParamsModelCopyWith<$Res> {
  _$CustomerCompaniesParamsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
  }) {
    return _then(_value.copyWith(
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CustomerCompaniesParamsModelCopyWith<$Res>
    implements $CustomerCompaniesParamsModelCopyWith<$Res> {
  factory _$$_CustomerCompaniesParamsModelCopyWith(
          _$_CustomerCompaniesParamsModel value,
          $Res Function(_$_CustomerCompaniesParamsModel) then) =
      __$$_CustomerCompaniesParamsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int customerId});
}

/// @nodoc
class __$$_CustomerCompaniesParamsModelCopyWithImpl<$Res>
    extends _$CustomerCompaniesParamsModelCopyWithImpl<$Res,
        _$_CustomerCompaniesParamsModel>
    implements _$$_CustomerCompaniesParamsModelCopyWith<$Res> {
  __$$_CustomerCompaniesParamsModelCopyWithImpl(
      _$_CustomerCompaniesParamsModel _value,
      $Res Function(_$_CustomerCompaniesParamsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
  }) {
    return _then(_$_CustomerCompaniesParamsModel(
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomerCompaniesParamsModel extends _CustomerCompaniesParamsModel {
  _$_CustomerCompaniesParamsModel({required this.customerId}) : super._();

  factory _$_CustomerCompaniesParamsModel.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerCompaniesParamsModelFromJson(json);

  @override
  final int customerId;

  @override
  String toString() {
    return 'CustomerCompaniesParamsModel(customerId: $customerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerCompaniesParamsModel &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, customerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomerCompaniesParamsModelCopyWith<_$_CustomerCompaniesParamsModel>
      get copyWith => __$$_CustomerCompaniesParamsModelCopyWithImpl<
          _$_CustomerCompaniesParamsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerCompaniesParamsModelToJson(
      this,
    );
  }
}

abstract class _CustomerCompaniesParamsModel
    extends CustomerCompaniesParamsModel {
  factory _CustomerCompaniesParamsModel({required final int customerId}) =
      _$_CustomerCompaniesParamsModel;
  _CustomerCompaniesParamsModel._() : super._();

  factory _CustomerCompaniesParamsModel.fromJson(Map<String, dynamic> json) =
      _$_CustomerCompaniesParamsModel.fromJson;

  @override
  int get customerId;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerCompaniesParamsModelCopyWith<_$_CustomerCompaniesParamsModel>
      get copyWith => throw _privateConstructorUsedError;
}
