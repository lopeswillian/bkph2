// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_statement_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserStatementInfo {
  int get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get formattedDate => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  double get rewardsPoints => throw _privateConstructorUsedError;
  String? get dateCountingEnd => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStatementInfoCopyWith<UserStatementInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStatementInfoCopyWith<$Res> {
  factory $UserStatementInfoCopyWith(
          UserStatementInfo value, $Res Function(UserStatementInfo) then) =
      _$UserStatementInfoCopyWithImpl<$Res, UserStatementInfo>;
  @useResult
  $Res call(
      {int id,
      String description,
      String date,
      String formattedDate,
      String type,
      double rewardsPoints,
      String? dateCountingEnd});
}

/// @nodoc
class _$UserStatementInfoCopyWithImpl<$Res, $Val extends UserStatementInfo>
    implements $UserStatementInfoCopyWith<$Res> {
  _$UserStatementInfoCopyWithImpl(this._value, this._then);

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
abstract class _$$_UserStatementInfoCopyWith<$Res>
    implements $UserStatementInfoCopyWith<$Res> {
  factory _$$_UserStatementInfoCopyWith(_$_UserStatementInfo value,
          $Res Function(_$_UserStatementInfo) then) =
      __$$_UserStatementInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String description,
      String date,
      String formattedDate,
      String type,
      double rewardsPoints,
      String? dateCountingEnd});
}

/// @nodoc
class __$$_UserStatementInfoCopyWithImpl<$Res>
    extends _$UserStatementInfoCopyWithImpl<$Res, _$_UserStatementInfo>
    implements _$$_UserStatementInfoCopyWith<$Res> {
  __$$_UserStatementInfoCopyWithImpl(
      _$_UserStatementInfo _value, $Res Function(_$_UserStatementInfo) _then)
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
    return _then(_$_UserStatementInfo(
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

class _$_UserStatementInfo implements _UserStatementInfo {
  _$_UserStatementInfo(
      {required this.id,
      required this.description,
      required this.date,
      required this.formattedDate,
      required this.type,
      required this.rewardsPoints,
      this.dateCountingEnd});

  @override
  final int id;
  @override
  final String description;
  @override
  final String date;
  @override
  final String formattedDate;
  @override
  final String type;
  @override
  final double rewardsPoints;
  @override
  final String? dateCountingEnd;

  @override
  String toString() {
    return 'UserStatementInfo(id: $id, description: $description, date: $date, formattedDate: $formattedDate, type: $type, rewardsPoints: $rewardsPoints, dateCountingEnd: $dateCountingEnd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserStatementInfo &&
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

  @override
  int get hashCode => Object.hash(runtimeType, id, description, date,
      formattedDate, type, rewardsPoints, dateCountingEnd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserStatementInfoCopyWith<_$_UserStatementInfo> get copyWith =>
      __$$_UserStatementInfoCopyWithImpl<_$_UserStatementInfo>(
          this, _$identity);
}

abstract class _UserStatementInfo implements UserStatementInfo {
  factory _UserStatementInfo(
      {required final int id,
      required final String description,
      required final String date,
      required final String formattedDate,
      required final String type,
      required final double rewardsPoints,
      final String? dateCountingEnd}) = _$_UserStatementInfo;

  @override
  int get id;
  @override
  String get description;
  @override
  String get date;
  @override
  String get formattedDate;
  @override
  String get type;
  @override
  double get rewardsPoints;
  @override
  String? get dateCountingEnd;
  @override
  @JsonKey(ignore: true)
  _$$_UserStatementInfoCopyWith<_$_UserStatementInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
