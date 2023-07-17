// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bco_cpf_params_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BcoCpfParamsModel _$BcoCpfParamsModelFromJson(Map<String, dynamic> json) {
  return _BcoCpfParamsModel.fromJson(json);
}

/// @nodoc
mixin _$BcoCpfParamsModel {
  String get document => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BcoCpfParamsModelCopyWith<BcoCpfParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BcoCpfParamsModelCopyWith<$Res> {
  factory $BcoCpfParamsModelCopyWith(
          BcoCpfParamsModel value, $Res Function(BcoCpfParamsModel) then) =
      _$BcoCpfParamsModelCopyWithImpl<$Res, BcoCpfParamsModel>;
  @useResult
  $Res call({String document});
}

/// @nodoc
class _$BcoCpfParamsModelCopyWithImpl<$Res, $Val extends BcoCpfParamsModel>
    implements $BcoCpfParamsModelCopyWith<$Res> {
  _$BcoCpfParamsModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_BcoCpfParamsModelCopyWith<$Res>
    implements $BcoCpfParamsModelCopyWith<$Res> {
  factory _$$_BcoCpfParamsModelCopyWith(_$_BcoCpfParamsModel value,
          $Res Function(_$_BcoCpfParamsModel) then) =
      __$$_BcoCpfParamsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String document});
}

/// @nodoc
class __$$_BcoCpfParamsModelCopyWithImpl<$Res>
    extends _$BcoCpfParamsModelCopyWithImpl<$Res, _$_BcoCpfParamsModel>
    implements _$$_BcoCpfParamsModelCopyWith<$Res> {
  __$$_BcoCpfParamsModelCopyWithImpl(
      _$_BcoCpfParamsModel _value, $Res Function(_$_BcoCpfParamsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? document = null,
  }) {
    return _then(_$_BcoCpfParamsModel(
      document: null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BcoCpfParamsModel extends _BcoCpfParamsModel {
  _$_BcoCpfParamsModel({required this.document}) : super._();

  factory _$_BcoCpfParamsModel.fromJson(Map<String, dynamic> json) =>
      _$$_BcoCpfParamsModelFromJson(json);

  @override
  final String document;

  @override
  String toString() {
    return 'BcoCpfParamsModel(document: $document)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BcoCpfParamsModel &&
            (identical(other.document, document) ||
                other.document == document));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, document);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BcoCpfParamsModelCopyWith<_$_BcoCpfParamsModel> get copyWith =>
      __$$_BcoCpfParamsModelCopyWithImpl<_$_BcoCpfParamsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BcoCpfParamsModelToJson(
      this,
    );
  }
}

abstract class _BcoCpfParamsModel extends BcoCpfParamsModel {
  factory _BcoCpfParamsModel({required final String document}) =
      _$_BcoCpfParamsModel;
  _BcoCpfParamsModel._() : super._();

  factory _BcoCpfParamsModel.fromJson(Map<String, dynamic> json) =
      _$_BcoCpfParamsModel.fromJson;

  @override
  String get document;
  @override
  @JsonKey(ignore: true)
  _$$_BcoCpfParamsModelCopyWith<_$_BcoCpfParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
