// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_anticipation_params_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignAnticipationParamsModel _$SignAnticipationParamsModelFromJson(
    Map<String, dynamic> json) {
  return _SignAnticipationParamsModel.fromJson(json);
}

/// @nodoc
mixin _$SignAnticipationParamsModel {
  @JsonKey(name: 'customer_id')
  String get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'anticipation_id')
  String get anticipationId => throw _privateConstructorUsedError;
  bool get signed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignAnticipationParamsModelCopyWith<SignAnticipationParamsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignAnticipationParamsModelCopyWith<$Res> {
  factory $SignAnticipationParamsModelCopyWith(
          SignAnticipationParamsModel value,
          $Res Function(SignAnticipationParamsModel) then) =
      _$SignAnticipationParamsModelCopyWithImpl<$Res,
          SignAnticipationParamsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'customer_id') String customerId,
      @JsonKey(name: 'anticipation_id') String anticipationId,
      bool signed});
}

/// @nodoc
class _$SignAnticipationParamsModelCopyWithImpl<$Res,
        $Val extends SignAnticipationParamsModel>
    implements $SignAnticipationParamsModelCopyWith<$Res> {
  _$SignAnticipationParamsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
    Object? anticipationId = null,
    Object? signed = null,
  }) {
    return _then(_value.copyWith(
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      anticipationId: null == anticipationId
          ? _value.anticipationId
          : anticipationId // ignore: cast_nullable_to_non_nullable
              as String,
      signed: null == signed
          ? _value.signed
          : signed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignAnticipationParamsModelCopyWith<$Res>
    implements $SignAnticipationParamsModelCopyWith<$Res> {
  factory _$$_SignAnticipationParamsModelCopyWith(
          _$_SignAnticipationParamsModel value,
          $Res Function(_$_SignAnticipationParamsModel) then) =
      __$$_SignAnticipationParamsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'customer_id') String customerId,
      @JsonKey(name: 'anticipation_id') String anticipationId,
      bool signed});
}

/// @nodoc
class __$$_SignAnticipationParamsModelCopyWithImpl<$Res>
    extends _$SignAnticipationParamsModelCopyWithImpl<$Res,
        _$_SignAnticipationParamsModel>
    implements _$$_SignAnticipationParamsModelCopyWith<$Res> {
  __$$_SignAnticipationParamsModelCopyWithImpl(
      _$_SignAnticipationParamsModel _value,
      $Res Function(_$_SignAnticipationParamsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
    Object? anticipationId = null,
    Object? signed = null,
  }) {
    return _then(_$_SignAnticipationParamsModel(
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      anticipationId: null == anticipationId
          ? _value.anticipationId
          : anticipationId // ignore: cast_nullable_to_non_nullable
              as String,
      signed: null == signed
          ? _value.signed
          : signed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignAnticipationParamsModel extends _SignAnticipationParamsModel {
  _$_SignAnticipationParamsModel(
      {@JsonKey(name: 'customer_id') required this.customerId,
      @JsonKey(name: 'anticipation_id') required this.anticipationId,
      required this.signed})
      : super._();

  factory _$_SignAnticipationParamsModel.fromJson(Map<String, dynamic> json) =>
      _$$_SignAnticipationParamsModelFromJson(json);

  @override
  @JsonKey(name: 'customer_id')
  final String customerId;
  @override
  @JsonKey(name: 'anticipation_id')
  final String anticipationId;
  @override
  final bool signed;

  @override
  String toString() {
    return 'SignAnticipationParamsModel(customerId: $customerId, anticipationId: $anticipationId, signed: $signed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignAnticipationParamsModel &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.anticipationId, anticipationId) ||
                other.anticipationId == anticipationId) &&
            (identical(other.signed, signed) || other.signed == signed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, customerId, anticipationId, signed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignAnticipationParamsModelCopyWith<_$_SignAnticipationParamsModel>
      get copyWith => __$$_SignAnticipationParamsModelCopyWithImpl<
          _$_SignAnticipationParamsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignAnticipationParamsModelToJson(
      this,
    );
  }
}

abstract class _SignAnticipationParamsModel
    extends SignAnticipationParamsModel {
  factory _SignAnticipationParamsModel(
      {@JsonKey(name: 'customer_id') required final String customerId,
      @JsonKey(name: 'anticipation_id') required final String anticipationId,
      required final bool signed}) = _$_SignAnticipationParamsModel;
  _SignAnticipationParamsModel._() : super._();

  factory _SignAnticipationParamsModel.fromJson(Map<String, dynamic> json) =
      _$_SignAnticipationParamsModel.fromJson;

  @override
  @JsonKey(name: 'customer_id')
  String get customerId;
  @override
  @JsonKey(name: 'anticipation_id')
  String get anticipationId;
  @override
  bool get signed;
  @override
  @JsonKey(ignore: true)
  _$$_SignAnticipationParamsModelCopyWith<_$_SignAnticipationParamsModel>
      get copyWith => throw _privateConstructorUsedError;
}
