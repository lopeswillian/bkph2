// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sms_params_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SmsParamsModel _$SmsParamsModelFromJson(Map<String, dynamic> json) {
  return _SmsParamsModel.fromJson(json);
}

/// @nodoc
mixin _$SmsParamsModel {
  String get cpf => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get cellphone => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SmsParamsModelCopyWith<SmsParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmsParamsModelCopyWith<$Res> {
  factory $SmsParamsModelCopyWith(
          SmsParamsModel value, $Res Function(SmsParamsModel) then) =
      _$SmsParamsModelCopyWithImpl<$Res, SmsParamsModel>;
  @useResult
  $Res call({String cpf, String name, String cellphone, String email});
}

/// @nodoc
class _$SmsParamsModelCopyWithImpl<$Res, $Val extends SmsParamsModel>
    implements $SmsParamsModelCopyWith<$Res> {
  _$SmsParamsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cpf = null,
    Object? name = null,
    Object? cellphone = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      cpf: null == cpf
          ? _value.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cellphone: null == cellphone
          ? _value.cellphone
          : cellphone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SmsParamsModelCopyWith<$Res>
    implements $SmsParamsModelCopyWith<$Res> {
  factory _$$_SmsParamsModelCopyWith(
          _$_SmsParamsModel value, $Res Function(_$_SmsParamsModel) then) =
      __$$_SmsParamsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String cpf, String name, String cellphone, String email});
}

/// @nodoc
class __$$_SmsParamsModelCopyWithImpl<$Res>
    extends _$SmsParamsModelCopyWithImpl<$Res, _$_SmsParamsModel>
    implements _$$_SmsParamsModelCopyWith<$Res> {
  __$$_SmsParamsModelCopyWithImpl(
      _$_SmsParamsModel _value, $Res Function(_$_SmsParamsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cpf = null,
    Object? name = null,
    Object? cellphone = null,
    Object? email = null,
  }) {
    return _then(_$_SmsParamsModel(
      cpf: null == cpf
          ? _value.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cellphone: null == cellphone
          ? _value.cellphone
          : cellphone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SmsParamsModel extends _SmsParamsModel {
  _$_SmsParamsModel(
      {required this.cpf,
      required this.name,
      required this.cellphone,
      required this.email})
      : super._();

  factory _$_SmsParamsModel.fromJson(Map<String, dynamic> json) =>
      _$$_SmsParamsModelFromJson(json);

  @override
  final String cpf;
  @override
  final String name;
  @override
  final String cellphone;
  @override
  final String email;

  @override
  String toString() {
    return 'SmsParamsModel(cpf: $cpf, name: $name, cellphone: $cellphone, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SmsParamsModel &&
            (identical(other.cpf, cpf) || other.cpf == cpf) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cellphone, cellphone) ||
                other.cellphone == cellphone) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cpf, name, cellphone, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SmsParamsModelCopyWith<_$_SmsParamsModel> get copyWith =>
      __$$_SmsParamsModelCopyWithImpl<_$_SmsParamsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SmsParamsModelToJson(
      this,
    );
  }
}

abstract class _SmsParamsModel extends SmsParamsModel {
  factory _SmsParamsModel(
      {required final String cpf,
      required final String name,
      required final String cellphone,
      required final String email}) = _$_SmsParamsModel;
  _SmsParamsModel._() : super._();

  factory _SmsParamsModel.fromJson(Map<String, dynamic> json) =
      _$_SmsParamsModel.fromJson;

  @override
  String get cpf;
  @override
  String get name;
  @override
  String get cellphone;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_SmsParamsModelCopyWith<_$_SmsParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
