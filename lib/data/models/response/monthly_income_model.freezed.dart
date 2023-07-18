// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monthly_income_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MonthlyIncomeModel _$MonthlyIncomeModelFromJson(Map<String, dynamic> json) {
  return _MonthlyIncomeModel.fromJson(json);
}

/// @nodoc
mixin _$MonthlyIncomeModel {
  @JsonKey(name: 'monthly_income_id')
  int get monthlyIncomeId => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MonthlyIncomeModelCopyWith<MonthlyIncomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthlyIncomeModelCopyWith<$Res> {
  factory $MonthlyIncomeModelCopyWith(
          MonthlyIncomeModel value, $Res Function(MonthlyIncomeModel) then) =
      _$MonthlyIncomeModelCopyWithImpl<$Res, MonthlyIncomeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'monthly_income_id') int monthlyIncomeId,
      String description});
}

/// @nodoc
class _$MonthlyIncomeModelCopyWithImpl<$Res, $Val extends MonthlyIncomeModel>
    implements $MonthlyIncomeModelCopyWith<$Res> {
  _$MonthlyIncomeModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_MonthlyIncomeModelCopyWith<$Res>
    implements $MonthlyIncomeModelCopyWith<$Res> {
  factory _$$_MonthlyIncomeModelCopyWith(_$_MonthlyIncomeModel value,
          $Res Function(_$_MonthlyIncomeModel) then) =
      __$$_MonthlyIncomeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'monthly_income_id') int monthlyIncomeId,
      String description});
}

/// @nodoc
class __$$_MonthlyIncomeModelCopyWithImpl<$Res>
    extends _$MonthlyIncomeModelCopyWithImpl<$Res, _$_MonthlyIncomeModel>
    implements _$$_MonthlyIncomeModelCopyWith<$Res> {
  __$$_MonthlyIncomeModelCopyWithImpl(
      _$_MonthlyIncomeModel _value, $Res Function(_$_MonthlyIncomeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? monthlyIncomeId = null,
    Object? description = null,
  }) {
    return _then(_$_MonthlyIncomeModel(
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
@JsonSerializable()
class _$_MonthlyIncomeModel extends _MonthlyIncomeModel {
  _$_MonthlyIncomeModel(
      {@JsonKey(name: 'monthly_income_id') required this.monthlyIncomeId,
      required this.description})
      : super._();

  factory _$_MonthlyIncomeModel.fromJson(Map<String, dynamic> json) =>
      _$$_MonthlyIncomeModelFromJson(json);

  @override
  @JsonKey(name: 'monthly_income_id')
  final int monthlyIncomeId;
  @override
  final String description;

  @override
  String toString() {
    return 'MonthlyIncomeModel(monthlyIncomeId: $monthlyIncomeId, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MonthlyIncomeModel &&
            (identical(other.monthlyIncomeId, monthlyIncomeId) ||
                other.monthlyIncomeId == monthlyIncomeId) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, monthlyIncomeId, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MonthlyIncomeModelCopyWith<_$_MonthlyIncomeModel> get copyWith =>
      __$$_MonthlyIncomeModelCopyWithImpl<_$_MonthlyIncomeModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MonthlyIncomeModelToJson(
      this,
    );
  }
}

abstract class _MonthlyIncomeModel extends MonthlyIncomeModel {
  factory _MonthlyIncomeModel(
      {@JsonKey(name: 'monthly_income_id') required final int monthlyIncomeId,
      required final String description}) = _$_MonthlyIncomeModel;
  _MonthlyIncomeModel._() : super._();

  factory _MonthlyIncomeModel.fromJson(Map<String, dynamic> json) =
      _$_MonthlyIncomeModel.fromJson;

  @override
  @JsonKey(name: 'monthly_income_id')
  int get monthlyIncomeId;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_MonthlyIncomeModelCopyWith<_$_MonthlyIncomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
