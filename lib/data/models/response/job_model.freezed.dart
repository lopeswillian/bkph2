// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JobModel _$JobModelFromJson(Map<String, dynamic> json) {
  return _JobModel.fromJson(json);
}

/// @nodoc
mixin _$JobModel {
  @JsonKey(name: 'jobs_id')
  int get jobId => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobModelCopyWith<JobModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobModelCopyWith<$Res> {
  factory $JobModelCopyWith(JobModel value, $Res Function(JobModel) then) =
      _$JobModelCopyWithImpl<$Res, JobModel>;
  @useResult
  $Res call({@JsonKey(name: 'jobs_id') int jobId, String description});
}

/// @nodoc
class _$JobModelCopyWithImpl<$Res, $Val extends JobModel>
    implements $JobModelCopyWith<$Res> {
  _$JobModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobId = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      jobId: null == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JobModelCopyWith<$Res> implements $JobModelCopyWith<$Res> {
  factory _$$_JobModelCopyWith(
          _$_JobModel value, $Res Function(_$_JobModel) then) =
      __$$_JobModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'jobs_id') int jobId, String description});
}

/// @nodoc
class __$$_JobModelCopyWithImpl<$Res>
    extends _$JobModelCopyWithImpl<$Res, _$_JobModel>
    implements _$$_JobModelCopyWith<$Res> {
  __$$_JobModelCopyWithImpl(
      _$_JobModel _value, $Res Function(_$_JobModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobId = null,
    Object? description = null,
  }) {
    return _then(_$_JobModel(
      jobId: null == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
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
class _$_JobModel extends _JobModel {
  _$_JobModel(
      {@JsonKey(name: 'jobs_id') required this.jobId,
      required this.description})
      : super._();

  factory _$_JobModel.fromJson(Map<String, dynamic> json) =>
      _$$_JobModelFromJson(json);

  @override
  @JsonKey(name: 'jobs_id')
  final int jobId;
  @override
  final String description;

  @override
  String toString() {
    return 'JobModel(jobId: $jobId, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JobModel &&
            (identical(other.jobId, jobId) || other.jobId == jobId) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, jobId, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JobModelCopyWith<_$_JobModel> get copyWith =>
      __$$_JobModelCopyWithImpl<_$_JobModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JobModelToJson(
      this,
    );
  }
}

abstract class _JobModel extends JobModel {
  factory _JobModel(
      {@JsonKey(name: 'jobs_id') required final int jobId,
      required final String description}) = _$_JobModel;
  _JobModel._() : super._();

  factory _JobModel.fromJson(Map<String, dynamic> json) = _$_JobModel.fromJson;

  @override
  @JsonKey(name: 'jobs_id')
  int get jobId;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_JobModelCopyWith<_$_JobModel> get copyWith =>
      throw _privateConstructorUsedError;
}
