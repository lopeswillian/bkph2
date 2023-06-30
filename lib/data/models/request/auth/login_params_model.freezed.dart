// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_params_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginParamsModel _$LoginParamsModelFromJson(Map<String, dynamic> json) {
  return _LoginParamsModel.fromJson(json);
}

/// @nodoc
mixin _$LoginParamsModel {
  String get identifier => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginParamsModelCopyWith<LoginParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginParamsModelCopyWith<$Res> {
  factory $LoginParamsModelCopyWith(
          LoginParamsModel value, $Res Function(LoginParamsModel) then) =
      _$LoginParamsModelCopyWithImpl<$Res, LoginParamsModel>;
  @useResult
  $Res call({String identifier, String password});
}

/// @nodoc
class _$LoginParamsModelCopyWithImpl<$Res, $Val extends LoginParamsModel>
    implements $LoginParamsModelCopyWith<$Res> {
  _$LoginParamsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginParamsModelCopyWith<$Res>
    implements $LoginParamsModelCopyWith<$Res> {
  factory _$$_LoginParamsModelCopyWith(
          _$_LoginParamsModel value, $Res Function(_$_LoginParamsModel) then) =
      __$$_LoginParamsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String identifier, String password});
}

/// @nodoc
class __$$_LoginParamsModelCopyWithImpl<$Res>
    extends _$LoginParamsModelCopyWithImpl<$Res, _$_LoginParamsModel>
    implements _$$_LoginParamsModelCopyWith<$Res> {
  __$$_LoginParamsModelCopyWithImpl(
      _$_LoginParamsModel _value, $Res Function(_$_LoginParamsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? password = null,
  }) {
    return _then(_$_LoginParamsModel(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginParamsModel extends _LoginParamsModel {
  _$_LoginParamsModel({required this.identifier, required this.password})
      : super._();

  factory _$_LoginParamsModel.fromJson(Map<String, dynamic> json) =>
      _$$_LoginParamsModelFromJson(json);

  @override
  final String identifier;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginParamsModel(identifier: $identifier, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginParamsModel &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, identifier, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginParamsModelCopyWith<_$_LoginParamsModel> get copyWith =>
      __$$_LoginParamsModelCopyWithImpl<_$_LoginParamsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginParamsModelToJson(
      this,
    );
  }
}

abstract class _LoginParamsModel extends LoginParamsModel {
  factory _LoginParamsModel(
      {required final String identifier,
      required final String password}) = _$_LoginParamsModel;
  _LoginParamsModel._() : super._();

  factory _LoginParamsModel.fromJson(Map<String, dynamic> json) =
      _$_LoginParamsModel.fromJson;

  @override
  String get identifier;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_LoginParamsModelCopyWith<_$_LoginParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
