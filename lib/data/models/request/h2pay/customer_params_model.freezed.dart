// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_params_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerParamsModel _$CustomerParamsModelFromJson(Map<String, dynamic> json) {
  return _CustomerParamsModel.fromJson(json);
}

/// @nodoc
mixin _$CustomerParamsModel {
  String get identifier => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerParamsModelCopyWith<CustomerParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerParamsModelCopyWith<$Res> {
  factory $CustomerParamsModelCopyWith(
          CustomerParamsModel value, $Res Function(CustomerParamsModel) then) =
      _$CustomerParamsModelCopyWithImpl<$Res, CustomerParamsModel>;
  @useResult
  $Res call({String identifier});
}

/// @nodoc
class _$CustomerParamsModelCopyWithImpl<$Res, $Val extends CustomerParamsModel>
    implements $CustomerParamsModelCopyWith<$Res> {
  _$CustomerParamsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
  }) {
    return _then(_value.copyWith(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CustomerParamsModelCopyWith<$Res>
    implements $CustomerParamsModelCopyWith<$Res> {
  factory _$$_CustomerParamsModelCopyWith(_$_CustomerParamsModel value,
          $Res Function(_$_CustomerParamsModel) then) =
      __$$_CustomerParamsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String identifier});
}

/// @nodoc
class __$$_CustomerParamsModelCopyWithImpl<$Res>
    extends _$CustomerParamsModelCopyWithImpl<$Res, _$_CustomerParamsModel>
    implements _$$_CustomerParamsModelCopyWith<$Res> {
  __$$_CustomerParamsModelCopyWithImpl(_$_CustomerParamsModel _value,
      $Res Function(_$_CustomerParamsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
  }) {
    return _then(_$_CustomerParamsModel(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomerParamsModel extends _CustomerParamsModel {
  _$_CustomerParamsModel({required this.identifier}) : super._();

  factory _$_CustomerParamsModel.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerParamsModelFromJson(json);

  @override
  final String identifier;

  @override
  String toString() {
    return 'CustomerParamsModel(identifier: $identifier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerParamsModel &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, identifier);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomerParamsModelCopyWith<_$_CustomerParamsModel> get copyWith =>
      __$$_CustomerParamsModelCopyWithImpl<_$_CustomerParamsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerParamsModelToJson(
      this,
    );
  }
}

abstract class _CustomerParamsModel extends CustomerParamsModel {
  factory _CustomerParamsModel({required final String identifier}) =
      _$_CustomerParamsModel;
  _CustomerParamsModel._() : super._();

  factory _CustomerParamsModel.fromJson(Map<String, dynamic> json) =
      _$_CustomerParamsModel.fromJson;

  @override
  String get identifier;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerParamsModelCopyWith<_$_CustomerParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
