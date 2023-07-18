// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monthly_income.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MonthlyIncome {
  int get monthlyIncomeId => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MonthlyIncomeCopyWith<MonthlyIncome> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthlyIncomeCopyWith<$Res> {
  factory $MonthlyIncomeCopyWith(
          MonthlyIncome value, $Res Function(MonthlyIncome) then) =
      _$MonthlyIncomeCopyWithImpl<$Res, MonthlyIncome>;
  @useResult
  $Res call({int monthlyIncomeId, String description});
}

/// @nodoc
class _$MonthlyIncomeCopyWithImpl<$Res, $Val extends MonthlyIncome>
    implements $MonthlyIncomeCopyWith<$Res> {
  _$MonthlyIncomeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? monthlyIncomeId = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      monthlyIncomeId: null == monthlyIncomeId
          ? _value.monthlyIncomeId
          : monthlyIncomeId // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MonthlyIncomeCopyWith<$Res>
    implements $MonthlyIncomeCopyWith<$Res> {
  factory _$$_MonthlyIncomeCopyWith(
          _$_MonthlyIncome value, $Res Function(_$_MonthlyIncome) then) =
      __$$_MonthlyIncomeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int monthlyIncomeId, String description});
}

/// @nodoc
class __$$_MonthlyIncomeCopyWithImpl<$Res>
    extends _$MonthlyIncomeCopyWithImpl<$Res, _$_MonthlyIncome>
    implements _$$_MonthlyIncomeCopyWith<$Res> {
  __$$_MonthlyIncomeCopyWithImpl(
      _$_MonthlyIncome _value, $Res Function(_$_MonthlyIncome) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? monthlyIncomeId = null,
    Object? description = null,
  }) {
    return _then(_$_MonthlyIncome(
      monthlyIncomeId: null == monthlyIncomeId
          ? _value.monthlyIncomeId
          : monthlyIncomeId // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MonthlyIncome implements _MonthlyIncome {
  _$_MonthlyIncome({required this.monthlyIncomeId, required this.description});

  @override
  final int monthlyIncomeId;
  @override
  final String description;

  @override
  String toString() {
    return 'MonthlyIncome(monthlyIncomeId: $monthlyIncomeId, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MonthlyIncome &&
            (identical(other.monthlyIncomeId, monthlyIncomeId) ||
                other.monthlyIncomeId == monthlyIncomeId) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, monthlyIncomeId, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MonthlyIncomeCopyWith<_$_MonthlyIncome> get copyWith =>
      __$$_MonthlyIncomeCopyWithImpl<_$_MonthlyIncome>(this, _$identity);
}

abstract class _MonthlyIncome implements MonthlyIncome {
  factory _MonthlyIncome(
      {required final int monthlyIncomeId,
      required final String description}) = _$_MonthlyIncome;

  @override
  int get monthlyIncomeId;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_MonthlyIncomeCopyWith<_$_MonthlyIncome> get copyWith =>
      throw _privateConstructorUsedError;
}
