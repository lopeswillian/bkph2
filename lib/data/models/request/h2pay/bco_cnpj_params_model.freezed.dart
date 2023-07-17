// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bco_cnpj_params_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BcoCnpjParamsModel _$BcoCnpjParamsModelFromJson(Map<String, dynamic> json) {
  return _BcoCnpjParamsModel.fromJson(json);
}

/// @nodoc
mixin _$BcoCnpjParamsModel {
  String get document => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BcoCnpjParamsModelCopyWith<BcoCnpjParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BcoCnpjParamsModelCopyWith<$Res> {
  factory $BcoCnpjParamsModelCopyWith(
          BcoCnpjParamsModel value, $Res Function(BcoCnpjParamsModel) then) =
      _$BcoCnpjParamsModelCopyWithImpl<$Res, BcoCnpjParamsModel>;
  @useResult
  $Res call({String document});
}

/// @nodoc
class _$BcoCnpjParamsModelCopyWithImpl<$Res, $Val extends BcoCnpjParamsModel>
    implements $BcoCnpjParamsModelCopyWith<$Res> {
  _$BcoCnpjParamsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? document = null,
  }) {
    return _then(_value.copyWith(
      document: null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BcoCnpjParamsModelCopyWith<$Res>
    implements $BcoCnpjParamsModelCopyWith<$Res> {
  factory _$$_BcoCnpjParamsModelCopyWith(_$_BcoCnpjParamsModel value,
          $Res Function(_$_BcoCnpjParamsModel) then) =
      __$$_BcoCnpjParamsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String document});
}

/// @nodoc
class __$$_BcoCnpjParamsModelCopyWithImpl<$Res>
    extends _$BcoCnpjParamsModelCopyWithImpl<$Res, _$_BcoCnpjParamsModel>
    implements _$$_BcoCnpjParamsModelCopyWith<$Res> {
  __$$_BcoCnpjParamsModelCopyWithImpl(
      _$_BcoCnpjParamsModel _value, $Res Function(_$_BcoCnpjParamsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? document = null,
  }) {
    return _then(_$_BcoCnpjParamsModel(
      document: null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BcoCnpjParamsModel extends _BcoCnpjParamsModel {
  _$_BcoCnpjParamsModel({required this.document}) : super._();

  factory _$_BcoCnpjParamsModel.fromJson(Map<String, dynamic> json) =>
      _$$_BcoCnpjParamsModelFromJson(json);

  @override
  final String document;

  @override
  String toString() {
    return 'BcoCnpjParamsModel(document: $document)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BcoCnpjParamsModel &&
            (identical(other.document, document) ||
                other.document == document));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, document);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BcoCnpjParamsModelCopyWith<_$_BcoCnpjParamsModel> get copyWith =>
      __$$_BcoCnpjParamsModelCopyWithImpl<_$_BcoCnpjParamsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BcoCnpjParamsModelToJson(
      this,
    );
  }
}

abstract class _BcoCnpjParamsModel extends BcoCnpjParamsModel {
  factory _BcoCnpjParamsModel({required final String document}) =
      _$_BcoCnpjParamsModel;
  _BcoCnpjParamsModel._() : super._();

  factory _BcoCnpjParamsModel.fromJson(Map<String, dynamic> json) =
      _$_BcoCnpjParamsModel.fromJson;

  @override
  String get document;
  @override
  @JsonKey(ignore: true)
  _$$_BcoCnpjParamsModelCopyWith<_$_BcoCnpjParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
