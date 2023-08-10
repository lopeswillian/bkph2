// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_statement_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserStatementInfoModel _$UserStatementInfoModelFromJson(
    Map<String, dynamic> json) {
  return _UserStatementInfoModel.fromJson(json);
}

/// @nodoc
mixin _$UserStatementInfoModel {
  int get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'formatted_date')
  String get formattedDate => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'rewards_points')
  double get rewardsPoints => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_counting_end')
  String? get dateCountingEnd => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserStatementInfoModelCopyWith<UserStatementInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStatementInfoModelCopyWith<$Res> {
  factory $UserStatementInfoModelCopyWith(UserStatementInfoModel value,
          $Res Function(UserStatementInfoModel) then) =
      _$UserStatementInfoModelCopyWithImpl<$Res, UserStatementInfoModel>;
  @useResult
  $Res call(
      {int id,
      String description,
      String date,
      @JsonKey(name: 'formatted_date') String formattedDate,
      String type,
      @JsonKey(name: 'rewards_points') double rewardsPoints,
      @JsonKey(name: 'date_counting_end') String? dateCountingEnd});
}

/// @nodoc
class _$UserStatementInfoModelCopyWithImpl<$Res,
        $Val extends UserStatementInfoModel>
    implements $UserStatementInfoModelCopyWith<$Res> {
  _$UserStatementInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? date = null,
    Object? formattedDate = null,
    Object? type = null,
    Object? rewardsPoints = null,
    Object? dateCountingEnd = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      formattedDate: null == formattedDate
          ? _value.formattedDate
          : formattedDate // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      rewardsPoints: null == rewardsPoints
          ? _value.rewardsPoints
          : rewardsPoints // ignore: cast_nullable_to_non_nullable
              as double,
      dateCountingEnd: freezed == dateCountingEnd
          ? _value.dateCountingEnd
          : dateCountingEnd // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserStatementInfoModelCopyWith<$Res>
    implements $UserStatementInfoModelCopyWith<$Res> {
  factory _$$_UserStatementInfoModelCopyWith(_$_UserStatementInfoModel value,
          $Res Function(_$_UserStatementInfoModel) then) =
      __$$_UserStatementInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String description,
      String date,
      @JsonKey(name: 'formatted_date') String formattedDate,
      String type,
      @JsonKey(name: 'rewards_points') double rewardsPoints,
      @JsonKey(name: 'date_counting_end') String? dateCountingEnd});
}

/// @nodoc
class __$$_UserStatementInfoModelCopyWithImpl<$Res>
    extends _$UserStatementInfoModelCopyWithImpl<$Res,
        _$_UserStatementInfoModel>
    implements _$$_UserStatementInfoModelCopyWith<$Res> {
  __$$_UserStatementInfoModelCopyWithImpl(_$_UserStatementInfoModel _value,
      $Res Function(_$_UserStatementInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? date = null,
    Object? formattedDate = null,
    Object? type = null,
    Object? rewardsPoints = null,
    Object? dateCountingEnd = freezed,
  }) {
    return _then(_$_UserStatementInfoModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      formattedDate: null == formattedDate
          ? _value.formattedDate
          : formattedDate // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      rewardsPoints: null == rewardsPoints
          ? _value.rewardsPoints
          : rewardsPoints // ignore: cast_nullable_to_non_nullable
              as double,
      dateCountingEnd: freezed == dateCountingEnd
          ? _value.dateCountingEnd
          : dateCountingEnd // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserStatementInfoModel extends _UserStatementInfoModel {
  _$_UserStatementInfoModel(
      {required this.id,
      required this.description,
      required this.date,
      @JsonKey(name: 'formatted_date') required this.formattedDate,
      required this.type,
      @JsonKey(name: 'rewards_points') required this.rewardsPoints,
      @JsonKey(name: 'date_counting_end') this.dateCountingEnd})
      : super._();

  factory _$_UserStatementInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserStatementInfoModelFromJson(json);

  @override
  final int id;
  @override
  final String description;
  @override
  final String date;
  @override
  @JsonKey(name: 'formatted_date')
  final String formattedDate;
  @override
  final String type;
  @override
  @JsonKey(name: 'rewards_points')
  final double rewardsPoints;
  @override
  @JsonKey(name: 'date_counting_end')
  final String? dateCountingEnd;

  @override
  String toString() {
    return 'UserStatementInfoModel(id: $id, description: $description, date: $date, formattedDate: $formattedDate, type: $type, rewardsPoints: $rewardsPoints, dateCountingEnd: $dateCountingEnd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserStatementInfoModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.formattedDate, formattedDate) ||
                other.formattedDate == formattedDate) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.rewardsPoints, rewardsPoints) ||
                other.rewardsPoints == rewardsPoints) &&
            (identical(other.dateCountingEnd, dateCountingEnd) ||
                other.dateCountingEnd == dateCountingEnd));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, description, date,
      formattedDate, type, rewardsPoints, dateCountingEnd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserStatementInfoModelCopyWith<_$_UserStatementInfoModel> get copyWith =>
      __$$_UserStatementInfoModelCopyWithImpl<_$_UserStatementInfoModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserStatementInfoModelToJson(
      this,
    );
  }
}

abstract class _UserStatementInfoModel extends UserStatementInfoModel {
  factory _UserStatementInfoModel(
          {required final int id,
          required final String description,
          required final String date,
          @JsonKey(name: 'formatted_date') required final String formattedDate,
          required final String type,
          @JsonKey(name: 'rewards_points') required final double rewardsPoints,
          @JsonKey(name: 'date_counting_end') final String? dateCountingEnd}) =
      _$_UserStatementInfoModel;
  _UserStatementInfoModel._() : super._();

  factory _UserStatementInfoModel.fromJson(Map<String, dynamic> json) =
      _$_UserStatementInfoModel.fromJson;

  @override
  int get id;
  @override
  String get description;
  @override
  String get date;
  @override
  @JsonKey(name: 'formatted_date')
  String get formattedDate;
  @override
  String get type;
  @override
  @JsonKey(name: 'rewards_points')
  double get rewardsPoints;
  @override
  @JsonKey(name: 'date_counting_end')
  String? get dateCountingEnd;
  @override
  @JsonKey(ignore: true)
  _$$_UserStatementInfoModelCopyWith<_$_UserStatementInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
