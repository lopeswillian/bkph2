// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'terms_conditions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TermsConditions {
  int get termId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TermsConditionsCopyWith<TermsConditions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermsConditionsCopyWith<$Res> {
  factory $TermsConditionsCopyWith(
          TermsConditions value, $Res Function(TermsConditions) then) =
      _$TermsConditionsCopyWithImpl<$Res, TermsConditions>;
  @useResult
  $Res call({int termId, String content});
}

/// @nodoc
class _$TermsConditionsCopyWithImpl<$Res, $Val extends TermsConditions>
    implements $TermsConditionsCopyWith<$Res> {
  _$TermsConditionsCopyWithImpl(this._value, this._then);

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
abstract class _$$_TermsConditionsCopyWith<$Res>
    implements $TermsConditionsCopyWith<$Res> {
  factory _$$_TermsConditionsCopyWith(
          _$_TermsConditions value, $Res Function(_$_TermsConditions) then) =
      __$$_TermsConditionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int termId, String content});
}

/// @nodoc
class __$$_TermsConditionsCopyWithImpl<$Res>
    extends _$TermsConditionsCopyWithImpl<$Res, _$_TermsConditions>
    implements _$$_TermsConditionsCopyWith<$Res> {
  __$$_TermsConditionsCopyWithImpl(
      _$_TermsConditions _value, $Res Function(_$_TermsConditions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? termId = null,
    Object? content = null,
  }) {
    return _then(_$_TermsConditions(
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

class _$_TermsConditions implements _TermsConditions {
  _$_TermsConditions({required this.termId, required this.content});

  @override
  final int termId;
  @override
  final String content;

  @override
  String toString() {
    return 'TermsConditions(termId: $termId, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TermsConditions &&
            (identical(other.termId, termId) || other.termId == termId) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, termId, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TermsConditionsCopyWith<_$_TermsConditions> get copyWith =>
      __$$_TermsConditionsCopyWithImpl<_$_TermsConditions>(this, _$identity);
}

abstract class _TermsConditions implements TermsConditions {
  factory _TermsConditions(
      {required final int termId,
      required final String content}) = _$_TermsConditions;

  @override
  int get termId;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$_TermsConditionsCopyWith<_$_TermsConditions> get copyWith =>
      throw _privateConstructorUsedError;
}
