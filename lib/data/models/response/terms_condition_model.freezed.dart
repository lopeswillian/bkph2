// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'terms_condition_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TermsConditionModel _$TermsConditionModelFromJson(Map<String, dynamic> json) {
  return _TermsConditionModel.fromJson(json);
}

/// @nodoc
mixin _$TermsConditionModel {
  @JsonKey(name: 'terms_and_conditions_id')
  int get termId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TermsConditionModelCopyWith<TermsConditionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermsConditionModelCopyWith<$Res> {
  factory $TermsConditionModelCopyWith(
          TermsConditionModel value, $Res Function(TermsConditionModel) then) =
      _$TermsConditionModelCopyWithImpl<$Res, TermsConditionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'terms_and_conditions_id') int termId, String content});
}

/// @nodoc
class _$TermsConditionModelCopyWithImpl<$Res, $Val extends TermsConditionModel>
    implements $TermsConditionModelCopyWith<$Res> {
  _$TermsConditionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? termId = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      termId: null == termId
          ? _value.termId
          : termId // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TermsConditionModelCopyWith<$Res>
    implements $TermsConditionModelCopyWith<$Res> {
  factory _$$_TermsConditionModelCopyWith(_$_TermsConditionModel value,
          $Res Function(_$_TermsConditionModel) then) =
      __$$_TermsConditionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'terms_and_conditions_id') int termId, String content});
}

/// @nodoc
class __$$_TermsConditionModelCopyWithImpl<$Res>
    extends _$TermsConditionModelCopyWithImpl<$Res, _$_TermsConditionModel>
    implements _$$_TermsConditionModelCopyWith<$Res> {
  __$$_TermsConditionModelCopyWithImpl(_$_TermsConditionModel _value,
      $Res Function(_$_TermsConditionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? termId = null,
    Object? content = null,
  }) {
    return _then(_$_TermsConditionModel(
      termId: null == termId
          ? _value.termId
          : termId // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TermsConditionModel extends _TermsConditionModel {
  _$_TermsConditionModel(
      {@JsonKey(name: 'terms_and_conditions_id') required this.termId,
      required this.content})
      : super._();

  factory _$_TermsConditionModel.fromJson(Map<String, dynamic> json) =>
      _$$_TermsConditionModelFromJson(json);

  @override
  @JsonKey(name: 'terms_and_conditions_id')
  final int termId;
  @override
  final String content;

  @override
  String toString() {
    return 'TermsConditionModel(termId: $termId, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TermsConditionModel &&
            (identical(other.termId, termId) || other.termId == termId) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, termId, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TermsConditionModelCopyWith<_$_TermsConditionModel> get copyWith =>
      __$$_TermsConditionModelCopyWithImpl<_$_TermsConditionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TermsConditionModelToJson(
      this,
    );
  }
}

abstract class _TermsConditionModel extends TermsConditionModel {
  factory _TermsConditionModel(
      {@JsonKey(name: 'terms_and_conditions_id') required final int termId,
      required final String content}) = _$_TermsConditionModel;
  _TermsConditionModel._() : super._();

  factory _TermsConditionModel.fromJson(Map<String, dynamic> json) =
      _$_TermsConditionModel.fromJson;

  @override
  @JsonKey(name: 'terms_and_conditions_id')
  int get termId;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$_TermsConditionModelCopyWith<_$_TermsConditionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
